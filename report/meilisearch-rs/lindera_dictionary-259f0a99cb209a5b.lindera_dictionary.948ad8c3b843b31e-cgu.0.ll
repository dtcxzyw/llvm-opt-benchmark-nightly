inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@"_ZN187_$LT$lindera_dictionary..mode.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..mode..Penalty$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17hec258ccb5f47ff45E":bb.a
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @74, i64 noundef 14)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN189_$LT$lindera_dictionary..mode.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..mode..Mode$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h06dc6d34b1526b64E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @75, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18lindera_dictionary10decompress10decompress17h1297f99732080e91E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 9 uses
  %i.f = alloca [96 x i8], align 8                ; 5 uses
  %i.g = alloca [104 x i8], align 8               ; 10 uses
  %i.h = alloca [104 x i8], align 8               ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [104 x i8], align 8               ; 15 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.0 = alloca [200 x i8], align 8           ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 14 uses
  %i.t = alloca [208 x i8], align 8               ; 20 uses
  %i.u = alloca [24 x i8], align 8                ; 14 uses
  %i.v = alloca [72 x i8], align 8                ; 17 uses
  %i.w = alloca [24 x i8], align 8                ; 14 uses
  %i.x = alloca [72 x i8], align 8                ; 17 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i8, ptr %i.y, align 8, !range !1366, !noundef !6
  switch i8 %i.z, label %default.unreachable497 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable497:                           ; preds = %bb.df, %.noexc143, %.noexc56, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !1370
  %i.ae = tail call noundef dereferenceable_or_null(32768) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 32768, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !1370 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.invoke, label %"_ZN6flate29bufreader18BufReader$LT$R$GT$8with_buf17h74477a6910698810E.exit.i"

"_ZN6flate29bufreader18BufReader$LT$R$GT$8with_buf17h74477a6910698810E.exit.i": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1377
  invoke void @_ZN6flate23mem10Decompress3new17h291e4726c574495cE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, i1 noundef zeroext false)
          to label %bb.i unwind label %"_ZN4core3ptr73drop_in_place$LT$flate2..bufreader..BufReader$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h27f266ea92eed93bE.exit.i.i", !noalias !1377

"_ZN4core3ptr73drop_in_place$LT$flate2..bufreader..BufReader$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h27f266ea92eed93bE.exit.i.i": ; preds = %"_ZN6flate29bufreader18BufReader$LT$R$GT$8with_buf17h74477a6910698810E.exit.i"
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef 32768, i64 noundef 1) #47, !noalias !1377
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !1384
  %i.al = tail call noundef dereferenceable_or_null(32768) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 32768, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !1384 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.invoke, label %"_ZN6flate29bufreader18BufReader$LT$R$GT$8with_buf17h74477a6910698810E.exit.i39"

"_ZN6flate29bufreader18BufReader$LT$R$GT$8with_buf17h74477a6910698810E.exit.i39": ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1391
  invoke void @_ZN6flate23mem10Decompress3new17h291e4726c574495cE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, i1 noundef zeroext true)
          to label %bb.au unwind label %"_ZN4core3ptr73drop_in_place$LT$flate2..bufreader..BufReader$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h27f266ea92eed93bE.exit.i.i40", !noalias !1391

"_ZN4core3ptr73drop_in_place$LT$flate2..bufreader..BufReader$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h27f266ea92eed93bE.exit.i.i40": ; preds = %"_ZN6flate29bufreader18BufReader$LT$R$GT$8with_buf17h74477a6910698810E.exit.i39"
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef 32768, i64 noundef 1) #47, !noalias !1391
  br label %.body

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !1398
  %i.as = tail call noundef dereferenceable_or_null(32768) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 32768, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !1398 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.invoke, label %bb.cc

.invoke:                                          ; preds = %bb.d, %bb.c, %bb.b
  %i.au = phi ptr [ @592, %bb.c ], [ @594, %bb.b ], [ @596, %bb.d ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 32768, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au) #46
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %"_ZN4core3ptr67drop_in_place$LT$lindera_dictionary..decompress..CompressedData$GT$17h71e52341d34d8c86E.exit65"

.body:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit146", %bb.cd, %bb.cq, %.thread54.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %"_ZN4core3ptr73drop_in_place$LT$flate2..bufreader..BufReader$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h27f266ea92eed93bE.exit.i.i", %bb.g, %bb.dv, %bb.do, %"_ZN4core3ptr73drop_in_place$LT$flate2..bufreader..BufReader$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h27f266ea92eed93bE.exit.i.i40", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit209"
  %.pn20 = phi { ptr, i32 } [ %eh.lpad-body207, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit209" ], [ %eh.lpad-body58, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit" ], [ %eh.lpad-body145, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit146" ], [ %i.ag, %"_ZN4core3ptr73drop_in_place$LT$flate2..bufreader..BufReader$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h27f266ea92eed93bE.exit.i.i" ], [ %i.an, %"_ZN4core3ptr73drop_in_place$LT$flate2..bufreader..BufReader$LT$$RF$$u5b$u8$u5d$$GT$$GT$17h27f266ea92eed93bE.exit.i.i40" ], [ %i.nn, %bb.dv ], [ %i.ne, %bb.do ], [ %i.ax, %bb.g ], [ %.pn2057.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i" ], [ %eh.lpad-body.i, %bb.cq ], [ %.pn2057.i, %.thread54.i ], [ %eh.lpad-body.i, %bb.cd ]
  %.val37 = load i64, ptr %1, align 8             ; 2 uses
  %i.av = icmp eq i64 %.val37, 0
  br i1 %i.av, label %"_ZN4core3ptr67drop_in_place$LT$lindera_dictionary..decompress..CompressedData$GT$17h71e52341d34d8c86E.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val38 = load ptr, ptr %i.aw, align 8, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38, i64 noundef %.val37, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %"_ZN4core3ptr67drop_in_place$LT$lindera_dictionary..decompress..CompressedData$GT$17h71e52341d34d8c86E.exit"

bb.g:                                             ; preds = %.invoke
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.j
  %.pre.pre.i = load i64, ptr %i.be, align 8, !alias.scope !1405, !noalias !1408
  %.pre203.pre.i = load i64, ptr %i.w, align 8, !range !165, !alias.scope !1405, !noalias !1408
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  br label %bb.k

bb.i:                                             ; preds = %"_ZN6flate29bufreader18BufReader$LT$R$GT$8with_buf17h74477a6910698810E.exit.i"
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1367, !noalias !1410
  %.sroa.74.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.74.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1377
  store ptr %i.ab, ptr %i.x, align 8, !alias.scope !1367, !noalias !1410
  %.sroa.02.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store i64 %i.ad, ptr %.sroa.02.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1367, !noalias !1410
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 4 uses
  store ptr %i.ae, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !1367, !noalias !1410
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 4 uses
  store i64 32768, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1367, !noalias !1410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 0, ptr %i.w, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 4 uses
  store i64 0, ptr %i.be, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  %i.bf = invoke fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17hfae0e888fb24d511E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc51:                                         ; preds = %bb.i
  %i.bg = extractvalue { i64, ptr } %i.bf, 0
  %i.bh = extractvalue { i64, ptr } %i.bf, 1      ; 2 uses
  %i.bi = trunc nuw i64 %i.bg to i1
  br i1 %i.bi, label %.thread, label %bb.j

bb.j:                                             ; preds = %.noexc51
  %i.bj = icmp eq ptr %i.bh, null
  br i1 %i.bj, label %.thread224, label %bb.h

bb.k:                                             ; preds = %bb.ak, %bb.h
  %i.bk = phi i64 [ %.pre203.pre.i, %bb.h ], [ %i.cd, %bb.ak ] ; 2 uses
  %i.bl = phi i64 [ %.pre.pre.i, %bb.h ], [ %i.en, %bb.ak ] ; 2 uses
  %.sroa.018.4.i = phi i64 [ 0, %bb.h ], [ %i.ep, %bb.ak ]
  %.sroa.010.4.i = phi i64 [ 8192, %bb.h ], [ %.sroa.010.5.i, %bb.ak ] ; 5 uses
  %i.bm = or i64 %i.bl, %i.bk
  %or.cond80.i = icmp eq i64 %i.bm, 0
  br i1 %or.cond80.i, label %bb.m, label %bb.l

thread-pre-split.i:                               ; preds = %bb.n
  %.pr.i = load i64, ptr %i.w, align 8, !alias.scope !1405, !noalias !1408
  %.pre204.i = load i64, ptr %i.be, align 8, !alias.scope !1405, !noalias !1408
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split.i, %bb.k
  %i.bn = phi i64 [ %.pr.i, %thread-pre-split.i ], [ %i.bk, %bb.k ] ; 6 uses
  %i.bo = phi i64 [ %.pre204.i, %thread-pre-split.i ], [ %i.bl, %bb.k ] ; 5 uses
  %i.bp = icmp sgt i64 %i.bo, -1
  call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp eq i64 %i.bo, %i.bn
  br i1 %i.bq, label %bb.o, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l
  %.pre205.i = load ptr, ptr %i.bd, align 8, !alias.scope !1405, !noalias !1408
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.br = invoke fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17hfae0e888fb24d511E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc52:                                         ; preds = %bb.m
  %i.bs = extractvalue { i64, ptr } %i.br, 0
  %i.bt = extractvalue { i64, ptr } %i.br, 1      ; 2 uses
  %i.bu = trunc nuw i64 %i.bs to i1
  br i1 %i.bu, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit.i", label %bb.n

bb.n:                                             ; preds = %.noexc52
  %i.bv = icmp eq ptr %i.bt, null
  br i1 %i.bv, label %.thread224, label %thread-pre-split.i

bb.o:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  %i.bw = add nuw i64 %i.bn, 32
  %i.bx = shl nuw i64 %i.bn, 1
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.bw, i64 %i.bx) ; 4 uses
  %i.by = icmp slt i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.by, label %.thread227, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !27

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1417
  %i.bz = icmp eq i64 %i.bn, 0
  br i1 %i.bz, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i.i", label %bb.p

bb.p:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.val29.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !1418, !noalias !1408, !nonnull !6, !noundef !6
  store ptr %.val29.i.i.i, ptr %i.n, align 8, !alias.scope !1419, !noalias !1417
  store i64 %i.bn, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1419, !noalias !1417
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i.i": ; preds = %bb.p, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sink.i.i.i.i = phi i64 [ 1, %bb.p ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ]
  store i64 %.sink.i.i.i.i, ptr %i.ay, align 8, !alias.scope !1419, !noalias !1417
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hd6d4a18c81f6aeb6E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, i64 noundef 1, i64 noundef %.sroa.0.0.i.i.i.i, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.n), !noalias !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1417
  %i.ca = load i64, ptr %i.o, align 8, !range !66, !noalias !1417, !noundef !6
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.q, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.i"

bb.q:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1417
  br label %.thread227

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i.i"
  %i.cc = load ptr, ptr %i.az, align 8, !noalias !1417, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1417
  store ptr %i.cc, ptr %i.bd, align 8, !alias.scope !1418, !noalias !1408
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.w, align 8, !alias.scope !1418, !noalias !1408
  br label %bb.r

bb.r:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.i", %._crit_edge.i
  %i.cd = phi i64 [ %i.bn, %._crit_edge.i ], [ %.sroa.0.0.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.i" ] ; 2 uses
  %i.ce = phi ptr [ %.pre205.i, %._crit_edge.i ], [ %i.cc, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.i" ]
  %i.cf = sub nsw i64 %i.cd, %i.bo                ; 2 uses
  %.sroa.0.0.i81.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.010.4.i, i64 %i.cf) ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bo ; 2 uses
  %i.ch = icmp eq i64 %.sroa.0.0.i81.i, 0         ; 2 uses
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i.backedge", %bb.r
  %.sroa.11.0.i = phi i64 [ %.sroa.018.4.i, %bb.r ], [ %.sroa.0.0.i81.i, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i.backedge" ] ; 2 uses
  %i.ci = sub nuw i64 %.sroa.0.0.i81.i, %.sroa.11.0.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.11.0.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cj, i8 0, i64 %i.ci, i1 false), !noalias !1422
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  %.promoted.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1436, !noalias !1437
  %.promoted36.i.i = load i64, ptr %i.ba, align 8, !alias.scope !1436, !noalias !1437
  %.promoted37.i.i = load ptr, ptr %i.x, align 8, !alias.scope !1436, !noalias !1437
  %.pre.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1436, !noalias !1437 ; 3 uses
  %i.ck = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !1436, !noalias !1437, !nonnull !6, !align !44 ; 3 uses
  %.promoted38.i.i = load i64, ptr %.sroa.02.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1436, !noalias !1437
  br label %bb.s

bb.s:                                             ; preds = %.backedge, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i"
  %i.cl = phi i64 [ %.promoted38.i.i, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i" ], [ %i.cu, %.backedge ] ; 3 uses
  %i.cm = phi ptr [ %.promoted37.i.i, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i" ], [ %i.cv, %.backedge ] ; 4 uses
  %i.cn = phi i64 [ %.promoted36.i.i, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i" ], [ %i.cw, %.backedge ] ; 2 uses
  %i.co = phi i64 [ %.promoted.i.i, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i" ], [ %.sroa.0.0.i.i.i85.i, %.backedge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1439), !noalias !1442
  %i.cp = icmp eq i64 %i.co, %i.cn
  br i1 %i.cp, label %bb.t, label %._crit_edge.i.i.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !1443), !noalias !1442
  call void @llvm.experimental.noalias.scope.decl(metadata !1446), !noalias !1442
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %.pre.i.i.i) ; 6 uses
  %i.cq = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 1
  br i1 %i.cq, label %bb.u, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h0e8b5a823e507235E.exit.i.i.i.i"

bb.u:                                             ; preds = %bb.t
  %i.cr = load i8, ptr %i.cm, align 1, !noalias !1448, !noundef !6
  store i8 %i.cr, ptr %i.ck, align 1, !alias.scope !1446, !noalias !1450
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h0e8b5a823e507235E.exit.i.i.i.i": ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull readonly align 1 %i.cm, i64 %.sroa.0.0.i.i.i.i.i, i1 false), !alias.scope !1451, !noalias !1455
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i"

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h0e8b5a823e507235E.exit.i.i.i.i", %bb.u
  %i.cs = sub nuw i64 %i.cl, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.0.0.i.i.i.i.i ; 2 uses
  store ptr %i.ct, ptr %i.x, align 8, !alias.scope !1457, !noalias !1458
  store i64 %i.cs, ptr %.sroa.02.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1457, !noalias !1458
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.ba, align 8, !alias.scope !1459, !noalias !1460
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1459, !noalias !1460
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i", %bb.s
  %i.cu = phi i64 [ %i.cs, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i" ], [ %i.cl, %bb.s ]
  %i.cv = phi ptr [ %i.ct, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i" ], [ %i.cm, %bb.s ]
  %i.cw = phi i64 [ %.sroa.0.0.i.i.i.i.i, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i" ], [ %i.cn, %bb.s ] ; 7 uses
  %i.cx = phi i64 [ 0, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i" ], [ %i.co, %bb.s ] ; 6 uses
  %i.cy = icmp ult i64 %i.cw, %i.cx
  %.not.i.i83.i = icmp ugt i64 %i.cw, %.pre.i.i.i
  %or.cond.i.i.i = or i1 %.not.i.i83.i, %i.cy
  br i1 %or.cond.i.i.i, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %._crit_edge.i.i.i
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.cx, i64 noundef %i.cw, i64 noundef %.pre.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @618) #46
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.cz = sub nuw i64 %i.cw, %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cx
  %i.db = icmp eq i64 %i.cw, %i.cx                ; 3 uses
  %.val.i84.i = load i64, ptr %i.bb, align 8, !alias.scope !1461, !noalias !1462, !noundef !6 ; 4 uses
  %.val20.i.i = load i64, ptr %i.bc, align 8, !alias.scope !1461, !noalias !1462, !noundef !6
  %spec.select.i.i = select i1 %i.db, i8 4, i8 0
  %i.dc = invoke i64 @"_ZN60_$LT$flate2..mem..Decompress$u20$as$u20$flate2..zio..Ops$GT$3run17h7f61b8b56e798308E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.74.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.da, i64 noundef %i.cz, ptr noalias noundef nonnull align 1 %i.cg, i64 noundef %.sroa.0.0.i81.i, i8 noundef %spec.select.i.i)
          to label %.noexc54 unwind label %.loopexit ; 2 uses

.noexc54:                                         ; preds = %bb.w
  %.val19.i.i = load i64, ptr %i.bb, align 8, !alias.scope !1461, !noalias !1462, !noundef !6 ; 4 uses
  %.val21.i.i = load i64, ptr %i.bc, align 8, !alias.scope !1461, !noalias !1462, !noundef !6
  %i.dd = sub i64 %i.cx, %.val20.i.i
  %i.de = add i64 %i.dd, %.val21.i.i
  %.sroa.0.0.i.i.i85.i = call noundef i64 @llvm.umin.i64(i64 %i.cw, i64 %i.de) ; 2 uses
  store i64 %.sroa.0.0.i.i.i85.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1463, !noalias !1437
  %i.df = and i64 %i.dc, 4294967295
  %.not18.i.i = icmp eq i64 %i.df, 2
  br i1 %.not18.i.i, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %.noexc54
  %.sroa.416.0.extract.shift.i.i = lshr i64 %i.dc, 32
  %trunc.i.i = trunc i64 %.sroa.416.0.extract.shift.i.i to i8
  switch i8 %trunc.i.i, label %bb.y [
    i8 0, label %bb.z
    i8 1, label %bb.aa
    i8 2, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.dg = icmp ne i64 %.val19.i.i, %.val.i84.i
  %i.dh = or i1 %i.ch, %i.dg
  %or.cond.i.i = or i1 %i.db, %i.dh
  br i1 %or.cond.i.i, label %bb.ab, label %.backedge

bb.aa:                                            ; preds = %bb.x
  %i.di = icmp ne i64 %.val19.i.i, %.val.i84.i
  %i.dj = or i1 %i.ch, %i.di
  %or.cond3.i.i = or i1 %i.db, %i.dj
  br i1 %or.cond3.i.i, label %bb.ab, label %.backedge

.backedge:                                        ; preds = %bb.aa, %bb.z
  br label %bb.s

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x
  %i.dk = sub i64 %.val19.i.i, %.val.i84.i        ; 4 uses
  %.not.i.i.i = icmp ult i64 %.sroa.0.0.i81.i, %i.dk
  br i1 %.not.i.i.i, label %bb.ac, label %bb.aj, !prof !238

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @290, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #46
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %.noexc54
  %i.dl = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 20, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @588, i64 noundef 22)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit ; 6 uses

.noexc56:                                         ; preds = %bb.ad
  %i.dm = ptrtoint ptr %i.dl to i64               ; 7 uses
  %i.dn = and i64 %i.dm, 3
  switch i64 %i.dn, label %default.unreachable497 [
    i64 2, label %.split.i
    i64 3, label %bb.ae
    i64 0, label %.split137.i
    i64 1, label %.split136.i
  ], !prof !1466

.split.i:                                         ; preds = %.noexc56
  %.mask151.i = and i64 %i.dm, -4294967296
  %i.do = icmp eq i64 %.mask151.i, 17179869184
  br i1 %i.do, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i.backedge", label %.thread227

.split137.i:                                      ; preds = %.noexc56
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dq = load i8, ptr %i.dp, align 8, !range !1467, !noalias !1405, !noundef !6
  %i.dr = icmp eq i8 %i.dq, 35
  br i1 %i.dr, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i.backedge", label %.thread227

.split136.i:                                      ; preds = %.noexc56
  %i.ds = getelementptr i8, ptr %i.dl, i64 -1     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  %i.dt = getelementptr i8, ptr %i.dl, i64 15
  %i.du = load i8, ptr %i.dt, align 8, !range !1467, !noalias !1405, !noundef !6
  %i.dv = icmp eq i8 %i.du, 35
  br i1 %i.dv, label %bb.af, label %.thread227

bb.ae:                                            ; preds = %.noexc56
  %i.dw = icmp ult ptr %i.dl, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.dw)
  %.mask.i = and i64 %i.dm, -4294967296
  %i.dx = icmp eq i64 %.mask.i, 150323855360
  br i1 %i.dx, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i.backedge", label %.thread227

bb.af:                                            ; preds = %.split136.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ds, align 8, !noalias !1468 ; 5 uses
  %i.dy = getelementptr i8, ptr %i.dl, i64 7
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.dy, align 8, !noalias !1468, !nonnull !6, !align !15, !noundef !6 ; 5 uses
  %i.dz = load ptr, ptr %.val1.i.i.i.i.i.i, align 8, !invariant.load !6, !noalias !1468 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  invoke void %i.dz(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.ah unwind label %bb.ai, !noalias !1468

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ea = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !range !165, !invariant.load !6, !noalias !1468 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !range !264, !invariant.load !6, !noalias !1468 ; 2 uses
  %i.ee = icmp ult i64 %i.ed, -9223372036854775807
  call void @llvm.assume(i1 %i.ee)
  %i.ef = icmp eq i64 %i.eb, 0
  br i1 %i.ef, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h12375bd83da71235E.exit.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"

end_hunk_0
begin_hunk_1_@_ZN18lindera_dictionary10decompress10decompress17h1297f99732080e91E:bb.a
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef 24, i64 noundef 8) #47, !noalias !1468
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i.backedge"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i.backedge": ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h12375bd83da71235E.exit.i.i.i.i.i", %bb.ae, %.split137.i, %.split.i
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i"

bb.aj:                                            ; preds = %bb.ab
  %i.en = add i64 %i.dk, %i.bo                    ; 2 uses
  store i64 %i.en, ptr %i.be, align 8, !alias.scope !1405, !noalias !1408
  %i.eo = icmp eq i64 %.val19.i.i, %.val.i84.i
  br i1 %i.eo, label %.thread224, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ep = sub nuw i64 %.sroa.0.0.i81.i, %i.dk
  %i.eq = icmp uge i64 %i.cf, %.sroa.010.4.i
  %i.er = icmp eq i64 %i.dk, %.sroa.0.0.i81.i
  %or.cond2.i = and i1 %i.eq, %i.er
  %i.es = shl i64 %.sroa.010.4.i, 1
  %.inv.i = icmp sgt i64 %.sroa.010.4.i, -1
  %.sroa.055.0.i = select i1 %.inv.i, i64 %i.es, i64 -1, !prof !7
  %.sroa.010.5.i = select i1 %or.cond2.i, i64 %.sroa.055.0.i, i64 %.sroa.010.4.i
  br label %bb.k

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit.i": ; preds = %.noexc52
  %i.et = ptrtoint ptr %i.bt to i64
  br label %.thread227

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body57

.loopexit.split-lp.loopexit:                      ; preds = %bb.ad
  %lpad.loopexit252 = landingpad { ptr, i32 }
          cleanup
  br label %.body57

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.m
  %lpad.loopexit255 = landingpad { ptr, i32 }
          cleanup
  br label %.body57

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread, %bb.i, %bb.v, %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body57

.body57:                                          ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.body.i
  %eh.lpad-body58 = phi { ptr, i32 } [ %i.eg, %.body.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit252, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit255, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val33 = load i64, ptr %i.w, align 8           ; 2 uses
  %i.eu = icmp eq i64 %.val33, 0
  br i1 %i.eu, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit", label %bb.al

bb.al:                                            ; preds = %.body57
  %.val34 = load ptr, ptr %i.bd, align 8, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34, i64 noundef %.val33, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit"

.thread227:                                       ; preds = %bb.o, %.split.i, %.split137.i, %.split136.i, %bb.ae, %bb.q, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit.i"
  %.sroa.8.1.i.ph = phi i64 [ %i.et, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit.i" ], [ %i.dm, %.split.i ], [ 163208757251, %bb.q ], [ %i.dm, %bb.ae ], [ %i.dm, %.split136.i ], [ %i.dm, %.split137.i ], [ 163208757251, %bb.o ]
  %i.ev = inttoptr i64 %.sroa.8.1.i.ph to ptr
  br label %.thread

.thread:                                          ; preds = %.noexc51, %.thread227
  %.sroa.8.2.i223 = phi ptr [ %i.ev, %.thread227 ], [ %i.bh, %.noexc51 ]
  %i.ew = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h11caec4a0ad2a6bbE"(ptr noundef nonnull %.sroa.8.2.i223)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread224:                                       ; preds = %bb.aj, %bb.n, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1477, !noundef !6 ; 2 uses
  %i.ex = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ex, label %bb.am, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %.thread224
  %.val.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !1477, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #47, !noalias !1477
  br label %bb.am

bb.am:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %.thread224
  %.val2.i.i = load ptr, ptr %.sroa.74.0..sroa_idx.i, align 8, !alias.scope !1477, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef 43296, i64 noundef 8) #47, !noalias !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.dr

bb.an:                                            ; preds = %.thread
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ew, ptr %i.ey, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  %.val31 = load i64, ptr %i.w, align 8           ; 2 uses
  %i.ez = icmp eq i64 %.val31, 0
  br i1 %i.ez, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit59", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val32 = load ptr, ptr %i.bd, align 8, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32, i64 noundef %.val31, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit59"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit": ; preds = %bb.al, %.body57
  call fastcc void @"_ZN4core3ptr82drop_in_place$LT$flate2..deflate..read..DeflateDecoder$LT$$RF$$u5b$u8$u5d$$GT$$GT$17hdff6da03ef5192edE"(ptr noalias noundef align 8 dereferenceable(72) %i.x) #48
  br label %.body

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit59": ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  %.val1.i.i60 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1484, !noundef !6 ; 2 uses
  %i.fa = icmp eq i64 %.val1.i.i60, 0
  br i1 %i.fa, label %bb.ap, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i61"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i61": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit59"
  %.val.i.i62 = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !1484, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i62, i64 noundef %.val1.i.i60, i64 noundef 1) #47, !noalias !1484
  br label %bb.ap

bb.ap:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i61", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit59"
  %.val2.i.i63 = load ptr, ptr %.sroa.74.0..sroa_idx.i, align 8, !alias.scope !1484, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i63, i64 noundef 43296, i64 noundef 8) #47, !noalias !1484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.dx, %bb.cb, %bb.ap
  %.val36 = phi ptr [ %i.ap, %bb.dx ], [ %i.ai, %bb.cb ], [ %i.ab, %bb.ap ]
  %.val35 = load i64, ptr %1, align 8             ; 2 uses
  %i.fb = icmp eq i64 %.val35, 0
  br i1 %i.fb, label %"_ZN4core3ptr67drop_in_place$LT$lindera_dictionary..decompress..CompressedData$GT$17h71e52341d34d8c86E.exit65", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val36, i64 noundef %.val35, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %"_ZN4core3ptr67drop_in_place$LT$lindera_dictionary..decompress..CompressedData$GT$17h71e52341d34d8c86E.exit65"

bb.as:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit209"
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #49
  unreachable

bb.at:                                            ; preds = %bb.av
  %.pre.pre.i136 = load i64, ptr %i.fj, align 8, !alias.scope !1485, !noalias !1488
  %.pre203.pre.i137 = load i64, ptr %i.u, align 8, !range !165, !alias.scope !1485, !noalias !1488
  %.sroa.5.0..sroa_idx.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 2 uses
  br label %bb.aw

bb.au:                                            ; preds = %"_ZN6flate29bufreader18BufReader$LT$R$GT$8with_buf17h74477a6910698810E.exit.i39"
  %.sroa.6.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i41, i8 0, i64 16, i1 false), !alias.scope !1381, !noalias !1490
  %.sroa.74.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.74.0..sroa_idx.i42, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !1490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1391
  store ptr %i.ai, ptr %i.v, align 8, !alias.scope !1381, !noalias !1490
  %.sroa.02.sroa.4.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store i64 %i.ak, ptr %.sroa.02.sroa.4.0..sroa_idx.i43, align 8, !alias.scope !1381, !noalias !1490
  %.sroa.43.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  store ptr %i.al, ptr %.sroa.43.0..sroa_idx.i44, align 8, !alias.scope !1381, !noalias !1490
  %.sroa.5.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 4 uses
  store i64 32768, ptr %.sroa.5.0..sroa_idx.i45, align 8, !alias.scope !1381, !noalias !1490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 0, ptr %i.u, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 4 uses
  store i64 0, ptr %i.fj, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  %i.fk = invoke fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17h81f2130d624d3f18E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.noexc138 unwind label %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc138:                                        ; preds = %bb.au
  %i.fl = extractvalue { i64, ptr } %i.fk, 0
  %i.fm = extractvalue { i64, ptr } %i.fk, 1      ; 2 uses
  %i.fn = trunc nuw i64 %i.fl to i1
  br i1 %i.fn, label %.thread230, label %bb.av

bb.av:                                            ; preds = %.noexc138
  %i.fo = icmp eq ptr %i.fm, null
  br i1 %i.fo, label %.thread234, label %bb.at

bb.aw:                                            ; preds = %bb.bw, %bb.at
  %i.fp = phi i64 [ %.pre203.pre.i137, %bb.at ], [ %i.gi, %bb.bw ] ; 2 uses
  %i.fq = phi i64 [ %.pre.pre.i136, %bb.at ], [ %i.is, %bb.bw ] ; 2 uses
  %.sroa.018.4.i70 = phi i64 [ 0, %bb.at ], [ %i.iu, %bb.bw ]
  %.sroa.010.4.i71 = phi i64 [ 8192, %bb.at ], [ %.sroa.010.5.i118, %bb.bw ] ; 5 uses
  %i.fr = or i64 %i.fq, %i.fp
  %or.cond80.i72 = icmp eq i64 %i.fr, 0
  br i1 %or.cond80.i72, label %bb.ay, label %bb.ax

thread-pre-split.i131:                            ; preds = %bb.az
  %.pr.i132 = load i64, ptr %i.u, align 8, !alias.scope !1485, !noalias !1488
  %.pre204.i133 = load i64, ptr %i.fj, align 8, !alias.scope !1485, !noalias !1488
  br label %bb.ax

bb.ax:                                            ; preds = %thread-pre-split.i131, %bb.aw
  %i.fs = phi i64 [ %.pr.i132, %thread-pre-split.i131 ], [ %i.fp, %bb.aw ] ; 6 uses
  %i.ft = phi i64 [ %.pre204.i133, %thread-pre-split.i131 ], [ %i.fq, %bb.aw ] ; 5 uses
  %i.fu = icmp sgt i64 %i.ft, -1
  call void @llvm.assume(i1 %i.fu)
  %i.fv = icmp eq i64 %i.ft, %i.fs
  br i1 %i.fv, label %bb.ba, label %._crit_edge.i73

._crit_edge.i73:                                  ; preds = %bb.ax
  %.pre205.i74 = load ptr, ptr %i.fi, align 8, !alias.scope !1485, !noalias !1488
  br label %bb.bd

bb.ay:                                            ; preds = %bb.aw
  %i.fw = invoke fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17h81f2130d624d3f18E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.noexc139 unwind label %.loopexit.split-lp258.loopexit.split-lp.loopexit ; 2 uses

.noexc139:                                        ; preds = %bb.ay
  %i.fx = extractvalue { i64, ptr } %i.fw, 0
  %i.fy = extractvalue { i64, ptr } %i.fw, 1      ; 2 uses
  %i.fz = trunc nuw i64 %i.fx to i1
  br i1 %i.fz, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit.i134", label %bb.az

bb.az:                                            ; preds = %.noexc139
  %i.ga = icmp eq ptr %i.fy, null
  br i1 %i.ga, label %.thread234, label %thread-pre-split.i131

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  %i.gb = add nuw i64 %i.fs, 32
  %i.gc = shl nuw i64 %i.fs, 1
  %.sroa.0.0.i.i.i.i124 = call noundef i64 @llvm.umax.i64(i64 %i.gb, i64 %i.gc) ; 4 uses
  %i.gd = icmp slt i64 %.sroa.0.0.i.i.i.i124, 0
  br i1 %i.gd, label %.thread238, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i125, !prof !27

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i125: ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1497
  %i.ge = icmp eq i64 %i.fs, 0
  br i1 %i.ge, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i.i127", label %bb.bb

bb.bb:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i125
  %.val29.i.i.i126 = load ptr, ptr %i.fi, align 8, !alias.scope !1498, !noalias !1488, !nonnull !6, !noundef !6
  store ptr %.val29.i.i.i126, ptr %i.l, align 8, !alias.scope !1499, !noalias !1497
  store i64 %i.fs, ptr %.sroa.5.0..sroa_idx.i.i.i.i68, align 8, !alias.scope !1499, !noalias !1497
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i.i127"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i.i127": ; preds = %bb.bb, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i125
  %.sink.i.i.i.i128 = phi i64 [ 1, %bb.bb ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i125 ]
  store i64 %.sink.i.i.i.i128, ptr %i.fd, align 8, !alias.scope !1499, !noalias !1497
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hd6d4a18c81f6aeb6E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, i64 noundef 1, i64 noundef %.sroa.0.0.i.i.i.i124, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.l), !noalias !1498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1497
  %i.gf = load i64, ptr %i.m, align 8, !range !66, !noalias !1497, !noundef !6
  %i.gg = trunc nuw i64 %i.gf to i1
  br i1 %i.gg, label %bb.bc, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.i129"

bb.bc:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i.i127"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1497
  br label %.thread238

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.i129": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i.i127"
  %i.gh = load ptr, ptr %i.fe, align 8, !noalias !1497, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1497
  store ptr %i.gh, ptr %i.fi, align 8, !alias.scope !1498, !noalias !1488
  store i64 %.sroa.0.0.i.i.i.i124, ptr %i.u, align 8, !alias.scope !1498, !noalias !1488
  br label %bb.bd

bb.bd:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.i129", %._crit_edge.i73
  %i.gi = phi i64 [ %i.fs, %._crit_edge.i73 ], [ %.sroa.0.0.i.i.i.i124, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.i129" ] ; 2 uses
  %i.gj = phi ptr [ %.pre205.i74, %._crit_edge.i73 ], [ %i.gh, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.i129" ]
  %i.gk = sub nsw i64 %i.gi, %i.ft                ; 2 uses
  %.sroa.0.0.i81.i75 = call noundef i64 @llvm.umin.i64(i64 %.sroa.010.4.i71, i64 %i.gk) ; 7 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.ft ; 2 uses
  %i.gm = icmp eq i64 %.sroa.0.0.i81.i75, 0       ; 2 uses
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i106"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i106": ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i106.backedge", %bb.bd
  %.sroa.11.0.i76 = phi i64 [ %.sroa.018.4.i70, %bb.bd ], [ %.sroa.0.0.i81.i75, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i106.backedge" ] ; 2 uses
  %i.gn = sub nuw i64 %.sroa.0.0.i81.i75, %.sroa.11.0.i76
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.sroa.11.0.i76
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.go, i8 0, i64 %i.gn, i1 false), !noalias !1502
  call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  %.promoted.i.i77 = load i64, ptr %.sroa.6.0..sroa_idx.i41, align 8, !alias.scope !1516, !noalias !1517
  %.promoted36.i.i78 = load i64, ptr %i.ff, align 8, !alias.scope !1516, !noalias !1517
  %.promoted37.i.i79 = load ptr, ptr %i.v, align 8, !alias.scope !1516, !noalias !1517
  %.pre.i.i.i80 = load i64, ptr %.sroa.5.0..sroa_idx.i45, align 8, !alias.scope !1516, !noalias !1517 ; 3 uses
  %i.gp = load ptr, ptr %.sroa.43.0..sroa_idx.i44, align 8, !alias.scope !1516, !noalias !1517, !nonnull !6, !align !44 ; 3 uses
  %.promoted38.i.i81 = load i64, ptr %.sroa.02.sroa.4.0..sroa_idx.i43, align 8, !alias.scope !1516, !noalias !1517
  br label %bb.be

bb.be:                                            ; preds = %.backedge678, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i106"
  %i.gq = phi i64 [ %.promoted38.i.i81, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i106" ], [ %i.gz, %.backedge678 ] ; 3 uses
  %i.gr = phi ptr [ %.promoted37.i.i79, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i106" ], [ %i.ha, %.backedge678 ] ; 4 uses
  %i.gs = phi i64 [ %.promoted36.i.i78, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i106" ], [ %i.hb, %.backedge678 ] ; 2 uses
  %i.gt = phi i64 [ %.promoted.i.i77, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i106" ], [ %.sroa.0.0.i.i.i85.i90, %.backedge678 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1519), !noalias !1522
  %i.gu = icmp eq i64 %i.gt, %i.gs
  br i1 %i.gu, label %bb.bf, label %._crit_edge.i.i.i82

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !1523), !noalias !1522
  call void @llvm.experimental.noalias.scope.decl(metadata !1526), !noalias !1522
  %.sroa.0.0.i.i.i.i.i121 = call noundef i64 @llvm.umin.i64(i64 %i.gq, i64 %.pre.i.i.i80) ; 6 uses
  %i.gv = icmp eq i64 %.sroa.0.0.i.i.i.i.i121, 1
  br i1 %i.gv, label %bb.bg, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h0e8b5a823e507235E.exit.i.i.i.i122"

bb.bg:                                            ; preds = %bb.bf
  %i.gw = load i8, ptr %i.gr, align 1, !noalias !1528, !noundef !6
  store i8 %i.gw, ptr %i.gp, align 1, !alias.scope !1526, !noalias !1530
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i123"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h0e8b5a823e507235E.exit.i.i.i.i122": ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gp, ptr nonnull readonly align 1 %i.gr, i64 %.sroa.0.0.i.i.i.i.i121, i1 false), !alias.scope !1531, !noalias !1535
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i123"

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i123": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h0e8b5a823e507235E.exit.i.i.i.i122", %bb.bg
  %i.gx = sub nuw i64 %i.gq, %.sroa.0.0.i.i.i.i.i121 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sroa.0.0.i.i.i.i.i121 ; 2 uses
  store ptr %i.gy, ptr %i.v, align 8, !alias.scope !1537, !noalias !1538
  store i64 %i.gx, ptr %.sroa.02.sroa.4.0..sroa_idx.i43, align 8, !alias.scope !1537, !noalias !1538
  store i64 %.sroa.0.0.i.i.i.i.i121, ptr %i.ff, align 8, !alias.scope !1539, !noalias !1540
  store i64 0, ptr %.sroa.6.0..sroa_idx.i41, align 8, !alias.scope !1539, !noalias !1540
  br label %._crit_edge.i.i.i82

._crit_edge.i.i.i82:                              ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i123", %bb.be
  %i.gz = phi i64 [ %i.gx, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i123" ], [ %i.gq, %bb.be ]
  %i.ha = phi ptr [ %i.gy, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i123" ], [ %i.gr, %bb.be ]
  %i.hb = phi i64 [ %.sroa.0.0.i.i.i.i.i121, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i123" ], [ %i.gs, %bb.be ] ; 7 uses
  %i.hc = phi i64 [ 0, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i.i.i123" ], [ %i.gt, %bb.be ] ; 6 uses
  %i.hd = icmp ult i64 %i.hb, %i.hc
  %.not.i.i83.i83 = icmp ugt i64 %i.hb, %.pre.i.i.i80
  %or.cond.i.i.i84 = or i1 %.not.i.i83.i83, %i.hd
  br i1 %or.cond.i.i.i84, label %bb.bh, label %bb.bi, !prof !16

bb.bh:                                            ; preds = %._crit_edge.i.i.i82
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.hc, i64 noundef %i.hb, i64 noundef %.pre.i.i.i80, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @618) #46
          to label %.noexc140 unwind label %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp

.noexc140:                                        ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %._crit_edge.i.i.i82
  %i.he = sub nuw i64 %i.hb, %i.hc
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.hc
  %i.hg = icmp eq i64 %i.hb, %i.hc                ; 3 uses
  %.val.i84.i85 = load i64, ptr %i.fg, align 8, !alias.scope !1541, !noalias !1542, !noundef !6 ; 4 uses
  %.val20.i.i86 = load i64, ptr %i.fh, align 8, !alias.scope !1541, !noalias !1542, !noundef !6
  %spec.select.i.i87 = select i1 %i.hg, i8 4, i8 0
  %i.hh = invoke i64 @"_ZN60_$LT$flate2..mem..Decompress$u20$as$u20$flate2..zio..Ops$GT$3run17h7f61b8b56e798308E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.74.0..sroa_idx.i42, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hf, i64 noundef %i.he, ptr noalias noundef nonnull align 1 %i.gl, i64 noundef %.sroa.0.0.i81.i75, i8 noundef %spec.select.i.i87)
          to label %.noexc141 unwind label %.loopexit257 ; 2 uses

.noexc141:                                        ; preds = %bb.bi
  %.val19.i.i88 = load i64, ptr %i.fg, align 8, !alias.scope !1541, !noalias !1542, !noundef !6 ; 4 uses
  %.val21.i.i89 = load i64, ptr %i.fh, align 8, !alias.scope !1541, !noalias !1542, !noundef !6
  %i.hi = sub i64 %i.hc, %.val20.i.i86
  %i.hj = add i64 %i.hi, %.val21.i.i89
  %.sroa.0.0.i.i.i85.i90 = call noundef i64 @llvm.umin.i64(i64 %i.hb, i64 %i.hj) ; 2 uses
  store i64 %.sroa.0.0.i.i.i85.i90, ptr %.sroa.6.0..sroa_idx.i41, align 8, !alias.scope !1543, !noalias !1517
  %i.hk = and i64 %i.hh, 4294967295
  %.not18.i.i91 = icmp eq i64 %i.hk, 2
  br i1 %.not18.i.i91, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %.noexc141
  %.sroa.416.0.extract.shift.i.i112 = lshr i64 %i.hh, 32
  %trunc.i.i113 = trunc i64 %.sroa.416.0.extract.shift.i.i112 to i8
  switch i8 %trunc.i.i113, label %bb.bk [
    i8 0, label %bb.bl
    i8 1, label %bb.bm
    i8 2, label %bb.bn
  ]

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.hl = icmp ne i64 %.val19.i.i88, %.val.i84.i85
  %i.hm = or i1 %i.gm, %i.hl
  %or.cond.i.i120 = or i1 %i.hg, %i.hm
  br i1 %or.cond.i.i120, label %bb.bn, label %.backedge678

bb.bm:                                            ; preds = %bb.bj
  %i.hn = icmp ne i64 %.val19.i.i88, %.val.i84.i85
  %i.ho = or i1 %i.gm, %i.hn
  %or.cond3.i.i119 = or i1 %i.hg, %i.ho
  br i1 %or.cond3.i.i119, label %bb.bn, label %.backedge678

.backedge678:                                     ; preds = %bb.bm, %bb.bl
  br label %bb.be

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bj
  %i.hp = sub i64 %.val19.i.i88, %.val.i84.i85    ; 4 uses
  %.not.i.i.i114 = icmp ult i64 %.sroa.0.0.i81.i75, %i.hp
  br i1 %.not.i.i.i114, label %bb.bo, label %bb.bv, !prof !238

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @290, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #46
          to label %.noexc142 unwind label %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp

.noexc142:                                        ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %.noexc141
  %i.hq = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 20, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @588, i64 noundef 22)
          to label %.noexc143 unwind label %.loopexit.split-lp258.loopexit ; 6 uses

.noexc143:                                        ; preds = %bb.bp
  %i.hr = ptrtoint ptr %i.hq to i64               ; 7 uses
  %i.hs = and i64 %i.hr, 3
  switch i64 %i.hs, label %default.unreachable497 [
    i64 2, label %.split.i109
    i64 3, label %bb.bq
    i64 0, label %.split137.i107
    i64 1, label %.split136.i92
  ], !prof !1466

.split.i109:                                      ; preds = %.noexc143
  %.mask151.i110 = and i64 %i.hr, -4294967296
  %i.ht = icmp eq i64 %.mask151.i110, 17179869184
  br i1 %i.ht, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i106.backedge", label %.thread238

.split137.i107:                                   ; preds = %.noexc143
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hv = load i8, ptr %i.hu, align 8, !range !1467, !noalias !1485, !noundef !6
  %i.hw = icmp eq i8 %i.hv, 35
  br i1 %i.hw, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i106.backedge", label %.thread238

.split136.i92:                                    ; preds = %.noexc143
  %i.hx = getelementptr i8, ptr %i.hq, i64 -1     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hx) ]
  %i.hy = getelementptr i8, ptr %i.hq, i64 15
  %i.hz = load i8, ptr %i.hy, align 8, !range !1467, !noalias !1485, !noundef !6
  %i.ia = icmp eq i8 %i.hz, 35
  br i1 %i.ia, label %bb.br, label %.thread238

bb.bq:                                            ; preds = %.noexc143
  %i.ib = icmp ult ptr %i.hq, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.ib)
  %.mask.i108 = and i64 %i.hr, -4294967296
  %i.ic = icmp eq i64 %.mask.i108, 150323855360
  br i1 %i.ic, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i106.backedge", label %.thread238

bb.br:                                            ; preds = %.split136.i92
  %.val.i.i.i.i.i.i99 = load ptr, ptr %i.hx, align 8, !noalias !1546 ; 5 uses
  %i.id = getelementptr i8, ptr %i.hq, i64 7
  %.val1.i.i.i.i.i.i100 = load ptr, ptr %i.id, align 8, !noalias !1546, !nonnull !6, !align !15, !noundef !6 ; 5 uses
  %i.ie = load ptr, ptr %.val1.i.i.i.i.i.i100, align 8, !invariant.load !6, !noalias !1546 ; 2 uses
  %.not.i.i.i.i.i.i.i.i101 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i.i.i.i.i101, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i99) ]
  invoke void %i.ie(ptr noundef nonnull %.val.i.i.i.i.i.i99)
          to label %bb.bt unwind label %bb.bu, !noalias !1546

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.if = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i100, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !range !165, !invariant.load !6, !noalias !1546 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i100, i64 16
  %i.ii = load i64, ptr %i.ih, align 8, !range !264, !invariant.load !6, !noalias !1546 ; 2 uses
  %i.ij = icmp ult i64 %i.ii, -9223372036854775807
  call void @llvm.assume(i1 %i.ij)
  %i.ik = icmp eq i64 %i.ig, 0
  br i1 %i.ik, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h12375bd83da71235E.exit.i.i.i.i.i105", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i104"

end_hunk_1
begin_hunk_2_@_ZN18lindera_dictionary10decompress10decompress17h1297f99732080e91E:bb.a
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 4, !noalias !1572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1572
  %i.jm = invoke fastcc noundef ptr @_ZN6flate22gz14GzHeaderParser5parse17h2466f620092292d0E(ptr noalias noundef align 8 dereferenceable(104) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %bb.ce unwind label %.thread61.i, !noalias !1574 ; 4 uses

bb.cd:                                            ; preds = %.body.i159
  br i1 %.sroa.01.3.i, label %bb.cq, label %.body

.thread61.i:                                      ; preds = %bb.cc
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr47drop_in_place$LT$flate2..gz..GzHeaderParser$GT$17hcfdc23d655b3fae9E"(ptr noalias noundef align 8 dereferenceable(104) %i.k) #48, !noalias !1572
  br label %.thread54.i

bb.ce:                                            ; preds = %bb.cc
  store ptr %i.jm, ptr %i.j, align 8, !noalias !1572
  %.not.i = icmp eq ptr %i.jm, null
  br i1 %.not.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jo = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr nonnull %i.jm), !noalias !1572
  %i.jp = icmp eq i8 %i.jo, 13
  br i1 %i.jp, label %bb.ci, label %bb.cl

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %i.k, i64 104, i1 false), !noalias !1572
  invoke void @"_ZN94_$LT$flate2..gz..GzHeader$u20$as$u20$core..convert..From$LT$flate2..gz..GzHeaderParser$GT$$GT$4from17h74bf1629d620d90bE"(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.h)
          to label %bb.ch unwind label %.thread33.i, !noalias !1572

.thread33.i:                                      ; preds = %bb.cg
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %.thread54.i

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1572
  %i.jr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.jr, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !1572
  store i64 -9223372036854775807, ptr %i.g, align 8, !noalias !1572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1572
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %i.k, i64 104, i1 false), !noalias !1572
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.cj unwind label %bb.cs, !noalias !1572

bb.cj:                                            ; preds = %bb.cl, %bb.ci, %bb.ch
  %.sroa.01.3.i = phi i1 [ false, %bb.ci ], [ false, %bb.ch ], [ true, %bb.cl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1572
  %.sroa.4.0.copyload.i = load ptr, ptr %i.jh, align 8, !alias.scope !1569, !noalias !1574 ; 3 uses
  %.sroa.527.0.copyload.i = load i64, ptr %i.ji, align 8, !alias.scope !1569, !noalias !1574 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1578
  invoke void @_ZN6flate23mem10Decompress3new17h291e4726c574495cE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i1 noundef zeroext false)
          to label %bb.cm unwind label %bb.ck, !noalias !1578

bb.ck:                                            ; preds = %bb.cj
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jt = icmp eq i64 %.sroa.527.0.copyload.i, 0
  br i1 %i.jt, label %.body.i159, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i158"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i158": ; preds = %bb.ck
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.527.0.copyload.i, i64 noundef 1) #47, !noalias !1578
  br label %.body.i159

bb.cl:                                            ; preds = %bb.cf
  %i.ju = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.jm, ptr %i.ju, align 8, !noalias !1572
  store i64 -9223372036854775805, ptr %i.g, align 8, !noalias !1572
  br label %bb.cj

.body.i159:                                       ; preds = %bb.cn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i158", %bb.ck
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.js, %bb.ck ], [ %i.js, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i158" ], [ %i.jw, %bb.cn ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$flate2..gz..bufread..GzState$GT$17h48e7ac6a4f8747a5E"(ptr noalias noundef align 8 dereferenceable(104) %i.g) #48
          to label %bb.cd unwind label %bb.cr, !noalias !1572

bb.cm:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 16, i1 false), !noalias !1574
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx2.i.i, align 8, !alias.scope !1575, !noalias !1580
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.527.0.copyload.i, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !alias.scope !1575, !noalias !1580
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i64 16, i1 false), !noalias !1574
  %i.jv = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jv, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1578
  call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  call void @llvm.experimental.noalias.scope.decl(metadata !1584)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1586
  invoke void @_ZN6flate23crc14impl_crc32fast3Crc3new17h67c7dd1c6341d98eE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.co unwind label %bb.cn, !noalias !1586

bb.cn:                                            ; preds = %bb.cm
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr121drop_in_place$LT$flate2..deflate..bufread..DeflateDecoder$LT$flate2..bufreader..BufReader$LT$$RF$$u5b$u8$u5d$$GT$$GT$$GT$17hc4312f739046e2beE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.e) #48, !noalias !1587
  br label %.body.i159

bb.co:                                            ; preds = %bb.cm
  %i.jx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jx, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.e, i64 72, i1 false), !alias.scope !1588, !noalias !1572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false), !noalias !1569
  %.sroa.0.104..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.104..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false), !noalias !1569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.sroa.01.3.i, label %bb.cp, label %bb.cu

bb.cp:                                            ; preds = %bb.co
  call fastcc void @"_ZN4core3ptr47drop_in_place$LT$flate2..gz..GzHeaderParser$GT$17hcfdc23d655b3fae9E"(ptr noalias noundef align 8 dereferenceable(104) %i.k), !noalias !1572
  br label %bb.cu

bb.cq:                                            ; preds = %bb.cd
  call fastcc void @"_ZN4core3ptr47drop_in_place$LT$flate2..gz..GzHeaderParser$GT$17hcfdc23d655b3fae9E"(ptr noalias noundef align 8 dereferenceable(104) %i.k) #48, !noalias !1572
  br label %.body

bb.cr:                                            ; preds = %bb.cs, %.body.i159
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #49, !noalias !1572
  unreachable

bb.cs:                                            ; preds = %bb.ci
  %i.jz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$flate2..gz..bufread..GzState$GT$17h48e7ac6a4f8747a5E"(ptr noalias noundef align 8 dereferenceable(104) %i.g) #48
          to label %.thread54.i unwind label %bb.cr, !noalias !1572

.thread54.i:                                      ; preds = %bb.cs, %.thread33.i, %.thread61.i
  %.pn2057.i = phi { ptr, i32 } [ %i.jn, %.thread61.i ], [ %i.jq, %.thread33.i ], [ %i.jz, %bb.cs ] ; 2 uses
  %.val23.i = load i64, ptr %i.ji, align 8, !alias.scope !1569, !noalias !1574, !noundef !6 ; 2 uses
  %i.ka = icmp eq i64 %.val23.i, 0
  br i1 %i.ka, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %.thread54.i
  %.val22.i = load ptr, ptr %i.jh, align 8, !alias.scope !1569, !noalias !1574, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22.i, i64 noundef %.val23.i, i64 noundef 1) #47, !noalias !1572
  br label %.body

bb.ct:                                            ; preds = %bb.cv
  %.pre.pre.i201 = load i64, ptr %i.ke, align 8, !alias.scope !1590, !noalias !1593
  %.pre163.pre.i = load i64, ptr %i.s, align 8, !range !165, !alias.scope !1590, !noalias !1593
  %.sroa.5.0..sroa_idx.i.i.i.i164 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.cw

bb.cu:                                            ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.t, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.0, i64 200, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 0, ptr %i.s, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.kd, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  store i64 0, ptr %i.ke, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  %i.kf = invoke fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17ha719d9eaa6acfbacE(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.noexc202 unwind label %.loopexit.split-lp269.loopexit.split-lp ; 2 uses

.noexc202:                                        ; preds = %bb.cu
  %i.kg = extractvalue { i64, ptr } %i.kf, 0
  %i.kh = extractvalue { i64, ptr } %i.kf, 1      ; 2 uses
  %i.ki = trunc nuw i64 %i.kg to i1
  br i1 %i.ki, label %.thread241, label %bb.cv

bb.cv:                                            ; preds = %.noexc202
  %i.kj = icmp eq ptr %i.kh, null
  br i1 %i.kj, label %.thread245, label %bb.ct

bb.cw:                                            ; preds = %bb.dm, %bb.ct
  %i.kk = phi i64 [ %.pre163.pre.i, %bb.ct ], [ %i.ld, %bb.dm ] ; 2 uses
  %i.kl = phi i64 [ %.pre.pre.i201, %bb.ct ], [ %i.mu, %bb.dm ] ; 2 uses
  %.sroa.018.4.i165 = phi i64 [ 0, %bb.ct ], [ %i.mw, %bb.dm ] ; 2 uses
  %.sroa.010.4.i166 = phi i64 [ 8192, %bb.ct ], [ %.sroa.010.5.i174, %bb.dm ] ; 5 uses
  %i.km = or i64 %i.kl, %i.kk
  %or.cond80.i167 = icmp eq i64 %i.km, 0
  br i1 %or.cond80.i167, label %bb.cy, label %bb.cx

thread-pre-split.i198:                            ; preds = %bb.cz
  %.pr.i199 = load i64, ptr %i.s, align 8, !alias.scope !1590, !noalias !1593
  %.pre164.i = load i64, ptr %i.ke, align 8, !alias.scope !1590, !noalias !1593
  br label %bb.cx

bb.cx:                                            ; preds = %thread-pre-split.i198, %bb.cw
  %i.kn = phi i64 [ %.pr.i199, %thread-pre-split.i198 ], [ %i.kk, %bb.cw ] ; 6 uses
  %i.ko = phi i64 [ %.pre164.i, %thread-pre-split.i198 ], [ %i.kl, %bb.cw ] ; 6 uses
  %i.kp = icmp sgt i64 %i.ko, -1
  call void @llvm.assume(i1 %i.kp)
  %i.kq = icmp eq i64 %i.ko, %i.kn
  br i1 %i.kq, label %bb.da, label %._crit_edge165.i

._crit_edge165.i:                                 ; preds = %bb.cx
  %.pre166.i = load ptr, ptr %i.kd, align 8, !alias.scope !1590, !noalias !1593
  br label %bb.dd

bb.cy:                                            ; preds = %bb.cw
  %i.kr = invoke fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17ha719d9eaa6acfbacE(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.noexc203 unwind label %.loopexit.split-lp269.loopexit ; 2 uses

.noexc203:                                        ; preds = %bb.cy
  %i.ks = extractvalue { i64, ptr } %i.kr, 0
  %i.kt = extractvalue { i64, ptr } %i.kr, 1      ; 2 uses
  %i.ku = trunc nuw i64 %i.ks to i1
  br i1 %i.ku, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit.i200", label %bb.cz

bb.cz:                                            ; preds = %.noexc203
  %i.kv = icmp eq ptr %i.kt, null
  br i1 %i.kv, label %.thread245, label %thread-pre-split.i198

bb.da:                                            ; preds = %bb.cx
  call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  %i.kw = add nuw i64 %i.kn, 32
  %i.kx = shl nuw i64 %i.kn, 1
  %.sroa.0.0.i.i.i.i191 = call noundef i64 @llvm.umax.i64(i64 %i.kw, i64 %i.kx) ; 4 uses
  %i.ky = icmp slt i64 %.sroa.0.0.i.i.i.i191, 0
  br i1 %i.ky, label %.thread249, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i192, !prof !27

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i192: ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1601
  %i.kz = icmp eq i64 %i.kn, 0
  br i1 %i.kz, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i.i194", label %bb.db

bb.db:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i192
  %.val29.i.i.i193 = load ptr, ptr %i.kd, align 8, !alias.scope !1602, !noalias !1593, !nonnull !6, !noundef !6
  store ptr %.val29.i.i.i193, ptr %i.a, align 8, !alias.scope !1603, !noalias !1601
  store i64 %i.kn, ptr %.sroa.5.0..sroa_idx.i.i.i.i164, align 8, !alias.scope !1603, !noalias !1601
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i.i194"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i.i194": ; preds = %bb.db, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i192
  %.sink.i.i.i.i195 = phi i64 [ 1, %bb.db ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i192 ]
  store i64 %.sink.i.i.i.i195, ptr %i.kb, align 8, !alias.scope !1603, !noalias !1601
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hd6d4a18c81f6aeb6E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 1, i64 noundef %.sroa.0.0.i.i.i.i191, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !1602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1601
  %i.la = load i64, ptr %i.b, align 8, !range !66, !noalias !1601, !noundef !6
  %i.lb = trunc nuw i64 %i.la to i1
  br i1 %i.lb, label %bb.dc, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.i196"

bb.dc:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i.i194"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1601
  br label %.thread249

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.i196": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i.i194"
  %i.lc = load ptr, ptr %i.kc, align 8, !noalias !1601, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1601
  store ptr %i.lc, ptr %i.kd, align 8, !alias.scope !1602, !noalias !1593
  store i64 %.sroa.0.0.i.i.i.i191, ptr %i.s, align 8, !alias.scope !1602, !noalias !1593
  br label %bb.dd

bb.dd:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.i196", %._crit_edge165.i
  %i.ld = phi i64 [ %i.kn, %._crit_edge165.i ], [ %.sroa.0.0.i.i.i.i191, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.i196" ] ; 2 uses
  %i.le = phi ptr [ %.pre166.i, %._crit_edge165.i ], [ %i.lc, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.i196" ]
  %i.lf = sub nsw i64 %i.ld, %i.ko                ; 2 uses
  %.sroa.0.0.i81.i168 = call noundef i64 @llvm.umin.i64(i64 %.sroa.010.4.i166, i64 %i.lf) ; 6 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.ko ; 3 uses
  %i.lh = sub nuw i64 %.sroa.0.0.i81.i168, %.sroa.018.4.i165
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.sroa.018.4.i165
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.li, i8 0, i64 %i.lh, i1 false), !noalias !1606
  %i.lj = invoke fastcc { i64, ptr } @"_ZN70_$LT$flate2..gz..read..GzDecoder$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17hfefde77ed79d9c68E"(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.t, ptr noalias noundef nonnull align 1 %i.lg, i64 noundef %.sroa.0.0.i81.i168)
          to label %.noexc204 unwind label %.loopexit.split-lp269.loopexit ; 2 uses

.noexc204:                                        ; preds = %bb.dd
  %i.lk = extractvalue { i64, ptr } %i.lj, 0
  %i.ll = extractvalue { i64, ptr } %i.lj, 1      ; 2 uses
  %i.lm = trunc nuw i64 %i.lk to i1
  br i1 %i.lm, label %_ZN3std2io4Read8read_buf17hb9f236f36bbf20baE.exit.i, label %._crit_edge.i169

._crit_edge.i169:                                 ; preds = %.noexc208, %.noexc204
  %.lcssa151.i = phi ptr [ %i.ll, %.noexc204 ], [ %i.ms, %.noexc208 ] ; 2 uses
  %i.ln = ptrtoint ptr %.lcssa151.i to i64        ; 4 uses
  %.not.i.i.i170 = icmp ult i64 %.sroa.0.0.i81.i168, %i.ln
  br i1 %.not.i.i.i170, label %bb.de, label %bb.dl, !prof !238

bb.de:                                            ; preds = %._crit_edge.i169
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @290, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #46
          to label %.noexc205 unwind label %.loopexit.split-lp269.loopexit.split-lp

.noexc205:                                        ; preds = %bb.de
  unreachable

_ZN3std2io4Read8read_buf17hb9f236f36bbf20baE.exit.i: ; preds = %.noexc204, %.noexc208
  %i.lo = phi ptr [ %i.ms, %.noexc208 ], [ %i.ll, %.noexc204 ] ; 7 uses
  %.not77.i = icmp eq ptr %i.lo, null
  br i1 %.not77.i, label %.thread.i, label %bb.df

.thread.i:                                        ; preds = %_ZN3std2io4Read8read_buf17hb9f236f36bbf20baE.exit.i
  store i64 %i.ko, ptr %i.ke, align 8, !alias.scope !1590, !noalias !1593
  br label %.thread245

bb.df:                                            ; preds = %_ZN3std2io4Read8read_buf17hb9f236f36bbf20baE.exit.i
  %i.lp = ptrtoint ptr %i.lo to i64               ; 7 uses
  %i.lq = and i64 %i.lp, 3
  switch i64 %i.lq, label %default.unreachable497 [
    i64 2, label %.split.i189
    i64 3, label %bb.dg
    i64 0, label %.split131.i
    i64 1, label %.split130.i
  ], !prof !1466

.split.i189:                                      ; preds = %bb.df
  %.mask145.i = and i64 %i.lp, -4294967296
  %i.lr = icmp eq i64 %.mask145.i, 17179869184
  br i1 %i.lr, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i187", label %.thread249

.split131.i:                                      ; preds = %bb.df
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lt = load i8, ptr %i.ls, align 8, !range !1467, !noalias !1590, !noundef !6
  %i.lu = icmp eq i8 %i.lt, 35
  br i1 %i.lu, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i187", label %.thread249

.split130.i:                                      ; preds = %bb.df
  %i.lv = getelementptr i8, ptr %i.lo, i64 -1     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lv) ]
  %i.lw = getelementptr i8, ptr %i.lo, i64 15
  %i.lx = load i8, ptr %i.lw, align 8, !range !1467, !noalias !1590, !noundef !6
  %i.ly = icmp eq i8 %i.lx, 35
  br i1 %i.ly, label %bb.dh, label %.thread249

bb.dg:                                            ; preds = %bb.df
  %i.lz = icmp ult ptr %i.lo, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.lz)
  %.mask.i188 = and i64 %i.lp, -4294967296
  %i.ma = icmp eq i64 %.mask.i188, 150323855360
  br i1 %i.ma, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i187", label %.thread249

bb.dh:                                            ; preds = %.split130.i
  %.val.i.i.i.i.i.i180 = load ptr, ptr %i.lv, align 8, !noalias !1615 ; 5 uses
  %i.mb = getelementptr i8, ptr %i.lo, i64 7
  %.val1.i.i.i.i.i.i181 = load ptr, ptr %i.mb, align 8, !noalias !1615, !nonnull !6, !align !15, !noundef !6 ; 5 uses
  %i.mc = load ptr, ptr %.val1.i.i.i.i.i.i181, align 8, !invariant.load !6, !noalias !1615 ; 2 uses
  %.not.i.i.i.i.i.i.i.i182 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i.i.i.i.i.i182, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i180) ]
  invoke void %i.mc(ptr noundef nonnull %.val.i.i.i.i.i.i180)
          to label %bb.dj unwind label %bb.dk, !noalias !1615

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.md = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i181, i64 8
  %i.me = load i64, ptr %i.md, align 8, !range !165, !invariant.load !6, !noalias !1615 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i181, i64 16
  %i.mg = load i64, ptr %i.mf, align 8, !range !264, !invariant.load !6, !noalias !1615 ; 2 uses
  %i.mh = icmp ult i64 %i.mg, -9223372036854775807
  call void @llvm.assume(i1 %i.mh)
  %i.mi = icmp eq i64 %i.me, 0
  br i1 %i.mi, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h12375bd83da71235E.exit.i.i.i.i.i186", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i185"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i185": ; preds = %bb.dj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i180) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i180, i64 noundef %i.me, i64 noundef range(i64 1, -9223372036854775807) %i.mg) #47, !noalias !1615
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h12375bd83da71235E.exit.i.i.i.i.i186"

bb.dk:                                            ; preds = %bb.di
  %i.mj = landingpad { ptr, i32 }
          cleanup
  %i.mk = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i181, i64 8
  %i.ml = load i64, ptr %i.mk, align 8, !range !165, !invariant.load !6, !noalias !1615 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i181, i64 16
  %i.mn = load i64, ptr %i.mm, align 8, !range !264, !invariant.load !6, !noalias !1615 ; 2 uses
  %i.mo = icmp ult i64 %i.mn, -9223372036854775807
  call void @llvm.assume(i1 %i.mo)
  %i.mp = icmp eq i64 %i.ml, 0
  br i1 %i.mp, label %.body.i184, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i183"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i183": ; preds = %bb.dk
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i180, i64 noundef %i.ml, i64 noundef range(i64 1, -9223372036854775807) %i.mn) #47, !noalias !1615
  br label %.body.i184

.body.i184:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i183", %bb.dk
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lv, i64 noundef 24, i64 noundef 8) #47, !noalias !1615
  br label %.body206

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h12375bd83da71235E.exit.i.i.i.i.i186": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i185", %bb.dj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lv, i64 noundef 24, i64 noundef 8) #47, !noalias !1615
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i187"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i187": ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h12375bd83da71235E.exit.i.i.i.i.i186", %bb.dg, %.split131.i, %.split.i189
  %i.mq = invoke fastcc { i64, ptr } @"_ZN70_$LT$flate2..gz..read..GzDecoder$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17hfefde77ed79d9c68E"(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.t, ptr noalias noundef nonnull align 1 %i.lg, i64 noundef %.sroa.0.0.i81.i168)
          to label %.noexc208 unwind label %.loopexit268 ; 2 uses

.noexc208:                                        ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i187"
  %i.mr = extractvalue { i64, ptr } %i.mq, 0
  %i.ms = extractvalue { i64, ptr } %i.mq, 1      ; 2 uses
  %i.mt = trunc nuw i64 %i.mr to i1
  br i1 %i.mt, label %_ZN3std2io4Read8read_buf17hb9f236f36bbf20baE.exit.i, label %._crit_edge.i169

bb.dl:                                            ; preds = %._crit_edge.i169
  %i.mu = add i64 %i.ko, %i.ln                    ; 2 uses
  store i64 %i.mu, ptr %i.ke, align 8, !alias.scope !1590, !noalias !1593
  %i.mv = icmp eq ptr %.lcssa151.i, null
  br i1 %i.mv, label %.thread245, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mw = sub nuw i64 %.sroa.0.0.i81.i168, %i.ln
  %i.mx = icmp uge i64 %i.lf, %.sroa.010.4.i166
  %i.my = icmp eq i64 %.sroa.0.0.i81.i168, %i.ln
  %or.cond2.i171 = and i1 %i.mx, %i.my
  %i.mz = shl i64 %.sroa.010.4.i166, 1
  %.inv.i172 = icmp sgt i64 %.sroa.010.4.i166, -1
  %.sroa.055.0.i173 = select i1 %.inv.i172, i64 %i.mz, i64 -1, !prof !7
  %.sroa.010.5.i174 = select i1 %or.cond2.i171, i64 %.sroa.055.0.i173, i64 %.sroa.010.4.i166
  br label %bb.cw

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit.i200": ; preds = %.noexc203
  %i.na = ptrtoint ptr %i.kt to i64
  br label %.thread249

.loopexit268:                                     ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit.i187"
  %lpad.loopexit270 = landingpad { ptr, i32 }
          cleanup
  br label %.body206

.loopexit.split-lp269.loopexit:                   ; preds = %bb.dd, %bb.cy
  %lpad.loopexit273 = landingpad { ptr, i32 }
          cleanup
  br label %.body206

.loopexit.split-lp269.loopexit.split-lp:          ; preds = %bb.de, %bb.cu, %.thread241
  %lpad.loopexit.split-lp274 = landingpad { ptr, i32 }
          cleanup
  br label %.body206

.body206:                                         ; preds = %.loopexit268, %.loopexit.split-lp269.loopexit.split-lp, %.loopexit.split-lp269.loopexit, %.body.i184
  %eh.lpad-body207 = phi { ptr, i32 } [ %i.mj, %.body.i184 ], [ %lpad.loopexit270, %.loopexit268 ], [ %lpad.loopexit273, %.loopexit.split-lp269.loopexit ], [ %lpad.loopexit.split-lp274, %.loopexit.split-lp269.loopexit.split-lp ]
  %.val25 = load i64, ptr %i.s, align 8           ; 2 uses
  %i.nb = icmp eq i64 %.val25, 0
  br i1 %i.nb, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit209", label %bb.dn

bb.dn:                                            ; preds = %.body206
  %.val26 = load ptr, ptr %i.kd, align 8, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val26, i64 noundef %.val25, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit209"

.thread249:                                       ; preds = %bb.da, %.split.i189, %.split131.i, %.split130.i, %bb.dg, %bb.dc, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit.i200"
  %.sroa.8.1.i176.ph = phi i64 [ %i.na, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit.i200" ], [ %i.lp, %.split.i189 ], [ 163208757251, %bb.dc ], [ %i.lp, %bb.dg ], [ %i.lp, %.split130.i ], [ %i.lp, %.split131.i ], [ 163208757251, %bb.da ]
  %i.nc = inttoptr i64 %.sroa.8.1.i176.ph to ptr
  br label %.thread241

.thread241:                                       ; preds = %.noexc202, %.thread249
  %.sroa.8.2.i178244 = phi ptr [ %i.nc, %.thread249 ], [ %i.kh, %.noexc202 ]
  %i.nd = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h11caec4a0ad2a6bbE"(ptr noundef nonnull %.sroa.8.2.i178244)
          to label %bb.dt unwind label %.loopexit.split-lp269.loopexit.split-lp

.thread245:                                       ; preds = %bb.dl, %bb.cz, %.thread.i, %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
end_hunk_2
begin_hunk_3_@_ZN18lindera_dictionary10dictionary18unknown_dictionary9parse_unk17h28e043b3653d2519E:.lr.ph

bb.br:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !2539
  %i.ns = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.iv, i64 noundef range(i64 1, 9) 1) #47, !noalias !2539 ; 2 uses
  %i.nt = icmp eq ptr %i.ns, null
  br i1 %i.nt, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.br ], [ 0, %bb.bq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.iv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46
          to label %.noexc77 unwind label %bb.bt

.noexc77:                                         ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %.invoke834, %.invoke832, %.thread133.i.invoke, %bb.bs, %.noexc68, %bb.aj
  %.sroa.8.0.copyload143 = phi ptr [ %.sroa.8.0.copyload141149159, %bb.bs ], [ %.sroa.8.0.copyload141149159, %.thread133.i.invoke ], [ %.sroa.8.0.copyload141149159, %.invoke832 ], [ %.sroa.8.0.copyload140, %bb.aj ], [ %.sroa.8.0.copyload, %.invoke834 ], [ %.sroa.8.0.copyload140, %.noexc68 ]
  %.sroa.0.0.copyload138 = phi i64 [ %.sroa.0.0.copyload136150158, %bb.bs ], [ %.sroa.0.0.copyload136150158, %.thread133.i.invoke ], [ %.sroa.0.0.copyload136150158, %.invoke832 ], [ %.sroa.0.0.copyload135, %bb.aj ], [ %.sroa.0.0.copyload, %.invoke834 ], [ %.sroa.0.0.copyload135, %.noexc68 ]
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %.body81

.body81:                                          ; preds = %bb.bz, %bb.ca, %bb.bt
  %.sroa.8.0.copyload142 = phi ptr [ %.sroa.8.0.copyload143, %bb.bt ], [ %.sroa.8.0.copyload141149159, %bb.ca ], [ %.sroa.8.0.copyload141149159, %bb.bz ] ; 2 uses
  %.sroa.0.0.copyload137 = phi i64 [ %.sroa.0.0.copyload138, %bb.bt ], [ %.sroa.0.0.copyload136150158, %bb.ca ], [ %.sroa.0.0.copyload136150158, %bb.bz ] ; 2 uses
  %eh.lpad-body82 = phi { ptr, i32 } [ %i.nu, %bb.bt ], [ %i.oe, %bb.ca ], [ %i.oe, %bb.bz ] ; 2 uses
  %i.nv = icmp eq i64 %.sroa.0.0.copyload137, 0
  br i1 %i.nv, label %.body, label %bb.bu

bb.bu:                                            ; preds = %.body81
  %i.nw = shl nuw i64 %.sroa.0.0.copyload137, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload142) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload142, i64 noundef %i.nw, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %.body

bb.bv:                                            ; preds = %.thread133.i.invoke, %.noexc68
  %.sroa.8.0.copyload139.ph = phi ptr [ %.sroa.8.0.copyload141149159, %.thread133.i.invoke ], [ %.sroa.8.0.copyload140, %.noexc68 ] ; 2 uses
  %.sroa.0.0.copyload134.ph = phi i64 [ %.sroa.0.0.copyload136150158, %.thread133.i.invoke ], [ %.sroa.0.0.copyload135, %.noexc68 ] ; 2 uses
  %.sroa.9.0.ph = phi ptr [ %i.np, %.thread133.i.invoke ], [ %i.is, %.noexc68 ]
  %.sroa.16.sroa.0.0.ph = phi i8 [ 5, %.thread133.i.invoke ], [ 1, %.noexc68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0.ph, ptr %i.nx, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.16.sroa.0.0.ph, ptr %i.ny, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  %i.nz = icmp eq i64 %.sroa.0.0.copyload134.ph, 0
  br i1 %i.nz, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit78", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.oa = shl nuw i64 %.sroa.0.0.copyload134.ph, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload139.ph) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload139.ph, i64 noundef %i.oa, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit78"

bb.bx:                                            ; preds = %bb.br, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ns, %bb.br ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.iw, i64 %i.iv, i1 false), !noalias !2547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  %i.ob = load i64, ptr %i.r, align 8, !alias.scope !2548, !noalias !2551, !noundef !6 ; 3 uses
  %i.oc = load i64, ptr %i.p, align 8, !range !165, !alias.scope !2548, !noalias !2551, !noundef !6
  %i.od = icmp eq i64 %i.ob, %i.oc
  br i1 %i.od, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8f5275d29bea7d57E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105)
          to label %bb.cb unwind label %bb.bz, !noalias !2551

bb.bz:                                            ; preds = %bb.by
  %i.oe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.nr, label %.body81, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %i.iv, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !2553
  br label %.body81

bb.cb:                                            ; preds = %bb.by, %bb.bx
  %i.of = load ptr, ptr %i.q, align 8, !alias.scope !2548, !noalias !2551, !nonnull !6, !noundef !6 ; 3 uses
  %i.og = getelementptr inbounds nuw [40 x i8], ptr %i.of, i64 %i.ob ; 6 uses
  store i64 %i.iv, ptr %i.og, align 8, !noalias !2548
  %.sroa.399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.399.0..sroa_idx, align 8, !noalias !2548
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  store i64 %i.iv, ptr %.sroa.5100.0..sroa_idx, align 8, !noalias !2548
  %.sroa.6101.sroa.2.0..sroa.6101.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  store i32 %.sroa.01.0.extract.trunc.i, ptr %.sroa.6101.sroa.2.0..sroa.6101.0..sroa_idx.sroa_idx, align 8, !noalias !2548
  %.sroa.6101.sroa.3.0..sroa.6101.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.og, i64 28
  store i32 %.sroa.09.0.extract.trunc.i, ptr %.sroa.6101.sroa.3.0..sroa.6101.0..sroa_idx.sroa_idx, align 4, !noalias !2548
  %.sroa.6101.sroa.4.0..sroa.6101.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  store i32 %.sroa.020.0.extract.trunc.i, ptr %.sroa.6101.sroa.4.0..sroa.6101.0..sroa_idx.sroa_idx, align 8, !noalias !2548
  %i.oh = add i64 %i.ob, 1                        ; 3 uses
  store i64 %i.oh, ptr %i.r, align 8, !alias.scope !2548, !noalias !2551
  %i.oi = icmp eq i64 %.sroa.0.0.copyload136150158, 0
  br i1 %i.oi, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit83", label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.oj = shl nuw i64 %.sroa.0.0.copyload136150158, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload141149159, i64 noundef %i.oj, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit83"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit83": ; preds = %bb.cc, %bb.cb
  %i.ok = load i8, ptr %.sroa.526.0..sroa_idx, align 1, !range !1150, !alias.scope !2556, !noundef !6
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %._crit_edge, label %bb.a

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit78": ; preds = %bb.bw, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !2558)
  %.val.i84 = load ptr, ptr %i.q, align 8, !alias.scope !2558, !nonnull !6, !noundef !6 ; 2 uses
  %.val1.i85 = load i64, ptr %i.r, align 8, !alias.scope !2558, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2561)
  %i.om = icmp eq i64 %.val1.i85, 0
  br i1 %i.om, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55354b115a191b5E.exit.i91", label %.lr.ph.i.i.i86

.lr.ph.i.i.i86:                                   ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit78", %"_ZN4core3ptr95drop_in_place$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$17hb8acf59578a2d0c9E.exit.i.i.i90"
  %.sroa.0.011.i.i.i87 = phi i64 [ %i.oo, %"_ZN4core3ptr95drop_in_place$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$17hb8acf59578a2d0c9E.exit.i.i.i90" ], [ 0, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit78" ] ; 2 uses
  %i.on = getelementptr inbounds nuw [40 x i8], ptr %.val.i84, i64 %.sroa.0.011.i.i.i87 ; 2 uses
  %i.oo = add nuw i64 %.sroa.0.011.i.i.i87, 1     ; 2 uses
  %.val8.i.i.i88 = load i64, ptr %i.on, align 8, !alias.scope !2564, !noalias !2558 ; 2 uses
  %i.op = icmp eq i64 %.val8.i.i.i88, 0
  br i1 %i.op, label %"_ZN4core3ptr95drop_in_place$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$17hb8acf59578a2d0c9E.exit.i.i.i90", label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.i86
  %i.oq = getelementptr i8, ptr %i.on, i64 8
  %.val9.i.i.i89 = load ptr, ptr %i.oq, align 8, !alias.scope !2561, !noalias !2558, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i89, i64 noundef %.val8.i.i.i88, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !2567
  br label %"_ZN4core3ptr95drop_in_place$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$17hb8acf59578a2d0c9E.exit.i.i.i90"

"_ZN4core3ptr95drop_in_place$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$17hb8acf59578a2d0c9E.exit.i.i.i90": ; preds = %bb.cd, %.lr.ph.i.i.i86
  %i.or = icmp eq i64 %i.oo, %.val1.i85
  br i1 %i.or, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55354b115a191b5E.exit.i91", label %.lr.ph.i.i.i86

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55354b115a191b5E.exit.i91": ; preds = %"_ZN4core3ptr95drop_in_place$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$17hb8acf59578a2d0c9E.exit.i.i.i90", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit78"
  %.val2.i92 = load i64, ptr %i.p, align 8, !range !165, !alias.scope !2558, !noundef !6 ; 2 uses
  %i.os = icmp eq i64 %.val2.i92, 0
  br i1 %i.os, label %"_ZN4core3ptr118drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$$GT$17h02bef2b229eae5efE.exit93", label %"_ZN4core3ptr118drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$$GT$17h02bef2b229eae5efE.exit93.sink.split"
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition13category_name17h49a895683c8a189aE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %1 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !6
  %i.k = insertvalue { ptr, i64 } poison, ptr %i.h, 0
  %i.l = insertvalue { ptr, i64 } %i.k, i64 %i.j, 1
  ret { ptr, i64 } %i.l

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %1, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2570)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2570, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2570, !noundef !6 ; 6 uses
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i"
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.m, %.lr.ph.i.i ] ; 4 uses
  %i.e = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i
  %.val20.i.i = load i32, ptr %i.f, align 4, !alias.scope !2573, !noalias !2576, !noundef !6 ; 2 uses
  %i.g = icmp eq i32 %.val20.i.i, %1
  br i1 %i.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i", label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.n, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.i = add i64 %i.h, %.sroa.05.024.i.i          ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.d
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.i
  %.val22.i.i = load i32, ptr %i.k, align 4, !alias.scope !2573, !noalias !2576, !noundef !6
  %i.l = icmp ugt i32 %.val22.i.i, %1
  %i.m = select i1 %i.l, i64 %.sroa.05.024.i.i, i64 %i.i, !unpredictable !6 ; 2 uses
  %i.n = sub i64 %.sroa.01.025.i.i, %i.h          ; 2 uses
  %i.o = icmp ugt i64 %i.n, 1
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.p = icmp ult i32 %.val20.i.i, %1
  %i.q = zext i1 %i.p to i64
  %i.r = add nuw i64 %.sroa.05.0.lcssa.i.i, %i.q  ; 2 uses
  %i.s = icmp ule i64 %i.r, %i.d
  tail call void @llvm.assume(i1 %i.s)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i": ; preds = %bb.b, %._crit_edge.i.i, %bb.a
  %.sroa.4.0.i.i = phi i64 [ %i.d, %bb.a ], [ %i.r, %bb.b ], [ %.sroa.05.0.lcssa.i.i, %._crit_edge.i.i ]
  %.sroa.0.0.i.i = phi i64 [ -1, %bb.a ], [ -1, %bb.b ], [ 0, %._crit_edge.i.i ]
  %.sroa.0.0.i = add i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !2570, !noundef !6 ; 2 uses
  %i.v = icmp ult i64 %.sroa.0.0.i, %i.u
  br i1 %i.v, label %"_ZN18lindera_dictionary10dictionary20character_definition20LookupTable$LT$T$GT$4eval17h8f688439431edee8E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.0.i, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #46, !noalias !2570
  unreachable

"_ZN18lindera_dictionary10dictionary20character_definition20LookupTable$LT$T$GT$4eval17h8f688439431edee8E.exit": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i"
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !2570, !nonnull !6, !noundef !6
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.sroa.0.0.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !2570, !nonnull !6, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !2570, !noundef !6
  %i.ad = insertvalue { ptr, i64 } poison, ptr %i.aa, 0
  %i.ae = insertvalue { ptr, i64 } %i.ad, i64 %i.ac, 1
  ret { ptr, i64 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 4 dereferenceable(8) ptr @_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_definition17h755a31c12d2c50b8E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.f

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %1, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition4load17h08077cdba62317c8E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 12 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 19 uses
  %.sroa.6.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 16               ; 13 uses
  %.sroa.1125.i.i.i.i.i.i.i.i.i.i.i.i = alloca [12 x i8], align 8 ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.912.i.i.i.i.i.i = alloca [12 x i8], align 8 ; 7 uses
  %.sroa.7128.i.i.i.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.6.i.i.i.i = alloca [32 x i8], align 8    ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 16               ; 9 uses
  %i.m = alloca [96 x i8], align 8                ; 22 uses
  %.sroa.6.i = alloca [32 x i8], align 8          ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 4 uses
  %.sroa.67 = alloca [32 x i8], align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2578)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2581
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 6 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !2581
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2581
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2593)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.912.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2611)
  %i.o = icmp ult i64 %2, 8
  br i1 %i.o, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h40a7ad645031ff74E.exit.thread.i.i.i.i.i.i", label %bb.b

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h40a7ad645031ff74E.exit.thread.i.i.i.i.i.i": ; preds = %bb.a
  %i.p = sub nuw nsw i64 8, %2
  br label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = add i64 %2, -8                           ; 3 uses
  %.sroa.01.0.copyload2.i.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 1, !alias.scope !2614, !noalias !2618 ; 4 uses
  store ptr %i.q, ptr %i.n, align 8, !alias.scope !2630, !noalias !2631
  store i64 %i.r, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !2630, !noalias !2631
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2633)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = tail call noundef range(i64 0, 131073) i64 @llvm.umin.i64(i64 %.sroa.01.0.copyload2.i.i.i.i.i.i.i.i.i.i, i64 131072) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2636
  %i.s = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.t = icmp eq i64 %.sroa.01.0.copyload2.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %.thread.i.i.i.i, label %bb.c

.thread.i.i.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2636
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.912.i.i.i.i.i.i)
  br label %bb.v

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !2638
  %i.u = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, 9) 4) #47, !noalias !2638 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #46, !noalias !2643
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.c
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.j, align 8, !noalias !2636
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  store ptr %i.u, ptr %i.w, align 8, !noalias !2636
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 0, ptr %i.x, align 8, !noalias !2636
  %.sroa.1125.i.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx547 = getelementptr inbounds nuw i8, ptr %.sroa.1125.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %.sroa.1125.i.i.i.i.i.i.i.i.i.i.i.i.5.i.i.i.i.i.i.i.i.i.i.i.i.5.i.i.i.i.i.i.i.i.i.i.i.i.5.i.i.i.i.i.i.i.i.i.i.i.5.i.i.i.i.i.i.i.i.i.i.i.5.i.i.i.i.i.i.i.i.i.i.5.i.i.i.i.i.i.i.i.i.i.5.i.i.i.i.i.i.i.i.i.5.i.i.i.i.i.i.i.i.i.5.i.i.i.i.i.i.i.i.5.i.i.i.i.i.i.i.i.5.i.i.i.i.i.i.i.5.i.i.i.i.i.i.i.5.i.i.i.i.i.i.5.i.i.i.i.i.i.5.i.i.i.i.i.5.i.i.i.i.i.5.i.i.i.i.5.i.i.i.i.5.i.i.i.5.i.i.i.5.i.i.5.i.i.5.i.5.i.5..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.1125.i.i.i.i.i.i.i.i.i.i.i.i, i64 5
  br label %bb.e

common.resume.i.i.i.i:                            ; preds = %bb.ay, %.body.i.i.i.i, %bb.n, %bb.m
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %.pn.i.i.i.i, %bb.ay ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.e:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.y = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ap, %bb.t ] ; 4 uses
  %i.z = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.t ] ; 4 uses
  %i.aa = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.at, %bb.t ]
  %i.ab = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.av, %bb.t ] ; 4 uses
  %.sroa.2.050.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.01.0.copyload2.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ac, %bb.t ]
  %i.ac = add i64 %.sroa.2.050.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1125.i.i.i.i.i.i.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %i.y, align 1, !alias.scope !2578, !noalias !2662, !noundef !6 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ad, 2
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.z, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !2578, !noalias !2689, !noundef !6 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %switch.i.i.i.i.i85.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.af, 2
  br i1 %switch.i.i.i.i.i85.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.f, %bb.e
  %.sroa.797.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ad, %bb.f ], [ undef, %bb.e ]
  %.sroa.096.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 7, %bb.f ], [ 0, %bb.e ]
  %.sroa.1125.i.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.1125.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  store i64 1, ptr %.sroa.1125.i.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx, align 4, !alias.scope !2709, !noalias !2710
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %.sroa.5.0.i34.i.i.i.i.i.i.i84.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.z, -2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2720)
  %i.ah = icmp ult i64 %.sroa.5.0.i34.i.i.i.i.i.i.i84.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.ah, label %bb.l, label %bb.q
end_hunk_3
begin_hunk_4_@_ZN18lindera_dictionary18dictionary_builder22connection_cost_matrix27ConnectionCostMatrixBuilder5build17hf06875aade560198E:bb.a

bb.cm:                                            ; preds = %._crit_edge809, %.thread587
  %i.ow = phi i64 [ %i.ax, %.thread587 ], [ %.pre, %._crit_edge809 ] ; 3 uses
  %.sroa.13.1593 = phi i64 [ %.sroa.13.1.ph, %.thread587 ], [ %i.jl, %._crit_edge809 ]
  %.sroa.0328.1592 = phi i64 [ %.sroa.0328.1.ph, %.thread587 ], [ %.sroa.0.0.copyload10.pre.i.i.i, %._crit_edge809 ] ; 3 uses
  %.sroa.7329.2591 = phi ptr [ %.sroa.7329.2.ph586, %.thread587 ], [ %.sroa.7.0.copyload12.pre.i.i.i, %._crit_edge809 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6894)
  %i.ox = load i64, ptr %i.p, align 8, !range !165, !alias.scope !6894, !noalias !6897, !noundef !6
  %i.oy = icmp eq i64 %i.ow, %i.ox
  br i1 %i.oy, label %bb.cn, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit"

bb.cn:                                            ; preds = %bb.cm
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h517e963947e5db70E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit" unwind label %bb.co, !noalias !6897

bb.co:                                            ; preds = %bb.cn
  %i.oz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pa = icmp eq i64 %.sroa.0328.1592, 0
  br i1 %i.pa, label %.body298, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7329.2591) ]
  %i.pb = shl nuw i64 %.sroa.0328.1592, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7329.2591, i64 noundef %i.pb, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6905
  br label %.body298

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit": ; preds = %bb.cm, %bb.cn
  %i.pc = load ptr, ptr %i.ao, align 8, !alias.scope !6894, !noalias !6897, !nonnull !6, !noundef !6 ; 3 uses
  %i.pd = getelementptr inbounds nuw [24 x i8], ptr %i.pc, i64 %i.ow ; 3 uses
  store i64 %.sroa.0328.1592, ptr %i.pd, align 8, !noalias !6894
  %.sroa.3343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store ptr %.sroa.7329.2591, ptr %.sroa.3343.0..sroa_idx, align 8, !noalias !6894
  %.sroa.5344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store i64 %.sroa.13.1593, ptr %.sroa.5344.0..sroa_idx, align 8, !noalias !6894
  %i.pe = add i64 %i.ow, 1                        ; 3 uses
  store i64 %i.pe, ptr %i.ap, align 8, !alias.scope !6894, !noalias !6897
  %i.pf = load i8, ptr %.sroa.5135.0..sroa_idx, align 1, !range !1150, !alias.scope !6906, !noundef !6
  %i.pg = trunc nuw i8 %i.pf to i1
  br i1 %i.pg, label %.thread435, label %bb.i

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h89f0ba1dd99560b9E.exit": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit281.thread", %bb.cs, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i"
  %.sroa.0.4571 = phi ptr [ %i.ou, %bb.cs ], [ %.sroa.0.3563, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit281.thread" ], [ %i.ou, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i" ] ; 2 uses
  %.sroa.9.4569 = phi i8 [ 5, %bb.cs ], [ %.sroa.9.3562, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit281.thread" ], [ 5, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ph = icmp eq i64 %i.ai, 0
  br i1 %i.ph, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit302", label %bb.cq

bb.cq:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h89f0ba1dd99560b9E.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !6908
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit302"

.lr.ph.i.i.i304:                                  ; preds = %.split, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit.i.i.i308"
  %.sroa.0.011.i.i.i305 = phi i64 [ %i.pj, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit.i.i.i308" ], [ 0, %.split ] ; 2 uses
  %i.pi = getelementptr inbounds nuw [24 x i8], ptr %.val4.i303, i64 %.sroa.0.011.i.i.i305 ; 2 uses
  %i.pj = add nuw i64 %.sroa.0.011.i.i.i305, 1    ; 2 uses
  %.val8.i.i.i306 = load i64, ptr %i.pi, align 8, !alias.scope !6902, !noalias !6899 ; 2 uses
  %i.pk = icmp eq i64 %.val8.i.i.i306, 0
  br i1 %i.pk, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit.i.i.i308", label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i.i.i304
  %i.pl = getelementptr i8, ptr %i.pi, i64 8
  %.val9.i.i.i307 = load ptr, ptr %i.pl, align 8, !alias.scope !6902, !noalias !6899, !nonnull !6, !noundef !6
  %i.pm = shl nuw i64 %.val8.i.i.i306, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i307, i64 noundef %i.pm, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6911
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit.i.i.i308"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit.i.i.i308": ; preds = %bb.cr, %.lr.ph.i.i.i304
  %i.pn = icmp eq i64 %i.pj, %.val5.i
  br i1 %i.pn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i", label %.lr.ph.i.i.i304

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit.i.i.i308", %.split
  %.val.i309 = load i64, ptr %i.p, align 8, !range !165, !alias.scope !6899, !noundef !6 ; 2 uses
  %i.po = icmp eq i64 %.val.i309, 0
  br i1 %i.po, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h89f0ba1dd99560b9E.exit", label %bb.cs

bb.cs:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i"
  %i.pp = mul nuw i64 %.val.i309, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i303, i64 noundef %i.pp, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !6899
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h89f0ba1dd99560b9E.exit"

.thread425:                                       ; preds = %bb.bi, %.body298, %bb.p
  %.pn212 = phi { ptr, i32 } [ %eh.lpad-body295, %.body298 ], [ %.pn205.pn.pn, %bb.p ], [ %.pn205.pn.pn.pn451, %bb.bi ] ; 2 uses
  %i.pq = icmp eq i64 %i.ai, 0
  br i1 %i.pq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit312", label %bb.ct

bb.ct:                                            ; preds = %.thread425
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !6912
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit312"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit302": ; preds = %bb.cq, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h89f0ba1dd99560b9E.exit", %bb.h
  %.sroa.9.5 = phi i8 [ %i.an, %bb.h ], [ %.sroa.9.4569, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h89f0ba1dd99560b9E.exit" ], [ %.sroa.9.4569, %bb.cq ] ; 2 uses
  %.sroa.0.5 = phi ptr [ %i.al, %bb.h ], [ %.sroa.0.4571, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h89f0ba1dd99560b9E.exit" ], [ %.sroa.0.4571, %bb.cq ] ; 2 uses
  %.val.i313 = load i64, ptr %i.s, align 8, !alias.scope !6915 ; 2 uses
  %i.pr = icmp eq i64 %.val.i313, 0
  br i1 %i.pr, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb9309341f9b26f65E.exit315", label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb9309341f9b26f65E.exit315.sink.split"

.body298:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.co, %bb.cp, %bb.ch, %bb.ci
  %eh.lpad-body295 = phi { ptr, i32 } [ %i.oe, %bb.ch ], [ %i.oz, %bb.co ], [ %i.oe, %bb.ci ], [ %i.oz, %bb.cp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h89f0ba1dd99560b9E"(ptr noalias noundef align 8 dereferenceable(24) %i.p) #48
  br label %.thread425

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb9309341f9b26f65E.exit": ; preds = %bb.b, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit312"
  resume { ptr, i32 } %.pn214
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18lindera_dictionary18dictionary_builder22connection_cost_matrix34ConnectionCostMatrixBuilderOptions7builder17hcebf4c2029bddf53E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !404, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.a, -9223372036854775807
  br i1 %.not, label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h82a8bed946ee8a9bE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6918)
  %.not.i = icmp eq i64 %i.a, -9223372036854775808
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !6918, !noalias !6921, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6918, !noalias !6921, !noundef !6 ; 8 uses
  br i1 %.not.i, label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h82a8bed946ee8a9bE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !27

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.c
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i", label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6923
  %i.h = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 1) #47, !noalias !6923 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i"

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46, !noalias !6934
  unreachable

"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i": ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.c, i64 %i.e, i1 false), !noalias !6935
  br label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h82a8bed946ee8a9bE.exit"

"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h82a8bed946ee8a9bE.exit": ; preds = %bb.a, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i", %bb.b
  %.sroa.9.0 = phi i64 [ %i.e, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i" ], [ %i.e, %bb.b ], [ 5, %bb.a ]
  %.sroa.6.0 = phi ptr [ %.sroa.10.0.i.i.i.i, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i" ], [ %i.c, %bb.b ], [ @186, %bb.a ]
  %.sroa.03.0 = phi i64 [ %i.e, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i" ], [ -9223372036854775808, %bb.b ], [ -9223372036854775808, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i8, ptr %i.j, align 8, !range !3260, !noundef !6 ; 2 uses
  %.not2 = icmp eq i8 %i.k, 4
  %. = select i1 %.not2, i8 0, i8 %i.k
  store i64 %.sroa.03.0, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %., ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef i32 @_ZN18lindera_dictionary4mode4Mode12penalty_cost17h47a8f490011181d6E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(40) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !66, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN18lindera_dictionary4mode7Penalty7penalty17h2a108baa8f12b2faE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6939)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !6939, !noalias !6936, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = load i32, ptr %i.f, align 4, !alias.scope !6939, !noalias !6936, !noundef !6
  %i.h = sub i32 %i.e, %i.g
  %i.i = udiv i32 %i.h, 3                         ; 3 uses
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = load i64, ptr %i.c, align 8, !alias.scope !6936, !noalias !6939, !noundef !6 ; 2 uses
  %.not.i = icmp ult i64 %i.k, %i.j
  br i1 %.not.i, label %bb.c, label %_ZN18lindera_dictionary4mode7Penalty7penalty17h2a108baa8f12b2faE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.m = load i8, ptr %i.l, align 4, !range !1150, !alias.scope !6939, !noalias !6936, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !6936, !noalias !6939, !noundef !6 ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %bb.f, label %_ZN18lindera_dictionary4mode7Penalty7penalty17h2a108baa8f12b2faE.exit

bb.e:                                             ; preds = %bb.c
  %i.r = trunc nuw nsw i64 %i.k to i32
  %i.s = sub nsw i32 %i.i, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i32, ptr %i.t, align 8, !alias.scope !6936, !noalias !6939, !noundef !6
  %i.v = mul i32 %i.u, %i.s
  br label %_ZN18lindera_dictionary4mode7Penalty7penalty17h2a108baa8f12b2faE.exit

bb.f:                                             ; preds = %bb.d
  %i.w = trunc nuw nsw i64 %i.p to i32
  %i.x = sub nsw i32 %i.i, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !6936, !noalias !6939, !noundef !6
  %i.aa = mul i32 %i.z, %i.x
  br label %_ZN18lindera_dictionary4mode7Penalty7penalty17h2a108baa8f12b2faE.exit

_ZN18lindera_dictionary4mode7Penalty7penalty17h2a108baa8f12b2faE.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.v, %bb.e ], [ %i.aa, %bb.f ], [ 0, %bb.d ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i8 } @_ZN18lindera_dictionary4util14compress_write17hceb92aac08e6b914E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i8 noundef range(i8 0, 4) %2, ptr noalias noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_ZN18lindera_dictionary8compress8compress17hd0e642effd112d3fE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i8 noundef %2)
  %i.i = load i64, ptr %i.h, align 8, !range !225, !noundef !6 ; 7 uses
  %i.j = icmp eq i64 %i.i, -9223372036854775808
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 9 uses
  br i1 %i.j, label %bb.b, label %bb.c, !prof !238

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %"_ZN4core3ptr67drop_in_place$LT$lindera_dictionary..decompress..CompressedData$GT$17h71e52341d34d8c86E.exit48"

bb.c:                                             ; preds = %bb.a
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.628.0.copyload = load i64, ptr %.sroa.628.0..sroa_idx, align 8 ; 4 uses
  %.sroa.729.sroa.5.0..sroa.729.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.729.sroa.5.0.copyload = load i8, ptr %.sroa.729.sroa.5.0..sroa.729.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6941)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  switch i8 %.sroa.729.sroa.5.0.copyload, label %default.unreachable.i [
    i8 0, label %bb.d
    i8 1, label %bb.f
    i8 2, label %bb.h
    i8 3, label %bb.j
  ]

default.unreachable.i:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6944
  store i32 0, ptr %i.f, align 4, !noalias !6944
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6965)
  %i.n = load i64, ptr %3, align 8, !range !165, !alias.scope !6968, !noalias !6969, !noundef !6
  %i.o = load i64, ptr %i.m, align 8, !alias.scope !6968, !noalias !6969, !noundef !6 ; 4 uses
  %i.p = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.p), !noalias !6974
  %i.q = sub nsw i64 %i.n, %i.o
  %i.r = icmp ugt i64 %i.q, 4
  br i1 %i.r, label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.thread.i.i.i.i.i.i.i", label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.i.i.i.i.i.i.i", !prof !7

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.thread.i.i.i.i.i.i.i": ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6975), !noalias !6974
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !6978, !noalias !6979, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  store i32 0, ptr %i.u, align 1, !noalias !6981
  %i.v = add nuw i64 %i.o, 4
  store i64 %i.v, ptr %i.m, align 8, !alias.scope !6978, !noalias !6979
  br label %bb.e

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.i.i.i.i.i.i.i": ; preds = %bb.d
  %i.w = invoke noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.f, i64 noundef 4)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.i.i.i.i.i.i.i"
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %"_ZN102_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_unit_variant17ha889491508094eabE.exit.i.i.i.i.i"

bb.e:                                             ; preds = %.noexc, %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.thread.i.i.i.i.i.i.i"
  br label %"_ZN102_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_unit_variant17ha889491508094eabE.exit.i.i.i.i.i"

"_ZN102_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_unit_variant17ha889491508094eabE.exit.i.i.i.i.i": ; preds = %bb.e, %.noexc
  %i.x = phi i64 [ 4, %bb.e ], [ 0, %.noexc ]
  %.sroa.17.3.i.i.i = phi ptr [ undef, %bb.e ], [ %i.w, %.noexc ]
  %.sroa.026.3.i.i.i = phi i64 [ 9, %bb.e ], [ 5, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6944
  br label %"_ZN107_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd131187a5452eac0E.exit.i.i.i"

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6982
  store i32 1, ptr %i.e, align 4, !noalias !6982
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6989)
  %i.y = load i64, ptr %3, align 8, !range !165, !alias.scope !6992, !noalias !6993, !noundef !6
  %i.z = load i64, ptr %i.m, align 8, !alias.scope !6992, !noalias !6993, !noundef !6 ; 4 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa), !noalias !6998
  %i.ab = sub nsw i64 %i.y, %i.z
  %i.ac = icmp ugt i64 %i.ab, 4
  br i1 %i.ac, label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.thread.i.i5.i.i.i.i.i", label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.i.i1.i.i.i.i.i", !prof !7

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.thread.i.i5.i.i.i.i.i": ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6999), !noalias !6998
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !7002, !noalias !7003, !nonnull !6, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.z
  store i32 1, ptr %i.af, align 1, !noalias !7005
  %i.ag = add nuw i64 %i.z, 4
  store i64 %i.ag, ptr %i.m, align 8, !alias.scope !7002, !noalias !7003
  br label %bb.g

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.i.i1.i.i.i.i.i": ; preds = %bb.f
  %i.ah = invoke noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef 4)
          to label %.noexc42 unwind label %.loopexit.split-lp ; 2 uses

.noexc42:                                         ; preds = %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.i.i1.i.i.i.i.i"
  %.not.i.i.i2.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i2.i.i.i.i.i, label %bb.g, label %"_ZN102_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_unit_variant17ha889491508094eabE.exit6.i.i.i.i.i"

bb.g:                                             ; preds = %.noexc42, %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.thread.i.i5.i.i.i.i.i"
  br label %"_ZN102_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_unit_variant17ha889491508094eabE.exit6.i.i.i.i.i"

"_ZN102_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_unit_variant17ha889491508094eabE.exit6.i.i.i.i.i": ; preds = %bb.g, %.noexc42
  %i.ai = phi i64 [ 4, %bb.g ], [ 0, %.noexc42 ]
  %.sroa.17.2.i.i.i = phi ptr [ undef, %bb.g ], [ %i.ah, %.noexc42 ]
  %.sroa.026.2.i.i.i = phi i64 [ 9, %bb.g ], [ 5, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6982
  br label %"_ZN107_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd131187a5452eac0E.exit.i.i.i"

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7006
  store i32 2, ptr %i.d, align 4, !noalias !7006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7013)
  %i.aj = load i64, ptr %3, align 8, !range !165, !alias.scope !7016, !noalias !7017, !noundef !6
  %i.ak = load i64, ptr %i.m, align 8, !alias.scope !7016, !noalias !7017, !noundef !6 ; 4 uses
  %i.al = icmp sgt i64 %i.ak, -1
  tail call void @llvm.assume(i1 %i.al), !noalias !7022
  %i.am = sub nsw i64 %i.aj, %i.ak
  %i.an = icmp ugt i64 %i.am, 4
  br i1 %i.an, label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.thread.i.i11.i.i.i.i.i", label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.i.i7.i.i.i.i.i", !prof !7

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.thread.i.i11.i.i.i.i.i": ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7023), !noalias !7022
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !7026, !noalias !7027, !nonnull !6, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ak
  store i32 2, ptr %i.aq, align 1, !noalias !7029
  %i.ar = add nuw i64 %i.ak, 4
  store i64 %i.ar, ptr %i.m, align 8, !alias.scope !7026, !noalias !7027
  br label %bb.i

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.i.i7.i.i.i.i.i": ; preds = %bb.h
  %i.as = invoke noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef 4)
          to label %.noexc43 unwind label %.loopexit.split-lp ; 2 uses

.noexc43:                                         ; preds = %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.i.i7.i.i.i.i.i"
  %.not.i.i.i8.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i8.i.i.i.i.i, label %bb.i, label %"_ZN102_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_unit_variant17ha889491508094eabE.exit12.i.i.i.i.i"

bb.i:                                             ; preds = %.noexc43, %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.thread.i.i11.i.i.i.i.i"
  br label %"_ZN102_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_unit_variant17ha889491508094eabE.exit12.i.i.i.i.i"

"_ZN102_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_unit_variant17ha889491508094eabE.exit12.i.i.i.i.i": ; preds = %bb.i, %.noexc43
  %i.at = phi i64 [ 4, %bb.i ], [ 0, %.noexc43 ]
  %.sroa.17.1.i.i.i = phi ptr [ undef, %bb.i ], [ %i.as, %.noexc43 ]
  %.sroa.026.1.i.i.i = phi i64 [ 9, %bb.i ], [ 5, %.noexc43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7006
  br label %"_ZN107_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd131187a5452eac0E.exit.i.i.i"

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7030
  store i32 3, ptr %i.c, align 4, !noalias !7030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7037)
  %i.au = load i64, ptr %3, align 8, !range !165, !alias.scope !7040, !noalias !7041, !noundef !6
  %i.av = load i64, ptr %i.m, align 8, !alias.scope !7040, !noalias !7041, !noundef !6 ; 4 uses
  %i.aw = icmp sgt i64 %i.av, -1
  tail call void @llvm.assume(i1 %i.aw), !noalias !7046
  %i.ax = sub nsw i64 %i.au, %i.av
  %i.ay = icmp ugt i64 %i.ax, 4
  br i1 %i.ay, label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.thread.i.i17.i.i.i.i.i", label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.i.i13.i.i.i.i.i", !prof !7

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.thread.i.i17.i.i.i.i.i": ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7047), !noalias !7046
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !7050, !noalias !7051, !nonnull !6, !noundef !6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.av
  store i32 3, ptr %i.bb, align 1, !noalias !7053
  %i.bc = add nuw i64 %i.av, 4
  store i64 %i.bc, ptr %i.m, align 8, !alias.scope !7050, !noalias !7051
  br label %bb.k

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.i.i13.i.i.i.i.i": ; preds = %bb.j
  %i.bd = invoke noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 4)
          to label %.noexc44 unwind label %.loopexit.split-lp ; 2 uses

.noexc44:                                         ; preds = %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h164346af387a1e96E.exit.i.i13.i.i.i.i.i"
  %.not.i.i.i14.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i14.i.i.i.i.i, label %bb.k, label %"_ZN102_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_unit_variant17ha889491508094eabE.exit18.i.i.i.i.i"
end_hunk_4
begin_hunk_5_@_ZN18lindera_dictionary7viterbi7Lattice13tokens_offset17hde8deb3c019c31dfE:bb.a
  %lcmp.mod29 = trunc i64 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.ax = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.014.i.i.epil.init ; 2 uses
  %i.az = getelementptr [16 x i8], ptr %i.ad, i64 %i.ax ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.ay, align 1, !alias.scope !7192, !noalias !7190
  %i.bb = load <2 x i64>, ptr %i.az, align 1, !alias.scope !7198, !noalias !7187
  store <2 x i64> %i.bb, ptr %i.ay, align 1, !alias.scope !7192, !noalias !7190
  store <2 x i64> %i.ba, ptr %i.az, align 1, !alias.scope !7198, !noalias !7187
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit": ; preds = %.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit.loopexit.unr-lcssa", %bb.g
  %i.bc = icmp eq i64 %i.m, 0
  br i1 %i.bc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit"
  %i.bd = add nsw i64 %i.m, -1                    ; 2 uses
  store i64 %i.bd, ptr %i.c, align 8
  %i.be = load i64, ptr %i.a, align 8, !range !165, !noundef !6
  %i.bf = icmp samesign ult i64 %i.bd, %i.be
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp ult i64 %i.m, 576460752303423489
  tail call void @llvm.assume(i1 %i.bg)
  br label %bb.k

bb.k:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit", %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$lindera_dictionary..viterbi..WordId$RP$$GT$$GT$17h7044c7ec805258a1E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs17h057c0b3efb4362b7E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8              ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8              ; 3 uses
  %.sroa.5.0.in.i.i18 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.i.i19 = load i64, ptr %.sroa.5.0.in.i.i18, align 8 ; 10 uses
  %.sroa.0.0.in.i.i21 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.i.i22 = load ptr, ptr %.sroa.0.0.in.i.i21, align 8, !nonnull !6 ; 3 uses
  %i.o = load i64, ptr %2, align 8, !range !66
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = trunc nuw nsw i64 %i.t to i32            ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = trunc nuw nsw i64 %i.r to i32            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.l, align 8, !nonnull !6 ; 4 uses
  br label %bb.b

.loopexit42:                                      ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hc09e4201af149bfcE.exit, %bb.d
  %exitcond182.not = icmp eq i64 %i.ab, %i.b
  br i1 %exitcond182.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit42, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph114, %.loopexit42
  %.sroa.011.0113 = phi i64 [ 0, %.lr.ph114 ], [ %i.ab, %.loopexit42 ] ; 4 uses
  %i.ab = add nuw nsw i64 %.sroa.011.0113, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.011.0113, %i.e
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.011.0113 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ag, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %.loopexit42, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.011.0113 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN4core4iter6traits8iterator8Iterator6reduce17hc09e4201af149bfcE.exit
  %.sroa.013.0112 = phi ptr [ %i.ae, %.lr.ph ], [ %i.am, %_ZN4core4iter6traits8iterator8Iterator6reduce17hc09e4201af149bfcE.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.0112, i64 4 ; 2 uses
  %i.an = load i32, ptr %.sroa.013.0112, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7201)
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = icmp ugt i64 %i.k, %i.ao
  br i1 %i.ap, label %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ao, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #46, !noalias !7201
  unreachable

_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit: ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.ao ; 5 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.3.0.copyload = load i16, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 18
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 2
  %i.ar = load i64, ptr %i.ak, align 8, !noundef !6 ; 5 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hc09e4201af149bfcE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit
  %i.at = load ptr, ptr %i.al, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.at, align 4, !noalias !7204, !noundef !6 ; 5 uses
  %i.av = zext i32 %.val.i.i.i.i to i64           ; 3 uses
  %i.aw = icmp ugt i64 %i.k, %i.av
  br i1 %i.aw, label %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.av, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #46, !noalias !7216
  unreachable

_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i17: ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.av ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i32, ptr %i.ay, align 4, !noalias !7221, !noundef !6 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.bb = load i16, ptr %i.ba, align 4, !noalias !7221, !noundef !6
  %i.bc = zext i16 %i.bb to i32
  %i.bd = zext i16 %.sroa.4.0.copyload to i32     ; 3 uses
  %i.be = mul i32 %i.n, %i.bc
  %i.bf = add i32 %i.be, %i.bd
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 1
  %i.bi = add nuw nsw i64 %i.bh, 4                ; 4 uses
  %i.bj = icmp ugt i64 %i.bi, %.sroa.5.0.i.i19
  br i1 %i.bj, label %bb.j, label %bb.i, !prof !238

bb.i:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i17
  %i.bk = sub nuw i64 %.sroa.5.0.i.i19, %i.bi     ; 2 uses
  %i.bl = icmp ugt i64 %i.bk, 1
  br i1 %i.bl, label %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i20, label %bb.k, !prof !7

bb.j:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i17
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.bi, i64 noundef %.sroa.5.0.i.i19, i64 noundef %.sroa.5.0.i.i19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #46, !noalias !7222
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 2, i64 noundef %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #46, !noalias !7222
  unreachable

_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i20: ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i22, i64 %i.bi
  %.sroa.03.0.copyload.i.i23 = load i16, ptr %i.bm, align 1, !noalias !7222 ; 2 uses
  br i1 %i.p, label %bb.l, label %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit26.thread"

bb.l:                                             ; preds = %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bo = load i32, ptr %i.bn, align 4, !alias.scope !7225, !noalias !7230, !noundef !6
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.bq = load i32, ptr %i.bp, align 4, !alias.scope !7225, !noalias !7230, !noundef !6
  %i.br = sub i32 %i.bo, %i.bq
  %i.bs = udiv i32 %i.br, 3                       ; 3 uses
  %i.bt = zext nneg i32 %i.bs to i64              ; 2 uses
  %.not.i.i.i25 = icmp ult i64 %i.r, %i.bt
  br i1 %.not.i.i.i25, label %bb.m, label %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit26"

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 36
  %i.bv = load i8, ptr %i.bu, align 4, !range !1150, !alias.scope !7225, !noalias !7230, !noundef !6
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = icmp ult i64 %i.t, %i.bt
  br i1 %i.bx, label %bb.p, label %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit26"

bb.o:                                             ; preds = %bb.m
  %i.by = sub nsw i32 %i.bs, %i.x
  %i.bz = mul i32 %i.z, %i.by
  br label %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit26"

bb.p:                                             ; preds = %bb.n
  %i.ca = sub nsw i32 %i.bs, %i.u
  %i.cb = mul i32 %i.w, %i.ca
  br label %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit26"

"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit26": ; preds = %bb.l, %bb.n, %bb.o, %bb.p
  %.sroa.0.0.i2.i24 = phi i32 [ 0, %bb.n ], [ 0, %bb.l ], [ %i.bz, %bb.o ], [ %i.cb, %bb.p ]
  %i.cc = sext i16 %.sroa.03.0.copyload.i.i23 to i32
  %i.cd = add i32 %i.az, %i.cc
  %i.ce = add i32 %i.cd, %.sroa.0.0.i2.i24        ; 3 uses
  %i.cf = icmp eq i64 %i.ar, 1
  br i1 %i.cf, label %.loopexit, label %bb.q

"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit26.thread": ; preds = %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i20
  %i.cg = sext i16 %.sroa.03.0.copyload.i.i23 to i32
  %i.ch = add i32 %i.az, %i.cg                    ; 3 uses
  %i.ci = icmp eq i64 %i.ar, 1
  br i1 %i.ci, label %.loopexit, label %.thread

.thread:                                          ; preds = %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit26.thread"
  %i.cj = add i64 %i.ar, 4611686018427387903
  %i.ck = and i64 %i.cj, 4611686018427387903
  br label %.split

bb.q:                                             ; preds = %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit26"
  %i.cl = add i64 %i.ar, 4611686018427387903
  %i.cm = and i64 %i.cl, 4611686018427387903
  br label %.split.us

.split.us:                                        ; preds = %bb.q, %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit.us"
  %.sroa.021.0.i.us = phi i32 [ %.sroa.021.0.copyload22.sroa.speculated.i.us, %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit.us" ], [ %i.ce, %bb.q ] ; 2 uses
  %.sroa.623.0.i.us = phi i32 [ %.sroa.623.0.copyload24.sroa.speculated.i.us, %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit.us" ], [ %i.ce, %bb.q ]
  %.sroa.825.0.i.us = phi i32 [ %.sroa.825.0.copyload26.sroa.speculated.i.us, %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit.us" ], [ %.val.i.i.i.i, %bb.q ]
  %.sroa.06.0.i.i.i.i.i.us = phi i64 [ %i.dx, %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit.us" ], [ 0, %bb.q ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.sroa.06.0.i.i.i.i.i.us
  %.val.i.i.i.i.i.us = load i32, ptr %i.cn, align 4, !noalias !7233, !noundef !6 ; 2 uses
  %i.co = zext i32 %.val.i.i.i.i.i.us to i64      ; 3 uses
  %i.cp = icmp ugt i64 %i.k, %i.co
  br i1 %i.cp, label %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i.us, label %.split101.us

_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i.us: ; preds = %.split.us
  %i.cq = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.co ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load i32, ptr %i.cr, align 4, !noalias !7250, !noundef !6
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  %i.cu = load i16, ptr %i.ct, align 4, !noalias !7250, !noundef !6
  %i.cv = zext i16 %i.cu to i32
  %i.cw = mul i32 %i.n, %i.cv
  %i.cx = add i32 %i.cw, %i.bd
  %i.cy = zext i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 1
  %i.da = add nuw nsw i64 %i.cz, 4                ; 4 uses
  %i.db = icmp ugt i64 %i.da, %.sroa.5.0.i.i19
  br i1 %i.db, label %.split104.us, label %bb.r, !prof !238

bb.r:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i.us
  %i.dc = sub nuw i64 %.sroa.5.0.i.i19, %i.da     ; 2 uses
  %i.dd = icmp ugt i64 %i.dc, 1
  br i1 %i.dd, label %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i.us, label %.split108.us, !prof !7

_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i.us: ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i22, i64 %i.da
  %.sroa.03.0.copyload.i.i.us = load i16, ptr %i.de, align 1, !noalias !7253
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.dg = load i32, ptr %i.df, align 4, !alias.scope !7256, !noalias !7261, !noundef !6
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.di = load i32, ptr %i.dh, align 4, !alias.scope !7256, !noalias !7261, !noundef !6
  %i.dj = sub i32 %i.dg, %i.di
  %i.dk = udiv i32 %i.dj, 3                       ; 3 uses
  %i.dl = zext nneg i32 %i.dk to i64              ; 2 uses
  %.not.i.i.i.us = icmp ult i64 %i.r, %i.dl
  br i1 %.not.i.i.i.us, label %bb.s, label %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit.us"

bb.s:                                             ; preds = %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i.us
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cq, i64 36
  %i.dn = load i8, ptr %i.dm, align 4, !range !1150, !alias.scope !7256, !noalias !7261, !noundef !6
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = icmp ult i64 %i.t, %i.dl
  br i1 %i.dp, label %bb.u, label %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit.us"

bb.u:                                             ; preds = %bb.t
  %i.dq = sub nsw i32 %i.dk, %i.u
  %i.dr = mul i32 %i.w, %i.dq
  br label %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit.us"

bb.v:                                             ; preds = %bb.s
  %i.ds = sub nsw i32 %i.dk, %i.x
  %i.dt = mul i32 %i.z, %i.ds
  br label %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit.us"

"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit.us": ; preds = %bb.v, %bb.u, %bb.t, %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i.us
  %.sroa.0.0.i2.i.us = phi i32 [ 0, %bb.t ], [ 0, %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i.us ], [ %i.dt, %bb.v ], [ %i.dr, %bb.u ]
  %i.du = sext i16 %.sroa.03.0.copyload.i.i.us to i32
  %i.dv = add i32 %i.cs, %i.du
  %i.dw = add i32 %i.dv, %.sroa.0.0.i2.i.us       ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.us = icmp sgt i32 %.sroa.021.0.i.us, %i.dw ; 2 uses
  %.sroa.021.0.copyload22.sroa.speculated.i.us = tail call i32 @llvm.smin.i32(i32 %.sroa.021.0.i.us, i32 %i.dw)
  %.sroa.623.0.copyload24.sroa.speculated.i.us = select i1 %.not.i.i.i.i.i.i.i.i.i.i.us, i32 %i.dw, i32 %.sroa.623.0.i.us ; 2 uses
  %.sroa.825.0.copyload26.sroa.speculated.i.us = select i1 %.not.i.i.i.i.i.i.i.i.i.i.us, i32 %.val.i.i.i.i.i.us, i32 %.sroa.825.0.i.us ; 2 uses
  %i.dx = add nuw i64 %.sroa.06.0.i.i.i.i.i.us, 1 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, %i.cm
  br i1 %i.dy, label %.loopexit, label %.split.us

.split:                                           ; preds = %.thread, %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i
  %.sroa.021.0.i = phi i32 [ %.sroa.021.0.copyload22.sroa.speculated.i, %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i ], [ %i.ch, %.thread ] ; 2 uses
  %.sroa.623.0.i = phi i32 [ %.sroa.623.0.copyload24.sroa.speculated.i, %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i ], [ %i.ch, %.thread ]
  %.sroa.825.0.i = phi i32 [ %.sroa.825.0.copyload26.sroa.speculated.i, %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i ], [ %.val.i.i.i.i, %.thread ]
  %.sroa.06.0.i.i.i.i.i = phi i64 [ %i.et, %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i ], [ 0, %.thread ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.sroa.06.0.i.i.i.i.i
  %.val.i.i.i.i.i = load i32, ptr %i.dz, align 4, !noalias !7233, !noundef !6 ; 2 uses
  %i.ea = zext i32 %.val.i.i.i.i.i to i64         ; 3 uses
  %i.eb = icmp ugt i64 %i.k, %i.ea
  br i1 %i.eb, label %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i, label %.split101.us

.split101.us:                                     ; preds = %.split, %.split.us
  %.us-phi102 = phi i64 [ %i.co, %.split.us ], [ %i.ea, %.split ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.us-phi102, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #46, !noalias !7264
  unreachable

_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i: ; preds = %.split
  %i.ec = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.ea ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load i32, ptr %i.ed, align 4, !noalias !7250, !noundef !6
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 20
  %i.eg = load i16, ptr %i.ef, align 4, !noalias !7250, !noundef !6
  %i.eh = zext i16 %i.eg to i32
  %i.ei = mul i32 %i.n, %i.eh
  %i.ej = add i32 %i.ei, %i.bd
  %i.ek = zext i32 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 1
  %i.em = add nuw nsw i64 %i.el, 4                ; 4 uses
  %i.en = icmp ugt i64 %i.em, %.sroa.5.0.i.i19
  br i1 %i.en, label %.split104.us, label %bb.w, !prof !238

bb.w:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i
  %i.eo = sub nuw i64 %.sroa.5.0.i.i19, %i.em     ; 2 uses
  %i.ep = icmp ugt i64 %i.eo, 1
  br i1 %i.ep, label %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i, label %.split108.us, !prof !7

.split104.us:                                     ; preds = %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i, %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i.us
  %.us-phi106 = phi i64 [ %i.da, %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i.us ], [ %i.em, %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i ]
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.us-phi106, i64 noundef %.sroa.5.0.i.i19, i64 noundef %.sroa.5.0.i.i19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #46, !noalias !7253
  unreachable

.split108.us:                                     ; preds = %bb.w, %bb.r
  %.us-phi109 = phi i64 [ %i.dc, %bb.r ], [ %i.eo, %bb.w ]
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 2, i64 noundef %.us-phi109, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #46, !noalias !7253
  unreachable

_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i: ; preds = %bb.w
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i22, i64 %i.em
  %.sroa.03.0.copyload.i.i = load i16, ptr %i.eq, align 1, !noalias !7253
  %i.er = sext i16 %.sroa.03.0.copyload.i.i to i32
  %i.es = add i32 %i.ee, %i.er                    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.sroa.021.0.i, %i.es ; 2 uses
  %.sroa.021.0.copyload22.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.sroa.021.0.i, i32 %i.es)
  %.sroa.623.0.copyload24.sroa.speculated.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i32 %i.es, i32 %.sroa.623.0.i ; 2 uses
  %.sroa.825.0.copyload26.sroa.speculated.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i32 %.val.i.i.i.i.i, i32 %.sroa.825.0.i ; 2 uses
  %i.et = add nuw i64 %.sroa.06.0.i.i.i.i.i, 1    ; 2 uses
  %i.eu = icmp eq i64 %i.et, %i.ck
  br i1 %i.eu, label %.loopexit, label %.split

_ZN4core4iter6traits8iterator8Iterator6reduce17hc09e4201af149bfcE.exit: ; preds = %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit, %.loopexit
  %i.ev = icmp eq ptr %i.am, %i.ah
  br i1 %i.ev, label %.loopexit42, label %bb.e

.loopexit:                                        ; preds = %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i, %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit.us", %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit26.thread", %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit26"
  %.sroa.6.2.ph = phi i32 [ %i.ce, %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit26" ], [ %i.ch, %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit26.thread" ], [ %.sroa.623.0.copyload24.sroa.speculated.i.us, %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit.us" ], [ %.sroa.623.0.copyload24.sroa.speculated.i, %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i ]
  %.sroa.8.2.ph = phi i32 [ %.val.i.i.i.i, %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit26" ], [ %.val.i.i.i.i, %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit26.thread" ], [ %.sroa.825.0.copyload26.sroa.speculated.i.us, %"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8c27c2f149c08238E.exit.us" ], [ %.sroa.825.0.copyload26.sroa.speculated.i, %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i ]
  store i32 1, ptr %i.aq, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %.sroa.8.2.ph, ptr %i.ew, align 4
  %i.ex = sext i16 %.sroa.3.0.copyload to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ez = add i32 %.sroa.6.2.ph, %i.ex
  store i32 %i.ez, ptr %i.ey, align 4
  br label %_ZN4core4iter6traits8iterator8Iterator6reduce17hc09e4201af149bfcE.exit
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 4 dereferenceable(40) ptr @_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.d = icmp ugt i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.a
  ret ptr %i.g

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.a, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #46
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN18lindera_dictionary7viterbi7Lattice8set_text17h0a6e1402d793395cE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %5, i64 noundef %6, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %7) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.4484 = alloca [20 x i8], align 4         ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 3 uses
  %i.e = alloca [4 x i8], align 4                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7270)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !7273, !nonnull !6, !noundef !6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !7273, !noundef !6 ; 2 uses
  %.idx.i.i = mul i64 %i.i, 24                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.l = add i64 %.idx.i.i, -24                   ; 2 uses
  %i.m = udiv i64 %i.l, 24
  %i.n = add nuw nsw i64 %i.m, 1
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.02.04.i.i.prol = phi ptr [ %i.o, %.lr.ph.i.i.prol ], [ %i.g, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i.prol, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i.prol, i64 16
  store i64 0, ptr %i.p, align 8, !noalias !7273
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !7274

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.02.04.i.i.unr = phi ptr [ %i.g, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i64 %i.l, 168
  br i1 %i.q, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.02.04.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.02.04.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i, i64 16
  store i64 0, ptr %i.r, align 8, !noalias !7273
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i, i64 40
  store i64 0, ptr %i.s, align 8, !noalias !7273
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i, i64 64
  store i64 0, ptr %i.t, align 8, !noalias !7273
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i, i64 88
  store i64 0, ptr %i.u, align 8, !noalias !7273
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i, i64 112
  store i64 0, ptr %i.v, align 8, !noalias !7273
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i, i64 136
  store i64 0, ptr %i.w, align 8, !noalias !7273
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i, i64 160
  store i64 0, ptr %i.x, align 8, !noalias !7273
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i, i64 192 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i, i64 184
  store i64 0, ptr %i.z, align 8, !noalias !7273
  %i.aa = icmp eq ptr %i.y, %i.j
  br i1 %i.aa, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !7273, !nonnull !6, !noundef !6 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !7273, !noundef !6 ; 2 uses
  %.idx9.i.i = mul i64 %i.ae, 24                  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx9.i.i
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %_ZN18lindera_dictionary7viterbi7Lattice5clear17hee35514674af731cE.exit.i, label %.lr.ph7.i.i.preheader

.lr.ph7.i.i.preheader:                            ; preds = %._crit_edge.i.i
  %i.ah = add i64 %.idx9.i.i, -24                 ; 2 uses
  %i.ai = udiv i64 %i.ah, 24
  %i.aj = add nuw nsw i64 %i.ai, 1
  %xtraiter3298 = and i64 %i.aj, 7                ; 2 uses
  %lcmp.mod3299.not = icmp eq i64 %xtraiter3298, 0
  br i1 %lcmp.mod3299.not, label %.lr.ph7.i.i.prol.loopexit, label %.lr.ph7.i.i.prol

.lr.ph7.i.i.prol:                                 ; preds = %.lr.ph7.i.i.preheader, %.lr.ph7.i.i.prol
  %.sroa.03.05.i.i.prol = phi ptr [ %i.ak, %.lr.ph7.i.i.prol ], [ %i.ac, %.lr.ph7.i.i.preheader ] ; 2 uses
  %prol.iter3300 = phi i64 [ %prol.iter3300.next, %.lr.ph7.i.i.prol ], [ 0, %.lr.ph7.i.i.preheader ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.prol, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.prol, i64 16
end_hunk_5
begin_hunk_6_@_ZN18lindera_dictionary7viterbi7Lattice8set_text17h0a6e1402d793395cE:bb.a
bb.bl:                                            ; preds = %bb.bj
  %i.lq = and i32 %.sroa.019.0.copyload.i.i.i.i.i.i156, 31 ; 2 uses
  %i.lr = sub nuw i64 %.sroa.52.0.i.i.i.i.i.i160, %i.lo ; 10 uses
  %.not644 = icmp eq i32 %i.lq, 0
  br i1 %.not644, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2a7252227c2c55ebE.exit273, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i162.le, i64 %i.lo ; 3 uses
  %i.lt = zext nneg i32 %i.lq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7455), !noalias !7431
  %i.lu = icmp ugt i64 %i.lr, 3
  br i1 %i.lu, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h8a6dc1aac1f242aaE.exit.i.i.i.i.i265", label %bb.bn, !prof !7

bb.bn:                                            ; preds = %bb.bm
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 4, i64 noundef %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @247) #46, !noalias !7458
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h8a6dc1aac1f242aaE.exit.i.i.i.i.i265": ; preds = %bb.bm
  %.sroa.02.0.copyload.i.i.i.i.i266 = load i32, ptr %i.ls, align 1, !alias.scope !7455, !noalias !7472
  %i.lv = icmp ugt i64 %i.lr, 5
  br i1 %i.lv, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit27.i.i.i.i.i267", label %bb.bo, !prof !7

bb.bo:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h8a6dc1aac1f242aaE.exit.i.i.i.i.i265"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 4, i64 noundef 6, i64 noundef %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @248) #46, !noalias !7458
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit27.i.i.i.i.i267": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h8a6dc1aac1f242aaE.exit.i.i.i.i.i265"
  %i.lw = icmp ugt i64 %i.lr, 7
  br i1 %i.lw, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i269", label %bb.bp, !prof !7

bb.bp:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit27.i.i.i.i.i267"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 6, i64 noundef 8, i64 noundef %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #46, !noalias !7458
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i269": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit27.i.i.i.i.i267"
  %i.lx = icmp ugt i64 %i.lr, 9
  br i1 %i.lx, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2a7252227c2c55ebE.exit294, label %bb.bq, !prof !7

bb.bq:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i269"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 8, i64 noundef 10, i64 noundef %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #46, !noalias !7458
  unreachable

.loopexit.i154:                                   ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2a7252227c2c55ebE.exit273, %.lr.ph2668, %bb.bh
  %.not = icmp ugt i64 %.sroa.6.0.ph2717, %.sroa.0114.02629
  %i.ly = select i1 %i.dc, i1 %.sroa.0.0.ph2718, i1 false
  %or.cond = select i1 %i.ly, i1 %.not, i1 false
  br i1 %or.cond, label %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread, label %bb.bt

_ZN4core4iter8adapters7flatten17and_then_or_clear17h2a7252227c2c55ebE.exit294: ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i269", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i290"
  %.sroa.9388.1 = phi i64 [ %.sroa.9388.0, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i290" ], [ %i.ky, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i269" ]
  %.sroa.12389.1 = phi i64 [ %.sroa.12389.0, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i290" ], [ %i.lc, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i269" ]
  %.sroa.17391.1 = phi ptr [ %.sroa.17391.0, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i290" ], [ %i.ls, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i269" ]
  %.sroa.23393.2 = phi i64 [ %.sroa.23393.1, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i290" ], [ %i.lr, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i269" ]
  %.sroa.26395.2 = phi ptr [ %.sroa.26395.1, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i290" ], [ %1, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i269" ]
  %.sroa.29397.2 = phi i64 [ %.sroa.29397.1, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i290" ], [ %i.lc, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i269" ] ; 8 uses
  %.sroa.32399.2 = phi i64 [ %i.jz, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i290" ], [ 1, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i269" ]
  %.sroa.37401.2 = phi i64 [ %.sroa.37401.1, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i290" ], [ %i.lt, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i269" ]
  %.sroa.7466.2 = phi i32 [ %.sroa.02.0.copyload.i.i.i.i.i287, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i290" ], [ %.sroa.02.0.copyload.i.i.i.i.i266, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i269" ]
  %.sroa.10467.0 = phi i8 [ %i.kf, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i290" ], [ %i.da, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i269" ]
  %.pn645 = phi ptr [ %i.kd, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i290" ], [ %i.ls, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i269" ] ; 2 uses
  %.sroa.18471.2.in = getelementptr inbounds nuw i8, ptr %.pn645, i64 4
  %.sroa.24473.2.in = getelementptr inbounds nuw i8, ptr %.pn645, i64 8
  %.sroa.24473.2 = load i16, ptr %.sroa.24473.2.in, align 1, !noalias !7431
  %i.lz = load <2 x i16>, ptr %.sroa.18471.2.in, align 1, !noalias !7431
  %i.ma = icmp eq i64 %.sroa.29397.2, 0
  br i1 %i.ma, label %bb.dl, label %bb.br

bb.br:                                            ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2a7252227c2c55ebE.exit294
  %.not.i165 = icmp ult i64 %.sroa.29397.2, %i.ek
  br i1 %.not.i165, label %bb.bs, label %.split.i166

.split.i166:                                      ; preds = %bb.br
  %i.mb = icmp eq i64 %.sroa.29397.2, %i.ek
  br i1 %i.mb, label %bb.dl, label %bb.dw

bb.bs:                                            ; preds = %bb.br
  %i.mc = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.29397.2
  %i.md = load i8, ptr %i.mc, align 1, !alias.scope !7473, !noundef !6
  %i.me = icmp sgt i8 %i.md, -65
  br i1 %i.me, label %bb.dl, label %bb.dw

bb.bt:                                            ; preds = %.loopexit.i154
  %i.mf = load i8, ptr %i.el, align 1, !noalias !7476, !noundef !6 ; 5 uses
  %i.mg = icmp sgt i8 %i.mf, -1
  br i1 %i.mg, label %bb.bu, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i": ; preds = %bb.bt
  %i.mh = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.mi = and i8 %i.mf, 31
  %i.mj = zext nneg i8 %i.mi to i32               ; 3 uses
  %i.mk = icmp samesign ne i64 %i.ea, %6
  tail call void @llvm.assume(i1 %i.mk)
  %i.ml = load i8, ptr %i.mh, align 1, !noalias !7476, !noundef !6
  %i.mm = shl nuw nsw i32 %i.mj, 6
  %i.mn = and i8 %i.ml, 63
  %i.mo = zext nneg i8 %i.mn to i32               ; 2 uses
  %i.mp = or disjoint i32 %i.mm, %i.mo
  %i.mq = icmp samesign ugt i8 %i.mf, -33
  br i1 %i.mq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i", label %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread1526

bb.bu:                                            ; preds = %bb.bt
  %i.mr = zext nneg i8 %i.mf to i32
  br label %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread1526

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i"
  %i.ms = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.mt = add nuw nsw i64 %.sroa.0114.02629, 2
  %i.mu = icmp samesign ne i64 %i.mt, %6
  tail call void @llvm.assume(i1 %i.mu)
  %i.mv = load i8, ptr %i.ms, align 1, !noalias !7476, !noundef !6
  %i.mw = shl nuw nsw i32 %i.mo, 6
  %i.mx = and i8 %i.mv, 63
  %i.my = zext nneg i8 %i.mx to i32
  %i.mz = or disjoint i32 %i.mw, %i.my            ; 2 uses
  %i.na = shl nuw nsw i32 %i.mj, 12
  %i.nb = or disjoint i32 %i.mz, %i.na
  %i.nc = icmp samesign ugt i8 %i.mf, -17
  br i1 %i.nc, label %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit, label %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread1526

_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i"
  %i.nd = getelementptr inbounds nuw i8, ptr %i.el, i64 3
  %i.ne = add nuw nsw i64 %.sroa.0114.02629, 3
  %i.nf = icmp samesign ne i64 %i.ne, %6
  tail call void @llvm.assume(i1 %i.nf)
  %i.ng = load i8, ptr %i.nd, align 1, !noalias !7476, !noundef !6
  %i.nh = shl nuw nsw i32 %i.mj, 18
  %i.ni = and i32 %i.nh, 1835008
  %i.nj = shl nuw nsw i32 %i.mz, 6
  %i.nk = and i8 %i.ng, 63
  %i.nl = zext nneg i8 %i.nk to i32
  %i.nm = or disjoint i32 %i.nj, %i.nl
  %i.nn = or disjoint i32 %i.nm, %i.ni            ; 2 uses
  %.not126 = icmp eq i32 %i.nn, 1114112
  br i1 %.not126, label %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread, label %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread1526

_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread: ; preds = %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit, %_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E.exit, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit, %.loopexit.i154
  %.pre1416 = phi ptr [ %.pre14161429, %.loopexit.i154 ], [ %.pre14161429, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit ], [ %.pre14161429, %_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E.exit ], [ %.pre14161433, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ]
  %.pre1415 = phi i64 [ %.pre14151421, %.loopexit.i154 ], [ %.pre14151421, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit ], [ %.pre14151421, %_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E.exit ], [ %.pre14151425, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ] ; 2 uses
  %i.no = phi i64 [ %i.jv, %.loopexit.i154 ], [ %i.jv, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit ], [ %i.jv, %_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E.exit ], [ %i.aal, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ]
  %i.np = phi ptr [ %i.jw, %.loopexit.i154 ], [ %i.jw, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit ], [ %i.jw, %_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E.exit ], [ %i.aam, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ]
  %i.nq = phi i64 [ %i.jx, %.loopexit.i154 ], [ %i.jx, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit ], [ %i.jx, %_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E.exit ], [ %i.aan, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ]
  %.sroa.6.1 = phi i64 [ %.sroa.6.0.ph2717, %.loopexit.i154 ], [ %.sroa.6.0.ph2717, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit ], [ %.sroa.6.0.ph2717, %_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E.exit ], [ %.sroa.3.0.i172, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ]
  %.sroa.0.1 = phi i1 [ true, %.loopexit.i154 ], [ %.sroa.0.0.ph2718, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit ], [ %.sroa.0.0.ph2718, %_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E.exit ], [ %.sroa.0.0.i173, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ]
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ea, i64 %6)
  %umax1410 = tail call i64 @llvm.umax.i64(i64 %i.ea, i64 %.pre1415)
  %i.nr = add i64 %i.ea, 1
  %exitcond.not2628.not = icmp ult i64 %i.ea, %6
  br i1 %exitcond.not2628.not, label %.lr.ph2630, label %.outer._crit_edge

.lr.ph2630:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131", %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread
  %i.ns = phi i64 [ %i.nr, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ]
  %umax14102720 = phi i64 [ %umax1410, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ %i.bz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ] ; 2 uses
  %umax2719 = phi i64 [ %umax, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ %6, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ]
  %.sroa.0.0.ph2718 = phi i1 [ %.sroa.0.1, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ false, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ] ; 4 uses
  %.sroa.6.0.ph2717 = phi i64 [ %.sroa.6.1, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ] ; 5 uses
  %.sroa.0114.0.ph2716 = phi i64 [ %i.ea, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ]
  %.sroa.23.0.ph2715 = phi i64 [ %.sroa.23.1, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ] ; 2 uses
  %.sroa.26.0.ph2714 = phi ptr [ %.sroa.26.1, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ] ; 2 uses
  %.sroa.29.0.ph2713 = phi i64 [ %.sroa.29.1, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ] ; 2 uses
  %.sroa.32.0.ph2712 = phi i64 [ %.sroa.32.1, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ] ; 2 uses
  %.sroa.37.0.ph2711 = phi i64 [ %.sroa.37.1, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ] ; 2 uses
  %.sroa.37401.0.ph2710 = phi i64 [ %.sroa.37401.3, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ]
  %.sroa.32399.0.ph2709 = phi i64 [ %.sroa.32399.3, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ]
  %.sroa.29397.0.ph2708 = phi i64 [ %.sroa.29397.3, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ]
  %.sroa.26395.0.ph2707 = phi ptr [ %.sroa.26395.3, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ]
  %.sroa.23393.0.ph2706 = phi i64 [ %.sroa.23393.3, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ]
  %i.nt = phi i64 [ %i.nq, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ %i.bx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ] ; 2 uses
  %i.nu = phi ptr [ %i.np, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ %i.bu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ] ; 2 uses
  %i.nv = phi i64 [ %i.no, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ %i.cj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ] ; 2 uses
  %.pre141514232705 = phi i64 [ %.pre1415, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ %i.bz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ] ; 3 uses
  %.pre141614312704 = phi ptr [ %.pre1416, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread ], [ %i.ca, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131" ] ; 3 uses
  br label %bb.n

_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread1526: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i", %bb.bu, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit
  %.sroa.4.0.i1529 = phi i32 [ %i.nn, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit ], [ %i.nb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i" ], [ %i.mp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i" ], [ %i.mr, %bb.bu ] ; 3 uses
  switch i64 %i.dh, label %.lr.ph.i.i.i [
    i64 0, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i.i"
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread1526
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread1526 ], [ %i.oe, %.lr.ph.i.i.i ] ; 4 uses
  %i.nw = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.dh
  tail call void @llvm.assume(i1 %i.nw)
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.sroa.05.0.lcssa.i.i.i
  %.val20.i.i.i = load i32, ptr %i.nx, align 4, !alias.scope !7479, !noalias !7482, !noundef !6 ; 2 uses
  %i.ny = icmp eq i32 %.val20.i.i.i, %.sroa.4.0.i1529
  br i1 %i.ny, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i.i", label %bb.bv

.lr.ph.i.i.i:                                     ; preds = %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread1526, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.of, %.lr.ph.i.i.i ], [ %i.dh, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread1526 ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.oe, %.lr.ph.i.i.i ], [ 0, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread1526 ] ; 2 uses
  %i.nz = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.oa = add i64 %i.nz, %.sroa.05.024.i.i.i      ; 3 uses
  %i.ob = icmp ult i64 %i.oa, %i.dh
  tail call void @llvm.assume(i1 %i.ob)
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.oa
  %.val22.i.i.i = load i32, ptr %i.oc, align 4, !alias.scope !7479, !noalias !7482, !noundef !6
  %i.od = icmp ugt i32 %.val22.i.i.i, %.sroa.4.0.i1529
  %i.oe = select i1 %i.od, i64 %.sroa.05.024.i.i.i, i64 %i.oa, !unpredictable !6 ; 2 uses
  %i.of = sub i64 %.sroa.01.025.i.i.i, %i.nz      ; 2 uses
  %i.og = icmp ugt i64 %i.of, 1
  br i1 %i.og, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.bv:                                            ; preds = %._crit_edge.i.i.i
  %i.oh = icmp ult i32 %.val20.i.i.i, %.sroa.4.0.i1529
  %i.oi = zext i1 %i.oh to i64
  %i.oj = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.oi ; 2 uses
  %i.ok = icmp ule i64 %i.oj, %i.dh
  tail call void @llvm.assume(i1 %i.ok)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i.i": ; preds = %bb.bv, %._crit_edge.i.i.i, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread1526
  %.sroa.4.0.i.i.i = phi i64 [ %i.dh, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread1526 ], [ %i.oj, %bb.bv ], [ %.sroa.05.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.0.0.i.i.i = phi i64 [ -1, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread1526 ], [ -1, %bb.bv ], [ 0, %._crit_edge.i.i.i ]
  %.sroa.0.0.i.i = add i64 %.sroa.0.0.i.i.i, %.sroa.4.0.i.i.i ; 3 uses
  %i.ol = icmp ult i64 %.sroa.0.0.i.i, %i.dj
  br i1 %i.ol, label %_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E.exit, label %bb.bw

bb.bw:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.0.i.i, i64 noundef %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #46, !noalias !7488
  unreachable

_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E.exit: ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i.i"
  %i.om = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %.sroa.0.0.i.i ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.oo = load ptr, ptr %i.on, align 8, !noalias !7488, !nonnull !6, !noundef !6 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.oq = load i64, ptr %i.op, align 8, !noalias !7488, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.oq, 3
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 %.idx
  %i.os = icmp eq i64 %i.oq, 0
  br i1 %i.os, label %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread, label %.lr.ph1023

.lr.ph1023:                                       ; preds = %_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E.exit
  %i.ot = lshr i64 %i.ek, 2
  %i.ou = and i64 %i.ek, 3
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ou, 0
  %i.ov = zext i1 %.not.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i = add nuw nsw i64 %i.ot, %i.ov
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph1023, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit
  %.pre14161427 = phi ptr [ %.pre14161429, %.lr.ph1023 ], [ %.pre14161433, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ] ; 3 uses
  %.pre14151419 = phi i64 [ %.pre14151421, %.lr.ph1023 ], [ %.pre14151425, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ] ; 3 uses
  %i.ow = phi i64 [ %i.jv, %.lr.ph1023 ], [ %i.aal, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ] ; 4 uses
  %i.ox = phi ptr [ %i.jw, %.lr.ph1023 ], [ %i.aam, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ] ; 4 uses
  %i.oy = phi i64 [ %i.jx, %.lr.ph1023 ], [ %i.aan, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ] ; 4 uses
  %.sroa.0.31022 = phi i1 [ %.sroa.0.0.ph2718, %.lr.ph1023 ], [ %.sroa.0.0.i173, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ] ; 2 uses
  %.sroa.6.31021 = phi i64 [ %.sroa.6.0.ph2717, %.lr.ph1023 ], [ %.sroa.3.0.i172, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ] ; 2 uses
  %.sroa.7443.01020 = phi i64 [ 0, %.lr.ph1023 ], [ %i.pa, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ] ; 3 uses
  %.sroa.0441.01019 = phi ptr [ %i.oo, %.lr.ph1023 ], [ %i.oz, %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit ] ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0441.01019, i64 8 ; 2 uses
  %i.pa = add nuw nsw i64 %.sroa.7443.01020, 1
  %i.pb = load i64, ptr %.sroa.0441.01019, align 8, !noundef !6 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7489)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4484)
  %i.pc = icmp ult i64 %i.pb, %i.dn
  br i1 %i.pc, label %_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_definition17h755a31c12d2c50b8E.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.pb, i64 noundef %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #46, !noalias !7492
  unreachable

_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_definition17h755a31c12d2c50b8E.exit.i: ; preds = %bb.bx
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.pb ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  %i.pf = load i8, ptr %i.pe, align 4, !range !1150, !noalias !7498, !noundef !6
  %i.pg = trunc nuw i8 %i.pf to i1
  %brmerge.i = or i1 %.sroa.06.2, %i.pg
  br i1 %brmerge.i, label %bb.bz, label %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit

bb.bz:                                            ; preds = %_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_definition17h755a31c12d2c50b8E.exit.i
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 5
  %i.pi = load i8, ptr %i.ph, align 1, !range !1150, !noalias !7498, !noundef !6
  %i.pj = trunc nuw i8 %i.pi to i1
  br i1 %i.pj, label %.preheader, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0b959ba1ec1abcf8E.exit.i.i.i.i", !prof !7499

_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.i: ; preds = %.lr.ph50.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h9ae2092a4256276dE.exit.thread", %bb.ci, %_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E.exit.i, %bb.ca
  %.not20.i = icmp eq i64 %.sroa.01.1.i, 0
  br i1 %.not20.i, label %_ZN18lindera_dictionary7viterbi7Lattice20process_unknown_word17he51d1cc751ad37bdE.exit, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0b959ba1ec1abcf8E.exit.i.i.i.i"

.preheader:                                       ; preds = %bb.bz, %bb.cj
  %.sroa.0475.0 = phi ptr [ %.sroa.0475.1, %bb.cj ], [ %i.el, %bb.bz ] ; 9 uses
  %.not18.i = phi i1 [ true, %bb.cj ], [ false, %bb.bz ]
  %.sroa.01.1.i = phi i64 [ %i.tk, %bb.cj ], [ 1, %bb.bz ] ; 3 uses
  %i.pk = icmp eq ptr %.sroa.0475.0, %i.dd        ; 2 uses
  br i1 %.not18.i, label %bb.ca, label %.lr.ph50.i, !prof !7

bb.ca:                                            ; preds = %.preheader
  br i1 %i.pk, label %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.0475.0, i64 1 ; 3 uses
  %i.pm = load i8, ptr %.sroa.0475.0, align 1, !noalias !7500, !noundef !6 ; 5 uses
  %i.pn = icmp sgt i8 %i.pm, -1
  br i1 %i.pn, label %bb.cc, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i": ; preds = %bb.cb
  %i.po = and i8 %i.pm, 31
  %i.pp = zext nneg i8 %i.po to i32               ; 3 uses
  %i.pq = icmp ne ptr %i.pl, %i.dd
  tail call void @llvm.assume(i1 %i.pq)
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.0475.0, i64 2 ; 3 uses
  %i.ps = load i8, ptr %i.pl, align 1, !noalias !7500, !noundef !6
  %i.pt = shl nuw nsw i32 %i.pp, 6
  %i.pu = and i8 %i.ps, 63
  %i.pv = zext nneg i8 %i.pu to i32               ; 2 uses
  %i.pw = or disjoint i32 %i.pt, %i.pv
  %i.px = icmp samesign ugt i8 %i.pm, -33
  br i1 %i.px, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i", label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.py = zext nneg i8 %i.pm to i32
  br label %bb.cd

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i"
  %i.pz = icmp ne ptr %i.pr, %i.dd
  tail call void @llvm.assume(i1 %i.pz)
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.0475.0, i64 3 ; 3 uses
  %i.qb = load i8, ptr %i.pr, align 1, !noalias !7500, !noundef !6
  %i.qc = shl nuw nsw i32 %i.pv, 6
  %i.qd = and i8 %i.qb, 63
  %i.qe = zext nneg i8 %i.qd to i32
  %i.qf = or disjoint i32 %i.qc, %i.qe            ; 2 uses
  %i.qg = shl nuw nsw i32 %i.pp, 12
  %i.qh = or disjoint i32 %i.qf, %i.qg
  %i.qi = icmp samesign ugt i8 %i.pm, -17
  br i1 %i.qi, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i", label %bb.cd

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i"
  %i.qj = icmp ne ptr %i.qa, %i.dd
  tail call void @llvm.assume(i1 %i.qj)
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.0475.0, i64 4
  %i.ql = load i8, ptr %i.qa, align 1, !noalias !7500, !noundef !6
  %i.qm = shl nuw nsw i32 %i.pp, 18
  %i.qn = and i32 %i.qm, 1835008
  %i.qo = shl nuw nsw i32 %i.qf, 6
  %i.qp = and i8 %i.ql, 63
  %i.qq = zext nneg i8 %i.qp to i32
  %i.qr = or disjoint i32 %i.qo, %i.qq
  %i.qs = or disjoint i32 %i.qr, %i.qn
  br label %bb.cd

.lr.ph50.i:                                       ; preds = %.preheader
  br i1 %i.pk, label %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h9ae2092a4256276dE.exit.thread"

bb.cd:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i305", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i306", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i302", %bb.ch, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i", %bb.cc, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i"
  %.sroa.0475.1 = phi ptr [ %i.pl, %bb.cc ], [ %i.qk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i" ], [ %i.qa, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i" ], [ %i.pr, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i" ], [ %i.sd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i302" ], [ %i.sm, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i305" ], [ %i.sw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i306" ], [ %i.rx, %bb.ch ]
  %.sink72.i = phi i32 [ %i.py, %bb.cc ], [ %i.qs, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i" ], [ %i.qh, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i" ], [ %i.pw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i" ], [ %i.si, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i302" ], [ %i.st, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i305" ], [ %i.te, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i306" ], [ %i.sk, %bb.ch ] ; 4 uses
  %i.qt = icmp samesign ult i32 %.sink72.i, 1114112
  tail call void @llvm.assume(i1 %i.qt)
  switch i64 %i.dh, label %.lr.ph.i.i.i.i [
    i64 0, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i.i.i"
    i64 1, label %._crit_edge.i.i.i.i
  ]

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.cd
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.cd ], [ %i.rc, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.qu = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i, %i.dh
  tail call void @llvm.assume(i1 %i.qu)
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.sroa.05.0.lcssa.i.i.i.i
  %.val20.i.i.i.i = load i32, ptr %i.qv, align 4, !alias.scope !7503, !noalias !7506, !noundef !6 ; 2 uses
  %i.qw = icmp eq i32 %.val20.i.i.i.i, %.sink72.i
  br i1 %i.qw, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i.i.i", label %bb.ce

.lr.ph.i.i.i.i:                                   ; preds = %bb.cd, %.lr.ph.i.i.i.i
  %.sroa.01.025.i.i.i.i = phi i64 [ %i.rd, %.lr.ph.i.i.i.i ], [ %i.dh, %bb.cd ] ; 2 uses
  %.sroa.05.024.i.i.i.i = phi i64 [ %i.rc, %.lr.ph.i.i.i.i ], [ 0, %bb.cd ] ; 2 uses
  %i.qx = lshr i64 %.sroa.01.025.i.i.i.i, 1       ; 2 uses
  %i.qy = add i64 %i.qx, %.sroa.05.024.i.i.i.i    ; 3 uses
  %i.qz = icmp ult i64 %i.qy, %i.dh
  tail call void @llvm.assume(i1 %i.qz)
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.qy
  %.val22.i.i.i.i = load i32, ptr %i.ra, align 4, !alias.scope !7503, !noalias !7506, !noundef !6
  %i.rb = icmp ugt i32 %.val22.i.i.i.i, %.sink72.i
  %i.rc = select i1 %i.rb, i64 %.sroa.05.024.i.i.i.i, i64 %i.qy, !unpredictable !6 ; 2 uses
  %i.rd = sub i64 %.sroa.01.025.i.i.i.i, %i.qx    ; 2 uses
  %i.re = icmp ugt i64 %i.rd, 1
  br i1 %i.re, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.ce:                                            ; preds = %._crit_edge.i.i.i.i
  %i.rf = icmp ult i32 %.val20.i.i.i.i, %.sink72.i
  %i.rg = zext i1 %i.rf to i64
  %i.rh = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.rg ; 2 uses
  %i.ri = icmp ule i64 %i.rh, %i.dh
  tail call void @llvm.assume(i1 %i.ri)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i.i.i": ; preds = %bb.ce, %._crit_edge.i.i.i.i, %bb.cd
  %.sroa.4.0.i.i.i.i = phi i64 [ %i.dh, %bb.cd ], [ %i.rh, %bb.ce ], [ %.sroa.05.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %.sroa.0.0.i.i.i.i = phi i64 [ -1, %bb.cd ], [ -1, %bb.ce ], [ 0, %._crit_edge.i.i.i.i ]
  %.sroa.0.0.i.i.i176 = add i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i ; 3 uses
  %i.rj = icmp ult i64 %.sroa.0.0.i.i.i176, %i.dj
  br i1 %i.rj, label %_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E.exit.i, label %bb.cf

bb.cf:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.0.i.i.i176, i64 noundef %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #46, !noalias !7512
  unreachable

_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E.exit.i: ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16binary_search_by17hd6d779d9e467f491E.exit.i.i.i"
  %i.rk = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %.sroa.0.0.i.i.i176 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  %i.rm = load i64, ptr %i.rl, align 8, !noalias !7512, !noundef !6
  %i.rn = icmp ugt i64 %i.rm, %.sroa.7443.01020
  br i1 %i.rn, label %bb.ci, label %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.i

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h9ae2092a4256276dE.exit.thread": ; preds = %.lr.ph50.i
  %i.ro = ptrtoint ptr %.sroa.0475.0 to i64
  %i.rp = sub nuw i64 %i.dq, %i.ro
  %i.rq = load i8, ptr %.sroa.0475.0, align 1, !noalias !7513, !noundef !6
  %i.rr = zext i8 %i.rq to i64
  %i.rs = getelementptr inbounds nuw i8, ptr @657, i64 %i.rr
  %i.rt = load i8, ptr %i.rs, align 1, !noalias !7513, !noundef !6
  %i.ru = zext i8 %i.rt to i64                    ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.0475.0, i64 %i.ru ; 6 uses
  %.not24.i = icmp uge i64 %i.rp, %i.ru
  tail call void @llvm.assume(i1 %.not24.i), !noalias !7498
  %i.rw = icmp eq ptr %i.rv, %i.dd
  br i1 %i.rw, label %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.i, label %bb.cg

bb.cg:                                            ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h9ae2092a4256276dE.exit.thread"
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 1 ; 3 uses
  %i.ry = load i8, ptr %i.rv, align 1, !noalias !7516, !noundef !6 ; 5 uses
  %i.rz = icmp sgt i8 %i.ry, -1
  br i1 %i.rz, label %bb.ch, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i302"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i302": ; preds = %bb.cg
  %i.sa = and i8 %i.ry, 31
  %i.sb = zext nneg i8 %i.sa to i32               ; 3 uses
  %i.sc = icmp ne ptr %i.rx, %i.dd
  tail call void @llvm.assume(i1 %i.sc), !noalias !7498
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rv, i64 2 ; 3 uses
  %i.se = load i8, ptr %i.rx, align 1, !noalias !7516, !noundef !6
  %i.sf = shl nuw nsw i32 %i.sb, 6
  %i.sg = and i8 %i.se, 63
  %i.sh = zext nneg i8 %i.sg to i32               ; 2 uses
  %i.si = or disjoint i32 %i.sf, %i.sh
  %i.sj = icmp samesign ugt i8 %i.ry, -33
  br i1 %i.sj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i305", label %bb.cd

bb.ch:                                            ; preds = %bb.cg
  %i.sk = zext nneg i8 %i.ry to i32
  br label %bb.cd

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i305": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i302"
  %i.sl = icmp ne ptr %i.sd, %i.dd
  tail call void @llvm.assume(i1 %i.sl), !noalias !7498
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rv, i64 3 ; 3 uses
  %i.sn = load i8, ptr %i.sd, align 1, !noalias !7516, !noundef !6
  %i.so = shl nuw nsw i32 %i.sh, 6
  %i.sp = and i8 %i.sn, 63
  %i.sq = zext nneg i8 %i.sp to i32
  %i.sr = or disjoint i32 %i.so, %i.sq            ; 2 uses
  %i.ss = shl nuw nsw i32 %i.sb, 12
  %i.st = or disjoint i32 %i.sr, %i.ss
  %i.su = icmp samesign ugt i8 %i.ry, -17
  br i1 %i.su, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i306", label %bb.cd

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i306": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i305"
  %i.sv = icmp ne ptr %i.sm, %i.dd
  tail call void @llvm.assume(i1 %i.sv), !noalias !7498
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  %i.sx = load i8, ptr %i.sm, align 1, !noalias !7516, !noundef !6
  %i.sy = shl nuw nsw i32 %i.sb, 18
  %i.sz = and i32 %i.sy, 1835008
  %i.ta = shl nuw nsw i32 %i.sr, 6
  %i.tb = and i8 %i.sx, 63
  %i.tc = zext nneg i8 %i.tb to i32
  %i.td = or disjoint i32 %i.ta, %i.tc
  %i.te = or disjoint i32 %i.td, %i.sz
  br label %bb.cd

bb.ci:                                            ; preds = %_ZN18lindera_dictionary10dictionary20character_definition19CharacterDefinition17lookup_categories17ha214f868e499ab71E.exit.i
  %i.tf = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8, !noalias !7512, !nonnull !6, !noundef !6
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %.sroa.7443.01020
  %i.ti = load i64, ptr %i.th, align 8, !noalias !7498, !noundef !6
  %i.tj = icmp eq i64 %i.ti, %i.pb
  br i1 %i.tj, label %bb.cj, label %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.i

bb.cj:                                            ; preds = %bb.ci
  %i.tk = add i64 %.sroa.01.1.i, 1
  br label %.preheader

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0b959ba1ec1abcf8E.exit.i.i.i.i": ; preds = %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.i, %bb.bz
  %.sroa.01.033.i = phi i64 [ %.sroa.01.1.i, %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.i ], [ 1, %bb.bz ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7519
  store i64 0, ptr %i.a, align 8, !noalias !7519
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !7519
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !7519
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7526)
  %.sroa.0.0.i8.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.01.033.i, i64 %.sroa.0.0.i.i.i.i.i.i)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %.sroa.0.0.i8.i.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !7529

.noexc.i.i.i:                                     ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0b959ba1ec1abcf8E.exit.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7530)
  br label %bb.ck

bb.ck:                                            ; preds = %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h36bb1ba4e9d543b5E.exit.i.i.i.i.i.i.i", %.noexc.i.i.i
  %i.tl = phi ptr [ %i.el, %.noexc.i.i.i ], [ %i.vc, %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h36bb1ba4e9d543b5E.exit.i.i.i.i.i.i.i" ] ; 6 uses
  %.sroa.01.0.i.in.i.i.i.i.i.i = phi i64 [ %.sroa.01.033.i, %.noexc.i.i.i ], [ %.sroa.01.0.i.i.i.i.i.i.i, %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h36bb1ba4e9d543b5E.exit.i.i.i.i.i.i.i" ]
  %.sroa.01.0.i.i.i.i.i.i.i = add i64 %.sroa.01.0.i.in.i.i.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.tl, %i.dd
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h06dfb37821e2a174E.exit.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 1 ; 3 uses
  %i.tn = load i8, ptr %i.tl, align 1, !alias.scope !7489, !noalias !7533, !noundef !6 ; 5 uses
  %i.to = icmp sgt i8 %i.tn, -1
  br i1 %i.to, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i.i.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i": ; preds = %bb.cl
  %i.tp = and i8 %i.tn, 31
  %i.tq = zext nneg i8 %i.tp to i32               ; 3 uses
  %i.tr = icmp ne ptr %i.tm, %i.dd
  tail call void @llvm.assume(i1 %i.tr)
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tl, i64 2 ; 3 uses
  %i.tt = load i8, ptr %i.tm, align 1, !alias.scope !7489, !noalias !7533, !noundef !6
  %i.tu = shl nuw nsw i32 %i.tq, 6
  %i.tv = and i8 %i.tt, 63
  %i.tw = zext nneg i8 %i.tv to i32               ; 2 uses
  %i.tx = or disjoint i32 %i.tu, %i.tw
  %i.ty = icmp samesign ugt i8 %i.tn, -33
  br i1 %i.ty, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i.i.i": ; preds = %bb.cl
  %i.tz = zext nneg i8 %i.tn to i32
  %i.ua = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !7546, !noalias !7549, !noundef !6 ; 2 uses
  %i.ub = icmp sgt i64 %i.ua, -1
  tail call void @llvm.assume(i1 %i.ub)
  br label %bb.co

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i"
  %i.uc = icmp ne ptr %i.ts, %i.dd
  tail call void @llvm.assume(i1 %i.uc)
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tl, i64 3 ; 3 uses
  %i.ue = load i8, ptr %i.ts, align 1, !alias.scope !7489, !noalias !7533, !noundef !6
  %i.uf = shl nuw nsw i32 %i.tw, 6
  %i.ug = and i8 %i.ue, 63
  %i.uh = zext nneg i8 %i.ug to i32
  %i.ui = or disjoint i32 %i.uf, %i.uh            ; 2 uses
  %i.uj = shl nuw nsw i32 %i.tq, 12
  %i.uk = or disjoint i32 %i.ui, %i.uj
  %i.ul = icmp samesign ugt i8 %i.tn, -17
  br i1 %i.ul, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i"
  %i.um = icmp ne ptr %i.ud, %i.dd
  tail call void @llvm.assume(i1 %i.um)
  %i.un = getelementptr inbounds nuw i8, ptr %i.tl, i64 4
  %i.uo = load i8, ptr %i.ud, align 1, !alias.scope !7489, !noalias !7533, !noundef !6
  %i.up = shl nuw nsw i32 %i.tq, 18
  %i.uq = and i32 %i.up, 1835008
  %i.ur = shl nuw nsw i32 %i.ui, 6
  %i.us = and i8 %i.uo, 63
  %i.ut = zext nneg i8 %i.us to i32
  %i.uu = or disjoint i32 %i.ur, %i.ut
  %i.uv = or disjoint i32 %i.uu, %i.uq            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.uv, 1114112
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h06dfb37821e2a174E.exit.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i"
  %i.uw = phi ptr [ %i.un, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i" ], [ %i.ud, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i" ], [ %i.ts, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %spec.select.i11.i.i.i.i.i.i.i = phi i32 [ %i.uv, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i" ], [ %i.uk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i" ], [ %i.tx, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i" ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7550)
  %i.ux = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !7552, !noalias !7549, !noundef !6 ; 4 uses
  %i.uy = icmp sgt i64 %i.ux, -1
  tail call void @llvm.assume(i1 %i.uy)
  %i.uz = icmp samesign ult i32 %spec.select.i11.i.i.i.i.i.i.i, 128
  br i1 %i.uz, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i"
  %i.va = icmp samesign ult i32 %spec.select.i11.i.i.i.i.i.i.i, 2048
  br i1 %i.va, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
end_hunk_6
begin_hunk_7_@_ZN3std2io19default_read_to_end16small_probe_read17hfae0e888fb24d511E:bb.a
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = call fastcc { i64, ptr } @_ZN6flate23zio4read17hee26147af586edecE(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 32) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4fba7d038e69f3baE.exit"
  %i.i = phi ptr [ %i.al, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4fba7d038e69f3baE.exit" ], [ %i.f, %bb.a ] ; 9 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.e
    i64 0, label %.split37
    i64 1, label %.split36
  ], !prof !1466

default.unreachable:                              ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4fba7d038e69f3baE.exit", %bb.a
  %.in = phi ptr [ %i.f, %bb.a ], [ %i.al, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4fba7d038e69f3baE.exit" ] ; 3 uses
  %i.l = ptrtoint ptr %.in to i64                 ; 5 uses
  %i.m = icmp ult ptr %.in, inttoptr (i64 33 to ptr)
  br i1 %i.m, label %bb.c, label %bb.b, !prof !7952

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.l, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #46
  unreachable

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !7983)
  call void @llvm.experimental.noalias.scope.decl(metadata !7986)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !7989, !noundef !6 ; 3 uses
  %i.p = load i64, ptr %1, align 8, !range !165, !alias.scope !7989, !noundef !6
  %i.q = sub i64 %i.p, %i.o
  %i.r = icmp ult i64 %i.q, %i.l
  br i1 %i.r, label %.noexc, label %bb.d, !prof !238

.noexc:                                           ; preds = %bb.c
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.o, i64 noundef %i.l, i64 noundef 1, i64 noundef 1)
  %.pre.i.i = load i64, ptr %i.n, align 8, !alias.scope !7992
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.c
  %i.s = phi i64 [ %i.o, %bb.c ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.t = icmp sgt i64 %i.s, -1
  call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !7992, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.b, i64 %i.l, i1 false), !noalias !7992
  %i.x = add nuw i64 %i.s, %i.l
  store i64 %i.x, ptr %i.n, align 8, !alias.scope !7992
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.split, %.split36, %.split37, %bb.d
  %.sroa.3.0 = phi ptr [ %.in, %bb.d ], [ %i.i, %.split37 ], [ %i.i, %.split36 ], [ %i.i, %.split ], [ %i.i, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %.split37 ], [ 1, %.split36 ], [ 1, %.split ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.z = insertvalue { i64, ptr } %i.y, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.z

.split:                                           ; preds = %.lr.ph
  %.mask38 = and i64 %i.j, -4294967296
  %i.aa = icmp eq i64 %.mask38, 17179869184
  br i1 %i.aa, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4fba7d038e69f3baE.exit", label %.loopexit

.split37:                                         ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !1467, !noundef !6
  %i.ad = icmp eq i8 %i.ac, 35
  br i1 %i.ad, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4fba7d038e69f3baE.exit", label %.loopexit

.split36:                                         ; preds = %.lr.ph
  %i.ae = getelementptr i8, ptr %i.i, i64 15
  %i.af = load i8, ptr %i.ae, align 8, !range !1467, !noundef !6
  %i.ag = icmp eq i8 %i.af, 35
  br i1 %i.ag, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4fba7d038e69f3baE.exit", label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.ah = icmp ult ptr %i.i, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.ah)
  %.mask = and i64 %i.j, -4294967296
  %i.ai = icmp eq i64 %.mask, 150323855360
  br i1 %i.ai, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4fba7d038e69f3baE.exit", label %.loopexit

"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4fba7d038e69f3baE.exit": ; preds = %.split37, %.split36, %.split, %bb.e
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = call fastcc { i64, ptr } @_ZN6flate23zio4read17hee26147af586edecE(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 32) ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { i64, ptr } %i.aj, 1      ; 3 uses
  store i64 %i.ak, ptr %i.a, align 8
  store ptr %i.al, ptr %i.g, align 8
  %i.am = trunc nuw i64 %i.ak to i1
  br i1 %i.am, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN3std2io19default_read_to_end17h109a38573b816f22E(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !165, !noundef !6 ; 5 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025
  br i1 %i.h, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread", label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit", !prof !238

"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit": ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.m, %i.i
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.m
  %.sroa.010.2 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread"

bb.c:                                             ; preds = %bb.a, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit"
  %.sroa.010.1 = phi i64 [ %.sroa.010.2, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit" ], [ 8192, %bb.a ] ; 2 uses
  %.sroa.019.1 = xor i1 %i.g, true                ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread"

"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread": ; preds = %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread_crit_edge", %bb.b, %bb.c, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit"
  %.pre166 = phi i64 [ %.pre166.pre, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread_crit_edge" ], [ %i.f, %bb.c ], [ %i.f, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit" ], [ %i.f, %bb.b ]
  %.pre = phi i64 [ %.pre.pre, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread_crit_edge" ], [ %i.d, %bb.c ], [ %i.d, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit" ], [ %i.d, %bb.b ]
  %.sroa.019.3 = phi i1 [ %.sroa.019.1, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread_crit_edge" ], [ %.sroa.019.1, %bb.c ], [ false, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit" ], [ false, %bb.b ]
  %.sroa.010.3 = phi i64 [ %.sroa.010.1, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread_crit_edge" ], [ %.sroa.010.1, %bb.c ], [ %.sroa.010.2, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit" ], [ 8192, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.outer

.outer:                                           ; preds = %bb.y, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread"
  %.ph = phi i64 [ %i.aw, %bb.y ], [ %.pre166, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread" ]
  %.ph218 = phi i64 [ %i.co, %bb.y ], [ %.pre, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread" ]
  %.sroa.018.4.ph = phi i64 [ %i.cn, %bb.y ], [ 0, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread" ]
  %.sroa.010.4.ph = phi i64 [ %.sroa.055.0, %bb.y ], [ %.sroa.010.3, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread" ] ; 4 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17h8419a95163be3a78E(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0
  %i.v = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1
  br i1 %i.w, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %bb.z, label %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread_crit_edge"

"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread_crit_edge": ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8
  %.pre166.pre = load i64, ptr %1, align 8, !range !165
  br label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h52129a9979626f00E.exit.thread"

bb.f:                                             ; preds = %.backedge, %.outer
  %i.y = phi i64 [ %.ph, %.outer ], [ %i.aw, %.backedge ] ; 3 uses
  %i.z = phi i64 [ %.ph218, %.outer ], [ %i.co, %.backedge ] ; 3 uses
  %.sroa.018.4 = phi i64 [ %.sroa.018.4.ph, %.outer ], [ %i.cn, %.backedge ] ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.z, %i.y
  %i.ac = icmp eq i64 %i.y, %i.f
  %or.cond80 = and i1 %i.ab, %i.ac
  br i1 %or.cond80, label %bb.h, label %bb.g

thread-pre-split:                                 ; preds = %bb.i
  %.pr = load i64, ptr %1, align 8
  %.pre167 = load i64, ptr %i.c, align 8
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %bb.f
  %i.ad = phi i64 [ %.pr, %thread-pre-split ], [ %i.y, %bb.f ] ; 6 uses
  %i.ae = phi i64 [ %.pre167, %thread-pre-split ], [ %i.z, %bb.f ] ; 8 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ae, %i.ad
  br i1 %i.ag, label %bb.k, label %._crit_edge168

._crit_edge168:                                   ; preds = %bb.g
  %.pre169 = load ptr, ptr %i.q, align 8
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.ah = tail call fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17h8419a95163be3a78E(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 2 uses
  %i.ak = trunc nuw i64 %i.ai to i1
  br i1 %i.ak, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %bb.j, label %thread-pre-split

bb.j:                                             ; preds = %bb.i
  %i.am = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.an = icmp sgt i64 %i.am, -1
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = sub nsw i64 %i.am, %i.d
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread"

bb.k:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7996)
  %i.ap = add nuw i64 %i.ad, 32
  %i.aq = shl nuw i64 %i.ad, 1
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ap, i64 %i.aq) ; 4 uses
  %i.ar = icmp slt i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.ar, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !27

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7999
  %i.as = icmp eq i64 %i.ad, 0
  br i1 %i.as, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i", label %bb.l

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.val29.i.i = load ptr, ptr %i.q, align 8, !alias.scope !7999, !nonnull !6, !noundef !6
  store ptr %.val29.i.i, ptr %i.a, align 8, !alias.scope !8000, !noalias !7999
  store i64 %i.ad, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !8000, !noalias !7999
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i": ; preds = %bb.l, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sink.i.i.i = phi i64 [ 1, %bb.l ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ]
  store i64 %.sink.i.i.i, ptr %i.r, align 8, !alias.scope !8000, !noalias !7999
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hd6d4a18c81f6aeb6E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 1, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !7999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7999
  %i.at = load i64, ptr %i.b, align 8, !range !66, !noalias !7999, !noundef !6
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.m, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit"

bb.m:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7999
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h2f056ef26d3b0de6E.exit.i.i"
  %i.av = load ptr, ptr %i.s, align 8, !noalias !7999, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7999
  store ptr %i.av, ptr %i.q, align 8, !alias.scope !7999
  store i64 %.sroa.0.0.i.i.i, ptr %1, align 8, !alias.scope !7999
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge168, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit"
  %i.aw = phi i64 [ %i.ad, %._crit_edge168 ], [ %.sroa.0.0.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit" ] ; 3 uses
  %i.ax = phi ptr [ %.pre169, %._crit_edge168 ], [ %i.av, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit" ]
  %i.ay = sub nsw i64 %i.aw, %i.ae                ; 2 uses
  %.sroa.0.0.i81 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.010.4.ph, i64 %i.ay) ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ae ; 3 uses
  %i.ba = sub nuw i64 %.sroa.0.0.i81, %.sroa.018.4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.018.4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bb, i8 0, i64 %i.ba, i1 false), !noalias !8003
  %i.bc = tail call { i64, ptr } @"_ZN80_$LT$encoding_rs_io..DecodeReaderBytes$LT$R$C$B$GT$$u20$as$u20$std..io..Read$GT$4read17hcda36a1f5bbe66b9E"(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull align 1 %i.az, i64 noundef %.sroa.0.0.i81), !noalias !8012 ; 2 uses
  %i.bd = extractvalue { i64, ptr } %i.bc, 0
  %i.be = extractvalue { i64, ptr } %i.bc, 1      ; 2 uses
  %i.bf = trunc nuw i64 %i.bd to i1
  br i1 %i.bf, label %_ZN3std2io4Read8read_buf17h11cc52eab92d0a37E.exit, label %._crit_edge

._crit_edge:                                      ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit", %bb.n
  %.lcssa154 = phi ptr [ %i.be, %bb.n ], [ %i.cl, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit" ] ; 2 uses
  %i.bg = ptrtoint ptr %.lcssa154 to i64          ; 4 uses
  %.not.i.i = icmp ult i64 %.sroa.0.0.i81, %i.bg
  br i1 %.not.i.i, label %bb.o, label %bb.v, !prof !238

bb.o:                                             ; preds = %._crit_edge
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @290, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #46, !noalias !8012
  unreachable

_ZN3std2io4Read8read_buf17h11cc52eab92d0a37E.exit: ; preds = %bb.n, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit"
  %i.bh = phi ptr [ %i.cl, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit" ], [ %i.be, %bb.n ] ; 8 uses
  %.not77 = icmp eq ptr %i.bh, null
  br i1 %.not77, label %.thread, label %bb.p

.thread:                                          ; preds = %_ZN3std2io4Read8read_buf17h11cc52eab92d0a37E.exit
  store i64 %i.ae, ptr %i.c, align 8
  br label %.loopexit

bb.p:                                             ; preds = %_ZN3std2io4Read8read_buf17h11cc52eab92d0a37E.exit
  %i.bi = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bj = and i64 %i.bi, 3
  switch i64 %i.bj, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.q
    i64 0, label %.split134
    i64 1, label %.split133
  ], !prof !1466

default.unreachable:                              ; preds = %bb.p
  unreachable

.split:                                           ; preds = %bb.p
  %.mask148 = and i64 %i.bi, -4294967296
  %i.bk = icmp eq i64 %.mask148, 17179869184
  br i1 %i.bk, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit155"

.split134:                                        ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bm = load i8, ptr %i.bl, align 8, !range !1467, !noundef !6
  %i.bn = icmp eq i8 %i.bm, 35
  br i1 %i.bn, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit155"

.split133:                                        ; preds = %bb.p
  %i.bo = getelementptr i8, ptr %i.bh, i64 -1     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  %i.bp = getelementptr i8, ptr %i.bh, i64 15
  %i.bq = load i8, ptr %i.bp, align 8, !range !1467, !noundef !6
  %i.br = icmp eq i8 %i.bq, 35
  br i1 %i.br, label %bb.r, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit155"

bb.q:                                             ; preds = %bb.p
  %i.bs = icmp ult ptr %i.bh, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.bs)
  %.mask = and i64 %i.bi, -4294967296
  %i.bt = icmp eq i64 %.mask, 150323855360
  br i1 %i.bt, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit155"

bb.r:                                             ; preds = %.split133
  %.val.i.i.i.i.i = load ptr, ptr %i.bo, align 8, !noalias !8013 ; 5 uses
  %i.bu = getelementptr i8, ptr %i.bh, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !noalias !8013, !nonnull !6, !align !15, !noundef !6 ; 5 uses
  %i.bv = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !6, !noalias !8013 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.bv(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.t unwind label %bb.u, !noalias !8013

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !165, !invariant.load !6, !noalias !8013 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !264, !invariant.load !6, !noalias !8013 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp eq i64 %i.bx, 0
  br i1 %i.cb, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h12375bd83da71235E.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) %i.bz) #47, !noalias !8013
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h12375bd83da71235E.exit.i.i.i.i"

bb.u:                                             ; preds = %bb.s
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !165, !invariant.load !6, !noalias !8013 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !range !264, !invariant.load !6, !noalias !8013 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = icmp eq i64 %i.ce, 0
  br i1 %i.ci, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i": ; preds = %bb.u
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) %i.cg) #47, !noalias !8013
  br label %.body

.body:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i", %bb.u
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef 24, i64 noundef 8) #47, !noalias !8013
  resume { ptr, i32 } %i.cc

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h12375bd83da71235E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.t
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef 24, i64 noundef 8) #47, !noalias !8013
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h3f70fb415ce2d7ddE.exit": ; preds = %bb.q, %.split, %.split134, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h12375bd83da71235E.exit.i.i.i.i"
  %i.cj = tail call { i64, ptr } @"_ZN80_$LT$encoding_rs_io..DecodeReaderBytes$LT$R$C$B$GT$$u20$as$u20$std..io..Read$GT$4read17hcda36a1f5bbe66b9E"(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull align 1 %i.az, i64 noundef %.sroa.0.0.i81), !noalias !8012 ; 2 uses
  %i.ck = extractvalue { i64, ptr } %i.cj, 0
  %i.cl = extractvalue { i64, ptr } %i.cj, 1      ; 2 uses
  %i.cm = trunc nuw i64 %i.ck to i1
  br i1 %i.cm, label %_ZN3std2io4Read8read_buf17h11cc52eab92d0a37E.exit, label %._crit_edge

bb.v:                                             ; preds = %._crit_edge
  %i.cn = sub nuw i64 %.sroa.0.0.i81, %i.bg       ; 2 uses
  %i.co = add i64 %i.ae, %i.bg                    ; 4 uses
  store i64 %i.co, ptr %i.c, align 8
  %i.cp = icmp eq ptr %.lcssa154, null
  br i1 %i.cp, label %.loopexit, label %bb.w

.loopexit:                                        ; preds = %bb.v, %.thread
  %i.cq = phi i64 [ %i.ae, %.thread ], [ %i.co, %bb.v ]
  %i.cr = sub nsw i64 %i.cq, %i.d
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread"

bb.w:                                             ; preds = %bb.v
  br i1 %.sroa.019.3, label %bb.x, label %.backedge

bb.x:                                             ; preds = %bb.w
  %i.cs = icmp uge i64 %i.ay, %.sroa.010.4.ph
  %i.ct = icmp eq i64 %.sroa.0.0.i81, %i.bg
  %or.cond2 = and i1 %i.cs, %i.ct
  br i1 %or.cond2, label %bb.y, label %.backedge

.backedge:                                        ; preds = %bb.x, %bb.w
  br label %bb.f

bb.y:                                             ; preds = %bb.x
  %i.cu = shl i64 %.sroa.010.4.ph, 1
  %.inv = icmp sgt i64 %.sroa.010.4.ph, -1
  %.sroa.055.0 = select i1 %.inv, i64 %i.cu, i64 -1, !prof !7
  br label %.outer

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit": ; preds = %bb.h
  %i.cv = ptrtoint ptr %i.aj to i64
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit155": ; preds = %bb.q, %.split134, %.split, %.split133
  store i64 %i.ae, ptr %i.c, align 8
  %i.cw = ptrtoint ptr %i.bh to i64
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread": ; preds = %bb.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit155", %bb.m, %.loopexit, %bb.j
  %.sroa.8.1 = phi i64 [ %i.cr, %.loopexit ], [ %i.ao, %bb.j ], [ 163208757251, %bb.m ], [ %i.cw, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit155" ], [ %i.cv, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit" ], [ 163208757251, %bb.k ]
  %.sroa.0.1 = phi i64 [ 0, %.loopexit ], [ 0, %bb.j ], [ 1, %bb.m ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit155" ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread.loopexit.split.loop.exit" ], [ 1, %bb.k ]
  %i.cx = inttoptr i64 %.sroa.8.1 to ptr
  br label %bb.z

bb.z:                                             ; preds = %bb.e, %bb.d, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread"
  %.sroa.8.2 = phi ptr [ %i.cx, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread" ], [ %i.v, %bb.d ], [ null, %bb.e ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h31b90b5403c861f7E.exit.thread" ], [ 1, %bb.d ], [ 0, %bb.e ]
  %i.cy = insertvalue { i64, ptr } poison, i64 %.sroa.0.2, 0
  %i.cz = insertvalue { i64, ptr } %i.cy, ptr %.sroa.8.2, 1
  ret { i64, ptr } %i.cz
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_ZN3std2io4Read10read_exact17h34ebd5bf454d2071E(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef nonnull align 1 %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_ZN3std2io18default_read_exact17h14d0aa7f8ed02c9eE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.0.072.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.0.128.i, %bb.h ] ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h4be27dbd7d6d20c3E:.lr.ph.preheader
  %i.q = load i64, ptr %i.p, align 8, !noalias !9213, !noundef !6 ; 4 uses
  %i.r = load i64, ptr %i.g, align 8, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.q, %i.r
  br i1 %.not.i.i.i, label %.invoke24, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9214)
  %i.t = getelementptr inbounds nuw i8, ptr %.val8.i, i64 80
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !9214, !noalias !9217, !noundef !6
  %.not.i.i14.i.i = icmp ne i64 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %.val8.i, i64 72
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !9214, !noalias !9217
  %i.x = icmp ne i64 %i.w, 0
  %or.cond.i.i15.i.i = select i1 %.not.i.i14.i.i, i1 %i.x, i1 false
  br i1 %or.cond.i.i15.i.i, label %bb.e, label %.invoke

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.val8.i, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !9214, !noalias !9217, !nonnull !6, !noundef !6
  %i.aa = load i64, ptr %i.z, align 8, !noalias !9219, !noundef !6 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val8.i, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !6 ; 2 uses
  %.not.i18.i.i = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not.i18.i.i, label %.invoke24, label %bb.f, !prof !16

.invoke24:                                        ; preds = %bb.e, %bb.c
  %i.ad = phi i64 [ %i.q, %bb.c ], [ %i.aa, %bb.e ]
  %i.ae = phi i64 [ %i.r, %bb.c ], [ %i.ac, %bb.e ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.ad, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46
          to label %.cont25 unwind label %bb.g

.cont25:                                          ; preds = %.invoke24
  unreachable

.invoke:                                          ; preds = %bb.d, %.lr.ph20
  %i.af = phi ptr [ @181, %.lr.ph20 ], [ @182, %bb.d ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af) #46
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8.i, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !6, !noundef !6
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.aa)
  %i.ai = sub i64 %i.q, %i.aa
  %i.aj = tail call i32 @memcmp(ptr nonnull %i.s, ptr nonnull %i.ah, i64 %..i.i) ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp eq i32 %i.aj, 0
  %spec.store.select.i.i = select i1 %i.al, i64 %i.ai, i64 %i.ak
  %i.am = icmp slt i64 %spec.store.select.i.i, 0
  br i1 %i.am, label %bb.b, label %._crit_edge21

._crit_edge21:                                    ; preds = %bb.b, %bb.f, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i18, %bb.f ]
  %i.an = ptrtoint ptr %i.c to i64
  store i64 %i.an, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !9220
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit

bb.g:                                             ; preds = %.invoke24, %.invoke
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = ptrtoint ptr %i.c to i64
  store i64 %i.ap, ptr %.sroa.0.0.i18, align 8, !noalias !9225
  resume { ptr, i32 } %i.ao

_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit: ; preds = %.lr.ph, %._crit_edge21
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hcd7d6b68654184b8E(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.idx = shl nuw nsw i64 %1, 3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.02 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit
  %.sroa.0.05 = phi ptr [ %.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit ], [ %.sroa.0.02, %.lr.ph.preheader ] ; 5 uses
  %.pn4 = phi ptr [ %.sroa.0.05, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %.val9.i = load ptr, ptr %.sroa.0.05, align 8, !nonnull !6, !align !15, !noundef !6
  %.val10.i = load ptr, ptr %.pn4, align 8
  %i.b = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val9.i, ptr %.val10.i)
  br i1 %i.b, label %bb.a, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit

bb.a:                                             ; preds = %.lr.ph
  %i.c = load ptr, ptr %.sroa.0.05, align 8, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.d = load i64, ptr %.pn4, align 8
  store i64 %i.d, ptr %.sroa.0.05, align 8
  %i.e = icmp eq ptr %.pn4, %0
  br i1 %i.e, label %._crit_edge6, label %.lr.ph5

bb.b:                                             ; preds = %bb.c
  %i.f = load i64, ptr %i.h, align 8
  store i64 %i.f, ptr %.sroa.0.0.i3, align 8
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i3 = phi ptr [ %i.h, %bb.b ], [ %.pn4, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -8 ; 4 uses
  %.val8.i = load ptr, ptr %i.h, align 8
  %i.i = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %i.c, ptr %.val8.i)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph5
  br i1 %i.i, label %bb.b, label %._crit_edge6

._crit_edge6:                                     ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i3, %bb.c ]
  %i.j = ptrtoint ptr %i.c to i64
  store i64 %i.j, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !9230
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit

bb.d:                                             ; preds = %.lr.ph5
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = ptrtoint ptr %i.c to i64
  store i64 %i.l, ptr %.sroa.0.0.i3, align 8, !noalias !9235
  resume { ptr, i32 } %i.k

_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit: ; preds = %.lr.ph, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd643ff933d4b9480E(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 1, 32) %1, i64 noundef range(i64 1, 14) %2) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %2, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %.not1 = icmp samesign eq i64 %2, %1
  br i1 %.not1, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit
  %.sroa.0.02 = phi ptr [ %i.j, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.02, i64 -4 ; 3 uses
  %.val9.i = load i32, ptr %.sroa.0.02, align 4, !alias.scope !9240, !noalias !9243, !noundef !6 ; 3 uses
  %.val10.i = load i32, ptr %i.d, align 4, !alias.scope !9243, !noalias !9240, !noundef !6 ; 2 uses
  %i.e = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i32 %.val10.i, ptr %.sroa.0.02, align 4
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge8, label %.lr.ph7

.preheader:                                       ; preds = %.lr.ph7
  store i32 %.val8.i, ptr %.sroa.0.0.i6, align 4
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge8, label %.lr.ph7

.lr.ph7:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i6 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -4 ; 3 uses
  %.val8.i = load i32, ptr %i.h, align 4, !alias.scope !9243, !noalias !9240, !noundef !6 ; 2 uses
  %i.i = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge8

._crit_edge8:                                     ; preds = %.preheader, %.lr.ph7, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i6, %.lr.ph7 ]
  store i32 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !9245
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit: ; preds = %.lr.ph, %._crit_edge8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h07c152d1d7027fbbE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub i64 %1, %i.c                         ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %.sroa.0.0.i16 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  %.sroa.0.0.i17 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i16, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ult i64 %.sroa.0.0.i16, 513
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %.sroa.0.0.i17, 3                ; 4 uses
  %i.g = icmp ugt i64 %i.d, 2305843009213693951
  %i.h = icmp ugt i64 %i.f, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.g, %i.h
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !27

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !9250
  %i.i = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #47, !noalias !9250 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #46
  unreachable

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  store i64 %.sroa.0.0.i17, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h2eaa57a4a6b23babE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.i, i64 noundef %.sroa.0.0.i17, i1 noundef zeroext %i.k, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E.exit" unwind label %bb.f

"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E.exit": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !9257
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h2eaa57a4a6b23babE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.b, i64 noundef 512, i1 noundef zeroext %i.l, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #48
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h158fb465fe748c48E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub i64 %1, %i.c                         ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %.sroa.0.0.i16 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  %.sroa.0.0.i17 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i16, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ult i64 %.sroa.0.0.i16, 513
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %.sroa.0.0.i17, 3                ; 4 uses
  %i.g = icmp ugt i64 %i.d, 2305843009213693951
  %i.h = icmp ugt i64 %i.f, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.g, %i.h
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !27

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !9260
  %i.i = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #47, !noalias !9260 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #46
  unreachable

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  store i64 %.sroa.0.0.i17, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h542ac89259b134fbE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.i, i64 noundef %.sroa.0.0.i17, i1 noundef zeroext %i.k, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E.exit" unwind label %bb.f

"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E.exit": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !9267
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h542ac89259b134fbE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.b, i64 noundef 512, i1 noundef zeroext %i.l, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #48
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h87a60ecc5147f4baE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub i64 %1, %i.c                         ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %.sroa.0.0.i16 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  %.sroa.0.0.i17 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i16, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ult i64 %.sroa.0.0.i16, 513
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %.sroa.0.0.i17, 3                ; 4 uses
  %i.g = icmp ugt i64 %i.d, 2305843009213693951
  %i.h = icmp ugt i64 %i.f, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.g, %i.h
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !27

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !9270
  %i.i = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #47, !noalias !9270 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #46
  unreachable

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  store i64 %.sroa.0.0.i17, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hb0537f2e75eeb8deE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.i, i64 noundef %.sroa.0.0.i17, i1 noundef zeroext %i.k, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E.exit" unwind label %bb.f

"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E.exit": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !9277
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hb0537f2e75eeb8deE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.b, i64 noundef 512, i1 noundef zeroext %i.l, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #48
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hb112b0f9c43bb043E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 4              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub i64 %1, %i.b                         ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 2000000)
  %.sroa.0.0.i19 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i20 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i19, i64 48) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp ult i64 %.sroa.0.0.i19, 1025
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i64 %.sroa.0.0.i20, 2                ; 5 uses
  %i.f = icmp ugt i64 %i.c, 4611686018427387903
  %i.g = icmp ugt i64 %i.e, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !27

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !9280
  %i.h = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 4) #47, !noalias !9280 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #46
  unreachable

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.j = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0f726eec0013a00eE(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %i.h, i64 noundef %.sroa.0.0.i20, i1 noundef zeroext %i.j, ptr noalias noundef nonnull align 1 %2)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit" unwind label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit21"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #47
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0f726eec0013a00eE(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %i.a, i64 noundef 1024, i1 noundef zeroext %i.k, ptr noalias noundef nonnull align 1 %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit21": ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #47
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0f726eec0013a00eE(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i92 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i97 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread95, %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.val10.i = load i32, ptr %i.o, align 4, !alias.scope !9287, !noalias !9292, !noundef !6 ; 3 uses
  %.val11.i = load i32, ptr %i.m, align 4, !alias.scope !9296, !noalias !9297, !noundef !6
  %i.p = icmp ult i32 %.val10.i, %.val11.i        ; 2 uses
  %.not71 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader49

.preheader49:                                     ; preds = %bb.i
  br i1 %.not71, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not71, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread95, label %.lr.ph58

.lr.ph:                                           ; preds = %.preheader49, %bb.j
  %.val9.i = phi i32 [ %.val8.i, %bb.j ], [ %.val10.i, %.preheader49 ]
  %.sroa.01.0.i.i54 = phi i64 [ %i.s, %bb.j ], [ 2, %.preheader49 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.0.i.i54
  %.val8.i = load i32, ptr %i.q, align 4, !alias.scope !9287, !noalias !9292, !noundef !6 ; 2 uses
  %i.r = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.r, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i54, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i, label %.lr.ph

.lr.ph58:                                         ; preds = %.preheader, %bb.k
  %.val7.i = phi i32 [ %.val.i, %bb.k ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i57 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.1.i.i57
  %.val.i = load i32, ptr %i.t, align 4, !alias.scope !9287, !noalias !9292, !noundef !6 ; 2 uses
  %i.u = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.u, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i

bb.k:                                             ; preds = %.lr.ph58
  %i.v = add nuw i64 %.sroa.01.1.i.i57, 1         ; 2 uses
  %exitcond78.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i, label %.lr.ph58

_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph58
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i57, %.lr.ph58 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i54, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread95: ; preds = %.preheader
  br i1 %.not5.i97, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread: ; preds = %.preheader49
  br i1 %.not5.i92, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.x = shl i64 %.sroa.0.0.i39, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h7b0a8e46d01eff7bE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3a3de7aae3d2697bE(ptr noalias noundef nonnull align 4 %i.m, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %5), !inline_history !9298
  %i.y = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h7b0a8e46d01eff7bE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit": ; preds = %scalar.ph, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4447 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread ], [ %.sroa.0.0.i.i93100104, %middle.block ], [ %.sroa.0.0.i.i93100104, %scalar.ph ]
  %i.aa = shl i64 %.sroa.0.0.i.i4447, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h7b0a8e46d01eff7bE.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9299), !noalias !9302
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9303), !noalias !9302
  %.not15.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread95, %bb.o
  %i.ad = phi i64 [ %i.ac, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread95 ] ; 4 uses
  %.sroa.0.0.i.i93100104 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread95 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i93100104 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ad, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.ad, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = xor i64 %index, -1
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.ah = getelementptr [4 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ag, align 4, !alias.scope !9305, !noalias !9308
  %wide.load117 = load <4 x i32>, ptr %i.ai, align 4, !alias.scope !9305, !noalias !9308
  %i.aj = getelementptr i8, ptr %i.ah, i64 -12    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ah, i64 -28    ; 2 uses
  %wide.load118 = load <4 x i32>, ptr %i.aj, align 4, !alias.scope !9309, !noalias !9310
  %wide.load119 = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !9309, !noalias !9310
  %reverse = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse120 = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ag, align 4, !alias.scope !9305, !noalias !9308
  store <4 x i32> %reverse120, ptr %i.ai, align 4, !alias.scope !9305, !noalias !9308
  %reverse121 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse122 = shufflevector <4 x i32> %wide.load117, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse121, ptr %i.aj, align 4, !alias.scope !9309, !noalias !9310
  store <4 x i32> %reverse122, ptr %i.ak, align 4, !alias.scope !9309, !noalias !9310
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !9311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0.014.i.i = phi i64 [ %i.ar, %scalar.ph ], [ %.sroa.0.014.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.am = xor i64 %.sroa.0.014.i.i, -1
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.ae, i64 %i.am ; 2 uses
  %i.ap = load i32, ptr %i.an, align 4, !alias.scope !9305, !noalias !9308, !noundef !6
  %i.aq = load i32, ptr %i.ao, align 4, !alias.scope !9309, !noalias !9310
  store i32 %i.aq, ptr %i.an, align 4, !alias.scope !9305, !noalias !9308
  store i32 %i.ap, ptr %i.ao, align 4, !alias.scope !9309, !noalias !9310
  %i.ar = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit", label %scalar.ph, !llvm.loop !9312

_ZN4core5slice4sort6stable5drift10create_run17h7b0a8e46d01eff7bE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit" ], [ %i.z, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.as = lshr i64 %.sroa.018.0, 1
  %i.at = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.au = sub i64 %factor, %i.as
  %i.av = add i64 %i.at, %factor
  %i.aw = mul i64 %i.au, %.sroa.0.0
  %i.ax = mul i64 %i.av, %.sroa.0.0
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 false)
  %i.ba = trunc nuw nsw i64 %i.az to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h7b0a8e46d01eff7bE.exit
  %.sroa.026.0 = phi i8 [ %i.ba, %_ZN4core5slice4sort6stable5drift10create_run17h7b0a8e46d01eff7bE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h7b0a8e46d01eff7bE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bb = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bb, label %.lr.ph64, label %._crit_edge

.lr.ph64:                                         ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph64, %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit
  %.sroa.02.163 = phi i64 [ %.sroa.02.0, %.lr.ph64 ], [ %i.bd, %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit ] ; 2 uses
  %.sroa.018.162 = phi i64 [ %.sroa.018.0, %.lr.ph64 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.163, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !6
  %.not29 = icmp ult i8 %i.bf, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.162, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.163, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !6 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.018.162, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.018.162 to i1
  %i.br = or i64 %i.bj, %.sroa.018.162
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bu = shl i64 %i.bm, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bq, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3a3de7aae3d2697bE(ptr noalias noundef nonnull align 4 %i.bo, i64 noundef %i.bk, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.bz, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %5), !inline_history !9313
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit35": ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3a3de7aae3d2697bE(ptr noalias noundef nonnull align 4 %i.ca, i64 noundef %i.bl, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.cf, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %5), !inline_history !9313
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9317)
  %i.cg = icmp eq i64 %i.bk, 0
  %i.ch = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hf724ffe3d1051108E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.ci = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.ci, label %_ZN4core5slice4sort6stable5merge5merge17hf724ffe3d1051108E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cj, ptr %i.bo
  %i.ck = shl i64 %.sroa.0.0.i.i36, 2             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %.16.i, i64 %i.ck, i1 false), !alias.scope !9319
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.cm = phi ptr [ %i.cx, %.preheader.i ], [ %i.cl, %bb.y ]
  %i.cn = phi ptr [ %i.cv, %.preheader.i ], [ %i.cj, %bb.y ]
  %.sroa.0.0.i17.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.bc, %bb.y ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 -4 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -4 ; 2 uses
  %.val.i.i = load i32, ptr %i.cp, align 4, !alias.scope !9320, !noalias !9323, !noundef !6 ; 2 uses
  %.val10.i.i = load i32, ptr %i.co, align 4, !alias.scope !9327, !noalias !9328, !noundef !6 ; 2 uses
  %i.cr = icmp ult i32 %.val.i.i, %.val10.i.i     ; 2 uses
  %i.cs = tail call i32 @llvm.umax.i32(i32 %.val.i.i, i32 %.val10.i.i)
  store i32 %i.cs, ptr %i.cq, align 4, !alias.scope !9314, !noalias !9329
  %i.ct = xor i1 %i.cr, true
  %i.cu = zext i1 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cu ; 3 uses
  %i.cw = zext i1 %i.cr to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cw ; 3 uses
  %i.cy = icmp eq ptr %i.cv, %i.bo
  %i.cz = icmp eq ptr %i.cx, %2
  %or.cond.i.i = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hacb86664c95e2878E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.da = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %i.bo, %bb.y ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.cj, %bb.y ] ; 2 uses
  %i.db = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %2, %bb.y ] ; 2 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.04.i.i, align 4, !alias.scope !9330, !noalias !9333, !noundef !6 ; 2 uses
  %.val.i19.i = load i32, ptr %i.db, align 4, !alias.scope !9337, !noalias !9338, !noundef !6 ; 2 uses
  %i.dc = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i19.i ; 2 uses
  %i.dd = xor i1 %i.dc, true
  %i.de = tail call i32 @llvm.umin.i32(i32 %.sroa.0.0.val.i.i, i32 %.val.i19.i)
  store i32 %i.de, ptr %i.da, align 4, !alias.scope !9314, !noalias !9339
  %i.df = zext i1 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.df ; 3 uses
  %i.dh = zext i1 %i.dc to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.04.i.i, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dk = icmp ne ptr %i.dg, %i.cl
  %i.dl = icmp ne ptr %i.di, %i.bc
  %or.cond.i20.i = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hacb86664c95e2878E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hacb86664c95e2878E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cv, %.preheader.i ], [ %i.dj, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cx, %.preheader.i ], [ %i.cl, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dg, %.lr.ph.i.i ] ; 2 uses
  %i.dm = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dn = ptrtoint ptr %.sroa.0.1.i to i64
  %i.do = sub nuw i64 %i.dm, %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.do, i1 false), !alias.scope !9319, !noalias !9340
  br label %_ZN4core5slice4sort6stable5merge5merge17hf724ffe3d1051108E.exit

_ZN4core5slice4sort6stable5merge5merge17hf724ffe3d1051108E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hacb86664c95e2878E.exit.i"
  %i.dp = shl i64 %i.bm, 1
  %i.dq = or disjoint i64 %i.dp, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17hf724ffe3d1051108E.exit
  %.sroa.0.0.i = phi i64 [ %i.dq, %_ZN4core5slice4sort6stable5merge5merge17hf724ffe3d1051108E.exit ], [ %i.bu, %bb.t ] ; 2 uses
  %i.dr = icmp ugt i64 %i.bd, 1
  br i1 %i.dr, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.ds = add i64 %.sroa.02.1.lcssa, 1
  %i.dt = lshr i64 %.sroa.023.0, 1
  %i.du = add i64 %i.dt, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.dv = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dv, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dw = or i64 %1, 1
  %i.dx = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dw, i1 true)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 1
  %i.ea = xor i32 %i.dz, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3a3de7aae3d2697bE(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.ea, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %5), !inline_history !9313
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h2eaa57a4a6b23babE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i245 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i250 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ag, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.ag ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gc, %bb.ag ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ga, %bb.ag ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9345)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread248, %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val10.i = load ptr, ptr %i.o, align 8, !alias.scope !9345, !noalias !9348, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %.val11.i = load ptr, ptr %i.m, align 8, !alias.scope !9345, !noalias !9348
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val10.i, ptr %.val11.i), !noalias !9351, !inline_history !9352 ; 2 uses
  %.not157 = icmp eq i64 %i.l, 2                  ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader67

.preheader67:                                     ; preds = %bb.i
  br i1 %.not157, label %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not157, label %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread248, label %.lr.ph144

.lr.ph:                                           ; preds = %.preheader67, %bb.j
  %.val9.i = phi ptr [ %.val8.i, %bb.j ], [ %.val10.i, %.preheader67 ]
  %.sroa.01.0.i.i140 = phi i64 [ %i.s, %bb.j ], [ 2, %.preheader67 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.0.i.i140
  %.val8.i = load ptr, ptr %i.q, align 8, !alias.scope !9345, !noalias !9348, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val8.i, ptr nonnull %.val9.i), !noalias !9351, !inline_history !9352
  br i1 %i.r, label %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i140, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i, label %.lr.ph

.lr.ph144:                                        ; preds = %.preheader, %bb.k
  %.val7.i = phi ptr [ %.val.i, %bb.k ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i143 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.1.i.i143
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !9345, !noalias !9348, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val.i, ptr nonnull %.val7.i), !noalias !9351, !inline_history !9352
  br i1 %i.u, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i

bb.k:                                             ; preds = %.lr.ph144
  %i.v = add nuw i64 %.sroa.01.1.i.i143, 1        ; 2 uses
  %exitcond216.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond216.not, label %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i, label %.lr.ph144

_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph144
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i143, %.lr.ph144 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i140, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread248: ; preds = %.preheader
  br i1 %.not5.i250, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread: ; preds = %.preheader67
  br i1 %.not5.i245, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.x = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hc12a19fea931e422E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7ddf27d5d9d76b2fE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9352
  %i.y = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hc12a19fea931e422E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit": ; preds = %scalar.ph, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i6265 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread ], [ %.sroa.0.0.i.i246253257, %middle.block ], [ %.sroa.0.0.i.i246253257, %scalar.ph ]
  %i.aa = shl i64 %.sroa.0.0.i.i6265, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hc12a19fea931e422E.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9353), !noalias !9348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9356), !noalias !9348
  %.not15.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread248, %bb.o
  %i.ad = phi i64 [ %i.ac, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread248 ] ; 4 uses
  %.sroa.0.0.i.i246253257 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread248 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.0.i.i246253257 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ad, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.ad, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = xor i64 %index, -1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 4 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ae, i64 %i.af ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ag, align 8, !alias.scope !9358, !noalias !9361
  %wide.load374 = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !9358, !noalias !9361
  %i.aj = getelementptr i8, ptr %i.ah, i64 -8
  %i.ak = getelementptr i8, ptr %i.ah, i64 -24
  %wide.load375 = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !9362, !noalias !9363
  %wide.load376 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !9362, !noalias !9363
  %reverse = shufflevector <2 x i64> %wide.load375, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse377 = shufflevector <2 x i64> %wide.load376, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x i64> %reverse, ptr %i.ag, align 8, !alias.scope !9358, !noalias !9361
  store <2 x i64> %reverse377, ptr %i.al, align 8, !alias.scope !9358, !noalias !9361
  %i.am = getelementptr i8, ptr %i.ah, i64 -8
  %i.an = getelementptr i8, ptr %i.ah, i64 -24
  %reverse378 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse379 = shufflevector <2 x ptr> %wide.load374, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse378, ptr %i.am, align 8, !alias.scope !9362, !noalias !9363
  store <2 x ptr> %reverse379, ptr %i.an, align 8, !alias.scope !9362, !noalias !9363
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !9364

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0.014.i.i = phi i64 [ %i.au, %scalar.ph ], [ %.sroa.0.014.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ap = xor i64 %.sroa.0.014.i.i, -1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ae, i64 %i.ap ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !alias.scope !9358, !noalias !9361, !nonnull !6, !align !15, !noundef !6
  %i.at = load i64, ptr %i.ar, align 8, !alias.scope !9362, !noalias !9363
  store i64 %i.at, ptr %i.aq, align 8, !alias.scope !9358, !noalias !9361
  store ptr %i.as, ptr %i.ar, align 8, !alias.scope !9362, !noalias !9363
  %i.au = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %scalar.ph, !llvm.loop !9365

_ZN4core5slice4sort6stable5drift10create_run17hc12a19fea931e422E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit" ], [ %i.z, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.av = lshr i64 %.sroa.018.0, 1
  %i.aw = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ax = sub i64 %factor, %i.av
  %i.ay = add i64 %i.aw, %factor
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false)
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hc12a19fea931e422E.exit
  %.sroa.026.0 = phi i8 [ %i.bd, %_ZN4core5slice4sort6stable5drift10create_run17hc12a19fea931e422E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hc12a19fea931e422E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.be = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.be, label %.lr.ph150, label %._crit_edge

.lr.ph150:                                        ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph150, %_ZN4core5slice4sort6stable5drift13logical_merge17h60c5e78110bb893dE.exit
  %.sroa.02.1149 = phi i64 [ %.sroa.02.0, %.lr.ph150 ], [ %i.bg, %_ZN4core5slice4sort6stable5drift13logical_merge17h60c5e78110bb893dE.exit ] ; 2 uses
  %.sroa.018.1148 = phi i64 [ %.sroa.018.0, %.lr.ph150 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h60c5e78110bb893dE.exit ] ; 4 uses
  %i.bg = add i64 %.sroa.02.1149, -1              ; 4 uses
end_hunk_8
begin_hunk_9_@_ZN4core5slice4sort6stable5drift4sort17h2eaa57a4a6b23babE:bb.a
  %i.ds = sub i64 %i.cy, %i.dk
  %i.dt = tail call i32 @memcmp(ptr nonnull %i.dc, ptr nonnull %i.dr, i64 %..i.i51), !noalias !9372 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp eq i32 %i.dt, 0
  %spec.store.select.i.i52 = select i1 %i.dv, i64 %i.ds, i64 %i.du ; 2 uses
  %i.dw = icmp sgt i64 %spec.store.select.i.i52, -1 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %..i.i = select i1 %i.dw, ptr %i.cq, ptr %i.cp
  %i.dy = load i64, ptr %..i.i, align 8, !alias.scope !9372, !noalias !9389
  store i64 %i.dy, ptr %i.dx, align 8, !alias.scope !9367, !noalias !9376
  %i.dz = zext i1 %i.dw to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dz ; 3 uses
  %spec.store.select.i.i52.lobit = lshr i64 %spec.store.select.i.i52, 63
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %spec.store.select.i.i52.lobit ; 3 uses
  %i.ec = icmp eq ptr %i.ea, %i.br
  %i.ed = icmp eq ptr %i.eb, %2
  %or.cond.i.i = select i1 %i.ec, i1 true, i1 %i.ed
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7d096b92730302cbE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.noexc21.i
  %.sroa.13.1.i = phi ptr [ %i.fo, %.noexc21.i ], [ %i.br, %bb.y ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.fm, %.noexc21.i ], [ %2, %bb.y ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.fn, %.noexc21.i ], [ %i.cm, %bb.y ] ; 3 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !9367, !noalias !9390, !nonnull !6, !align !15, !noundef !6 ; 5 uses
  %.val.i19.i = load ptr, ptr %.sroa.0.0.i38, align 8, !alias.scope !9370, !noalias !9393 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9394), !noalias !9372
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 80
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !9394, !noalias !9397, !noundef !6
  %.not.i.i.i.i = icmp ne i64 %i.ef, 0
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 72
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !9394, !noalias !9397
  %i.ei = icmp ne i64 %i.eh, 0
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.ei, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.ac, label %.invoke382

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 64
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !9394, !noalias !9397, !nonnull !6, !noundef !6
  %i.el = load i64, ptr %i.ek, align 8, !noalias !9399, !noundef !6 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 48
  %i.en = load i64, ptr %i.em, align 8, !noalias !9372, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.el, %i.en
  br i1 %.not.i.i.i, label %.invoke384, label %bb.ad, !prof !16

bb.ad:                                            ; preds = %bb.ac
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !9372, !nonnull !6, !noundef !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i19.i) ], !noalias !9372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9400), !noalias !9372
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 80
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !9400, !noalias !9403, !noundef !6
  %.not.i.i14.i.i = icmp ne i64 %i.er, 0
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 72
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !9400, !noalias !9403
  %i.eu = icmp ne i64 %i.et, 0
  %or.cond.i.i15.i.i = select i1 %.not.i.i14.i.i, i1 %i.eu, i1 false
  br i1 %or.cond.i.i15.i.i, label %bb.ae, label %.invoke382

bb.ae:                                            ; preds = %bb.ad
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 64
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !9400, !noalias !9403, !nonnull !6, !noundef !6
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !9405, !noundef !6 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 48
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !9372, !noundef !6 ; 2 uses
  %.not.i18.i.i = icmp ugt i64 %i.ex, %i.ez
  br i1 %.not.i18.i.i, label %.invoke384, label %.noexc21.i, !prof !16

.invoke384:                                       ; preds = %bb.ae, %bb.ac
  %i.fa = phi i64 [ %i.el, %bb.ac ], [ %i.ex, %bb.ae ]
  %i.fb = phi i64 [ %i.en, %bb.ac ], [ %i.ez, %bb.ae ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.fa, i64 noundef %i.fb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46
          to label %.cont385 unwind label %.loopexit.split-lp.i

.cont385:                                         ; preds = %.invoke384
  unreachable

.invoke382:                                       ; preds = %bb.ad, %.lr.ph.i.i
  %i.fc = phi ptr [ @181, %.lr.ph.i.i ], [ @182, %bb.ad ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fc) #46
          to label %.cont383 unwind label %.loopexit.split-lp.i

.cont383:                                         ; preds = %.invoke382
  unreachable

.noexc21.i:                                       ; preds = %bb.ae
  %i.fd = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !9372, !nonnull !6, !noundef !6
  %..i.i41 = tail call i64 @llvm.umin.i64(i64 %i.el, i64 %i.ex)
  %i.ff = sub i64 %i.el, %i.ex
  %i.fg = tail call i32 @memcmp(ptr nonnull %i.ep, ptr nonnull %i.fe, i64 %..i.i41), !noalias !9372 ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp eq i32 %i.fg, 0
  %spec.store.select.i.i = select i1 %i.fi, i64 %i.ff, i64 %i.fh ; 2 uses
  %i.fj = icmp sgt i64 %spec.store.select.i.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.fj, ptr %.sroa.0.0.i38, ptr %.sroa.0.02.i.i
  %i.fk = load i64, ptr %spec.select.i.i, align 8, !alias.scope !9372, !noalias !9406
  store i64 %i.fk, ptr %.sroa.13.1.i, align 8, !alias.scope !9367, !noalias !9390
  %i.fl = zext i1 %i.fj to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i38, i64 %i.fl ; 3 uses
  %spec.store.select.i.i.lobit = lshr i64 %spec.store.select.i.i, 63
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.lobit ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.fp = icmp ne ptr %i.fm, %i.co
  %i.fq = icmp ne ptr %i.fn, %i.bf
  %or.cond.i20.i = select i1 %i.fp, i1 %i.fq, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7d096b92730302cbE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7d096b92730302cbE.exit.i": ; preds = %.noexc21.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.ea, %.noexc.i ], [ %i.fo, %.noexc21.i ]
  %.sroa.7.2.i = phi ptr [ %i.eb, %.noexc.i ], [ %i.co, %.noexc21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.fm, %.noexc21.i ] ; 2 uses
  %i.fr = ptrtoint ptr %.sroa.7.2.i to i64
  %i.fs = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ft = sub nuw i64 %i.fr, %i.fs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ft, i1 false), !alias.scope !9372, !noalias !9407
  br label %_ZN4core5slice4sort6stable5merge5merge17h276595fdfdded4e5E.exit

.loopexit.i:                                      ; preds = %.invoke380, %.invoke
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp.i:                             ; preds = %.invoke384, %.invoke382
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.co, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fu = ptrtoint ptr %.sroa.7.1.i to i64
  %i.fv = ptrtoint ptr %.sroa.0.2.i to i64
  %i.fw = sub nuw i64 %i.fu, %i.fv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.fw, i1 false), !alias.scope !9372, !noalias !9412
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h276595fdfdded4e5E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7d096b92730302cbE.exit.i"
  %i.fx = shl i64 %i.bp, 1
  %i.fy = or disjoint i64 %i.fx, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h60c5e78110bb893dE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h60c5e78110bb893dE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h276595fdfdded4e5E.exit
  %.sroa.0.0.i = phi i64 [ %i.fy, %_ZN4core5slice4sort6stable5merge5merge17h276595fdfdded4e5E.exit ], [ %i.bx, %bb.t ] ; 2 uses
  %i.fz = icmp ugt i64 %i.bg, 1
  br i1 %i.fz, label %bb.q, label %._crit_edge

bb.ag:                                            ; preds = %._crit_edge
  %i.ga = add i64 %.sroa.02.1.lcssa, 1
  %i.gb = lshr i64 %.sroa.023.0, 1
  %i.gc = add i64 %i.gb, %.sroa.09.0
  br label %bb.f

bb.ah:                                            ; preds = %._crit_edge
  %i.gd = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.gd, 0
  br i1 %.not31, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ge = or i64 %1, 1
  %i.gf = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ge, i1 true)
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = shl nuw nsw i32 %i.gg, 1
  %i.gi = xor i32 %i.gh, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7ddf27d5d9d76b2fE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.gi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9366
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.aj
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h542ac89259b134fbE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i113 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i118 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dw, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9417)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread116, %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val10.i = load ptr, ptr %i.o, align 8, !alias.scope !9417, !noalias !9420, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %.val11.i = load ptr, ptr %i.m, align 8, !alias.scope !9417, !noalias !9420
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val10.i, ptr %.val11.i), !noalias !9423, !inline_history !9424 ; 2 uses
  %.not82 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.i
  br i1 %.not82, label %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not82, label %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread116, label %.lr.ph69

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %.val9.i = phi ptr [ %.val8.i, %bb.j ], [ %.val10.i, %.preheader50 ]
  %.sroa.01.0.i.i65 = phi i64 [ %i.s, %bb.j ], [ 2, %.preheader50 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.0.i.i65
  %.val8.i = load ptr, ptr %i.q, align 8, !alias.scope !9417, !noalias !9420, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val8.i, ptr nonnull %.val9.i), !noalias !9423, !inline_history !9424
  br i1 %i.r, label %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i65, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i, label %.lr.ph

.lr.ph69:                                         ; preds = %.preheader, %bb.k
  %.val7.i = phi ptr [ %.val.i, %bb.k ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i68 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.1.i.i68
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !9417, !noalias !9420, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val.i, ptr nonnull %.val7.i), !noalias !9423, !inline_history !9424
  br i1 %i.u, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i

bb.k:                                             ; preds = %.lr.ph69
  %i.v = add nuw i64 %.sroa.01.1.i.i68, 1         ; 2 uses
  %exitcond95.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond95.not, label %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i, label %.lr.ph69

_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph69
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i68, %.lr.ph69 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i65, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread116: ; preds = %.preheader
  br i1 %.not5.i118, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i113, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.x = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h0749cf3a7902462aE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h73bbf79b86abfb69E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9424
  %i.y = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h0749cf3a7902462aE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit": ; preds = %scalar.ph, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4548 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread ], [ %.sroa.0.0.i.i114121125, %middle.block ], [ %.sroa.0.0.i.i114121125, %scalar.ph ]
  %i.aa = shl i64 %.sroa.0.0.i.i4548, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h0749cf3a7902462aE.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9425), !noalias !9420
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9428), !noalias !9420
  %.not15.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread116, %bb.o
  %i.ad = phi i64 [ %i.ac, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread116 ] ; 4 uses
  %.sroa.0.0.i.i114121125 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread116 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.0.i.i114121125 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ad, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.ad, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = xor i64 %index, -1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 4 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ae, i64 %i.af ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ag, align 8, !alias.scope !9430, !noalias !9433
  %wide.load150 = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !9430, !noalias !9433
  %i.aj = getelementptr i8, ptr %i.ah, i64 -8
  %i.ak = getelementptr i8, ptr %i.ah, i64 -24
  %wide.load151 = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !9434, !noalias !9435
  %wide.load152 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !9434, !noalias !9435
  %reverse = shufflevector <2 x i64> %wide.load151, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse153 = shufflevector <2 x i64> %wide.load152, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x i64> %reverse, ptr %i.ag, align 8, !alias.scope !9430, !noalias !9433
  store <2 x i64> %reverse153, ptr %i.al, align 8, !alias.scope !9430, !noalias !9433
  %i.am = getelementptr i8, ptr %i.ah, i64 -8
  %i.an = getelementptr i8, ptr %i.ah, i64 -24
  %reverse154 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse155 = shufflevector <2 x ptr> %wide.load150, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse154, ptr %i.am, align 8, !alias.scope !9434, !noalias !9435
  store <2 x ptr> %reverse155, ptr %i.an, align 8, !alias.scope !9434, !noalias !9435
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !9436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0.014.i.i = phi i64 [ %i.au, %scalar.ph ], [ %.sroa.0.014.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ap = xor i64 %.sroa.0.014.i.i, -1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ae, i64 %i.ap ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !alias.scope !9430, !noalias !9433, !nonnull !6, !align !15, !noundef !6
  %i.at = load i64, ptr %i.ar, align 8, !alias.scope !9434, !noalias !9435
  store i64 %i.at, ptr %i.aq, align 8, !alias.scope !9430, !noalias !9433
  store ptr %i.as, ptr %i.ar, align 8, !alias.scope !9434, !noalias !9435
  %i.au = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %scalar.ph, !llvm.loop !9437

_ZN4core5slice4sort6stable5drift10create_run17h0749cf3a7902462aE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit" ], [ %i.z, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.av = lshr i64 %.sroa.018.0, 1
  %i.aw = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ax = sub i64 %factor, %i.av
  %i.ay = add i64 %i.aw, %factor
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false)
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h0749cf3a7902462aE.exit
  %.sroa.026.0 = phi i8 [ %i.bd, %_ZN4core5slice4sort6stable5drift10create_run17h0749cf3a7902462aE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h0749cf3a7902462aE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.be = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.be, label %.lr.ph75, label %._crit_edge

.lr.ph75:                                         ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph75, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f089e3263d8771fE.exit
  %.sroa.02.174 = phi i64 [ %.sroa.02.0, %.lr.ph75 ], [ %i.bg, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f089e3263d8771fE.exit ] ; 2 uses
  %.sroa.018.173 = phi i64 [ %.sroa.018.0, %.lr.ph75 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f089e3263d8771fE.exit ] ; 4 uses
  %i.bg = add i64 %.sroa.02.174, -1               ; 4 uses
end_hunk_9
begin_hunk_10_@_ZN4core5slice4sort6stable5drift4sort17h542ac89259b134fbE:bb.a
  %i.bu = or i64 %i.bm, %.sroa.018.173
  %i.bv = trunc i64 %i.bu to i1
  %or.cond3.i = or i1 %i.bs, %i.bv
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = trunc i64 %i.bm to i1
  br i1 %i.bw, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bx = shl i64 %i.bp, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6f089e3263d8771fE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bt, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.by = or i64 %i.bn, 1
  %i.bz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 1
  %i.cc = xor i32 %i.cb, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h73bbf79b86abfb69E(ptr noalias noundef nonnull align 8 %i.br, i64 noundef %i.bn, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9438
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit35": ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bn
  %i.ce = or i64 %i.bo, 1
  %i.cf = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h73bbf79b86abfb69E(ptr noalias noundef nonnull align 8 %i.cd, i64 noundef %i.bo, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9438
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9442)
  %i.cj = icmp eq i64 %i.bn, 0
  %i.ck = icmp eq i64 %i.bo, 0
  %or.cond.i = or i1 %i.ck, %i.cj
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17ha20076a62ee3fb0eE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 range(i64 0, -9223372036854775808) %i.bn) ; 2 uses
  %i.cl = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cl, label %_ZN4core5slice4sort6stable5merge5merge17ha20076a62ee3fb0eE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bn ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bn, %i.bo  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cm, ptr %i.br
  %i.cn = shl i64 %.sroa.0.0.i.i36, 3             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.cn, i1 false), !alias.scope !9444
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cw, %.noexc.i ], [ %i.cm, %bb.y ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.cy, %.noexc.i ], [ %i.co, %bb.y ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cs, %.noexc.i ], [ %i.bf, %bb.y ]
  %i.cp = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8 ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 3 uses
  %.val.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !9442, !noalias !9445, !nonnull !6, !align !15, !noundef !6
  %.val10.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !9439, !noalias !9448
  %i.cr = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val.i.i, ptr %.val10.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !9444 ; 3 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.cs = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %..i.i = select i1 %i.cr, ptr %i.cp, ptr %i.cq
  %i.ct = load i64, ptr %..i.i, align 8, !alias.scope !9444, !noalias !9449
  store i64 %i.ct, ptr %i.cs, align 8, !alias.scope !9439, !noalias !9448
  %i.cu = xor i1 %i.cr, true
  %i.cv = zext i1 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cv ; 3 uses
  %i.cx = zext i1 %i.cr to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cx ; 3 uses
  %i.cz = icmp eq ptr %i.cw, %i.br
  %i.da = icmp eq ptr %i.cy, %2
  %or.cond.i.i = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h646f22c7d4ee0132E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.noexc21.i
  %.sroa.13.1.i = phi ptr [ %i.di, %.noexc21.i ], [ %i.br, %bb.y ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.df, %.noexc21.i ], [ %2, %bb.y ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dh, %.noexc21.i ], [ %i.cm, %bb.y ] ; 3 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !9439, !noalias !9450, !nonnull !6, !align !15, !noundef !6
  %.val.i19.i = load ptr, ptr %.sroa.0.0.i38, align 8, !alias.scope !9442, !noalias !9453
  %i.db = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.sroa.0.0.val.i.i, ptr %.val.i19.i)
          to label %.noexc21.i unwind label %.loopexit.split-lp.i, !noalias !9444 ; 3 uses

.noexc21.i:                                       ; preds = %.lr.ph.i.i
  %i.dc = xor i1 %i.db, true
  %spec.select.i.i = select i1 %i.db, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i38
  %i.dd = load i64, ptr %spec.select.i.i, align 8, !alias.scope !9444, !noalias !9454
  store i64 %i.dd, ptr %.sroa.13.1.i, align 8, !alias.scope !9439, !noalias !9450
  %i.de = zext i1 %i.dc to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i38, i64 %i.de ; 3 uses
  %i.dg = zext i1 %i.db to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.dj = icmp ne ptr %i.df, %i.co
  %i.dk = icmp ne ptr %i.dh, %i.bf
  %or.cond.i20.i = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h646f22c7d4ee0132E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h646f22c7d4ee0132E.exit.i": ; preds = %.noexc21.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.cw, %.noexc.i ], [ %i.di, %.noexc21.i ]
  %.sroa.7.2.i = phi ptr [ %i.cy, %.noexc.i ], [ %i.co, %.noexc21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.df, %.noexc21.i ] ; 2 uses
  %i.dl = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dm = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dn = sub nuw i64 %i.dl, %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dn, i1 false), !alias.scope !9444, !noalias !9455
  br label %_ZN4core5slice4sort6stable5merge5merge17ha20076a62ee3fb0eE.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.co, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.do = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dp = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dq = sub nuw i64 %i.do, %i.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.dq, i1 false), !alias.scope !9444, !noalias !9460
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17ha20076a62ee3fb0eE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h646f22c7d4ee0132E.exit.i"
  %i.dr = shl i64 %i.bp, 1
  %i.ds = or disjoint i64 %i.dr, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6f089e3263d8771fE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h6f089e3263d8771fE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17ha20076a62ee3fb0eE.exit
  %.sroa.0.0.i = phi i64 [ %i.ds, %_ZN4core5slice4sort6stable5merge5merge17ha20076a62ee3fb0eE.exit ], [ %i.bx, %bb.t ] ; 2 uses
  %i.dt = icmp ugt i64 %i.bg, 1
  br i1 %i.dt, label %bb.q, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.du = add i64 %.sroa.02.1.lcssa, 1
  %i.dv = lshr i64 %.sroa.023.0, 1
  %i.dw = add i64 %i.dv, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dx = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dx, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dy = or i64 %1, 1
  %i.dz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 1
  %i.ec = xor i32 %i.eb, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h73bbf79b86abfb69E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9438
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hb0537f2e75eeb8deE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i113 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i118 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dw, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9465)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread116, %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val10.i = load ptr, ptr %i.o, align 8, !alias.scope !9465, !noalias !9468, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %.val11.i = load ptr, ptr %i.m, align 8, !alias.scope !9465, !noalias !9468
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val10.i, ptr %.val11.i), !noalias !9471, !inline_history !9472 ; 2 uses
  %.not82 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.i
  br i1 %.not82, label %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not82, label %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread116, label %.lr.ph69

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %.val9.i = phi ptr [ %.val8.i, %bb.j ], [ %.val10.i, %.preheader50 ]
  %.sroa.01.0.i.i65 = phi i64 [ %i.s, %bb.j ], [ 2, %.preheader50 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.0.i.i65
  %.val8.i = load ptr, ptr %i.q, align 8, !alias.scope !9465, !noalias !9468, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val8.i, ptr nonnull %.val9.i), !noalias !9471, !inline_history !9472
  br i1 %i.r, label %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i65, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i, label %.lr.ph

.lr.ph69:                                         ; preds = %.preheader, %bb.k
  %.val7.i = phi ptr [ %.val.i, %bb.k ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i68 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.1.i.i68
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !9465, !noalias !9468, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val.i, ptr nonnull %.val7.i), !noalias !9471, !inline_history !9472
  br i1 %i.u, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i

bb.k:                                             ; preds = %.lr.ph69
  %i.v = add nuw i64 %.sroa.01.1.i.i68, 1         ; 2 uses
  %exitcond95.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond95.not, label %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i, label %.lr.ph69

_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph69
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i68, %.lr.ph69 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i65, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread116: ; preds = %.preheader
  br i1 %.not5.i118, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i113, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.x = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he0116fa2f8489170E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8f22d88c1dd45868E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9472
  %i.y = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he0116fa2f8489170E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit": ; preds = %scalar.ph, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4548 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread ], [ %.sroa.0.0.i.i114121125, %middle.block ], [ %.sroa.0.0.i.i114121125, %scalar.ph ]
  %i.aa = shl i64 %.sroa.0.0.i.i4548, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he0116fa2f8489170E.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9473), !noalias !9468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9476), !noalias !9468
  %.not15.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread116, %bb.o
  %i.ad = phi i64 [ %i.ac, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread116 ] ; 4 uses
  %.sroa.0.0.i.i114121125 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread116 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.0.i.i114121125 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ad, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.ad, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = xor i64 %index, -1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 4 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ae, i64 %i.af ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ag, align 8, !alias.scope !9478, !noalias !9481
  %wide.load150 = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !9478, !noalias !9481
  %i.aj = getelementptr i8, ptr %i.ah, i64 -8
  %i.ak = getelementptr i8, ptr %i.ah, i64 -24
  %wide.load151 = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !9482, !noalias !9483
  %wide.load152 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !9482, !noalias !9483
  %reverse = shufflevector <2 x i64> %wide.load151, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse153 = shufflevector <2 x i64> %wide.load152, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x i64> %reverse, ptr %i.ag, align 8, !alias.scope !9478, !noalias !9481
  store <2 x i64> %reverse153, ptr %i.al, align 8, !alias.scope !9478, !noalias !9481
  %i.am = getelementptr i8, ptr %i.ah, i64 -8
  %i.an = getelementptr i8, ptr %i.ah, i64 -24
  %reverse154 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse155 = shufflevector <2 x ptr> %wide.load150, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse154, ptr %i.am, align 8, !alias.scope !9482, !noalias !9483
  store <2 x ptr> %reverse155, ptr %i.an, align 8, !alias.scope !9482, !noalias !9483
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !9484

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0.014.i.i = phi i64 [ %i.au, %scalar.ph ], [ %.sroa.0.014.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ap = xor i64 %.sroa.0.014.i.i, -1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ae, i64 %i.ap ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !alias.scope !9478, !noalias !9481, !nonnull !6, !align !15, !noundef !6
  %i.at = load i64, ptr %i.ar, align 8, !alias.scope !9482, !noalias !9483
  store i64 %i.at, ptr %i.aq, align 8, !alias.scope !9478, !noalias !9481
  store ptr %i.as, ptr %i.ar, align 8, !alias.scope !9482, !noalias !9483
  %i.au = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %scalar.ph, !llvm.loop !9485

_ZN4core5slice4sort6stable5drift10create_run17he0116fa2f8489170E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit" ], [ %i.z, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.av = lshr i64 %.sroa.018.0, 1
  %i.aw = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ax = sub i64 %factor, %i.av
  %i.ay = add i64 %i.aw, %factor
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false)
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17he0116fa2f8489170E.exit
  %.sroa.026.0 = phi i8 [ %i.bd, %_ZN4core5slice4sort6stable5drift10create_run17he0116fa2f8489170E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17he0116fa2f8489170E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.be = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.be, label %.lr.ph75, label %._crit_edge

.lr.ph75:                                         ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph75, %_ZN4core5slice4sort6stable5drift13logical_merge17h5af18712f5014f75E.exit
  %.sroa.02.174 = phi i64 [ %.sroa.02.0, %.lr.ph75 ], [ %i.bg, %_ZN4core5slice4sort6stable5drift13logical_merge17h5af18712f5014f75E.exit ] ; 2 uses
  %.sroa.018.173 = phi i64 [ %.sroa.018.0, %.lr.ph75 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h5af18712f5014f75E.exit ] ; 4 uses
  %i.bg = add i64 %.sroa.02.174, -1               ; 4 uses
end_hunk_10
begin_hunk_11_@_ZN4core5slice4sort6stable5drift4sort17hb0537f2e75eeb8deE:bb.a
  %i.do = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dp = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dq = sub nuw i64 %i.do, %i.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.dq, i1 false), !alias.scope !9492, !noalias !9508
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h3a1bb22e3a870a23E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h44468780d942d5afE.exit.i"
  %i.dr = shl i64 %i.bp, 1
  %i.ds = or disjoint i64 %i.dr, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h5af18712f5014f75E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h5af18712f5014f75E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h3a1bb22e3a870a23E.exit
  %.sroa.0.0.i = phi i64 [ %i.ds, %_ZN4core5slice4sort6stable5merge5merge17h3a1bb22e3a870a23E.exit ], [ %i.bx, %bb.t ] ; 2 uses
  %i.dt = icmp ugt i64 %i.bg, 1
  br i1 %i.dt, label %bb.q, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.du = add i64 %.sroa.02.1.lcssa, 1
  %i.dv = lshr i64 %.sroa.023.0, 1
  %i.dw = add i64 %i.dv, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dx = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dx, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dy = or i64 %1, 1
  %i.dz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 1
  %i.ec = xor i32 %i.eb, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8f22d88c1dd45868E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9486
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3a3de7aae3d2697bE(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %5, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %6) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit"
  %.sroa.0.0.ph123 = phi ptr [ %i.jn, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit" ], [ %0, %bb.a ] ; 23 uses
  %.sroa.15.0.ph122 = phi i64 [ %i.iy, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph121 = phi i32 [ %i.eh, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph120 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit" ], [ %5, %bb.a ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.0.0.ph123 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph120, null
  %i.e = icmp eq i32 %.sroa.023.0.ph121, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph292

bb.b:                                             ; preds = %bb.af
  %i.f = icmp eq i32 %i.eh, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph292

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit", %bb.af, %bb.a
  %.sroa.0.0.ph.lcssa113 = phi ptr [ %.sroa.0.0.ph123, %bb.af ], [ %0, %bb.a ], [ %i.jn, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit" ] ; 18 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.af ], [ %1, %bb.a ], [ %i.iy, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit" ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9513)
  call void @llvm.experimental.noalias.scope.decl(metadata !9516)
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.g, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hadd79bf8c3211506E.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.i = icmp ult i64 %3, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.k = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.k, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h0e5fa2c19a791415E(ptr noundef nonnull align 4 %.sroa.0.0.ph.lcssa113, ptr noundef nonnull align 4 %2, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.j
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h0e5fa2c19a791415E(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa113, i64 4
  %.val12.i.i = load i32, ptr %i.q, align 4, !alias.scope !9518, !noalias !9521, !noundef !6
  %.val13.i.i = load i32, ptr %.sroa.0.0.ph.lcssa113, align 4, !alias.scope !9523, !noalias !9524, !noundef !6
  %i.r = icmp ult i32 %.val12.i.i, %.val13.i.i    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa113, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa113, i64 8
  %.val10.i.i = load i32, ptr %i.s, align 4, !alias.scope !9518, !noalias !9521, !noundef !6
  %.val11.i.i = load i32, ptr %i.t, align 4, !alias.scope !9523, !noalias !9524, !noundef !6
  %i.u = icmp ult i32 %.val10.i.i, %.val11.i.i    ; 2 uses
  %i.v = zext i1 %i.r to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.v ; 2 uses
  %i.x = xor i1 %i.r, true
  %i.y = zext i1 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.y ; 3 uses
  %i.aa = select i1 %i.u, i64 3, i64 2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.aa ; 3 uses
  %i.ac = select i1 %i.u, i64 2, i64 3
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.ac ; 2 uses
  %.val8.i.i = load i32, ptr %i.ab, align 4, !alias.scope !9518, !noalias !9521, !noundef !6 ; 2 uses
  %.val9.i.i = load i32, ptr %i.w, align 4, !alias.scope !9523, !noalias !9524, !noundef !6 ; 2 uses
  %i.ae = icmp ult i32 %.val8.i.i, %.val9.i.i     ; 2 uses
  %.val6.i.i = load i32, ptr %i.ad, align 4, !alias.scope !9518, !noalias !9521, !noundef !6 ; 2 uses
  %.val7.i.i = load i32, ptr %i.z, align 4, !alias.scope !9523, !noalias !9524, !noundef !6 ; 2 uses
  %i.af = icmp ult i32 %.val6.i.i, %.val7.i.i     ; 2 uses
  %i.ag = select i1 %i.af, ptr %i.ab, ptr %i.z, !unpredictable !6
  %i.ah = select i1 %i.ae, ptr %i.w, ptr %i.ag, !unpredictable !6
  %i.ai = select i1 %i.ae, ptr %i.z, ptr %i.ab, !unpredictable !6
  %i.aj = select i1 %i.af, ptr %i.ad, ptr %i.ai, !unpredictable !6
  %.val.i.i = load i32, ptr %i.aj, align 4, !alias.scope !9518, !noalias !9521, !noundef !6 ; 2 uses
  %.val5.i.i = load i32, ptr %i.ah, align 4, !alias.scope !9523, !noalias !9524, !noundef !6 ; 2 uses
  %i.ak = call i32 @llvm.umin.i32(i32 %.val8.i.i, i32 %.val9.i.i)
  store i32 %i.ak, ptr %2, align 4, !alias.scope !9516, !noalias !9513
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.am = call i32 @llvm.umin.i32(i32 %.val.i.i, i32 %.val5.i.i)
  store i32 %i.am, ptr %i.al, align 4, !alias.scope !9516, !noalias !9513
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = call i32 @llvm.umax.i32(i32 %.val.i.i, i32 %.val5.i.i)
  store i32 %i.ao, ptr %i.an, align 4, !alias.scope !9516, !noalias !9513
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aq = call i32 @llvm.umax.i32(i32 %.val6.i.i, i32 %.val7.i.i)
  store i32 %i.aq, ptr %i.ap, align 4, !alias.scope !9516, !noalias !9513
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.j ; 8 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.val12.i29.i = load i32, ptr %i.at, align 4, !alias.scope !9525, !noalias !9528, !noundef !6
  %.val13.i30.i = load i32, ptr %i.ar, align 4, !alias.scope !9530, !noalias !9531, !noundef !6
  %i.au = icmp ult i32 %.val12.i29.i, %.val13.i30.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val10.i31.i = load i32, ptr %i.av, align 4, !alias.scope !9525, !noalias !9528, !noundef !6
  %.val11.i32.i = load i32, ptr %i.aw, align 4, !alias.scope !9530, !noalias !9531, !noundef !6
  %i.ax = icmp ult i32 %.val10.i31.i, %.val11.i32.i ; 2 uses
  %i.ay = zext i1 %i.au to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ay ; 2 uses
  %i.ba = xor i1 %i.au, true
  %i.bb = zext i1 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bb ; 3 uses
  %i.bd = select i1 %i.ax, i64 3, i64 2
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bd ; 3 uses
  %i.bf = select i1 %i.ax, i64 2, i64 3
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bf ; 2 uses
  %.val8.i33.i = load i32, ptr %i.be, align 4, !alias.scope !9525, !noalias !9528, !noundef !6 ; 2 uses
  %.val9.i34.i = load i32, ptr %i.az, align 4, !alias.scope !9530, !noalias !9531, !noundef !6 ; 2 uses
  %i.bh = icmp ult i32 %.val8.i33.i, %.val9.i34.i ; 2 uses
  %.val6.i35.i = load i32, ptr %i.bg, align 4, !alias.scope !9525, !noalias !9528, !noundef !6 ; 2 uses
  %.val7.i36.i = load i32, ptr %i.bc, align 4, !alias.scope !9530, !noalias !9531, !noundef !6 ; 2 uses
  %i.bi = icmp ult i32 %.val6.i35.i, %.val7.i36.i ; 2 uses
  %i.bj = select i1 %i.bi, ptr %i.be, ptr %i.bc, !unpredictable !6
  %i.bk = select i1 %i.bh, ptr %i.az, ptr %i.bj, !unpredictable !6
  %i.bl = select i1 %i.bh, ptr %i.bc, ptr %i.be, !unpredictable !6
  %i.bm = select i1 %i.bi, ptr %i.bg, ptr %i.bl, !unpredictable !6
  %.val.i37.i = load i32, ptr %i.bm, align 4, !alias.scope !9525, !noalias !9528, !noundef !6 ; 2 uses
  %.val5.i38.i = load i32, ptr %i.bk, align 4, !alias.scope !9530, !noalias !9531, !noundef !6 ; 2 uses
  %i.bn = call i32 @llvm.umin.i32(i32 %.val8.i33.i, i32 %.val9.i34.i)
  store i32 %i.bn, ptr %i.as, align 4, !alias.scope !9516, !noalias !9513
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.bp = call i32 @llvm.umin.i32(i32 %.val.i37.i, i32 %.val5.i38.i)
  store i32 %i.bp, ptr %i.bo, align 4, !alias.scope !9516, !noalias !9513
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.br = call i32 @llvm.umax.i32(i32 %.val.i37.i, i32 %.val5.i38.i)
  store i32 %i.br, ptr %i.bq, align 4, !alias.scope !9516, !noalias !9513
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.bt = call i32 @llvm.umax.i32(i32 %.val6.i35.i, i32 %.val7.i36.i)
  store i32 %i.bt, ptr %i.bs, align 4, !alias.scope !9516, !noalias !9513
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.bu = load i32, ptr %.sroa.0.0.ph.lcssa113, align 4, !alias.scope !9513, !noalias !9516
  store i32 %i.bu, ptr %2, align 4, !alias.scope !9516, !noalias !9513
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.j
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.bx = load i32, ptr %i.bv, align 4, !alias.scope !9513, !noalias !9516
  store i32 %i.bx, ptr %i.bw, align 4, !alias.scope !9516, !noalias !9513
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 6 uses
  %i.by = sub nsw i64 %.sroa.15.0.lcssa, %i.j     ; 2 uses
  %i.bz = icmp samesign ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.bz, label %.lr.ph.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit.i, %bb.j
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.j
  %i.cb = getelementptr [4 x i8], ptr %2, i64 %i.j ; 6 uses
  %i.cc = icmp ult i64 %.sroa.0.0.i, %i.by
  br i1 %i.cc, label %.lr.ph.preheader.1.i, label %.loopexit.1.i

.lr.ph.preheader.1.i:                             ; preds = %.loopexit.i
  %.sroa.08.18.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit.1.i, %.lr.ph.preheader.1.i
  %.sroa.08.110.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit.1.i ], [ %.sroa.08.18.1.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.09.1.i = phi i64 [ %.sroa.08.110.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.sroa.08.09.1.i
  %.idx322 = shl nuw nsw i64 %.sroa.08.09.1.i, 2
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx322 ; 3 uses
  %i.cf = load i32, ptr %i.cd, align 4, !alias.scope !9513, !noalias !9516 ; 4 uses
  store i32 %i.cf, ptr %i.ce, align 4, !alias.scope !9516, !noalias !9513
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %.val10.i46.1.i = load i32, ptr %i.cg, align 4, !alias.scope !9532, !noalias !9535, !noundef !6 ; 2 uses
  %i.ch = icmp ult i32 %i.cf, %.val10.i46.1.i
  br i1 %i.ch, label %.preheader.1.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.lr.ph.1.i
  store i32 %.val10.i46.1.i, ptr %i.ce, align 4, !alias.scope !9516, !noalias !9513
  %i.ci = icmp eq i64 %.sroa.08.09.1.i, 1
  br i1 %i.ci, label %._crit_edge303, label %.lr.ph302

.preheader.1.i:                                   ; preds = %.lr.ph302
  store i32 %.val8.i48.1.i, ptr %.sroa.0.0.i47.1.i301, align 4, !alias.scope !9516, !noalias !9513
  %i.cj = icmp eq ptr %i.ck, %i.cb
  br i1 %i.cj, label %._crit_edge303, label %.lr.ph302

.lr.ph302:                                        ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i47.1.i301 = phi ptr [ %i.ck, %.preheader.1.i ], [ %i.cg, %.preheader.1.i.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i47.1.i301, i64 -4 ; 3 uses
  %.val8.i48.1.i = load i32, ptr %i.ck, align 4, !alias.scope !9532, !noalias !9535, !noundef !6 ; 2 uses
  %i.cl = icmp ult i32 %i.cf, %.val8.i48.1.i
  br i1 %i.cl, label %.preheader.1.i, label %._crit_edge303

._crit_edge303:                                   ; preds = %.preheader.1.i, %.lr.ph302, %.preheader.1.i.preheader
  %.sroa.0.0.i47.lcssa.1.i = phi ptr [ %i.cb, %.preheader.1.i.preheader ], [ %i.cb, %.preheader.1.i ], [ %.sroa.0.0.i47.1.i301, %.lr.ph302 ]
  store i32 %i.cf, ptr %.sroa.0.0.i47.lcssa.1.i, align 4, !alias.scope !9516, !noalias !9537
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit.1.i: ; preds = %._crit_edge303, %.lr.ph.1.i
  %i.cm = icmp ult i64 %.sroa.08.110.1.i, %i.by   ; 2 uses
  %i.cn = zext i1 %i.cm to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.cn
  br i1 %i.cm, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9542)
  %i.co = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cb, i64 -4
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cs = getelementptr i8, ptr %i.dj, i64 4      ; 2 uses
  %i.ct = getelementptr i8, ptr %i.di, i64 4
  %i.cu = and i64 %.sroa.15.0.lcssa, 1
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.014.i.i = phi ptr [ %i.dd, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 2 uses
  %.sroa.06.013.i.i = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.cb, %.loopexit.1.i ] ; 2 uses
  %.sroa.010.012.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa113, %.loopexit.1.i ] ; 2 uses
  %.sroa.013.011.i.i = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %i.cr, %.loopexit.1.i ] ; 2 uses
  %.sroa.015.010.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.cq, %.loopexit.1.i ] ; 2 uses
  %.sroa.017.09.i.i = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %i.cp, %.loopexit.1.i ] ; 2 uses
  %.sroa.018.08.i.i = phi i64 [ %i.cw, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %i.cw = add nuw nsw i64 %.sroa.018.08.i.i, 1    ; 2 uses
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.013.i.i, align 4, !alias.scope !9545, !noalias !9548, !noundef !6 ; 2 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.014.i.i, align 4, !alias.scope !9550, !noalias !9551, !noundef !6 ; 2 uses
  %i.cx = icmp ult i32 %.sroa.06.0.val.i.i, %.sroa.0.0.val.i.i ; 2 uses
  %i.cy = xor i1 %i.cx, true
  %i.cz = call i32 @llvm.umin.i32(i32 %.sroa.06.0.val.i.i, i32 %.sroa.0.0.val.i.i)
  store i32 %i.cz, ptr %.sroa.010.012.i.i, align 4, !alias.scope !9513, !noalias !9552
  %i.da = zext i1 %i.cx to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.013.i.i, i64 %i.da ; 4 uses
  %i.dc = zext i1 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.014.i.i, i64 %i.dc ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.010.012.i.i, i64 4 ; 2 uses
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.010.i.i, align 4, !alias.scope !9545, !noalias !9548, !noundef !6 ; 2 uses
  %.sroa.013.0.val.i.i = load i32, ptr %.sroa.013.011.i.i, align 4, !alias.scope !9550, !noalias !9551, !noundef !6 ; 2 uses
  %i.df = icmp ult i32 %.sroa.015.0.val.i.i, %.sroa.013.0.val.i.i ; 2 uses
  %i.dg = xor i1 %i.df, true
  %i.dh = call i32 @llvm.umax.i32(i32 %.sroa.015.0.val.i.i, i32 %.sroa.013.0.val.i.i)
  store i32 %i.dh, ptr %.sroa.017.09.i.i, align 4, !alias.scope !9513, !noalias !9556
  %.neg.i.i.i = sext i1 %i.dg to i64
  %i.di = getelementptr [4 x i8], ptr %.sroa.015.010.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.df to i64
  %i.dj = getelementptr [4 x i8], ptr %.sroa.013.011.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.017.09.i.i, i64 -4
  %exitcond.not.i.i = icmp eq i64 %i.cw, %i.j
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.dl = icmp ult ptr %i.dd, %i.cs               ; 3 uses
  %.sroa.0.0..sroa.06.0.i.i = select i1 %i.dl, ptr %i.dd, ptr %i.db
  %i.dm = load i32, ptr %.sroa.0.0..sroa.06.0.i.i, align 4, !alias.scope !9560, !noalias !9513
  store i32 %i.dm, ptr %i.de, align 4, !alias.scope !9513, !noalias !9560
  %i.dn = zext i1 %i.dl to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dn
  %i.dp = xor i1 %i.dl, true
  %i.dq = zext i1 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dq
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.06.1.i.i = phi ptr [ %i.db, %._crit_edge.i.i ], [ %i.dr, %bb.k ]
  %.sroa.0.1.i.i = phi ptr [ %i.dd, %._crit_edge.i.i ], [ %i.do, %bb.k ]
  %i.ds = icmp ne ptr %.sroa.0.1.i.i, %i.cs
  %i.dt = icmp ne ptr %.sroa.06.1.i.i, %i.ct
  %or.cond.i.i = select i1 %i.ds, i1 true, i1 %i.dt, !prof !16
  br i1 %or.cond.i.i, label %bb.m, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hadd79bf8c3211506E.exit, !prof !16

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #46
          to label %.noexc.i unwind label %bb.n, !noalias !9561

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = shl nuw nsw i64 %.sroa.15.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph.lcssa113, ptr nonnull align 4 %2, i64 %i.dv, i1 false), !alias.scope !9561, !noalias !9562
  resume { ptr, i32 } %i.du

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %.sroa.08.09.i
  %.idx = shl nuw nsw i64 %.sroa.08.09.i, 2
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.dy = load i32, ptr %i.dw, align 4, !alias.scope !9513, !noalias !9516 ; 4 uses
  store i32 %i.dy, ptr %i.dx, align 4, !alias.scope !9516, !noalias !9513
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -4 ; 2 uses
  %.val10.i46.i = load i32, ptr %i.dz, align 4, !alias.scope !9532, !noalias !9535, !noundef !6 ; 2 uses
  %i.ea = icmp ult i32 %i.dy, %.val10.i46.i
  br i1 %i.ea, label %.preheader.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  store i32 %.val10.i46.i, ptr %i.dx, align 4, !alias.scope !9516, !noalias !9513
  %i.eb = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.eb, label %._crit_edge298, label %.lr.ph297

.preheader.i:                                     ; preds = %.lr.ph297
  store i32 %.val8.i48.i, ptr %.sroa.0.0.i47.i296, align 4, !alias.scope !9516, !noalias !9513
  %i.ec = icmp eq ptr %i.ed, %2
  br i1 %i.ec, label %._crit_edge298, label %.lr.ph297

.lr.ph297:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i47.i296 = phi ptr [ %i.ed, %.preheader.i ], [ %i.dz, %.preheader.i.preheader ] ; 3 uses
  %i.ed = getelementptr inbounds i8, ptr %.sroa.0.0.i47.i296, i64 -4 ; 3 uses
  %.val8.i48.i = load i32, ptr %i.ed, align 4, !alias.scope !9532, !noalias !9535, !noundef !6 ; 2 uses
  %i.ee = icmp ult i32 %i.dy, %.val8.i48.i
  br i1 %i.ee, label %.preheader.i, label %._crit_edge298

._crit_edge298:                                   ; preds = %.preheader.i, %.lr.ph297, %.preheader.i.preheader
  %.sroa.0.0.i47.lcssa.i = phi ptr [ %2, %.preheader.i.preheader ], [ %2, %.preheader.i ], [ %.sroa.0.0.i47.i296, %.lr.ph297 ]
  store i32 %i.dy, ptr %.sroa.0.0.i47.lcssa.i, align 4, !alias.scope !9516, !noalias !9537
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8f25ef90938d0b1bE.exit.i: ; preds = %._crit_edge298, %.lr.ph.i
  %i.ef = icmp ult i64 %.sroa.08.110.i, %i.j      ; 2 uses
  %i.eg = zext i1 %i.ef to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.eg
  br i1 %i.ef, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.15.0116.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.15.0.ph122, %.lr.ph ]
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0f726eec0013a00eE(ptr noalias noundef nonnull align 4 %.sroa.0.0.ph123, i64 noundef %.sroa.15.0116.lcssa, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 1 %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hadd79bf8c3211506E.exit

.lr.ph292:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.023.0115291 = phi i32 [ %i.eh, %bb.b ], [ %.sroa.023.0.ph121, %.lr.ph ]
  %.sroa.15.0116290 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.15.0.ph122, %.lr.ph ] ; 19 uses
  %i.eh = add i32 %.sroa.023.0115291, -1          ; 4 uses
  %i.ei = lshr i64 %.sroa.15.0116290, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ei, 4
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph123, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.ei, 28
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph123, i64 %.idx2.i ; 3 uses
  %i.el = icmp ult i64 %.sroa.15.0116290, 64
  br i1 %i.el, label %_ZN4core5slice4sort6shared5pivot7median317hb525a71cbe3402c1E.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph292
  %i.em = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4e5381345bdc4a46E(ptr noundef nonnull readonly align 4 %.sroa.0.0.ph123, ptr noundef readonly %i.ej, ptr noundef readonly %i.ek, i64 noundef %i.ei)
  br label %bb.p

_ZN4core5slice4sort6shared5pivot7median317hb525a71cbe3402c1E.exit.i: ; preds = %.lr.ph292
  %.val6.i = load i32, ptr %.sroa.0.0.ph123, align 4, !alias.scope !9567, !noalias !9572, !noundef !6 ; 2 uses
  %.val7.i = load i32, ptr %i.ej, align 4, !alias.scope !9574, !noalias !9575, !noundef !6 ; 2 uses
  %i.en = icmp ult i32 %.val6.i, %.val7.i         ; 2 uses
  %.val5.i = load i32, ptr %i.ek, align 4, !alias.scope !9574, !noalias !9575, !noundef !6 ; 2 uses
  %i.eo = icmp ult i32 %.val6.i, %.val5.i
  %i.ep = xor i1 %i.en, %i.eo
  %i.eq = icmp ult i32 %.val7.i, %.val5.i
  %i.er = xor i1 %i.en, %i.eq
  %..i.i = select i1 %i.er, ptr %i.ek, ptr %i.ej
  %.sroa.0.0.i.i = select i1 %i.ep, ptr %.sroa.0.0.ph123, ptr %..i.i
  br label %bb.p

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hadd79bf8c3211506E.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_ZN4core5slice4sort6shared5pivot7median317hb525a71cbe3402c1E.exit.i, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_ZN4core5slice4sort6shared5pivot7median317hb525a71cbe3402c1E.exit.i ], [ %i.em, %bb.o ]
  %i.es = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.et = sub nuw i64 %i.es, %i.d                 ; 3 uses
  %.sroa.0.0.i36 = lshr exact i64 %i.et, 2        ; 3 uses
  %i.eu = icmp ult i64 %.sroa.0.0.i36, %.sroa.15.0116290
  call void @llvm.assume(i1 %i.eu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph123, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 4, !noundef !6 ; 7 uses
  store i32 %i.ew, ptr %i.b, align 4
  br i1 %.not, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.026.0.val = load i32, ptr %.sroa.026.0.ph120, align 4, !alias.scope !9126, !noalias !9129, !noundef !6
  %.not77 = icmp ult i32 %.sroa.026.0.val, %i.ew
  br i1 %.not77, label %.critedge, label %.critedge35

.critedge:                                        ; preds = %bb.p, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !9576)
  call void @llvm.experimental.noalias.scope.decl(metadata !9579)
  %.not78 = icmp ult i64 %3, %.sroa.15.0116290
  br i1 %.not78, label %bb.s, label %bb.r, !prof !16

bb.r:                                             ; preds = %.critedge
  %i.ex = getelementptr [4 x i8], ptr %2, i64 %.sroa.15.0116290 ; 3 uses
  br label %bb.t

bb.s:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.27.0.i = phi i64 [ 0, %bb.r ], [ %.sroa.27.2.lcssa.i, %bb.u ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph123, %bb.r ], [ %i.gn, %bb.u ] ; 3 uses
  %.sroa.43.0.i = phi ptr [ %i.ex, %bb.r ], [ %i.gk, %bb.u ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i36, %bb.r ], [ %.sroa.15.0116290, %bb.u ] ; 3 uses
  %i.ey = call i64 @llvm.usub.sat.i64(i64 %.sroa.02.0.i, i64 3)
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph123, i64 %i.ey ; 2 uses
  %i.fa = icmp ult ptr %.sroa.9.0.i, %i.ez
  br i1 %i.fa, label %.lr.ph.i37, label %._crit_edge.i

.lr.ph.i37:                                       ; preds = %bb.t, %.lr.ph.i37
  %.sroa.43.131.i = phi ptr [ %i.fu, %.lr.ph.i37 ], [ %.sroa.43.0.i, %bb.t ] ; 4 uses
  %.sroa.9.130.i = phi ptr [ %i.fy, %.lr.ph.i37 ], [ %.sroa.9.0.i, %bb.t ] ; 5 uses
  %.sroa.27.129.i = phi i64 [ %i.fx, %.lr.ph.i37 ], [ %.sroa.27.0.i, %bb.t ] ; 2 uses
  %.val34.i = load i32, ptr %.sroa.9.130.i, align 4, !alias.scope !9581, !noalias !9584, !noundef !6 ; 2 uses
  %i.fb = icmp ult i32 %.val34.i, %i.ew           ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -4
  %.sroa.01.0.i.i = select i1 %i.fb, ptr %2, ptr %i.fc
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.129.i
  store i32 %.val34.i, ptr %i.fd, align 4, !alias.scope !9579, !noalias !9586
  %i.fe = zext i1 %i.fb to i64
  %i.ff = add i64 %.sroa.27.129.i, %i.fe          ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 4
  %.val32.i = load i32, ptr %i.fg, align 4, !alias.scope !9581, !noalias !9584, !noundef !6 ; 2 uses
  %i.fh = icmp ult i32 %.val32.i, %i.ew           ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -8
  %.sroa.01.0.i36.i = select i1 %i.fh, ptr %2, ptr %i.fi
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i36.i, i64 %i.ff
  store i32 %.val32.i, ptr %i.fj, align 4, !alias.scope !9579, !noalias !9589
  %i.fk = zext i1 %i.fh to i64
  %i.fl = add i64 %i.ff, %i.fk                    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 8
  %.val30.i = load i32, ptr %i.fm, align 4, !alias.scope !9581, !noalias !9584, !noundef !6 ; 2 uses
  %i.fn = icmp ult i32 %.val30.i, %i.ew           ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -12
  %.sroa.01.0.i37.i = select i1 %i.fn, ptr %2, ptr %i.fo
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i37.i, i64 %i.fl
  store i32 %.val30.i, ptr %i.fp, align 4, !alias.scope !9579, !noalias !9592
  %i.fq = zext i1 %i.fn to i64
  %i.fr = add i64 %i.fl, %i.fq                    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 12
  %.val28.i = load i32, ptr %i.fs, align 4, !alias.scope !9581, !noalias !9584, !noundef !6 ; 2 uses
  %i.ft = icmp ult i32 %.val28.i, %i.ew           ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -16 ; 3 uses
  %.sroa.01.0.i38.i = select i1 %i.ft, ptr %2, ptr %i.fu
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i38.i, i64 %i.fr
  store i32 %.val28.i, ptr %i.fv, align 4, !alias.scope !9579, !noalias !9595
  %i.fw = zext i1 %i.ft to i64
  %i.fx = add i64 %i.fr, %i.fw                    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 16 ; 3 uses
  %i.fz = icmp ult ptr %i.fy, %i.ez
  br i1 %i.fz, label %.lr.ph.i37, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i37, %bb.t
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.t ], [ %i.fx, %.lr.ph.i37 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.t ], [ %i.fy, %.lr.ph.i37 ] ; 3 uses
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.t ], [ %i.fu, %.lr.ph.i37 ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph123, i64 %.sroa.02.0.i ; 2 uses
  %i.gb = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ga
  br i1 %i.gb, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.gh, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.gi, %.lr.ph38.i ] ; 2 uses
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.ge, %.lr.ph38.i ]
  %i.gc = icmp eq i64 %.sroa.02.0.i, %.sroa.15.0116290
  br i1 %i.gc, label %bb.v, label %bb.u

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.43.236.i = phi ptr [ %i.ge, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.sroa.9.235.i = phi ptr [ %i.gi, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.27.234.i = phi i64 [ %i.gh, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.val.i = load i32, ptr %.sroa.9.235.i, align 4, !alias.scope !9581, !noalias !9584, !noundef !6 ; 2 uses
  %i.gd = icmp ult i32 %.val.i, %i.ew             ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.43.236.i, i64 -4 ; 3 uses
  %.sroa.01.0.i39.i = select i1 %i.gd, ptr %2, ptr %i.ge
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i39.i, i64 %.sroa.27.234.i
  store i32 %.val.i, ptr %i.gf, align 4, !alias.scope !9579, !noalias !9598
  %i.gg = zext i1 %i.gd to i64
  %i.gh = add i64 %.sroa.27.234.i, %i.gg          ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.9.235.i, i64 4 ; 3 uses
  %i.gj = icmp ult ptr %i.gi, %i.ga
  br i1 %i.gj, label %.lr.ph38.i, label %._crit_edge39.i

bb.u:                                             ; preds = %._crit_edge39.i
  %i.gk = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -4 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %.sroa.27.2.lcssa.i
  %i.gm = load i32, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !9576, !noalias !9601
  store i32 %i.gm, ptr %i.gl, align 4, !alias.scope !9579, !noalias !9604
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 4
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge39.i
  %i.go = shl i64 %.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph123, ptr nonnull align 4 %2, i64 %i.go, i1 false), !alias.scope !9605
  %i.gp = sub i64 %.sroa.15.0116290, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.15.0116290, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1d855bb406aeff96E.exit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.v
  %i.gq = getelementptr [4 x i8], ptr %.sroa.0.0.ph123, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check309 = icmp ult i64 %i.gp, 8
  br i1 %min.iters.check309, label %scalar.ph308.preheader, label %vector.ph310

vector.ph310:                                     ; preds = %.lr.ph45.i
  %n.vec311 = and i64 %i.gp, -8                   ; 3 uses
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph310
  %index313 = phi i64 [ 0, %vector.ph310 ], [ %index.next318, %vector.body312 ] ; 3 uses
  %i.gr = xor i64 %index313, -1
  %i.gs = getelementptr [4 x i8], ptr %i.ex, i64 %i.gr ; 2 uses
  %i.gt = getelementptr [4 x i8], ptr %i.gq, i64 %index313 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gs, i64 -12
  %i.gv = getelementptr i8, ptr %i.gs, i64 -28
  %wide.load314 = load <4 x i32>, ptr %i.gu, align 4, !alias.scope !9579, !noalias !9576
  %wide.load315 = load <4 x i32>, ptr %i.gv, align 4, !alias.scope !9579, !noalias !9576
  %reverse316 = shufflevector <4 x i32> %wide.load314, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse317 = shufflevector <4 x i32> %wide.load315, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.gw = getelementptr i8, ptr %i.gt, i64 16
  store <4 x i32> %reverse316, ptr %i.gt, align 4, !alias.scope !9576, !noalias !9579
  store <4 x i32> %reverse317, ptr %i.gw, align 4, !alias.scope !9576, !noalias !9579
  %index.next318 = add nuw i64 %index313, 8       ; 2 uses
  %i.gx = icmp eq i64 %index.next318, %n.vec311
  br i1 %i.gx, label %middle.block319, label %vector.body312, !llvm.loop !9606

middle.block319:                                  ; preds = %vector.body312
end_hunk_11
begin_hunk_12_@_ZN4core5slice4sort6stable9quicksort9quicksort17h3a3de7aae3d2697bE:bb.a
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hadd79bf8c3211506E.exit

bb.ad:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h23d46d810165bdcdE.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.27.2.lcssa.i49, i64 noundef %.sroa.15.0116290, i64 noundef %.sroa.15.0116290, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !noalias !9642
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h23d46d810165bdcdE.exit
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph123, i64 %.sroa.27.2.lcssa.i49 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.jo = icmp ult i64 %i.iy, 33
  br i1 %i.jo, label %.outer._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @302, ptr %i.a, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.jr, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.js, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344) #46
  unreachable

bb.af:                                            ; preds = %bb.w
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph123, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph123) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3a3de7aae3d2697bE(ptr noalias noundef nonnull align 4 %i.jt, i64 noundef %i.gp, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.eh, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %i.b, ptr noalias noundef nonnull align 1 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ju = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.ju, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h73bbf79b86abfb69E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  %.sroa.0.0.ph135 = phi ptr [ %i.kf, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %0, %bb.a ] ; 22 uses
  %.sroa.15.0.ph134 = phi i64 [ %i.jq, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph133 = phi i32 [ %i.eu, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph132 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %5, %bb.a ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.0.0.ph135 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph132, null
  %i.e = icmp eq i32 %.sroa.023.0.ph133, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph321

bb.b:                                             ; preds = %bb.al
  %i.f = icmp eq i32 %i.eu, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph321

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit", %bb.al, %bb.a
  %.sroa.0.0.ph.lcssa126 = phi ptr [ %.sroa.0.0.ph135, %bb.al ], [ %0, %bb.a ], [ %i.kf, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ] ; 18 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.al ], [ %1, %bb.a ], [ %i.jq, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9645)
  call void @llvm.experimental.noalias.scope.decl(metadata !9648)
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.g, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h63e407b648c31aabE.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.i = icmp ult i64 %3, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.k = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.k, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h5104c7643a3b74dbE(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa126, ptr noundef nonnull align 8 %2, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.j
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h5104c7643a3b74dbE(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa126, i64 8
  %.val12.i.i = load ptr, ptr %i.q, align 8, !alias.scope !9645, !noalias !9648, !nonnull !6, !align !15, !noundef !6
  %.val13.i.i = load ptr, ptr %.sroa.0.0.ph.lcssa126, align 8, !alias.scope !9645, !noalias !9648
  %i.r = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val12.i.i, ptr %.val13.i.i), !noalias !9645 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa126, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa126, i64 16
  %.val10.i.i = load ptr, ptr %i.s, align 8, !alias.scope !9645, !noalias !9648, !nonnull !6, !align !15, !noundef !6
  %.val11.i.i = load ptr, ptr %i.t, align 8, !alias.scope !9645, !noalias !9648
  %i.u = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val10.i.i, ptr %.val11.i.i), !noalias !9645 ; 2 uses
  %i.v = zext i1 %i.r to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.v ; 3 uses
  %i.x = xor i1 %i.r, true
  %i.y = zext i1 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.u, i64 3, i64 2
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.aa ; 4 uses
  %i.ac = select i1 %i.u, i64 2, i64 3
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.ac ; 3 uses
  %.val8.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !9645, !noalias !9648, !nonnull !6, !align !15, !noundef !6
  %.val9.i.i = load ptr, ptr %i.w, align 8, !alias.scope !9645, !noalias !9648
  %i.ae = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val8.i.i, ptr %.val9.i.i), !noalias !9645 ; 3 uses
  %.val6.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !9645, !noalias !9648, !nonnull !6, !align !15, !noundef !6
  %.val7.i.i = load ptr, ptr %i.z, align 8, !alias.scope !9645, !noalias !9648
  %i.af = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val6.i.i, ptr %.val7.i.i), !noalias !9645 ; 3 uses
  %i.ag = select i1 %i.ae, ptr %i.ab, ptr %i.w, !unpredictable !6
  %i.ah = select i1 %i.af, ptr %i.z, ptr %i.ad, !unpredictable !6
  %i.ai = select i1 %i.af, ptr %i.ab, ptr %i.z, !unpredictable !6
  %i.aj = select i1 %i.ae, ptr %i.w, ptr %i.ai, !unpredictable !6 ; 3 uses
  %i.ak = select i1 %i.ae, ptr %i.z, ptr %i.ab, !unpredictable !6
  %i.al = select i1 %i.af, ptr %i.ad, ptr %i.ak, !unpredictable !6 ; 3 uses
  %.val.i.i = load ptr, ptr %i.al, align 8, !alias.scope !9645, !noalias !9648, !nonnull !6, !align !15, !noundef !6
  %.val5.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !9645, !noalias !9648
  %i.am = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val.i.i, ptr %.val5.i.i), !noalias !9645 ; 2 uses
  %i.an = select i1 %i.am, ptr %i.al, ptr %i.aj, !unpredictable !6
  %i.ao = select i1 %i.am, ptr %i.aj, ptr %i.al, !unpredictable !6
  %i.ap = load i64, ptr %i.ag, align 8, !alias.scope !9645, !noalias !9648
  store i64 %i.ap, ptr %2, align 8, !alias.scope !9648, !noalias !9645
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.an, align 8, !alias.scope !9645, !noalias !9648
  store i64 %i.ar, ptr %i.aq, align 8, !alias.scope !9648, !noalias !9645
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i64, ptr %i.ao, align 8, !alias.scope !9645, !noalias !9648
  store i64 %i.at, ptr %i.as, align 8, !alias.scope !9648, !noalias !9645
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = load i64, ptr %i.ah, align 8, !alias.scope !9645, !noalias !9648
  store i64 %i.av, ptr %i.au, align 8, !alias.scope !9648, !noalias !9645
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.j ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val12.i29.i = load ptr, ptr %i.ay, align 8, !alias.scope !9645, !noalias !9648, !nonnull !6, !align !15, !noundef !6
  %.val13.i30.i = load ptr, ptr %i.aw, align 8, !alias.scope !9645, !noalias !9648
  %i.az = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val12.i29.i, ptr %.val13.i30.i), !noalias !9645 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val10.i31.i = load ptr, ptr %i.ba, align 8, !alias.scope !9645, !noalias !9648, !nonnull !6, !align !15, !noundef !6
  %.val11.i32.i = load ptr, ptr %i.bb, align 8, !alias.scope !9645, !noalias !9648
  %i.bc = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val10.i31.i, ptr %.val11.i32.i), !noalias !9645 ; 2 uses
  %i.bd = zext i1 %i.az to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bd ; 3 uses
  %i.bf = xor i1 %i.az, true
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg ; 4 uses
  %i.bi = select i1 %i.bc, i64 3, i64 2
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi ; 4 uses
  %i.bk = select i1 %i.bc, i64 2, i64 3
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bk ; 3 uses
  %.val8.i33.i = load ptr, ptr %i.bj, align 8, !alias.scope !9645, !noalias !9648, !nonnull !6, !align !15, !noundef !6
  %.val9.i34.i = load ptr, ptr %i.be, align 8, !alias.scope !9645, !noalias !9648
  %i.bm = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val8.i33.i, ptr %.val9.i34.i), !noalias !9645 ; 3 uses
  %.val6.i35.i = load ptr, ptr %i.bl, align 8, !alias.scope !9645, !noalias !9648, !nonnull !6, !align !15, !noundef !6
  %.val7.i36.i = load ptr, ptr %i.bh, align 8, !alias.scope !9645, !noalias !9648
  %i.bn = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val6.i35.i, ptr %.val7.i36.i), !noalias !9645 ; 3 uses
  %i.bo = select i1 %i.bm, ptr %i.bj, ptr %i.be, !unpredictable !6
  %i.bp = select i1 %i.bn, ptr %i.bh, ptr %i.bl, !unpredictable !6
  %i.bq = select i1 %i.bn, ptr %i.bj, ptr %i.bh, !unpredictable !6
  %i.br = select i1 %i.bm, ptr %i.be, ptr %i.bq, !unpredictable !6 ; 3 uses
  %i.bs = select i1 %i.bm, ptr %i.bh, ptr %i.bj, !unpredictable !6
  %i.bt = select i1 %i.bn, ptr %i.bl, ptr %i.bs, !unpredictable !6 ; 3 uses
  %.val.i37.i = load ptr, ptr %i.bt, align 8, !alias.scope !9645, !noalias !9648, !nonnull !6, !align !15, !noundef !6
  %.val5.i38.i = load ptr, ptr %i.br, align 8, !alias.scope !9645, !noalias !9648
  %i.bu = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val.i37.i, ptr %.val5.i38.i), !noalias !9645 ; 2 uses
  %i.bv = select i1 %i.bu, ptr %i.bt, ptr %i.br, !unpredictable !6
  %i.bw = select i1 %i.bu, ptr %i.br, ptr %i.bt, !unpredictable !6
  %i.bx = load i64, ptr %i.bo, align 8, !alias.scope !9645, !noalias !9648
  store i64 %i.bx, ptr %i.ax, align 8, !alias.scope !9648, !noalias !9645
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bz = load i64, ptr %i.bv, align 8, !alias.scope !9645, !noalias !9648
  store i64 %i.bz, ptr %i.by, align 8, !alias.scope !9648, !noalias !9645
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.cb = load i64, ptr %i.bw, align 8, !alias.scope !9645, !noalias !9648
  store i64 %i.cb, ptr %i.ca, align 8, !alias.scope !9648, !noalias !9645
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.cd = load i64, ptr %i.bp, align 8, !alias.scope !9645, !noalias !9648
  store i64 %i.cd, ptr %i.cc, align 8, !alias.scope !9648, !noalias !9645
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ce = load i64, ptr %.sroa.0.0.ph.lcssa126, align 8, !alias.scope !9645, !noalias !9648
  store i64 %i.ce, ptr %2, align 8, !alias.scope !9648, !noalias !9645
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.j
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.ch = load i64, ptr %i.cf, align 8, !alias.scope !9645, !noalias !9648
  store i64 %i.ch, ptr %i.cg, align 8, !alias.scope !9648, !noalias !9645
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 6 uses
  %i.ci = sub nsw i64 %.sroa.15.0.lcssa, %i.j     ; 2 uses
  %i.cj = icmp samesign ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.cj, label %.noexc45.preheader.i, label %.loopexit4.i

.loopexit4.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0785dafb344400ceE.exit.i, %bb.j
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.j
  %i.cl = getelementptr [8 x i8], ptr %2, i64 %i.j ; 6 uses
  %i.cm = icmp ult i64 %.sroa.0.0.i, %i.ci
  br i1 %i.cm, label %.noexc45.preheader.1.i, label %.loopexit4.1.i

.noexc45.preheader.1.i:                           ; preds = %.loopexit4.i
  %.sroa.08.111.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.noexc45.1.i

.noexc45.1.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0785dafb344400ceE.exit.1.i, %.noexc45.preheader.1.i
  %.sroa.08.113.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0785dafb344400ceE.exit.1.i ], [ %.sroa.08.111.1.i, %.noexc45.preheader.1.i ] ; 3 uses
  %.sroa.08.012.1.i = phi i64 [ %.sroa.08.113.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0785dafb344400ceE.exit.1.i ], [ %.sroa.0.0.i, %.noexc45.preheader.1.i ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.sroa.08.012.1.i
  %.idx351 = shl nuw nsw i64 %.sroa.08.012.1.i, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx351 ; 3 uses
  %i.cp = load i64, ptr %i.cn, align 8, !alias.scope !9645, !noalias !9648 ; 4 uses
  store i64 %i.cp, ptr %i.co, align 8, !alias.scope !9648, !noalias !9645
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -8 ; 3 uses
  %.val9.i41.cast.1.i = inttoptr i64 %i.cp to ptr ; 2 uses
  %.val10.i42.1.i = load ptr, ptr %i.cq, align 8, !alias.scope !9648, !noalias !9645
  %i.cr = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val9.i41.cast.1.i, ptr %.val10.i42.1.i), !noalias !9645
  br i1 %i.cr, label %.preheader.1.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0785dafb344400ceE.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.noexc45.1.i
  %i.cs = load i64, ptr %i.cq, align 8, !alias.scope !9648, !noalias !9645
  store i64 %i.cs, ptr %i.co, align 8, !alias.scope !9648, !noalias !9645
  %i.ct = icmp eq i64 %.sroa.08.012.1.i, 1
  br i1 %i.ct, label %._crit_edge332, label %.lr.ph331

.preheader.1.i:                                   ; preds = %bb.k
  %i.cu = load i64, ptr %i.cw, align 8, !alias.scope !9648, !noalias !9645
  store i64 %i.cu, ptr %.sroa.0.0.i43.1.i330, align 8, !alias.scope !9648, !noalias !9645
  %i.cv = icmp eq ptr %i.cw, %i.cl
  br i1 %i.cv, label %._crit_edge332, label %.lr.ph331

.lr.ph331:                                        ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i43.1.i330 = phi ptr [ %i.cw, %.preheader.1.i ], [ %i.cq, %.preheader.1.i.preheader ] ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.i43.1.i330, i64 -8 ; 4 uses
  %.val8.i44.1.i = load ptr, ptr %i.cw, align 8, !alias.scope !9648, !noalias !9645
  %i.cx = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val9.i41.cast.1.i, ptr %.val8.i44.1.i)
          to label %bb.k unwind label %.loopexit.split-lp22.i, !noalias !9645

bb.k:                                             ; preds = %.lr.ph331
  br i1 %i.cx, label %.preheader.1.i, label %._crit_edge332

._crit_edge332:                                   ; preds = %.preheader.1.i, %bb.k, %.preheader.1.i.preheader
  %.sroa.0.0.i43.lcssa.1.i = phi ptr [ %i.cl, %.preheader.1.i.preheader ], [ %i.cl, %.preheader.1.i ], [ %.sroa.0.0.i43.1.i330, %bb.k ]
  store i64 %i.cp, ptr %.sroa.0.0.i43.lcssa.1.i, align 8, !alias.scope !9648, !noalias !9650
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0785dafb344400ceE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0785dafb344400ceE.exit.1.i: ; preds = %._crit_edge332, %.noexc45.1.i
  %i.cy = icmp ult i64 %.sroa.08.113.1.i, %i.ci   ; 2 uses
  %i.cz = zext i1 %i.cy to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.113.1.i, %i.cz
  br i1 %i.cy, label %.noexc45.1.i, label %.loopexit4.1.i

.loopexit4.1.i:                                   ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0785dafb344400ceE.exit.1.i, %.loopexit4.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9655)
  %i.da = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.da
  %i.dd = getelementptr i8, ptr %i.cl, i64 -8
  br label %.lr.ph.i.i

.noexc45.preheader.i:                             ; preds = %bb.j
  %.sroa.08.111.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.noexc45.i

._crit_edge.i.i:                                  ; preds = %.noexc39.i
  %i.de = getelementptr i8, ptr %i.dv, i64 8      ; 2 uses
  %i.df = getelementptr i8, ptr %i.du, i64 8
  %i.dg = and i64 %.sroa.15.0.lcssa, 1
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.m, label %bb.l

.lr.ph.i.i:                                       ; preds = %.noexc39.i, %.loopexit4.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.dp, %.noexc39.i ], [ %2, %.loopexit4.1.i ] ; 3 uses
  %.sroa.06.09.i.i = phi ptr [ %i.dr, %.noexc39.i ], [ %i.cl, %.loopexit4.1.i ] ; 3 uses
  %.sroa.010.08.i.i = phi ptr [ %i.dm, %.noexc39.i ], [ %.sroa.0.0.ph.lcssa126, %.loopexit4.1.i ] ; 2 uses
  %.sroa.013.07.i.i = phi ptr [ %i.dv, %.noexc39.i ], [ %i.dd, %.loopexit4.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.du, %.noexc39.i ], [ %i.dc, %.loopexit4.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dw, %.noexc39.i ], [ %i.db, %.loopexit4.1.i ] ; 2 uses
  %.sroa.018.04.i.i = phi i64 [ %i.di, %.noexc39.i ], [ 0, %.loopexit4.1.i ]
  %i.di = add nuw nsw i64 %.sroa.018.04.i.i, 1    ; 2 uses
  %.sroa.06.0.val.i.i = load ptr, ptr %.sroa.06.09.i.i, align 8, !alias.scope !9658, !noalias !9645, !nonnull !6, !align !15, !noundef !6
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.010.i.i, align 8, !alias.scope !9658, !noalias !9645
  %i.dj = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.sroa.06.0.val.i.i, ptr %.sroa.0.0.val.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !9645 ; 3 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %..i23.i.i = select i1 %i.dj, ptr %.sroa.06.09.i.i, ptr %.sroa.0.010.i.i
  %i.dk = load i64, ptr %..i23.i.i, align 8, !alias.scope !9658, !noalias !9659
  store i64 %i.dk, ptr %.sroa.010.08.i.i, align 8, !alias.scope !9645, !noalias !9663
  %.sroa.015.0.val.i.i = load ptr, ptr %.sroa.015.06.i.i, align 8, !alias.scope !9658, !noalias !9645, !nonnull !6, !align !15, !noundef !6
  %.sroa.013.0.val.i.i = load ptr, ptr %.sroa.013.07.i.i, align 8, !alias.scope !9658, !noalias !9645
  %i.dl = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.sroa.015.0.val.i.i, ptr %.sroa.013.0.val.i.i)
          to label %.noexc39.i unwind label %.loopexit.i, !noalias !9645 ; 3 uses

.noexc39.i:                                       ; preds = %.noexc.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.010.08.i.i, i64 8 ; 2 uses
  %i.dn = xor i1 %i.dj, true
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.010.i.i, i64 %i.do ; 5 uses
  %i.dq = zext i1 %i.dj to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.09.i.i, i64 %i.dq ; 4 uses
  %..i.i.i = select i1 %i.dl, ptr %.sroa.013.07.i.i, ptr %.sroa.015.06.i.i
  %i.ds = xor i1 %i.dl, true
  %i.dt = load i64, ptr %..i.i.i, align 8, !alias.scope !9658, !noalias !9664
  store i64 %i.dt, ptr %.sroa.017.05.i.i, align 8, !alias.scope !9645, !noalias !9668
  %.neg.i.i.i = sext i1 %i.ds to i64
  %i.du = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.dl to i64
  %i.dv = getelementptr [8 x i8], ptr %.sroa.013.07.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.017.05.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.di, %i.j
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.dx = icmp ult ptr %i.dp, %i.de               ; 3 uses
  %.sroa.0.0..sroa.06.0.i.i = select i1 %i.dx, ptr %i.dp, ptr %i.dr
  %i.dy = load i64, ptr %.sroa.0.0..sroa.06.0.i.i, align 8, !alias.scope !9658, !noalias !9645
  store i64 %i.dy, ptr %i.dm, align 8, !alias.scope !9645, !noalias !9658
  %i.dz = zext i1 %i.dx to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dz
  %i.eb = xor i1 %i.dx, true
  %i.ec = zext i1 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ec
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.sroa.06.1.i.i = phi ptr [ %i.dr, %._crit_edge.i.i ], [ %i.ed, %bb.l ]
  %.sroa.0.1.i.i = phi ptr [ %i.dp, %._crit_edge.i.i ], [ %i.ea, %bb.l ]
  %i.ee = icmp ne ptr %.sroa.0.1.i.i, %i.de
  %i.ef = icmp ne ptr %.sroa.06.1.i.i, %i.df
  %or.cond.i.i = select i1 %i.ee, i1 true, i1 %i.ef, !prof !16
  br i1 %or.cond.i.i, label %bb.n, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h63e407b648c31aabE.exit, !prof !16

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #46
          to label %.noexc40.i unwind label %.loopexit.split-lp.i, !noalias !9645

.noexc40.i:                                       ; preds = %bb.n
  unreachable

.loopexit.i:                                      ; preds = %.noexc.i, %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i:                             ; preds = %bb.n
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.eg = shl nuw nsw i64 %.sroa.15.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa126, ptr nonnull align 8 %2, i64 %i.eg, i1 false), !alias.scope !9669, !noalias !9670
  br label %.body.i

.body.i:                                          ; preds = %bb.q, %bb.o
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.o ], [ %lpad.phi27.i, %bb.q ]
  resume { ptr, i32 } %.pn.i

.noexc45.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0785dafb344400ceE.exit.i, %.noexc45.preheader.i
  %.sroa.08.113.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0785dafb344400ceE.exit.i ], [ %.sroa.08.111.i, %.noexc45.preheader.i ] ; 3 uses
  %.sroa.08.012.i = phi i64 [ %.sroa.08.113.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0785dafb344400ceE.exit.i ], [ %.sroa.0.0.i, %.noexc45.preheader.i ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %.sroa.08.012.i
  %.idx = shl nuw nsw i64 %.sroa.08.012.i, 3
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.ej = load i64, ptr %i.eh, align 8, !alias.scope !9645, !noalias !9648 ; 4 uses
  store i64 %i.ej, ptr %i.ei, align 8, !alias.scope !9648, !noalias !9645
  %i.ek = getelementptr inbounds i8, ptr %i.ei, i64 -8 ; 3 uses
  %.val9.i41.cast.i = inttoptr i64 %i.ej to ptr   ; 2 uses
  %.val10.i42.i = load ptr, ptr %i.ek, align 8, !alias.scope !9648, !noalias !9645
  %i.el = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val9.i41.cast.i, ptr %.val10.i42.i), !noalias !9645
  br i1 %i.el, label %.preheader.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0785dafb344400ceE.exit.i

.preheader.i.preheader:                           ; preds = %.noexc45.i
  %i.em = load i64, ptr %i.ek, align 8, !alias.scope !9648, !noalias !9645
  store i64 %i.em, ptr %i.ei, align 8, !alias.scope !9648, !noalias !9645
  %i.en = icmp eq i64 %.sroa.08.012.i, 1
  br i1 %i.en, label %._crit_edge327, label %.lr.ph326

.preheader.i:                                     ; preds = %bb.p
  %i.eo = load i64, ptr %i.eq, align 8, !alias.scope !9648, !noalias !9645
  store i64 %i.eo, ptr %.sroa.0.0.i43.i325, align 8, !alias.scope !9648, !noalias !9645
  %i.ep = icmp eq ptr %i.eq, %2
  br i1 %i.ep, label %._crit_edge327, label %.lr.ph326

.lr.ph326:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i43.i325 = phi ptr [ %i.eq, %.preheader.i ], [ %i.ek, %.preheader.i.preheader ] ; 4 uses
  %i.eq = getelementptr inbounds i8, ptr %.sroa.0.0.i43.i325, i64 -8 ; 4 uses
  %.val8.i44.i = load ptr, ptr %i.eq, align 8, !alias.scope !9648, !noalias !9645
  %i.er = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val9.i41.cast.i, ptr %.val8.i44.i)
          to label %bb.p unwind label %.loopexit21.i, !noalias !9645

bb.p:                                             ; preds = %.lr.ph326
  br i1 %i.er, label %.preheader.i, label %._crit_edge327

._crit_edge327:                                   ; preds = %.preheader.i, %bb.p, %.preheader.i.preheader
  %.sroa.0.0.i43.lcssa.i = phi ptr [ %2, %.preheader.i.preheader ], [ %2, %.preheader.i ], [ %.sroa.0.0.i43.i325, %bb.p ]
  store i64 %i.ej, ptr %.sroa.0.0.i43.lcssa.i, align 8, !alias.scope !9648, !noalias !9650
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0785dafb344400ceE.exit.i

.loopexit21.i:                                    ; preds = %.lr.ph326
  %lpad.loopexit25.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp22.i:                           ; preds = %.lr.ph331
  %lpad.loopexit.split-lp26.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp22.i, %.loopexit21.i
  %.lcssa19.i = phi i64 [ %i.ej, %.loopexit21.i ], [ %i.cp, %.loopexit.split-lp22.i ]
  %.sroa.0.0.i43.lcssa18.i = phi ptr [ %.sroa.0.0.i43.i325, %.loopexit21.i ], [ %.sroa.0.0.i43.1.i330, %.loopexit.split-lp22.i ]
  %lpad.phi27.i = phi { ptr, i32 } [ %lpad.loopexit25.i, %.loopexit21.i ], [ %lpad.loopexit.split-lp26.i, %.loopexit.split-lp22.i ]
  store i64 %.lcssa19.i, ptr %.sroa.0.0.i43.lcssa18.i, align 8, !alias.scope !9648, !noalias !9675
  br label %.body.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0785dafb344400ceE.exit.i: ; preds = %._crit_edge327, %.noexc45.i
  %i.es = icmp ult i64 %.sroa.08.113.i, %i.j      ; 2 uses
  %i.et = zext i1 %i.es to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.113.i, %i.et
  br i1 %i.es, label %.noexc45.i, label %.loopexit4.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.15.0128.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.15.0.ph134, %.lr.ph ]
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h542ac89259b134fbE(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph135, i64 noundef %.sroa.15.0128.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h63e407b648c31aabE.exit

.lr.ph321:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.023.0127320 = phi i32 [ %i.eu, %bb.b ], [ %.sroa.023.0.ph133, %.lr.ph ]
  %.sroa.15.0128319 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.15.0.ph134, %.lr.ph ] ; 19 uses
  %i.eu = add i32 %.sroa.023.0127320, -1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9680)
  %i.ev = lshr i64 %.sroa.15.0128319, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ev, 5
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph135, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.ev, 56
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph135, i64 %.idx2.i ; 3 uses
  %i.ey = icmp ult i64 %.sroa.15.0128319, 64
  br i1 %i.ey, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph321
  %i.ez = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4453783e7a7dbe39E(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph135, ptr noundef readonly %i.ew, ptr noundef readonly %i.ex, i64 noundef %i.ev)
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph321
  %.val6.i = load ptr, ptr %.sroa.0.0.ph135, align 8, !alias.scope !9680, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %.val7.i = load ptr, ptr %i.ew, align 8, !alias.scope !9680 ; 2 uses
  %i.fa = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val6.i, ptr %.val7.i), !noalias !9680 ; 2 uses
  %.val5.i = load ptr, ptr %i.ex, align 8, !alias.scope !9680 ; 2 uses
  %i.fb = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val6.i, ptr %.val5.i), !noalias !9680
  %i.fc = xor i1 %i.fa, %i.fb
  br i1 %i.fc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fd = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr %.val7.i, ptr %.val5.i), !noalias !9680
  %i.fe = xor i1 %i.fa, %i.fd
  %..i.i = select i1 %i.fe, ptr %i.ex, ptr %i.ew
  br label %bb.u

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h63e407b648c31aabE.exit: ; preds = %.outer._crit_edge.thread, %bb.m, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i.sink.i = phi ptr [ %i.ez, %bb.r ], [ %.sroa.0.0.ph135, %bb.s ], [ %..i.i, %bb.t ]
  %i.ff = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fg = sub nuw i64 %i.ff, %i.d                 ; 2 uses
  %.sroa.0.0.i36 = lshr exact i64 %i.fg, 3        ; 3 uses
  %i.fh = icmp ult i64 %.sroa.0.0.i36, %.sroa.15.0128319
  call void @llvm.assume(i1 %i.fh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph135, i64 %i.fg ; 5 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  store ptr %i.fj, ptr %i.b, align 8
  br i1 %.not, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.026.0.val = load ptr, ptr %.sroa.026.0.ph132, align 8, !nonnull !6, !align !15, !noundef !6
  %i.fk = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.sroa.026.0.val, ptr nonnull %i.fj)
  br i1 %i.fk, label %.critedge, label %.critedge35

.critedge:                                        ; preds = %bb.u, %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !9683)
  call void @llvm.experimental.noalias.scope.decl(metadata !9686)
  %.not76 = icmp ult i64 %3, %.sroa.15.0128319
  br i1 %.not76, label %bb.x, label %bb.w, !prof !16

bb.w:                                             ; preds = %.critedge
  %i.fl = getelementptr [8 x i8], ptr %2, i64 %.sroa.15.0128319 ; 3 uses
  br label %bb.y

bb.x:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.aa, %bb.w
  %.sroa.27.0.i = phi i64 [ 0, %bb.w ], [ %.sroa.27.2.lcssa.i, %bb.aa ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph135, %bb.w ], [ %i.hb, %bb.aa ] ; 3 uses
  %.sroa.43.0.i = phi ptr [ %i.fl, %bb.w ], [ %i.gy, %bb.aa ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i36, %bb.w ], [ %.sroa.15.0128319, %bb.aa ] ; 3 uses
  %i.fm = call i64 @llvm.usub.sat.i64(i64 %.sroa.02.0.i, i64 3)
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph135, i64 %i.fm ; 2 uses
  %i.fo = icmp ult ptr %.sroa.9.0.i, %i.fn
  br i1 %i.fo, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.y
  %.val35.i = load ptr, ptr %i.fi, align 8, !alias.scope !9683, !noalias !9686 ; 4 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i
  %.sroa.43.131.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.gi, %bb.z ] ; 4 uses
  %.sroa.9.130.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.gm, %bb.z ] ; 5 uses
  %.sroa.27.129.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.gl, %bb.z ] ; 2 uses
  %.val34.i = load ptr, ptr %.sroa.9.130.i, align 8, !alias.scope !9683, !noalias !9686, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.fp = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val34.i, ptr %.val35.i), !noalias !9688 ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -8
  %.sroa.01.0.i.i = select i1 %i.fp, ptr %2, ptr %i.fq
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.129.i
  %.cast = ptrtoint ptr %.val34.i to i64
  store i64 %.cast, ptr %i.fr, align 8, !alias.scope !9686, !noalias !9689
  %i.fs = zext i1 %i.fp to i64
  %i.ft = add i64 %.sroa.27.129.i, %i.fs          ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 8
  %.val32.i = load ptr, ptr %i.fu, align 8, !alias.scope !9683, !noalias !9686, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.fv = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val32.i, ptr %.val35.i), !noalias !9688 ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -16
  %.sroa.01.0.i36.i = select i1 %i.fv, ptr %2, ptr %i.fw
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i36.i, i64 %i.ft
  %.cast77 = ptrtoint ptr %.val32.i to i64
  store i64 %.cast77, ptr %i.fx, align 8, !alias.scope !9686, !noalias !9692
  %i.fy = zext i1 %i.fv to i64
  %i.fz = add i64 %i.ft, %i.fy                    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 16
  %.val30.i = load ptr, ptr %i.ga, align 8, !alias.scope !9683, !noalias !9686, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.gb = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val30.i, ptr %.val35.i), !noalias !9688 ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -24
  %.sroa.01.0.i37.i = select i1 %i.gb, ptr %2, ptr %i.gc
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i37.i, i64 %i.fz
  %.cast78 = ptrtoint ptr %.val30.i to i64
  store i64 %.cast78, ptr %i.gd, align 8, !alias.scope !9686, !noalias !9695
  %i.ge = zext i1 %i.gb to i64
  %i.gf = add i64 %i.fz, %i.ge                    ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 24
  %.val28.i = load ptr, ptr %i.gg, align 8, !alias.scope !9683, !noalias !9686, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.gh = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val28.i, ptr %.val35.i), !noalias !9688 ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -32 ; 3 uses
  %.sroa.01.0.i38.i = select i1 %i.gh, ptr %2, ptr %i.gi
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i38.i, i64 %i.gf
  %.cast79 = ptrtoint ptr %.val28.i to i64
  store i64 %.cast79, ptr %i.gj, align 8, !alias.scope !9686, !noalias !9698
  %i.gk = zext i1 %i.gh to i64
  %i.gl = add i64 %i.gf, %i.gk                    ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 32 ; 3 uses
  %i.gn = icmp ult ptr %i.gm, %i.fn
  br i1 %i.gn, label %bb.z, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.y
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.y ], [ %i.gl, %bb.z ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.y ], [ %i.gm, %bb.z ] ; 3 uses
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.y ], [ %i.gi, %bb.z ] ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph135, i64 %.sroa.02.0.i ; 2 uses
  %i.gp = icmp ult ptr %.sroa.9.1.lcssa.i, %i.go
  br i1 %i.gp, label %.lr.ph38.i.preheader, label %._crit_edge39.i

.lr.ph38.i.preheader:                             ; preds = %._crit_edge.i
  %.val27.i = load ptr, ptr %i.fi, align 8, !alias.scope !9683, !noalias !9686
  br label %.lr.ph38.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.gv, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.gw, %.lr.ph38.i ] ; 2 uses
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.gs, %.lr.ph38.i ]
  %i.gq = icmp eq i64 %.sroa.02.0.i, %.sroa.15.0128319
  br i1 %i.gq, label %bb.ab, label %bb.aa

.lr.ph38.i:                                       ; preds = %.lr.ph38.i.preheader, %.lr.ph38.i
  %.sroa.43.236.i = phi ptr [ %i.gs, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %.lr.ph38.i.preheader ]
  %.sroa.9.235.i = phi ptr [ %i.gw, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %.lr.ph38.i.preheader ] ; 2 uses
  %.sroa.27.234.i = phi i64 [ %i.gv, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %.lr.ph38.i.preheader ] ; 2 uses
  %.val.i = load ptr, ptr %.sroa.9.235.i, align 8, !alias.scope !9683, !noalias !9686, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.gr = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val.i, ptr %.val27.i), !noalias !9688 ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.sroa.43.236.i, i64 -8 ; 3 uses
  %.sroa.01.0.i39.i = select i1 %i.gr, ptr %2, ptr %i.gs
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i39.i, i64 %.sroa.27.234.i
  %.cast80 = ptrtoint ptr %.val.i to i64
  store i64 %.cast80, ptr %i.gt, align 8, !alias.scope !9686, !noalias !9701
  %i.gu = zext i1 %i.gr to i64
  %i.gv = add i64 %.sroa.27.234.i, %i.gu          ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.9.235.i, i64 8 ; 3 uses
  %i.gx = icmp ult ptr %i.gw, %i.go
  br i1 %i.gx, label %.lr.ph38.i, label %._crit_edge39.i

bb.aa:                                            ; preds = %._crit_edge39.i
  %i.gy = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %.sroa.27.2.lcssa.i
  %i.ha = load i64, ptr %.sroa.9.2.lcssa.i, align 8, !alias.scope !9683, !noalias !9704
  store i64 %i.ha, ptr %i.gz, align 8, !alias.scope !9686, !noalias !9707
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.y

bb.ab:                                            ; preds = %._crit_edge39.i
  %i.hc = shl i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph135, ptr nonnull align 8 %2, i64 %i.hc, i1 false), !alias.scope !9688
  %i.hd = sub i64 %.sroa.15.0128319, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.15.0128319, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hae0a41d7cf9cd837E.exit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.ab
  %i.he = getelementptr [8 x i8], ptr %.sroa.0.0.ph135, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check338 = icmp ult i64 %i.hd, 4
  br i1 %min.iters.check338, label %scalar.ph337.preheader, label %vector.ph339

vector.ph339:                                     ; preds = %.lr.ph45.i
  %n.vec340 = and i64 %i.hd, -4                   ; 3 uses
  br label %vector.body341

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next347, %vector.body341 ] ; 3 uses
  %i.hf = xor i64 %index342, -1
end_hunk_12
begin_hunk_13_@_ZN4core5slice4sort6stable9quicksort9quicksort17h73bbf79b86abfb69E:bb.a
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h63e407b648c31aabE.exit

bb.aj:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb4786c222039fb88E.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.27.2.lcssa.i48, i64 noundef %.sroa.15.0128319, i64 noundef %.sroa.15.0128319, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !noalias !9737
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb4786c222039fb88E.exit
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph135, i64 %.sroa.27.2.lcssa.i48 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.kg = icmp ult i64 %i.jq, 33
  br i1 %i.kg, label %.outer._crit_edge, label %.lr.ph

bb.ak:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @302, ptr %i.a, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.kk, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344) #46
  unreachable

bb.al:                                            ; preds = %bb.ac
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph135, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph135) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h73bbf79b86abfb69E(ptr noalias noundef nonnull align 8 %i.kl, i64 noundef %i.hd, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.km = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.km, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7ddf27d5d9d76b2fE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  %.sroa.0.0.ph620 = phi ptr [ %i.wf, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %0, %bb.a ] ; 22 uses
  %.sroa.15.0.ph619 = phi i64 [ %i.vq, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph618 = phi i32 [ %i.iu, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph617 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %5, %bb.a ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.0.0.ph620 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph617, null
  %i.e = icmp eq i32 %.sroa.023.0.ph618, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph1889

bb.b:                                             ; preds = %bb.cc
  %i.f = icmp eq i32 %i.iu, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph1889

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit", %bb.cc, %bb.a
  %.sroa.0.0.ph.lcssa473 = phi ptr [ %.sroa.0.0.ph620, %bb.cc ], [ %0, %bb.a ], [ %i.wf, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ] ; 18 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.cc ], [ %1, %bb.a ], [ %i.vq, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9740)
  call void @llvm.experimental.noalias.scope.decl(metadata !9743)
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.g, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha89621a5d2a9a15cE.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.i = icmp ult i64 %3, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.k = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.k, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hdce72fb7bed2d30cE(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa473, ptr noundef nonnull align 8 %2, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa473, i64 %i.j
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hdce72fb7bed2d30cE(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa473, i64 8
  %.val12.i.i = load ptr, ptr %i.q, align 8, !alias.scope !9740, !noalias !9743, !nonnull !6, !align !15, !noundef !6
  %.val13.i.i = load ptr, ptr %.sroa.0.0.ph.lcssa473, align 8, !alias.scope !9740, !noalias !9743
  %i.r = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val12.i.i, ptr %.val13.i.i), !noalias !9740 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa473, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa473, i64 16
  %.val10.i.i = load ptr, ptr %i.s, align 8, !alias.scope !9740, !noalias !9743, !nonnull !6, !align !15, !noundef !6
  %.val11.i.i = load ptr, ptr %i.t, align 8, !alias.scope !9740, !noalias !9743
  %i.u = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val10.i.i, ptr %.val11.i.i), !noalias !9740 ; 2 uses
  %i.v = zext i1 %i.r to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa473, i64 %i.v ; 3 uses
  %i.x = xor i1 %i.r, true
  %i.y = zext i1 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa473, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.u, i64 3, i64 2
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa473, i64 %i.aa ; 4 uses
  %i.ac = select i1 %i.u, i64 2, i64 3
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa473, i64 %i.ac ; 3 uses
  %.val8.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !9740, !noalias !9743, !nonnull !6, !align !15, !noundef !6
  %.val9.i.i = load ptr, ptr %i.w, align 8, !alias.scope !9740, !noalias !9743
  %i.ae = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val8.i.i, ptr %.val9.i.i), !noalias !9740 ; 3 uses
  %.val6.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !9740, !noalias !9743, !nonnull !6, !align !15, !noundef !6
  %.val7.i.i = load ptr, ptr %i.z, align 8, !alias.scope !9740, !noalias !9743
  %i.af = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val6.i.i, ptr %.val7.i.i), !noalias !9740 ; 3 uses
  %i.ag = select i1 %i.ae, ptr %i.ab, ptr %i.w, !unpredictable !6
  %i.ah = select i1 %i.af, ptr %i.z, ptr %i.ad, !unpredictable !6
  %i.ai = select i1 %i.af, ptr %i.ab, ptr %i.z, !unpredictable !6
  %i.aj = select i1 %i.ae, ptr %i.w, ptr %i.ai, !unpredictable !6 ; 3 uses
  %i.ak = select i1 %i.ae, ptr %i.z, ptr %i.ab, !unpredictable !6
  %i.al = select i1 %i.af, ptr %i.ad, ptr %i.ak, !unpredictable !6 ; 3 uses
  %.val.i.i = load ptr, ptr %i.al, align 8, !alias.scope !9740, !noalias !9743, !nonnull !6, !align !15, !noundef !6
  %.val5.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !9740, !noalias !9743
  %i.am = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val.i.i, ptr %.val5.i.i), !noalias !9740 ; 2 uses
  %i.an = select i1 %i.am, ptr %i.al, ptr %i.aj, !unpredictable !6
  %i.ao = select i1 %i.am, ptr %i.aj, ptr %i.al, !unpredictable !6
  %i.ap = load i64, ptr %i.ag, align 8, !alias.scope !9740, !noalias !9743
  store i64 %i.ap, ptr %2, align 8, !alias.scope !9743, !noalias !9740
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.an, align 8, !alias.scope !9740, !noalias !9743
  store i64 %i.ar, ptr %i.aq, align 8, !alias.scope !9743, !noalias !9740
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i64, ptr %i.ao, align 8, !alias.scope !9740, !noalias !9743
  store i64 %i.at, ptr %i.as, align 8, !alias.scope !9743, !noalias !9740
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = load i64, ptr %i.ah, align 8, !alias.scope !9740, !noalias !9743
  store i64 %i.av, ptr %i.au, align 8, !alias.scope !9743, !noalias !9740
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa473, i64 %i.j ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val12.i29.i = load ptr, ptr %i.ay, align 8, !alias.scope !9740, !noalias !9743, !nonnull !6, !align !15, !noundef !6
  %.val13.i30.i = load ptr, ptr %i.aw, align 8, !alias.scope !9740, !noalias !9743
  %i.az = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val12.i29.i, ptr %.val13.i30.i), !noalias !9740 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val10.i31.i = load ptr, ptr %i.ba, align 8, !alias.scope !9740, !noalias !9743, !nonnull !6, !align !15, !noundef !6
  %.val11.i32.i = load ptr, ptr %i.bb, align 8, !alias.scope !9740, !noalias !9743
  %i.bc = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val10.i31.i, ptr %.val11.i32.i), !noalias !9740 ; 2 uses
  %i.bd = zext i1 %i.az to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bd ; 3 uses
  %i.bf = xor i1 %i.az, true
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg ; 4 uses
  %i.bi = select i1 %i.bc, i64 3, i64 2
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi ; 4 uses
  %i.bk = select i1 %i.bc, i64 2, i64 3
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bk ; 3 uses
  %.val8.i33.i = load ptr, ptr %i.bj, align 8, !alias.scope !9740, !noalias !9743, !nonnull !6, !align !15, !noundef !6
  %.val9.i34.i = load ptr, ptr %i.be, align 8, !alias.scope !9740, !noalias !9743
  %i.bm = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val8.i33.i, ptr %.val9.i34.i), !noalias !9740 ; 3 uses
  %.val6.i35.i = load ptr, ptr %i.bl, align 8, !alias.scope !9740, !noalias !9743, !nonnull !6, !align !15, !noundef !6
  %.val7.i36.i = load ptr, ptr %i.bh, align 8, !alias.scope !9740, !noalias !9743
  %i.bn = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val6.i35.i, ptr %.val7.i36.i), !noalias !9740 ; 3 uses
  %i.bo = select i1 %i.bm, ptr %i.bj, ptr %i.be, !unpredictable !6
  %i.bp = select i1 %i.bn, ptr %i.bh, ptr %i.bl, !unpredictable !6
  %i.bq = select i1 %i.bn, ptr %i.bj, ptr %i.bh, !unpredictable !6
  %i.br = select i1 %i.bm, ptr %i.be, ptr %i.bq, !unpredictable !6 ; 3 uses
  %i.bs = select i1 %i.bm, ptr %i.bh, ptr %i.bj, !unpredictable !6
  %i.bt = select i1 %i.bn, ptr %i.bl, ptr %i.bs, !unpredictable !6 ; 3 uses
  %.val.i37.i = load ptr, ptr %i.bt, align 8, !alias.scope !9740, !noalias !9743, !nonnull !6, !align !15, !noundef !6
  %.val5.i38.i = load ptr, ptr %i.br, align 8, !alias.scope !9740, !noalias !9743
  %i.bu = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val.i37.i, ptr %.val5.i38.i), !noalias !9740 ; 2 uses
  %i.bv = select i1 %i.bu, ptr %i.bt, ptr %i.br, !unpredictable !6
  %i.bw = select i1 %i.bu, ptr %i.br, ptr %i.bt, !unpredictable !6
  %i.bx = load i64, ptr %i.bo, align 8, !alias.scope !9740, !noalias !9743
  store i64 %i.bx, ptr %i.ax, align 8, !alias.scope !9743, !noalias !9740
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bz = load i64, ptr %i.bv, align 8, !alias.scope !9740, !noalias !9743
  store i64 %i.bz, ptr %i.by, align 8, !alias.scope !9743, !noalias !9740
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.cb = load i64, ptr %i.bw, align 8, !alias.scope !9740, !noalias !9743
  store i64 %i.cb, ptr %i.ca, align 8, !alias.scope !9743, !noalias !9740
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.cd = load i64, ptr %i.bp, align 8, !alias.scope !9740, !noalias !9743
  store i64 %i.cd, ptr %i.cc, align 8, !alias.scope !9743, !noalias !9740
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ce = load i64, ptr %.sroa.0.0.ph.lcssa473, align 8, !alias.scope !9740, !noalias !9743
  store i64 %i.ce, ptr %2, align 8, !alias.scope !9743, !noalias !9740
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa473, i64 %i.j
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.ch = load i64, ptr %i.cf, align 8, !alias.scope !9740, !noalias !9743
  store i64 %i.ch, ptr %i.cg, align 8, !alias.scope !9743, !noalias !9740
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 6 uses
  %i.ci = sub nsw i64 %.sroa.15.0.lcssa, %i.j     ; 2 uses
  %i.cj = icmp samesign ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.cj, label %.lr.ph.preheader.i, label %.loopexit4.i

.loopexit4.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit.i, %bb.j
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa473, i64 %i.j
  %i.cl = getelementptr [8 x i8], ptr %2, i64 %i.j ; 6 uses
  %i.cm = icmp ult i64 %.sroa.0.0.i, %i.ci
  br i1 %i.cm, label %.lr.ph.preheader.1.i, label %.loopexit4.1.i

.lr.ph.preheader.1.i:                             ; preds = %.loopexit4.i
  %.sroa.08.154.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit.1.i, %.lr.ph.preheader.1.i
  %.sroa.08.156.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit.1.i ], [ %.sroa.08.154.1.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.055.1.i = phi i64 [ %.sroa.08.156.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.sroa.08.055.1.i
  %.idx1919 = shl nuw nsw i64 %.sroa.08.055.1.i, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx1919 ; 3 uses
  %i.cp = load i64, ptr %i.cn, align 8, !alias.scope !9740, !noalias !9743 ; 7 uses
  store i64 %i.cp, ptr %i.co, align 8, !alias.scope !9743, !noalias !9740
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -8 ; 2 uses
  %.val9.i41.cast.1.i = inttoptr i64 %i.cp to ptr ; 6 uses
  %.val10.i42.1.i = load ptr, ptr %i.cq, align 8, !alias.scope !9743, !noalias !9740 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i41.cast.1.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9745)
  %i.cr = getelementptr inbounds nuw i8, ptr %.val9.i41.cast.1.i, i64 80 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !9745, !noalias !9748, !noundef !6
  %.not.i.i.i.i51.1.i = icmp ne i64 %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %.val9.i41.cast.1.i, i64 72 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !9745, !noalias !9748
  %i.cv = icmp ne i64 %i.cu, 0
  %or.cond.i.i.i.i52.1.i = select i1 %.not.i.i.i.i51.1.i, i1 %i.cv, i1 false
  br i1 %or.cond.i.i.i.i52.1.i, label %bb.k, label %.noexc61.i

bb.k:                                             ; preds = %.lr.ph.1.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.val9.i41.cast.1.i, i64 64 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !9745, !noalias !9748, !nonnull !6, !noundef !6
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !9750, !noundef !6 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val9.i41.cast.1.i, i64 48 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !noalias !9740, !noundef !6 ; 2 uses
  %.not.i.i.i53.1.i = icmp ugt i64 %i.cy, %i.da
  br i1 %.not.i.i.i53.1.i, label %.noexc59.i, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.db = getelementptr inbounds nuw i8, ptr %.val9.i41.cast.1.i, i64 40 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !9740, !nonnull !6, !noundef !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i42.1.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9751)
  %i.dd = getelementptr inbounds nuw i8, ptr %.val10.i42.1.i, i64 80
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !9751, !noalias !9754, !noundef !6
  %.not.i.i14.i.i54.1.i = icmp ne i64 %i.de, 0
  %i.df = getelementptr inbounds nuw i8, ptr %.val10.i42.1.i, i64 72
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !9751, !noalias !9754
  %i.dh = icmp ne i64 %i.dg, 0
  %or.cond.i.i15.i.i55.1.i = select i1 %.not.i.i14.i.i54.1.i, i1 %i.dh, i1 false
  br i1 %or.cond.i.i15.i.i55.1.i, label %bb.m, label %.noexc62.i

bb.m:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %.val10.i42.1.i, i64 64
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !9751, !noalias !9754, !nonnull !6, !noundef !6
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !9756, !noundef !6 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val10.i42.1.i, i64 48
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !9740, !noundef !6 ; 2 uses
  %.not.i18.i.i56.1.i = icmp ugt i64 %i.dk, %i.dm
  br i1 %.not.i18.i.i56.1.i, label %.noexc60.i, label %.noexc45.1.i, !prof !16

.noexc45.1.i:                                     ; preds = %bb.m
  %i.dn = getelementptr inbounds nuw i8, ptr %.val10.i42.1.i, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !9740, !nonnull !6, !noundef !6
  %..i.i57.1.i = call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.dk)
  %i.dp = sub i64 %i.cy, %i.dk
  %i.dq = call i32 @memcmp(ptr nonnull %i.dc, ptr nonnull %i.do, i64 %..i.i57.1.i), !noalias !9740 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp eq i32 %i.dq, 0
  %spec.store.select.i.i58.1.i = select i1 %i.ds, i64 %i.dp, i64 %i.dr
  %i.dt = icmp slt i64 %spec.store.select.i.i58.1.i, 0
  br i1 %i.dt, label %.preheader.1.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.noexc45.1.i
  %i.du = ptrtoint ptr %.val10.i42.1.i to i64
  store i64 %i.du, ptr %i.co, align 8, !alias.scope !9743, !noalias !9740
  %i.dv = icmp eq i64 %.sroa.08.055.1.i, 1
  br i1 %i.dv, label %._crit_edge1900, label %.lr.ph1899

.preheader.1.i:                                   ; preds = %bb.q
  %i.dw = ptrtoint ptr %.val8.i44.1.i to i64
  store i64 %i.dw, ptr %.sroa.0.0.i43.1.i1898, align 8, !alias.scope !9743, !noalias !9740
  %i.dx = icmp eq ptr %i.dy, %i.cl
  br i1 %i.dx, label %._crit_edge1900, label %.lr.ph1899

.lr.ph1899:                                       ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i43.1.i1898 = phi ptr [ %i.dy, %.preheader.1.i ], [ %i.cq, %.preheader.1.i.preheader ] ; 7 uses
  %i.dy = getelementptr inbounds i8, ptr %.sroa.0.0.i43.1.i1898, i64 -8 ; 3 uses
  %.val8.i44.1.i = load ptr, ptr %i.dy, align 8, !alias.scope !9743, !noalias !9740 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9757)
  %i.dz = load i64, ptr %i.cr, align 8, !alias.scope !9757, !noalias !9760, !noundef !6
  %.not.i.i.i.i.1.i = icmp ne i64 %i.dz, 0
  %i.ea = load i64, ptr %i.ct, align 8, !alias.scope !9757, !noalias !9760
  %i.eb = icmp ne i64 %i.ea, 0
  %or.cond.i.i.i.i.1.i = select i1 %.not.i.i.i.i.1.i, i1 %i.eb, i1 false
  br i1 %or.cond.i.i.i.i.1.i, label %bb.n, label %.loopexit111.i

bb.n:                                             ; preds = %.lr.ph1899
  %i.ec = load ptr, ptr %i.cw, align 8, !alias.scope !9757, !noalias !9760, !nonnull !6, !noundef !6
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !9762, !noundef !6 ; 4 uses
  %i.ee = load i64, ptr %i.cz, align 8, !noalias !9740, !noundef !6 ; 2 uses
  %.not.i.i.i.1.i = icmp ugt i64 %i.ed, %i.ee
  br i1 %.not.i.i.i.1.i, label %.loopexit112.i, label %bb.o, !prof !16

bb.o:                                             ; preds = %bb.n
  %i.ef = load ptr, ptr %i.db, align 8, !noalias !9740, !nonnull !6, !noundef !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i44.1.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9763)
  %i.eg = getelementptr inbounds nuw i8, ptr %.val8.i44.1.i, i64 80
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !9763, !noalias !9766, !noundef !6
  %.not.i.i14.i.i.1.i = icmp ne i64 %i.eh, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %.val8.i44.1.i, i64 72
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !9763, !noalias !9766
  %i.ek = icmp ne i64 %i.ej, 0
  %or.cond.i.i15.i.i.1.i = select i1 %.not.i.i14.i.i.1.i, i1 %i.ek, i1 false
  br i1 %or.cond.i.i15.i.i.1.i, label %bb.p, label %.loopexit113.i

bb.p:                                             ; preds = %bb.o
  %i.el = getelementptr inbounds nuw i8, ptr %.val8.i44.1.i, i64 64
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !9763, !noalias !9766, !nonnull !6, !noundef !6
  %i.en = load i64, ptr %i.em, align 8, !noalias !9768, !noundef !6 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8.i44.1.i, i64 48
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !9740, !noundef !6 ; 2 uses
  %.not.i18.i.i.1.i = icmp ugt i64 %i.en, %i.ep
  br i1 %.not.i18.i.i.1.i, label %.loopexit114.i, label %bb.q, !prof !16

bb.q:                                             ; preds = %bb.p
  %i.eq = getelementptr inbounds nuw i8, ptr %.val8.i44.1.i, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !9740, !nonnull !6, !noundef !6
  %..i.i46.1.i = call i64 @llvm.umin.i64(i64 %i.ed, i64 %i.en)
  %i.es = sub i64 %i.ed, %i.en
  %i.et = call i32 @memcmp(ptr nonnull %i.ef, ptr nonnull %i.er, i64 %..i.i46.1.i), !noalias !9740 ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp eq i32 %i.et, 0
  %spec.store.select.i.i.1.i = select i1 %i.ev, i64 %i.es, i64 %i.eu
  %i.ew = icmp slt i64 %spec.store.select.i.i.1.i, 0
  br i1 %i.ew, label %.preheader.1.i, label %._crit_edge1900

._crit_edge1900:                                  ; preds = %.preheader.1.i, %bb.q, %.preheader.1.i.preheader
  %.sroa.0.0.i43.lcssa.1.i = phi ptr [ %i.cl, %.preheader.1.i.preheader ], [ %i.cl, %.preheader.1.i ], [ %.sroa.0.0.i43.1.i1898, %bb.q ]
  store i64 %i.cp, ptr %.sroa.0.0.i43.lcssa.1.i, align 8, !alias.scope !9743, !noalias !9769
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit.1.i: ; preds = %._crit_edge1900, %.noexc45.1.i
  %i.ex = icmp ult i64 %.sroa.08.156.1.i, %i.ci   ; 2 uses
  %i.ey = zext i1 %i.ex to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.156.1.i, %i.ey
  br i1 %i.ex, label %.lr.ph.1.i, label %.loopexit4.1.i

.loopexit4.1.i:                                   ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit.1.i, %.loopexit4.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9774)
  %i.ez = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa473, i64 %i.ez
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ez
  %i.fc = getelementptr i8, ptr %i.cl, i64 -8
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %.sroa.08.154.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.noexc39.i
  %i.fd = getelementptr i8, ptr %i.fu, i64 8      ; 2 uses
  %i.fe = getelementptr i8, ptr %i.ft, i64 8
  %i.ff = and i64 %.sroa.15.0.lcssa, 1
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %bb.s, label %bb.r

.lr.ph.i.i:                                       ; preds = %.noexc39.i, %.loopexit4.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.fo, %.noexc39.i ], [ %2, %.loopexit4.1.i ] ; 3 uses
  %.sroa.06.09.i.i = phi ptr [ %i.fq, %.noexc39.i ], [ %i.cl, %.loopexit4.1.i ] ; 3 uses
  %.sroa.010.08.i.i = phi ptr [ %i.fl, %.noexc39.i ], [ %.sroa.0.0.ph.lcssa473, %.loopexit4.1.i ] ; 2 uses
  %.sroa.013.07.i.i = phi ptr [ %i.fu, %.noexc39.i ], [ %i.fc, %.loopexit4.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.ft, %.noexc39.i ], [ %i.fb, %.loopexit4.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.fv, %.noexc39.i ], [ %i.fa, %.loopexit4.1.i ] ; 2 uses
  %.sroa.018.04.i.i = phi i64 [ %i.fh, %.noexc39.i ], [ 0, %.loopexit4.1.i ]
  %i.fh = add nuw nsw i64 %.sroa.018.04.i.i, 1    ; 2 uses
  %.sroa.06.0.val.i.i = load ptr, ptr %.sroa.06.09.i.i, align 8, !alias.scope !9777, !noalias !9740, !nonnull !6, !align !15, !noundef !6
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.010.i.i, align 8, !alias.scope !9777, !noalias !9740
  %i.fi = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.sroa.06.0.val.i.i, ptr %.sroa.0.0.val.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !9740 ; 3 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %..i23.i.i = select i1 %i.fi, ptr %.sroa.06.09.i.i, ptr %.sroa.0.010.i.i
  %i.fj = load i64, ptr %..i23.i.i, align 8, !alias.scope !9777, !noalias !9778
  store i64 %i.fj, ptr %.sroa.010.08.i.i, align 8, !alias.scope !9740, !noalias !9782
  %.sroa.015.0.val.i.i = load ptr, ptr %.sroa.015.06.i.i, align 8, !alias.scope !9777, !noalias !9740, !nonnull !6, !align !15, !noundef !6
  %.sroa.013.0.val.i.i = load ptr, ptr %.sroa.013.07.i.i, align 8, !alias.scope !9777, !noalias !9740
  %i.fk = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.sroa.015.0.val.i.i, ptr %.sroa.013.0.val.i.i)
          to label %.noexc39.i unwind label %.loopexit.i, !noalias !9740 ; 3 uses

.noexc39.i:                                       ; preds = %.noexc.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.010.08.i.i, i64 8 ; 2 uses
  %i.fm = xor i1 %i.fi, true
  %i.fn = zext i1 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.010.i.i, i64 %i.fn ; 5 uses
  %i.fp = zext i1 %i.fi to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.09.i.i, i64 %i.fp ; 4 uses
  %..i.i.i = select i1 %i.fk, ptr %.sroa.013.07.i.i, ptr %.sroa.015.06.i.i
  %i.fr = xor i1 %i.fk, true
  %i.fs = load i64, ptr %..i.i.i, align 8, !alias.scope !9777, !noalias !9783
  store i64 %i.fs, ptr %.sroa.017.05.i.i, align 8, !alias.scope !9740, !noalias !9787
  %.neg.i.i.i = sext i1 %i.fr to i64
  %i.ft = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.fk to i64
  %i.fu = getelementptr [8 x i8], ptr %.sroa.013.07.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %.sroa.017.05.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.fh, %i.j
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.fw = icmp ult ptr %i.fo, %i.fd               ; 3 uses
  %.sroa.0.0..sroa.06.0.i.i = select i1 %i.fw, ptr %i.fo, ptr %i.fq
  %i.fx = load i64, ptr %.sroa.0.0..sroa.06.0.i.i, align 8, !alias.scope !9777, !noalias !9740
  store i64 %i.fx, ptr %i.fl, align 8, !alias.scope !9740, !noalias !9777
  %i.fy = zext i1 %i.fw to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fy
  %i.ga = xor i1 %i.fw, true
  %i.gb = zext i1 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.gb
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i
  %.sroa.06.1.i.i = phi ptr [ %i.fq, %._crit_edge.i.i ], [ %i.gc, %bb.r ]
  %.sroa.0.1.i.i = phi ptr [ %i.fo, %._crit_edge.i.i ], [ %i.fz, %bb.r ]
  %i.gd = icmp ne ptr %.sroa.0.1.i.i, %i.fd
  %i.ge = icmp ne ptr %.sroa.06.1.i.i, %i.fe
  %or.cond.i.i = select i1 %i.gd, i1 true, i1 %i.ge, !prof !16
  br i1 %or.cond.i.i, label %bb.t, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha89621a5d2a9a15cE.exit, !prof !16

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #46
          to label %.noexc40.i unwind label %.loopexit.split-lp.i, !noalias !9740

.noexc40.i:                                       ; preds = %bb.t
  unreachable

.loopexit.i:                                      ; preds = %.noexc.i, %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.i:                             ; preds = %bb.t
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.gf = shl nuw nsw i64 %.sroa.15.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa473, ptr nonnull align 8 %2, i64 %i.gf, i1 false), !alias.scope !9788, !noalias !9789
  br label %.body.i

.body.i:                                          ; preds = %bb.ac, %bb.u
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.u ], [ %i.ir, %bb.ac ]
  resume { ptr, i32 } %.pn.i

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.156.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit.i ], [ %.sroa.08.154.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.055.i = phi i64 [ %.sroa.08.156.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa473, i64 %.sroa.08.055.i
  %.idx = shl nuw nsw i64 %.sroa.08.055.i, 3
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.gi = load i64, ptr %i.gg, align 8, !alias.scope !9740, !noalias !9743 ; 7 uses
  store i64 %i.gi, ptr %i.gh, align 8, !alias.scope !9743, !noalias !9740
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 -8 ; 2 uses
  %.val9.i41.cast.i = inttoptr i64 %i.gi to ptr   ; 6 uses
  %.val10.i42.i = load ptr, ptr %i.gj, align 8, !alias.scope !9743, !noalias !9740 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i41.cast.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9794)
  %i.gk = getelementptr inbounds nuw i8, ptr %.val9.i41.cast.i, i64 80 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !9794, !noalias !9748, !noundef !6
  %.not.i.i.i.i51.i = icmp ne i64 %i.gl, 0
  %i.gm = getelementptr inbounds nuw i8, ptr %.val9.i41.cast.i, i64 72 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !9794, !noalias !9748
  %i.go = icmp ne i64 %i.gn, 0
  %or.cond.i.i.i.i52.i = select i1 %.not.i.i.i.i51.i, i1 %i.go, i1 false
  br i1 %or.cond.i.i.i.i52.i, label %bb.v, label %.noexc61.i

bb.v:                                             ; preds = %.lr.ph.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.val9.i41.cast.i, i64 64 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !9794, !noalias !9748, !nonnull !6, !noundef !6
  %i.gr = load i64, ptr %i.gq, align 8, !noalias !9796, !noundef !6 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.val9.i41.cast.i, i64 48 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !noalias !9740, !noundef !6 ; 2 uses
  %.not.i.i.i53.i = icmp ugt i64 %i.gr, %i.gt
  br i1 %.not.i.i.i53.i, label %.noexc59.i, label %bb.w, !prof !16

.noexc59.i:                                       ; preds = %bb.v, %bb.k
  %.lcssa91.i = phi i64 [ %i.cy, %bb.k ], [ %i.gr, %bb.v ]
  %.lcssa83.i = phi i64 [ %i.da, %bb.k ], [ %i.gt, %bb.v ]
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.lcssa91.i, i64 noundef %.lcssa83.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46, !noalias !9740
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.gu = getelementptr inbounds nuw i8, ptr %.val9.i41.cast.i, i64 40 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !9740, !nonnull !6, !noundef !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i42.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9797)
  %i.gw = getelementptr inbounds nuw i8, ptr %.val10.i42.i, i64 80
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !9797, !noalias !9754, !noundef !6
  %.not.i.i14.i.i54.i = icmp ne i64 %i.gx, 0
  %i.gy = getelementptr inbounds nuw i8, ptr %.val10.i42.i, i64 72
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !9797, !noalias !9754
  %i.ha = icmp ne i64 %i.gz, 0
  %or.cond.i.i15.i.i55.i = select i1 %.not.i.i14.i.i54.i, i1 %i.ha, i1 false
  br i1 %or.cond.i.i15.i.i55.i, label %bb.x, label %.noexc62.i

bb.x:                                             ; preds = %bb.w
  %i.hb = getelementptr inbounds nuw i8, ptr %.val10.i42.i, i64 64
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !9797, !noalias !9754, !nonnull !6, !noundef !6
  %i.hd = load i64, ptr %i.hc, align 8, !noalias !9799, !noundef !6 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.val10.i42.i, i64 48
  %i.hf = load i64, ptr %i.he, align 8, !noalias !9740, !noundef !6 ; 2 uses
  %.not.i18.i.i56.i = icmp ugt i64 %i.hd, %i.hf
  br i1 %.not.i18.i.i56.i, label %.noexc60.i, label %.noexc45.i, !prof !16

.noexc60.i:                                       ; preds = %bb.x, %bb.m
  %.lcssa105.i = phi i64 [ %i.dk, %bb.m ], [ %i.hd, %bb.x ]
  %.lcssa99.i = phi i64 [ %i.dm, %bb.m ], [ %i.hf, %bb.x ]
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.lcssa105.i, i64 noundef %.lcssa99.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46, !noalias !9740
  unreachable

.noexc61.i:                                       ; preds = %.lr.ph.i, %.lr.ph.1.i
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #46, !noalias !9740
  unreachable

.noexc62.i:                                       ; preds = %bb.w, %bb.l
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #46, !noalias !9740
  unreachable

.noexc45.i:                                       ; preds = %bb.x
  %i.hg = getelementptr inbounds nuw i8, ptr %.val10.i42.i, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !9740, !nonnull !6, !noundef !6
  %..i.i57.i = call i64 @llvm.umin.i64(i64 %i.gr, i64 %i.hd)
  %i.hi = sub i64 %i.gr, %i.hd
  %i.hj = call i32 @memcmp(ptr nonnull %i.gv, ptr nonnull %i.hh, i64 %..i.i57.i), !noalias !9740 ; 2 uses
  %i.hk = sext i32 %i.hj to i64
  %i.hl = icmp eq i32 %i.hj, 0
  %spec.store.select.i.i58.i = select i1 %i.hl, i64 %i.hi, i64 %i.hk
  %i.hm = icmp slt i64 %spec.store.select.i.i58.i, 0
  br i1 %i.hm, label %.preheader.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit.i

.preheader.i.preheader:                           ; preds = %.noexc45.i
  %i.hn = ptrtoint ptr %.val10.i42.i to i64
  store i64 %i.hn, ptr %i.gh, align 8, !alias.scope !9743, !noalias !9740
  %i.ho = icmp eq i64 %.sroa.08.055.i, 1
  br i1 %i.ho, label %._crit_edge1895, label %.lr.ph1894

.preheader.i:                                     ; preds = %bb.ab
  %i.hp = ptrtoint ptr %.val8.i44.i to i64
  store i64 %i.hp, ptr %.sroa.0.0.i43.i1893, align 8, !alias.scope !9743, !noalias !9740
  %i.hq = icmp eq ptr %i.hr, %2
  br i1 %i.hq, label %._crit_edge1895, label %.lr.ph1894

.lr.ph1894:                                       ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i43.i1893 = phi ptr [ %i.hr, %.preheader.i ], [ %i.gj, %.preheader.i.preheader ] ; 7 uses
  %i.hr = getelementptr inbounds i8, ptr %.sroa.0.0.i43.i1893, i64 -8 ; 3 uses
  %.val8.i44.i = load ptr, ptr %i.hr, align 8, !alias.scope !9743, !noalias !9740 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9800)
  %i.hs = load i64, ptr %i.gk, align 8, !alias.scope !9800, !noalias !9760, !noundef !6
  %.not.i.i.i.i.i = icmp ne i64 %i.hs, 0
  %i.ht = load i64, ptr %i.gm, align 8, !alias.scope !9800, !noalias !9760
  %i.hu = icmp ne i64 %i.ht, 0
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.hu, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.y, label %.loopexit111.i

bb.y:                                             ; preds = %.lr.ph1894
  %i.hv = load ptr, ptr %i.gp, align 8, !alias.scope !9800, !noalias !9760, !nonnull !6, !noundef !6
  %i.hw = load i64, ptr %i.hv, align 8, !noalias !9802, !noundef !6 ; 4 uses
  %i.hx = load i64, ptr %i.gs, align 8, !noalias !9740, !noundef !6 ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %i.hw, %i.hx
  br i1 %.not.i.i.i.i, label %.loopexit112.i, label %bb.z, !prof !16

.loopexit112.i:                                   ; preds = %bb.y, %bb.n
  %.lcssa79.i = phi i64 [ %i.cp, %bb.n ], [ %i.gi, %bb.y ]
  %.sroa.0.0.i43.lcssa70.i = phi ptr [ %.sroa.0.0.i43.1.i1898, %bb.n ], [ %.sroa.0.0.i43.i1893, %bb.y ]
  %.lcssa64.i = phi i64 [ %i.ed, %bb.n ], [ %i.hw, %bb.y ]
  %.lcssa61.i = phi i64 [ %i.ee, %bb.n ], [ %i.hx, %bb.y ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.lcssa64.i, i64 noundef %.lcssa61.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46
          to label %.noexc47.i unwind label %bb.ac, !noalias !9740

.noexc47.i:                                       ; preds = %.loopexit112.i
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.hy = load ptr, ptr %i.gu, align 8, !noalias !9740, !nonnull !6, !noundef !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i44.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9803)
  %i.hz = getelementptr inbounds nuw i8, ptr %.val8.i44.i, i64 80
  %i.ia = load i64, ptr %i.hz, align 8, !alias.scope !9803, !noalias !9766, !noundef !6
  %.not.i.i14.i.i.i = icmp ne i64 %i.ia, 0
  %i.ib = getelementptr inbounds nuw i8, ptr %.val8.i44.i, i64 72
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !9803, !noalias !9766
  %i.id = icmp ne i64 %i.ic, 0
  %or.cond.i.i15.i.i.i = select i1 %.not.i.i14.i.i.i, i1 %i.id, i1 false
  br i1 %or.cond.i.i15.i.i.i, label %bb.aa, label %.loopexit113.i

bb.aa:                                            ; preds = %bb.z
  %i.ie = getelementptr inbounds nuw i8, ptr %.val8.i44.i, i64 64
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !9803, !noalias !9766, !nonnull !6, !noundef !6
  %i.ig = load i64, ptr %i.if, align 8, !noalias !9805, !noundef !6 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.val8.i44.i, i64 48
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !9740, !noundef !6 ; 2 uses
  %.not.i18.i.i.i = icmp ugt i64 %i.ig, %i.ii
  br i1 %.not.i18.i.i.i, label %.loopexit114.i, label %bb.ab, !prof !16

.loopexit114.i:                                   ; preds = %bb.aa, %bb.p
  %.lcssa81.i = phi i64 [ %i.cp, %bb.p ], [ %i.gi, %bb.aa ]
  %.sroa.0.0.i43.lcssa72.i = phi ptr [ %.sroa.0.0.i43.1.i1898, %bb.p ], [ %.sroa.0.0.i43.i1893, %bb.aa ]
  %.lcssa68.i = phi i64 [ %i.en, %bb.p ], [ %i.ig, %bb.aa ]
  %.lcssa67.i = phi i64 [ %i.ep, %bb.p ], [ %i.ii, %bb.aa ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.lcssa68.i, i64 noundef %.lcssa67.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46
          to label %.noexc48.i unwind label %bb.ac, !noalias !9740

.noexc48.i:                                       ; preds = %.loopexit114.i
  unreachable

.loopexit111.i:                                   ; preds = %.lr.ph1894, %.lr.ph1899
  %.lcssa78.i = phi i64 [ %i.cp, %.lr.ph1899 ], [ %i.gi, %.lr.ph1894 ]
  %.sroa.0.0.i43.lcssa69.i = phi ptr [ %.sroa.0.0.i43.1.i1898, %.lr.ph1899 ], [ %.sroa.0.0.i43.i1893, %.lr.ph1894 ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #46
          to label %.noexc49.i unwind label %bb.ac, !noalias !9740

.noexc49.i:                                       ; preds = %.loopexit111.i
  unreachable

.loopexit113.i:                                   ; preds = %bb.z, %bb.o
  %.lcssa80.i = phi i64 [ %i.cp, %bb.o ], [ %i.gi, %bb.z ]
  %.sroa.0.0.i43.lcssa71.i = phi ptr [ %.sroa.0.0.i43.1.i1898, %bb.o ], [ %.sroa.0.0.i43.i1893, %bb.z ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #46
          to label %.noexc50.i unwind label %bb.ac, !noalias !9740

.noexc50.i:                                       ; preds = %.loopexit113.i
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.ij = getelementptr inbounds nuw i8, ptr %.val8.i44.i, i64 40
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !9740, !nonnull !6, !noundef !6
  %..i.i46.i = call i64 @llvm.umin.i64(i64 %i.hw, i64 %i.ig)
  %i.il = sub i64 %i.hw, %i.ig
  %i.im = call i32 @memcmp(ptr nonnull %i.hy, ptr nonnull %i.ik, i64 %..i.i46.i), !noalias !9740 ; 2 uses
  %i.in = sext i32 %i.im to i64
  %i.io = icmp eq i32 %i.im, 0
  %spec.store.select.i.i.i = select i1 %i.io, i64 %i.il, i64 %i.in
  %i.ip = icmp slt i64 %spec.store.select.i.i.i, 0
  br i1 %i.ip, label %.preheader.i, label %._crit_edge1895

._crit_edge1895:                                  ; preds = %.preheader.i, %bb.ab, %.preheader.i.preheader
  %.sroa.0.0.i43.lcssa.i = phi ptr [ %2, %.preheader.i.preheader ], [ %2, %.preheader.i ], [ %.sroa.0.0.i43.i1893, %bb.ab ]
  store i64 %i.gi, ptr %.sroa.0.0.i43.lcssa.i, align 8, !alias.scope !9743, !noalias !9769
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit.i

bb.ac:                                            ; preds = %.loopexit113.i, %.loopexit111.i, %.loopexit114.i, %.loopexit112.i
  %i.iq = phi i64 [ %.lcssa80.i, %.loopexit113.i ], [ %.lcssa78.i, %.loopexit111.i ], [ %.lcssa81.i, %.loopexit114.i ], [ %.lcssa79.i, %.loopexit112.i ]
  %.sroa.0.0.i4373.i = phi ptr [ %.sroa.0.0.i43.lcssa71.i, %.loopexit113.i ], [ %.sroa.0.0.i43.lcssa69.i, %.loopexit111.i ], [ %.sroa.0.0.i43.lcssa72.i, %.loopexit114.i ], [ %.sroa.0.0.i43.lcssa70.i, %.loopexit112.i ]
  %i.ir = landingpad { ptr, i32 }
          cleanup
  store i64 %i.iq, ptr %.sroa.0.0.i4373.i, align 8, !alias.scope !9743, !noalias !9806
  br label %.body.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h11a0f95df6cffc84E.exit.i: ; preds = %._crit_edge1895, %.noexc45.i
  %i.is = icmp ult i64 %.sroa.08.156.i, %i.j      ; 2 uses
  %i.it = zext i1 %i.is to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.156.i, %i.it
  br i1 %i.is, label %.lr.ph.i, label %.loopexit4.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.15.0475.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.15.0.ph619, %.lr.ph ]
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h2eaa57a4a6b23babE(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph620, i64 noundef %.sroa.15.0475.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha89621a5d2a9a15cE.exit

.lr.ph1889:                                       ; preds = %.lr.ph, %bb.b
  %.sroa.023.04741888 = phi i32 [ %i.iu, %bb.b ], [ %.sroa.023.0.ph618, %.lr.ph ]
  %.sroa.15.04751887 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.15.0.ph619, %.lr.ph ] ; 19 uses
  %i.iu = add i32 %.sroa.023.04741888, -1         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9811)
  %i.iv = lshr i64 %.sroa.15.04751887, 3          ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.iv, 5
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph620, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.iv, 56
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph620, i64 %.idx2.i ; 3 uses
  %i.iy = icmp ult i64 %.sroa.15.04751887, 64
  br i1 %i.iy, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph1889
  %i.iz = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h8c4b8465eb928c0aE(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph620, ptr noundef readonly %i.iw, ptr noundef readonly %i.ix, i64 noundef %i.iv)
  br label %bb.ag

bb.ae:                                            ; preds = %.lr.ph1889
  %.val6.i = load ptr, ptr %.sroa.0.0.ph620, align 8, !alias.scope !9811, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %.val7.i = load ptr, ptr %i.iw, align 8, !alias.scope !9811 ; 2 uses
  %i.ja = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val6.i, ptr %.val7.i), !noalias !9811 ; 2 uses
  %.val5.i = load ptr, ptr %i.ix, align 8, !alias.scope !9811 ; 2 uses
  %i.jb = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val6.i, ptr %.val5.i), !noalias !9811
  %i.jc = xor i1 %i.ja, %i.jb
  br i1 %i.jc, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jd = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr %.val7.i, ptr %.val5.i), !noalias !9811
  %i.je = xor i1 %i.ja, %i.jd
  %..i.i = select i1 %i.je, ptr %i.ix, ptr %i.iw
  br label %bb.ag

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha89621a5d2a9a15cE.exit: ; preds = %.outer._crit_edge.thread, %bb.s, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.sroa.0.0.i.sink.i = phi ptr [ %i.iz, %bb.ad ], [ %.sroa.0.0.ph620, %bb.ae ], [ %..i.i, %bb.af ]
  %i.jf = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.jg = sub nuw i64 %i.jf, %i.d                 ; 2 uses
  %.sroa.0.0.i36 = lshr exact i64 %i.jg, 3        ; 3 uses
  %i.jh = icmp ult i64 %.sroa.0.0.i36, %.sroa.15.04751887
  call void @llvm.assume(i1 %i.jh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph620, i64 %i.jg ; 5 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  store ptr %i.jj, ptr %i.b, align 8
  br i1 %.not, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.026.0.val = load ptr, ptr %.sroa.026.0.ph617, align 8, !nonnull !6, !align !15, !noundef !6
  %i.jk = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.sroa.026.0.val, ptr nonnull %i.jj)
  br i1 %i.jk, label %.critedge, label %.critedge35

.critedge:                                        ; preds = %bb.ag, %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !9814)
  call void @llvm.experimental.noalias.scope.decl(metadata !9817)
  %.not89 = icmp ult i64 %3, %.sroa.15.04751887
  br i1 %.not89, label %bb.aj, label %bb.ai, !prof !16

bb.ai:                                            ; preds = %.critedge
  %i.jl = getelementptr [8 x i8], ptr %2, i64 %.sroa.15.04751887 ; 3 uses
  br label %bb.ak

bb.aj:                                            ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.ak:                                            ; preds = %bb.bj, %bb.ai
  %.sroa.27.0.i = phi i64 [ 0, %bb.ai ], [ %.sroa.27.2.lcssa.i, %bb.bj ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph620, %bb.ai ], [ %i.pb, %bb.bj ] ; 3 uses
  %.sroa.43.0.i = phi ptr [ %i.jl, %bb.ai ], [ %i.oy, %bb.bj ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i36, %bb.ai ], [ %.sroa.15.04751887, %bb.bj ] ; 3 uses
  %i.jm = call i64 @llvm.usub.sat.i64(i64 %.sroa.02.0.i, i64 3)
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph620, i64 %i.jm ; 2 uses
  %i.jo = icmp ult ptr %.sroa.9.0.i, %i.jn
  br i1 %i.jo, label %.lr.ph.i37, label %._crit_edge.i

.lr.ph.i37:                                       ; preds = %bb.ak
  %.val35.i = load ptr, ptr %i.ji, align 8, !alias.scope !9814, !noalias !9817 ; 6 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.val35.i, i64 80
  %i.jq = getelementptr inbounds nuw i8, ptr %.val35.i, i64 72
  %i.jr = getelementptr inbounds nuw i8, ptr %.val35.i, i64 64
  %i.js = getelementptr inbounds nuw i8, ptr %.val35.i, i64 48
  %i.jt = getelementptr inbounds nuw i8, ptr %.val35.i, i64 40
  br label %bb.al

bb.al:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit64.i", %.lr.ph.i37
  %.sroa.43.1130.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i37 ], [ %i.nh, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit64.i" ] ; 4 uses
  %.sroa.9.1129.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i37 ], [ %i.nk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit64.i" ] ; 5 uses
  %.sroa.27.1128.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i37 ], [ %i.nj, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit64.i" ] ; 2 uses
  %.val34.i = load ptr, ptr %.sroa.9.1129.i, align 8, !alias.scope !9814, !noalias !9817, !nonnull !6, !align !15, !noundef !6 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9819)
  %i.ju = getelementptr inbounds nuw i8, ptr %.val34.i, i64 80
  %i.jv = load i64, ptr %i.ju, align 8, !alias.scope !9819, !noalias !9822, !noundef !6
  %.not.i.i.i.i.i38 = icmp ne i64 %i.jv, 0
  %i.jw = getelementptr inbounds nuw i8, ptr %.val34.i, i64 72
  %i.jx = load i64, ptr %i.jw, align 8, !alias.scope !9819, !noalias !9822
  %i.jy = icmp ne i64 %i.jx, 0
  %or.cond.i.i.i.i.i39 = select i1 %.not.i.i.i.i.i38, i1 %i.jy, i1 false
  %i.jz = ptrtoint ptr %.val34.i to i64
  br i1 %or.cond.i.i.i.i.i39, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.ka = getelementptr inbounds nuw i8, ptr %.val34.i, i64 64
  %i.kb = load ptr, ptr %i.ka, align 8, !alias.scope !9819, !noalias !9822, !nonnull !6, !noundef !6
  %i.kc = load i64, ptr %i.kb, align 8, !noalias !9824, !noundef !6 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.val34.i, i64 48
  %i.ke = load i64, ptr %i.kd, align 8, !noalias !9825, !noundef !6 ; 2 uses
  %.not.i.i.i.i40 = icmp ugt i64 %i.kc, %i.ke
  br i1 %.not.i.i.i.i40, label %bb.an, label %bb.ao, !prof !16

bb.an:                                            ; preds = %bb.am
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.kc, i64 noundef %i.ke, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46, !noalias !9825
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.kf = getelementptr inbounds nuw i8, ptr %.val34.i, i64 40
  %i.kg = load ptr, ptr %i.kf, align 8, !noalias !9825, !nonnull !6, !noundef !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val35.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9826)
  %i.kh = load i64, ptr %i.jp, align 8, !alias.scope !9826, !noalias !9829, !noundef !6
  %.not.i.i14.i.i.i41 = icmp ne i64 %i.kh, 0
  %i.ki = load i64, ptr %i.jq, align 8, !alias.scope !9826, !noalias !9829
  %i.kj = icmp ne i64 %i.ki, 0
  %or.cond.i.i15.i.i.i42 = select i1 %.not.i.i14.i.i.i41, i1 %i.kj, i1 false
  br i1 %or.cond.i.i15.i.i.i42, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.kk = load ptr, ptr %i.jr, align 8, !alias.scope !9826, !noalias !9829, !nonnull !6, !noundef !6
  %i.kl = load i64, ptr %i.kk, align 8, !noalias !9831, !noundef !6 ; 10 uses
  %i.km = load i64, ptr %i.js, align 8, !noalias !9825, !noundef !6 ; 2 uses
  %.not.i18.i.i.i43 = icmp ugt i64 %i.kl, %i.km
  br i1 %.not.i18.i.i.i43, label %bb.aq, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit.i", !prof !16

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.kl, i64 noundef %i.km, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46, !noalias !9825
  unreachable

bb.ar:                                            ; preds = %bb.al
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #46, !noalias !9825
  unreachable

bb.as:                                            ; preds = %bb.ao
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #46, !noalias !9825
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit.i": ; preds = %bb.ap
  %i.kn = load ptr, ptr %i.jt, align 8, !noalias !9825, !nonnull !6, !noundef !6 ; 4 uses
  %..i.i.i44 = call i64 @llvm.umin.i64(i64 %i.kc, i64 %i.kl)
  %i.ko = sub i64 %i.kc, %i.kl
  %i.kp = call i32 @memcmp(ptr nonnull %i.kg, ptr nonnull %i.kn, i64 %..i.i.i44), !noalias !9825 ; 2 uses
  %i.kq = sext i32 %i.kp to i64
  %i.kr = icmp eq i32 %i.kp, 0
  %spec.store.select.i.i.i45 = select i1 %i.kr, i64 %i.ko, i64 %i.kq ; 2 uses
  %i.ks = icmp slt i64 %spec.store.select.i.i.i45, 0
  %i.kt = getelementptr inbounds i8, ptr %.sroa.43.1130.i, i64 -8
  %.sroa.01.0.i.i = select i1 %i.ks, ptr %2, ptr %i.kt
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.1128.i
  store i64 %i.jz, ptr %i.ku, align 8, !alias.scope !9817, !noalias !9832
  %spec.store.select.i.i.lobit.i = lshr i64 %spec.store.select.i.i.i45, 63
  %i.kv = add i64 %spec.store.select.i.i.lobit.i, %.sroa.27.1128.i ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.9.1129.i, i64 8
  %.val32.i = load ptr, ptr %i.kw, align 8, !alias.scope !9814, !noalias !9817, !nonnull !6, !align !15, !noundef !6 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9835)
  %i.kx = getelementptr inbounds nuw i8, ptr %.val32.i, i64 80
  %i.ky = load i64, ptr %i.kx, align 8, !alias.scope !9835, !noalias !9838, !noundef !6
  %.not.i.i.i.i36.i = icmp ne i64 %i.ky, 0
  %i.kz = getelementptr inbounds nuw i8, ptr %.val32.i, i64 72
  %i.la = load i64, ptr %i.kz, align 8, !alias.scope !9835, !noalias !9838
  %i.lb = icmp ne i64 %i.la, 0
  %or.cond.i.i.i.i37.i = select i1 %.not.i.i.i.i36.i, i1 %i.lb, i1 false
  %i.lc = ptrtoint ptr %.val32.i to i64
  br i1 %or.cond.i.i.i.i37.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit.i"
  %i.ld = getelementptr inbounds nuw i8, ptr %.val32.i, i64 64
  %i.le = load ptr, ptr %i.ld, align 8, !alias.scope !9835, !noalias !9838, !nonnull !6, !noundef !6
  %i.lf = load i64, ptr %i.le, align 8, !noalias !9840, !noundef !6 ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.val32.i, i64 48
  %i.lh = load i64, ptr %i.lg, align 8, !noalias !9825, !noundef !6 ; 2 uses
  %.not.i.i.i38.i = icmp ugt i64 %i.lf, %i.lh
  br i1 %.not.i.i.i38.i, label %bb.au, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit44.i", !prof !16

bb.au:                                            ; preds = %bb.at
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.lf, i64 noundef %i.lh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46, !noalias !9825
  unreachable

bb.av:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E.exit.i"
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #46, !noalias !9825
  unreachable

end_hunk_13
begin_hunk_14_@_ZN4core5slice4sort6stable9quicksort9quicksort17h7ddf27d5d9d76b2fE:bb.a
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha89621a5d2a9a15cE.exit

bb.ca:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hd6a4eb0e1525301fE.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.27.2.lcssa.i57, i64 noundef %.sroa.15.04751887, i64 noundef %.sroa.15.04751887, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !noalias !9952
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hd6a4eb0e1525301fE.exit
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph620, i64 %.sroa.27.2.lcssa.i57 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.wg = icmp ult i64 %i.vq, 33
  br i1 %i.wg, label %.outer._crit_edge, label %.lr.ph

bb.cb:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @302, ptr %i.a, align 8
  %i.wh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.wh, align 8
  %i.wi = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.wi, align 8
  %i.wj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.wj, align 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.wk, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344) #46
  unreachable

bb.cc:                                            ; preds = %bb.bl
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph620, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph620) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7ddf27d5d9d76b2fE(ptr noalias noundef nonnull align 8 %i.wl, i64 noundef %i.pd, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.iu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.wm = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.wm, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8f22d88c1dd45868E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  %.sroa.0.0.ph135 = phi ptr [ %i.kf, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %0, %bb.a ] ; 22 uses
  %.sroa.15.0.ph134 = phi i64 [ %i.jq, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph133 = phi i32 [ %i.eu, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph132 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ], [ %5, %bb.a ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.0.0.ph135 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph132, null
  %i.e = icmp eq i32 %.sroa.023.0.ph133, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph321

bb.b:                                             ; preds = %bb.al
  %i.f = icmp eq i32 %i.eu, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph321

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit", %bb.al, %bb.a
  %.sroa.0.0.ph.lcssa126 = phi ptr [ %.sroa.0.0.ph135, %bb.al ], [ %0, %bb.a ], [ %i.kf, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ] ; 18 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.al ], [ %1, %bb.a ], [ %i.jq, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit" ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9955)
  call void @llvm.experimental.noalias.scope.decl(metadata !9958)
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.g, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd09660543607871cE.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.i = icmp ult i64 %3, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.k = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.k, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h90a28d57fdb78b76E(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa126, ptr noundef nonnull align 8 %2, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.j
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h90a28d57fdb78b76E(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa126, i64 8
  %.val12.i.i = load ptr, ptr %i.q, align 8, !alias.scope !9955, !noalias !9958, !nonnull !6, !align !15, !noundef !6
  %.val13.i.i = load ptr, ptr %.sroa.0.0.ph.lcssa126, align 8, !alias.scope !9955, !noalias !9958
  %i.r = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val12.i.i, ptr %.val13.i.i), !noalias !9955 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa126, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa126, i64 16
  %.val10.i.i = load ptr, ptr %i.s, align 8, !alias.scope !9955, !noalias !9958, !nonnull !6, !align !15, !noundef !6
  %.val11.i.i = load ptr, ptr %i.t, align 8, !alias.scope !9955, !noalias !9958
  %i.u = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val10.i.i, ptr %.val11.i.i), !noalias !9955 ; 2 uses
  %i.v = zext i1 %i.r to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.v ; 3 uses
  %i.x = xor i1 %i.r, true
  %i.y = zext i1 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.u, i64 3, i64 2
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.aa ; 4 uses
  %i.ac = select i1 %i.u, i64 2, i64 3
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.ac ; 3 uses
  %.val8.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !9955, !noalias !9958, !nonnull !6, !align !15, !noundef !6
  %.val9.i.i = load ptr, ptr %i.w, align 8, !alias.scope !9955, !noalias !9958
  %i.ae = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val8.i.i, ptr %.val9.i.i), !noalias !9955 ; 3 uses
  %.val6.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !9955, !noalias !9958, !nonnull !6, !align !15, !noundef !6
  %.val7.i.i = load ptr, ptr %i.z, align 8, !alias.scope !9955, !noalias !9958
  %i.af = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val6.i.i, ptr %.val7.i.i), !noalias !9955 ; 3 uses
  %i.ag = select i1 %i.ae, ptr %i.ab, ptr %i.w, !unpredictable !6
  %i.ah = select i1 %i.af, ptr %i.z, ptr %i.ad, !unpredictable !6
  %i.ai = select i1 %i.af, ptr %i.ab, ptr %i.z, !unpredictable !6
  %i.aj = select i1 %i.ae, ptr %i.w, ptr %i.ai, !unpredictable !6 ; 3 uses
  %i.ak = select i1 %i.ae, ptr %i.z, ptr %i.ab, !unpredictable !6
  %i.al = select i1 %i.af, ptr %i.ad, ptr %i.ak, !unpredictable !6 ; 3 uses
  %.val.i.i = load ptr, ptr %i.al, align 8, !alias.scope !9955, !noalias !9958, !nonnull !6, !align !15, !noundef !6
  %.val5.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !9955, !noalias !9958
  %i.am = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val.i.i, ptr %.val5.i.i), !noalias !9955 ; 2 uses
  %i.an = select i1 %i.am, ptr %i.al, ptr %i.aj, !unpredictable !6
  %i.ao = select i1 %i.am, ptr %i.aj, ptr %i.al, !unpredictable !6
  %i.ap = load i64, ptr %i.ag, align 8, !alias.scope !9955, !noalias !9958
  store i64 %i.ap, ptr %2, align 8, !alias.scope !9958, !noalias !9955
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.an, align 8, !alias.scope !9955, !noalias !9958
  store i64 %i.ar, ptr %i.aq, align 8, !alias.scope !9958, !noalias !9955
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i64, ptr %i.ao, align 8, !alias.scope !9955, !noalias !9958
  store i64 %i.at, ptr %i.as, align 8, !alias.scope !9958, !noalias !9955
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = load i64, ptr %i.ah, align 8, !alias.scope !9955, !noalias !9958
  store i64 %i.av, ptr %i.au, align 8, !alias.scope !9958, !noalias !9955
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.j ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val12.i29.i = load ptr, ptr %i.ay, align 8, !alias.scope !9955, !noalias !9958, !nonnull !6, !align !15, !noundef !6
  %.val13.i30.i = load ptr, ptr %i.aw, align 8, !alias.scope !9955, !noalias !9958
  %i.az = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val12.i29.i, ptr %.val13.i30.i), !noalias !9955 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val10.i31.i = load ptr, ptr %i.ba, align 8, !alias.scope !9955, !noalias !9958, !nonnull !6, !align !15, !noundef !6
  %.val11.i32.i = load ptr, ptr %i.bb, align 8, !alias.scope !9955, !noalias !9958
  %i.bc = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val10.i31.i, ptr %.val11.i32.i), !noalias !9955 ; 2 uses
  %i.bd = zext i1 %i.az to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bd ; 3 uses
  %i.bf = xor i1 %i.az, true
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg ; 4 uses
  %i.bi = select i1 %i.bc, i64 3, i64 2
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi ; 4 uses
  %i.bk = select i1 %i.bc, i64 2, i64 3
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bk ; 3 uses
  %.val8.i33.i = load ptr, ptr %i.bj, align 8, !alias.scope !9955, !noalias !9958, !nonnull !6, !align !15, !noundef !6
  %.val9.i34.i = load ptr, ptr %i.be, align 8, !alias.scope !9955, !noalias !9958
  %i.bm = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val8.i33.i, ptr %.val9.i34.i), !noalias !9955 ; 3 uses
  %.val6.i35.i = load ptr, ptr %i.bl, align 8, !alias.scope !9955, !noalias !9958, !nonnull !6, !align !15, !noundef !6
  %.val7.i36.i = load ptr, ptr %i.bh, align 8, !alias.scope !9955, !noalias !9958
  %i.bn = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val6.i35.i, ptr %.val7.i36.i), !noalias !9955 ; 3 uses
  %i.bo = select i1 %i.bm, ptr %i.bj, ptr %i.be, !unpredictable !6
  %i.bp = select i1 %i.bn, ptr %i.bh, ptr %i.bl, !unpredictable !6
  %i.bq = select i1 %i.bn, ptr %i.bj, ptr %i.bh, !unpredictable !6
  %i.br = select i1 %i.bm, ptr %i.be, ptr %i.bq, !unpredictable !6 ; 3 uses
  %i.bs = select i1 %i.bm, ptr %i.bh, ptr %i.bj, !unpredictable !6
  %i.bt = select i1 %i.bn, ptr %i.bl, ptr %i.bs, !unpredictable !6 ; 3 uses
  %.val.i37.i = load ptr, ptr %i.bt, align 8, !alias.scope !9955, !noalias !9958, !nonnull !6, !align !15, !noundef !6
  %.val5.i38.i = load ptr, ptr %i.br, align 8, !alias.scope !9955, !noalias !9958
  %i.bu = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val.i37.i, ptr %.val5.i38.i), !noalias !9955 ; 2 uses
  %i.bv = select i1 %i.bu, ptr %i.bt, ptr %i.br, !unpredictable !6
  %i.bw = select i1 %i.bu, ptr %i.br, ptr %i.bt, !unpredictable !6
  %i.bx = load i64, ptr %i.bo, align 8, !alias.scope !9955, !noalias !9958
  store i64 %i.bx, ptr %i.ax, align 8, !alias.scope !9958, !noalias !9955
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bz = load i64, ptr %i.bv, align 8, !alias.scope !9955, !noalias !9958
  store i64 %i.bz, ptr %i.by, align 8, !alias.scope !9958, !noalias !9955
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.cb = load i64, ptr %i.bw, align 8, !alias.scope !9955, !noalias !9958
  store i64 %i.cb, ptr %i.ca, align 8, !alias.scope !9958, !noalias !9955
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.cd = load i64, ptr %i.bp, align 8, !alias.scope !9955, !noalias !9958
  store i64 %i.cd, ptr %i.cc, align 8, !alias.scope !9958, !noalias !9955
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ce = load i64, ptr %.sroa.0.0.ph.lcssa126, align 8, !alias.scope !9955, !noalias !9958
  store i64 %i.ce, ptr %2, align 8, !alias.scope !9958, !noalias !9955
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.j
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.ch = load i64, ptr %i.cf, align 8, !alias.scope !9955, !noalias !9958
  store i64 %i.ch, ptr %i.cg, align 8, !alias.scope !9958, !noalias !9955
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 6 uses
  %i.ci = sub nsw i64 %.sroa.15.0.lcssa, %i.j     ; 2 uses
  %i.cj = icmp samesign ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.cj, label %.noexc45.preheader.i, label %.loopexit4.i

.loopexit4.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit.i, %bb.j
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.j
  %i.cl = getelementptr [8 x i8], ptr %2, i64 %i.j ; 6 uses
  %i.cm = icmp ult i64 %.sroa.0.0.i, %i.ci
  br i1 %i.cm, label %.noexc45.preheader.1.i, label %.loopexit4.1.i

.noexc45.preheader.1.i:                           ; preds = %.loopexit4.i
  %.sroa.08.111.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.noexc45.1.i

.noexc45.1.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit.1.i, %.noexc45.preheader.1.i
  %.sroa.08.113.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit.1.i ], [ %.sroa.08.111.1.i, %.noexc45.preheader.1.i ] ; 3 uses
  %.sroa.08.012.1.i = phi i64 [ %.sroa.08.113.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit.1.i ], [ %.sroa.0.0.i, %.noexc45.preheader.1.i ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.sroa.08.012.1.i
  %.idx351 = shl nuw nsw i64 %.sroa.08.012.1.i, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx351 ; 3 uses
  %i.cp = load i64, ptr %i.cn, align 8, !alias.scope !9955, !noalias !9958 ; 4 uses
  store i64 %i.cp, ptr %i.co, align 8, !alias.scope !9958, !noalias !9955
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -8 ; 3 uses
  %.val9.i41.cast.1.i = inttoptr i64 %i.cp to ptr ; 2 uses
  %.val10.i42.1.i = load ptr, ptr %i.cq, align 8, !alias.scope !9958, !noalias !9955
  %i.cr = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val9.i41.cast.1.i, ptr %.val10.i42.1.i), !noalias !9955
  br i1 %i.cr, label %.preheader.1.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.noexc45.1.i
  %i.cs = load i64, ptr %i.cq, align 8, !alias.scope !9958, !noalias !9955
  store i64 %i.cs, ptr %i.co, align 8, !alias.scope !9958, !noalias !9955
  %i.ct = icmp eq i64 %.sroa.08.012.1.i, 1
  br i1 %i.ct, label %._crit_edge332, label %.lr.ph331

.preheader.1.i:                                   ; preds = %bb.k
  %i.cu = load i64, ptr %i.cw, align 8, !alias.scope !9958, !noalias !9955
  store i64 %i.cu, ptr %.sroa.0.0.i43.1.i330, align 8, !alias.scope !9958, !noalias !9955
  %i.cv = icmp eq ptr %i.cw, %i.cl
  br i1 %i.cv, label %._crit_edge332, label %.lr.ph331

.lr.ph331:                                        ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i43.1.i330 = phi ptr [ %i.cw, %.preheader.1.i ], [ %i.cq, %.preheader.1.i.preheader ] ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.i43.1.i330, i64 -8 ; 4 uses
  %.val8.i44.1.i = load ptr, ptr %i.cw, align 8, !alias.scope !9958, !noalias !9955
  %i.cx = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val9.i41.cast.1.i, ptr %.val8.i44.1.i)
          to label %bb.k unwind label %.loopexit.split-lp22.i, !noalias !9955

bb.k:                                             ; preds = %.lr.ph331
  br i1 %i.cx, label %.preheader.1.i, label %._crit_edge332

._crit_edge332:                                   ; preds = %.preheader.1.i, %bb.k, %.preheader.1.i.preheader
  %.sroa.0.0.i43.lcssa.1.i = phi ptr [ %i.cl, %.preheader.1.i.preheader ], [ %i.cl, %.preheader.1.i ], [ %.sroa.0.0.i43.1.i330, %bb.k ]
  store i64 %i.cp, ptr %.sroa.0.0.i43.lcssa.1.i, align 8, !alias.scope !9958, !noalias !9960
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit.1.i: ; preds = %._crit_edge332, %.noexc45.1.i
  %i.cy = icmp ult i64 %.sroa.08.113.1.i, %i.ci   ; 2 uses
  %i.cz = zext i1 %i.cy to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.113.1.i, %i.cz
  br i1 %i.cy, label %.noexc45.1.i, label %.loopexit4.1.i

.loopexit4.1.i:                                   ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit.1.i, %.loopexit4.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9965)
  %i.da = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.da
  %i.dd = getelementptr i8, ptr %i.cl, i64 -8
  br label %.lr.ph.i.i

.noexc45.preheader.i:                             ; preds = %bb.j
  %.sroa.08.111.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.noexc45.i

._crit_edge.i.i:                                  ; preds = %.noexc39.i
  %i.de = getelementptr i8, ptr %i.dv, i64 8      ; 2 uses
  %i.df = getelementptr i8, ptr %i.du, i64 8
  %i.dg = and i64 %.sroa.15.0.lcssa, 1
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.m, label %bb.l

.lr.ph.i.i:                                       ; preds = %.noexc39.i, %.loopexit4.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.dp, %.noexc39.i ], [ %2, %.loopexit4.1.i ] ; 3 uses
  %.sroa.06.09.i.i = phi ptr [ %i.dr, %.noexc39.i ], [ %i.cl, %.loopexit4.1.i ] ; 3 uses
  %.sroa.010.08.i.i = phi ptr [ %i.dm, %.noexc39.i ], [ %.sroa.0.0.ph.lcssa126, %.loopexit4.1.i ] ; 2 uses
  %.sroa.013.07.i.i = phi ptr [ %i.dv, %.noexc39.i ], [ %i.dd, %.loopexit4.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.du, %.noexc39.i ], [ %i.dc, %.loopexit4.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dw, %.noexc39.i ], [ %i.db, %.loopexit4.1.i ] ; 2 uses
  %.sroa.018.04.i.i = phi i64 [ %i.di, %.noexc39.i ], [ 0, %.loopexit4.1.i ]
  %i.di = add nuw nsw i64 %.sroa.018.04.i.i, 1    ; 2 uses
  %.sroa.06.0.val.i.i = load ptr, ptr %.sroa.06.09.i.i, align 8, !alias.scope !9968, !noalias !9955, !nonnull !6, !align !15, !noundef !6
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.010.i.i, align 8, !alias.scope !9968, !noalias !9955
  %i.dj = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.sroa.06.0.val.i.i, ptr %.sroa.0.0.val.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !9955 ; 3 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %..i23.i.i = select i1 %i.dj, ptr %.sroa.06.09.i.i, ptr %.sroa.0.010.i.i
  %i.dk = load i64, ptr %..i23.i.i, align 8, !alias.scope !9968, !noalias !9969
  store i64 %i.dk, ptr %.sroa.010.08.i.i, align 8, !alias.scope !9955, !noalias !9973
  %.sroa.015.0.val.i.i = load ptr, ptr %.sroa.015.06.i.i, align 8, !alias.scope !9968, !noalias !9955, !nonnull !6, !align !15, !noundef !6
  %.sroa.013.0.val.i.i = load ptr, ptr %.sroa.013.07.i.i, align 8, !alias.scope !9968, !noalias !9955
  %i.dl = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.sroa.015.0.val.i.i, ptr %.sroa.013.0.val.i.i)
          to label %.noexc39.i unwind label %.loopexit.i, !noalias !9955 ; 3 uses

.noexc39.i:                                       ; preds = %.noexc.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.010.08.i.i, i64 8 ; 2 uses
  %i.dn = xor i1 %i.dj, true
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.010.i.i, i64 %i.do ; 5 uses
  %i.dq = zext i1 %i.dj to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.09.i.i, i64 %i.dq ; 4 uses
  %..i.i.i = select i1 %i.dl, ptr %.sroa.013.07.i.i, ptr %.sroa.015.06.i.i
  %i.ds = xor i1 %i.dl, true
  %i.dt = load i64, ptr %..i.i.i, align 8, !alias.scope !9968, !noalias !9974
  store i64 %i.dt, ptr %.sroa.017.05.i.i, align 8, !alias.scope !9955, !noalias !9978
  %.neg.i.i.i = sext i1 %i.ds to i64
  %i.du = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.dl to i64
  %i.dv = getelementptr [8 x i8], ptr %.sroa.013.07.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.017.05.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.di, %i.j
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.dx = icmp ult ptr %i.dp, %i.de               ; 3 uses
  %.sroa.0.0..sroa.06.0.i.i = select i1 %i.dx, ptr %i.dp, ptr %i.dr
  %i.dy = load i64, ptr %.sroa.0.0..sroa.06.0.i.i, align 8, !alias.scope !9968, !noalias !9955
  store i64 %i.dy, ptr %i.dm, align 8, !alias.scope !9955, !noalias !9968
  %i.dz = zext i1 %i.dx to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dz
  %i.eb = xor i1 %i.dx, true
  %i.ec = zext i1 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ec
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.sroa.06.1.i.i = phi ptr [ %i.dr, %._crit_edge.i.i ], [ %i.ed, %bb.l ]
  %.sroa.0.1.i.i = phi ptr [ %i.dp, %._crit_edge.i.i ], [ %i.ea, %bb.l ]
  %i.ee = icmp ne ptr %.sroa.0.1.i.i, %i.de
  %i.ef = icmp ne ptr %.sroa.06.1.i.i, %i.df
  %or.cond.i.i = select i1 %i.ee, i1 true, i1 %i.ef, !prof !16
  br i1 %or.cond.i.i, label %bb.n, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd09660543607871cE.exit, !prof !16

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #46
          to label %.noexc40.i unwind label %.loopexit.split-lp.i, !noalias !9955

.noexc40.i:                                       ; preds = %bb.n
  unreachable

.loopexit.i:                                      ; preds = %.noexc.i, %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i:                             ; preds = %bb.n
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.eg = shl nuw nsw i64 %.sroa.15.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa126, ptr nonnull align 8 %2, i64 %i.eg, i1 false), !alias.scope !9979, !noalias !9980
  br label %.body.i

.body.i:                                          ; preds = %bb.q, %bb.o
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.o ], [ %lpad.phi27.i, %bb.q ]
  resume { ptr, i32 } %.pn.i

.noexc45.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit.i, %.noexc45.preheader.i
  %.sroa.08.113.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit.i ], [ %.sroa.08.111.i, %.noexc45.preheader.i ] ; 3 uses
  %.sroa.08.012.i = phi i64 [ %.sroa.08.113.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit.i ], [ %.sroa.0.0.i, %.noexc45.preheader.i ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa126, i64 %.sroa.08.012.i
  %.idx = shl nuw nsw i64 %.sroa.08.012.i, 3
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.ej = load i64, ptr %i.eh, align 8, !alias.scope !9955, !noalias !9958 ; 4 uses
  store i64 %i.ej, ptr %i.ei, align 8, !alias.scope !9958, !noalias !9955
  %i.ek = getelementptr inbounds i8, ptr %i.ei, i64 -8 ; 3 uses
  %.val9.i41.cast.i = inttoptr i64 %i.ej to ptr   ; 2 uses
  %.val10.i42.i = load ptr, ptr %i.ek, align 8, !alias.scope !9958, !noalias !9955
  %i.el = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val9.i41.cast.i, ptr %.val10.i42.i), !noalias !9955
  br i1 %i.el, label %.preheader.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit.i

.preheader.i.preheader:                           ; preds = %.noexc45.i
  %i.em = load i64, ptr %i.ek, align 8, !alias.scope !9958, !noalias !9955
  store i64 %i.em, ptr %i.ei, align 8, !alias.scope !9958, !noalias !9955
  %i.en = icmp eq i64 %.sroa.08.012.i, 1
  br i1 %i.en, label %._crit_edge327, label %.lr.ph326

.preheader.i:                                     ; preds = %bb.p
  %i.eo = load i64, ptr %i.eq, align 8, !alias.scope !9958, !noalias !9955
  store i64 %i.eo, ptr %.sroa.0.0.i43.i325, align 8, !alias.scope !9958, !noalias !9955
  %i.ep = icmp eq ptr %i.eq, %2
  br i1 %i.ep, label %._crit_edge327, label %.lr.ph326

.lr.ph326:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i43.i325 = phi ptr [ %i.eq, %.preheader.i ], [ %i.ek, %.preheader.i.preheader ] ; 4 uses
  %i.eq = getelementptr inbounds i8, ptr %.sroa.0.0.i43.i325, i64 -8 ; 4 uses
  %.val8.i44.i = load ptr, ptr %i.eq, align 8, !alias.scope !9958, !noalias !9955
  %i.er = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val9.i41.cast.i, ptr %.val8.i44.i)
          to label %bb.p unwind label %.loopexit21.i, !noalias !9955

bb.p:                                             ; preds = %.lr.ph326
  br i1 %i.er, label %.preheader.i, label %._crit_edge327

._crit_edge327:                                   ; preds = %.preheader.i, %bb.p, %.preheader.i.preheader
  %.sroa.0.0.i43.lcssa.i = phi ptr [ %2, %.preheader.i.preheader ], [ %2, %.preheader.i ], [ %.sroa.0.0.i43.i325, %bb.p ]
  store i64 %i.ej, ptr %.sroa.0.0.i43.lcssa.i, align 8, !alias.scope !9958, !noalias !9960
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit.i

.loopexit21.i:                                    ; preds = %.lr.ph326
  %lpad.loopexit25.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp22.i:                           ; preds = %.lr.ph331
  %lpad.loopexit.split-lp26.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp22.i, %.loopexit21.i
  %.lcssa19.i = phi i64 [ %i.ej, %.loopexit21.i ], [ %i.cp, %.loopexit.split-lp22.i ]
  %.sroa.0.0.i43.lcssa18.i = phi ptr [ %.sroa.0.0.i43.i325, %.loopexit21.i ], [ %.sroa.0.0.i43.1.i330, %.loopexit.split-lp22.i ]
  %lpad.phi27.i = phi { ptr, i32 } [ %lpad.loopexit25.i, %.loopexit21.i ], [ %lpad.loopexit.split-lp26.i, %.loopexit.split-lp22.i ]
  store i64 %.lcssa19.i, ptr %.sroa.0.0.i43.lcssa18.i, align 8, !alias.scope !9958, !noalias !9985
  br label %.body.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h4beb4808861efd58E.exit.i: ; preds = %._crit_edge327, %.noexc45.i
  %i.es = icmp ult i64 %.sroa.08.113.i, %i.j      ; 2 uses
  %i.et = zext i1 %i.es to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.113.i, %i.et
  br i1 %i.es, label %.noexc45.i, label %.loopexit4.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.15.0128.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.15.0.ph134, %.lr.ph ]
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hb0537f2e75eeb8deE(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph135, i64 noundef %.sroa.15.0128.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd09660543607871cE.exit

.lr.ph321:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.023.0127320 = phi i32 [ %i.eu, %bb.b ], [ %.sroa.023.0.ph133, %.lr.ph ]
  %.sroa.15.0128319 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.15.0.ph134, %.lr.ph ] ; 19 uses
  %i.eu = add i32 %.sroa.023.0127320, -1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9990)
  %i.ev = lshr i64 %.sroa.15.0128319, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ev, 5
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph135, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.ev, 56
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph135, i64 %.idx2.i ; 3 uses
  %i.ey = icmp ult i64 %.sroa.15.0128319, 64
  br i1 %i.ey, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph321
  %i.ez = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h9f70431d2541b6d2E(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph135, ptr noundef readonly %i.ew, ptr noundef readonly %i.ex, i64 noundef %i.ev)
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph321
  %.val6.i = load ptr, ptr %.sroa.0.0.ph135, align 8, !alias.scope !9990, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %.val7.i = load ptr, ptr %i.ew, align 8, !alias.scope !9990 ; 2 uses
  %i.fa = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val6.i, ptr %.val7.i), !noalias !9990 ; 2 uses
  %.val5.i = load ptr, ptr %i.ex, align 8, !alias.scope !9990 ; 2 uses
  %i.fb = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val6.i, ptr %.val5.i), !noalias !9990
  %i.fc = xor i1 %i.fa, %i.fb
  br i1 %i.fc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fd = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr %.val7.i, ptr %.val5.i), !noalias !9990
  %i.fe = xor i1 %i.fa, %i.fd
  %..i.i = select i1 %i.fe, ptr %i.ex, ptr %i.ew
  br label %bb.u

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd09660543607871cE.exit: ; preds = %.outer._crit_edge.thread, %bb.m, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i.sink.i = phi ptr [ %i.ez, %bb.r ], [ %.sroa.0.0.ph135, %bb.s ], [ %..i.i, %bb.t ]
  %i.ff = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fg = sub nuw i64 %i.ff, %i.d                 ; 2 uses
  %.sroa.0.0.i36 = lshr exact i64 %i.fg, 3        ; 3 uses
  %i.fh = icmp ult i64 %.sroa.0.0.i36, %.sroa.15.0128319
  call void @llvm.assume(i1 %i.fh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph135, i64 %i.fg ; 5 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  store ptr %i.fj, ptr %i.b, align 8
  br i1 %.not, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.026.0.val = load ptr, ptr %.sroa.026.0.ph132, align 8, !nonnull !6, !align !15, !noundef !6
  %i.fk = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.sroa.026.0.val, ptr nonnull %i.fj)
  br i1 %i.fk, label %.critedge, label %.critedge35

.critedge:                                        ; preds = %bb.u, %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !9993)
  call void @llvm.experimental.noalias.scope.decl(metadata !9996)
  %.not76 = icmp ult i64 %3, %.sroa.15.0128319
  br i1 %.not76, label %bb.x, label %bb.w, !prof !16

bb.w:                                             ; preds = %.critedge
  %i.fl = getelementptr [8 x i8], ptr %2, i64 %.sroa.15.0128319 ; 3 uses
  br label %bb.y

bb.x:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.aa, %bb.w
  %.sroa.27.0.i = phi i64 [ 0, %bb.w ], [ %.sroa.27.2.lcssa.i, %bb.aa ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph135, %bb.w ], [ %i.hb, %bb.aa ] ; 3 uses
  %.sroa.43.0.i = phi ptr [ %i.fl, %bb.w ], [ %i.gy, %bb.aa ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i36, %bb.w ], [ %.sroa.15.0128319, %bb.aa ] ; 3 uses
  %i.fm = call i64 @llvm.usub.sat.i64(i64 %.sroa.02.0.i, i64 3)
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph135, i64 %i.fm ; 2 uses
  %i.fo = icmp ult ptr %.sroa.9.0.i, %i.fn
  br i1 %i.fo, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.y
  %.val35.i = load ptr, ptr %i.fi, align 8, !alias.scope !9993, !noalias !9996 ; 4 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i
  %.sroa.43.131.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.gi, %bb.z ] ; 4 uses
  %.sroa.9.130.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.gm, %bb.z ] ; 5 uses
  %.sroa.27.129.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.gl, %bb.z ] ; 2 uses
  %.val34.i = load ptr, ptr %.sroa.9.130.i, align 8, !alias.scope !9993, !noalias !9996, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.fp = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val34.i, ptr %.val35.i), !noalias !9998 ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -8
  %.sroa.01.0.i.i = select i1 %i.fp, ptr %2, ptr %i.fq
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.129.i
  %.cast = ptrtoint ptr %.val34.i to i64
  store i64 %.cast, ptr %i.fr, align 8, !alias.scope !9996, !noalias !9999
  %i.fs = zext i1 %i.fp to i64
  %i.ft = add i64 %.sroa.27.129.i, %i.fs          ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 8
  %.val32.i = load ptr, ptr %i.fu, align 8, !alias.scope !9993, !noalias !9996, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.fv = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val32.i, ptr %.val35.i), !noalias !9998 ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -16
  %.sroa.01.0.i36.i = select i1 %i.fv, ptr %2, ptr %i.fw
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i36.i, i64 %i.ft
  %.cast77 = ptrtoint ptr %.val32.i to i64
  store i64 %.cast77, ptr %i.fx, align 8, !alias.scope !9996, !noalias !10002
  %i.fy = zext i1 %i.fv to i64
  %i.fz = add i64 %i.ft, %i.fy                    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 16
  %.val30.i = load ptr, ptr %i.ga, align 8, !alias.scope !9993, !noalias !9996, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.gb = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val30.i, ptr %.val35.i), !noalias !9998 ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -24
  %.sroa.01.0.i37.i = select i1 %i.gb, ptr %2, ptr %i.gc
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i37.i, i64 %i.fz
  %.cast78 = ptrtoint ptr %.val30.i to i64
  store i64 %.cast78, ptr %i.gd, align 8, !alias.scope !9996, !noalias !10005
  %i.ge = zext i1 %i.gb to i64
  %i.gf = add i64 %i.fz, %i.ge                    ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 24
  %.val28.i = load ptr, ptr %i.gg, align 8, !alias.scope !9993, !noalias !9996, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.gh = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val28.i, ptr %.val35.i), !noalias !9998 ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -32 ; 3 uses
  %.sroa.01.0.i38.i = select i1 %i.gh, ptr %2, ptr %i.gi
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i38.i, i64 %i.gf
  %.cast79 = ptrtoint ptr %.val28.i to i64
  store i64 %.cast79, ptr %i.gj, align 8, !alias.scope !9996, !noalias !10008
  %i.gk = zext i1 %i.gh to i64
  %i.gl = add i64 %i.gf, %i.gk                    ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 32 ; 3 uses
  %i.gn = icmp ult ptr %i.gm, %i.fn
  br i1 %i.gn, label %bb.z, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.y
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.y ], [ %i.gl, %bb.z ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.y ], [ %i.gm, %bb.z ] ; 3 uses
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.y ], [ %i.gi, %bb.z ] ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph135, i64 %.sroa.02.0.i ; 2 uses
  %i.gp = icmp ult ptr %.sroa.9.1.lcssa.i, %i.go
  br i1 %i.gp, label %.lr.ph38.i.preheader, label %._crit_edge39.i

.lr.ph38.i.preheader:                             ; preds = %._crit_edge.i
  %.val27.i = load ptr, ptr %i.fi, align 8, !alias.scope !9993, !noalias !9996
  br label %.lr.ph38.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.gv, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.gw, %.lr.ph38.i ] ; 2 uses
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.gs, %.lr.ph38.i ]
  %i.gq = icmp eq i64 %.sroa.02.0.i, %.sroa.15.0128319
  br i1 %i.gq, label %bb.ab, label %bb.aa

.lr.ph38.i:                                       ; preds = %.lr.ph38.i.preheader, %.lr.ph38.i
  %.sroa.43.236.i = phi ptr [ %i.gs, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %.lr.ph38.i.preheader ]
  %.sroa.9.235.i = phi ptr [ %i.gw, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %.lr.ph38.i.preheader ] ; 2 uses
  %.sroa.27.234.i = phi i64 [ %i.gv, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %.lr.ph38.i.preheader ] ; 2 uses
  %.val.i = load ptr, ptr %.sroa.9.235.i, align 8, !alias.scope !9993, !noalias !9996, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.gr = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val.i, ptr %.val27.i), !noalias !9998 ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.sroa.43.236.i, i64 -8 ; 3 uses
  %.sroa.01.0.i39.i = select i1 %i.gr, ptr %2, ptr %i.gs
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i39.i, i64 %.sroa.27.234.i
  %.cast80 = ptrtoint ptr %.val.i to i64
  store i64 %.cast80, ptr %i.gt, align 8, !alias.scope !9996, !noalias !10011
  %i.gu = zext i1 %i.gr to i64
  %i.gv = add i64 %.sroa.27.234.i, %i.gu          ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.9.235.i, i64 8 ; 3 uses
  %i.gx = icmp ult ptr %i.gw, %i.go
  br i1 %i.gx, label %.lr.ph38.i, label %._crit_edge39.i

bb.aa:                                            ; preds = %._crit_edge39.i
  %i.gy = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %.sroa.27.2.lcssa.i
  %i.ha = load i64, ptr %.sroa.9.2.lcssa.i, align 8, !alias.scope !9993, !noalias !10014
  store i64 %i.ha, ptr %i.gz, align 8, !alias.scope !9996, !noalias !10017
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.y

bb.ab:                                            ; preds = %._crit_edge39.i
  %i.hc = shl i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph135, ptr nonnull align 8 %2, i64 %i.hc, i1 false), !alias.scope !9998
  %i.hd = sub i64 %.sroa.15.0128319, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.15.0128319, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h85235d8f4ecf4faeE.exit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.ab
  %i.he = getelementptr [8 x i8], ptr %.sroa.0.0.ph135, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check338 = icmp ult i64 %i.hd, 4
  br i1 %min.iters.check338, label %scalar.ph337.preheader, label %vector.ph339

vector.ph339:                                     ; preds = %.lr.ph45.i
  %n.vec340 = and i64 %i.hd, -4                   ; 3 uses
  br label %vector.body341

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next347, %vector.body341 ] ; 3 uses
  %i.hf = xor i64 %index342, -1
end_hunk_14
begin_hunk_15_@"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h86f9f1a5ded59713E":bb.a
  %.sroa.7.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10616 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10616 ; 2 uses
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10616 ; 2 uses
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.7.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10616 ; 2 uses
  %.sroa.726.0.copyload.i.i = load ptr, ptr %.sink63.i.sroa.gep.i.i, align 8, !noalias !10616 ; 3 uses
  %.sroa.827.0.copyload.i.i = load i64, ptr %.sink62.i.sroa.gep.i.i, align 8, !noalias !10616
  %.sroa.928.0.copyload.i.i = load ptr, ptr %.sink63.i.sroa.gep179.i.i, align 8, !noalias !10616 ; 3 uses
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sink62.i.sroa.gep181.i.i, align 8, !noalias !10616 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10559
  %.not.i.i = icmp eq i64 %.sroa.023.0.copyload.i.i, -9223372036854775808
  br i1 %.not.i.i, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.726.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.928.0.copyload.i.i) ]
  %i.bd = load ptr, ptr %.sroa.726.0.copyload.i.i, align 8, !noalias !10617, !noundef !6 ; 2 uses
  %.not.i278.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i278.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %.sroa.887.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.887.sroa.6.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.887.sroa.7.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.887.sroa.8.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.887.sroa.9.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.890.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.sroa.993.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %.sroa.1199.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.ak

._crit_edge.i.i:                                  ; preds = %bb.bm, %bb.v
  %.sroa.22.0.lcssa.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %bb.v ], [ %.sroa.1199.0.copyload101.i.i, %bb.bm ]
  %.sroa.18.0.lcssa.i.i = phi ptr [ %.sroa.928.0.copyload.i.i, %bb.v ], [ %.sroa.1096.1.i.i, %bb.bm ] ; 3 uses
  %.sroa.12.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.8.0.copyload.i.i, %bb.v ], [ %.sroa.887.sroa.9.1.i.i, %bb.bm ]
  %.sroa.11.0.lcssa.i.i = phi ptr [ %.sroa.7.sroa.7.0.copyload.i.i, %bb.v ], [ %.sroa.887.sroa.8.1.i.i, %bb.bm ] ; 5 uses
  %.sroa.913.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.6.0.copyload.i.i, %bb.v ], [ %.sroa.887.sroa.7.1.i.i, %bb.bm ] ; 5 uses
  %.sroa.9.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %bb.v ], [ %.sroa.887.sroa.6.1.i.i, %bb.bm ]
  %.sroa.8.0.lcssa.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %bb.v ], [ %.sroa.887.sroa.0.1.i.i, %bb.bm ] ; 5 uses
  %.sroa.03.0.lcssa.i.i = phi i64 [ %.sroa.023.0.copyload.i.i, %bb.v ], [ %.sroa.084.0.i.i, %bb.bm ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.bh = load ptr, ptr %.sroa.6.0.copyload, align 8, !noalias !10620, !noundef !6 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8 ; 2 uses
  %.not.i29.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i29.i.i, label %bb.w, label %bb.y, !prof !238

bb.w:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @418) #46
          to label %bb.x unwind label %bb.ag, !noalias !10620

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10623)
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !10623, !noalias !10620, !noundef !6 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !10626
  %i.bk = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !10626 ; 14 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.z, label %bb.ab, !prof !238

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 640) #46
          to label %.noexc.i.i.i.i unwind label %bb.aa, !noalias !10626

.noexc.i.i.i.i:                                   ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.y
  store ptr null, ptr %i.bk, align 8, !noalias !10626
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 538 ; 2 uses
  store i16 0, ptr %i.bn, align 2, !noalias !10626
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 544
  store ptr %i.bh, ptr %i.bo, align 8, !noalias !10626
  %i.bp = add i64 %i.bj, 1
  store ptr %i.bk, ptr %i.bh, align 8, !noalias !10627
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 536
  store i16 0, ptr %i.bq, align 8, !noalias !10634
  store ptr %i.bk, ptr %.sroa.6.0.copyload, align 8, !alias.scope !10623, !noalias !10620
  store i64 %i.bp, ptr %i.bi, align 8, !alias.scope !10623, !noalias !10620
  %i.br = icmp eq i64 %.sroa.22.0.lcssa.i.i, %i.bj
  br i1 %i.br, label %bb.bn, label %.invoke.i.i.i.i, !prof !7

.invoke.i.i.i.i:                                  ; preds = %bb.ab
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @420, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @421) #46
          to label %.cont.i.i.i.i unwind label %bb.ac, !noalias !10635

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ac:                                            ; preds = %.invoke.i.i.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = icmp eq i64 %.sroa.913.0.lcssa.i.i, 0
  br i1 %i.bt, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.lcssa.i.i) ]
  %i.bu = shl nuw i64 %.sroa.913.0.lcssa.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.lcssa.i.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !10635
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bv = icmp eq i64 %.sroa.03.0.lcssa.i.i, 0
  br i1 %i.bv, label %.body, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i, i64 noundef %.sroa.03.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10639
  br label %.body

bb.ag:                                            ; preds = %bb.w
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = icmp eq i64 %.sroa.03.0.lcssa.i.i, 0
  br i1 %i.bx, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i, i64 noundef %.sroa.03.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10642
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.by = icmp eq i64 %.sroa.913.0.lcssa.i.i, 0
  br i1 %i.by, label %.body, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.lcssa.i.i) ]
  %i.bz = shl nuw i64 %.sroa.913.0.lcssa.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.lcssa.i.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !10620
  br label %.body

bb.ak:                                            ; preds = %bb.bm, %.lr.ph.i.i
  %i.ca = phi ptr [ %i.bd, %.lr.ph.i.i ], [ %i.ja, %bb.bm ] ; 12 uses
  %.sroa.03.0288.i.i = phi i64 [ %.sroa.023.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.084.0.i.i, %bb.bm ] ; 7 uses
  %.sroa.8.0287.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.0.1.i.i, %bb.bm ] ; 7 uses
  %.sroa.9.0286.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.6.1.i.i, %bb.bm ] ; 5 uses
  %.sroa.913.0285.i.i = phi i64 [ %.sroa.7.sroa.6.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.7.1.i.i, %bb.bm ] ; 7 uses
  %.sroa.11.0284.i.i = phi ptr [ %.sroa.7.sroa.7.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.8.1.i.i, %bb.bm ] ; 7 uses
  %.sroa.12.0283.i.i = phi i64 [ %.sroa.7.sroa.8.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.9.1.i.i, %bb.bm ] ; 5 uses
  %.sroa.1220.0282.i.i = phi ptr [ %.sroa.726.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.890.1.i.i, %bb.bm ]
  %.sroa.15.0281.i.i = phi i64 [ %.sroa.827.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.993.1.i.i, %bb.bm ] ; 2 uses
  %.sroa.18.0280.i.i = phi ptr [ %.sroa.928.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1096.1.i.i, %bb.bm ] ; 3 uses
  %.sroa.22.0279.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1199.0.copyload101.i.i, %bb.bm ]
  %i.cb = add i64 %.sroa.15.0281.i.i, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.1220.0282.i.i, i64 536
  %i.cd = load i16, ptr %i.cc, align 8, !noalias !10617 ; 5 uses
  %i.ce = zext i16 %i.cd to i64                   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10559
  %i.cf = icmp eq i64 %.sroa.22.0279.i.i, %.sroa.15.0281.i.i
  br i1 %i.cf, label %bb.am, label %bb.al, !prof !7

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @427, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @428) #46
          to label %bb.an unwind label %.loopexit.split-lp.i.i, !noalias !10645

bb.am:                                            ; preds = %bb.ak
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 538
  %i.ch = load i16, ptr %i.cg, align 2, !noalias !10645, !noundef !6 ; 4 uses
  %i.ci = icmp ult i16 %i.ch, 11
  br i1 %i.ci, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.al
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.cj = icmp ult i16 %i.cd, 5
  store ptr %i.ca, ptr %i.b, align 8, !noalias !10645
  store i64 %i.cb, ptr %i.be, align 8, !noalias !10645
  br i1 %i.cj, label %.invoke.i41.i.i, label %bb.av

bb.ap:                                            ; preds = %bb.am
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 538
  %i.cl = zext nneg i16 %i.ch to i64              ; 5 uses
  %i.cm = add nuw nsw i16 %i.ch, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10651)
  %i.co = add nuw nsw i64 %i.ce, 1                ; 7 uses
  %.not.i.i43.not.i.i = icmp ult i16 %i.cd, %i.ch ; 2 uses
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.ce ; 4 uses
  br i1 %.not.i.i43.not.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10654)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.co
  %i.cr = sub nsw i64 %i.cl, %i.ce
  %i.cs = mul nsw i64 %i.cr, 24                   ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr nonnull align 8 %i.cp, i64 %i.cs, i1 false), !alias.scope !10657, !noalias !10659
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 272 ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.ce
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.co
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cv, ptr nonnull align 8 %i.cu, i64 %i.cs, i1 false), !alias.scope !10664, !noalias !10666
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  store i64 %.sroa.03.0288.i.i, ptr %i.cp, align 8, !alias.scope !10667, !noalias !10668
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.sroa.8.0287.i.i, ptr %i.cw, align 8, !alias.scope !10667, !noalias !10668
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %.sroa.9.0286.i.i, ptr %i.cx, align 8, !alias.scope !10667, !noalias !10668
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 272
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %i.ce ; 3 uses
  store i64 %.sroa.913.0285.i.i, ptr %i.cz, align 8, !alias.scope !10669, !noalias !10670
  %.sroa.6190.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %.sroa.11.0284.i.i, ptr %.sroa.6190.0..sroa_idx.i.i, align 8, !alias.scope !10669, !noalias !10670
  %.sroa.8191.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 %.sroa.12.0283.i.i, ptr %.sroa.8191.0..sroa_idx.i.i, align 8, !alias.scope !10669, !noalias !10670
  %i.da = add nuw nsw i64 %i.cl, 2                ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 544 ; 8 uses
  br i1 %.not.i.i43.not.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.co
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.ce
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = sub nsw i64 %i.cl, %i.ce
  %i.dg = shl nsw i64 %i.df, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr nonnull align 8 %i.dc, i64 %i.dg, i1 false), !alias.scope !10671, !noalias !10670
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.co
  store ptr %.sroa.18.0280.i.i, ptr %i.dh, align 8, !alias.scope !10671, !noalias !10670
  store i16 %i.cm, ptr %i.ck, align 2, !noalias !10670
  %i.di = icmp samesign ult i64 %i.co, %i.da
  br i1 %i.di, label %.lr.ph.i.i.i.i.i.preheader, label %.thread211.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.au
  %i.dj = add nuw nsw i64 %i.cl, 1
  %i.dk = sub nsw i64 %i.dj, %i.ce
  %i.dl = sub nsw i64 %i.cl, %i.ce
  %xtraiter339 = and i64 %i.dk, 3                 ; 2 uses
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod340.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i.prol ], [ %i.co, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter341 = phi i64 [ %prol.iter341.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.dm = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.dn = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !10674, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.ca, ptr %i.dp, align 8, !noalias !10679
  %i.dq = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 536
  store i16 %i.dq, ptr %i.dr, align 8, !noalias !10679
  %prol.iter341.next = add i64 %prol.iter341, 1   ; 2 uses
  %prol.iter341.cmp.not = icmp eq i64 %prol.iter341.next, %xtraiter339
  br i1 %prol.iter341.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !10680

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i.i.i.i.prol ]
  %i.ds = icmp ult i64 %i.dl, 3
  br i1 %i.ds, label %.thread211.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.dt = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.sroa.0.06.i.i.i.i.i
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !10674, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.ca, ptr %i.dv, align 8, !noalias !10679
  %i.dw = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 536
  store i16 %i.dw, ptr %i.dx, align 8, !noalias !10679
  %i.dy = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dt
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !10674, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.ca, ptr %i.ea, align 8, !noalias !10679
  %i.eb = trunc nuw nsw i64 %i.dt to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 536
  store i16 %i.eb, ptr %i.ec, align 8, !noalias !10679
  %i.ed = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dy
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !10674, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.ca, ptr %i.ef, align 8, !noalias !10679
  %i.eg = trunc nuw nsw i64 %i.dy to i16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 536
  store i16 %i.eg, ptr %i.eh, align 8, !noalias !10679
  %i.ei = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.ej = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.ed
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !10674, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.ca, ptr %i.el, align 8, !noalias !10679
  %i.em = trunc nuw nsw i64 %i.ed to i16
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 536
  store i16 %i.em, ptr %i.en, align 8, !noalias !10679
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.ei, %i.da
  br i1 %exitcond.not.i.i.i.i.i.3, label %.thread211.i.i, label %.lr.ph.i.i.i.i.i

bb.av:                                            ; preds = %bb.ao
  switch i16 %i.cd, label %bb.aw [
    i16 5, label %.invoke.i41.i.i
    i16 6, label %bb.ax
  ]

.invoke.i41.i.i:                                  ; preds = %bb.av, %bb.ao
  %.sink.i42.i.i = phi i64 [ 5, %bb.av ], [ 4, %bb.ao ]
  store i64 %.sink.i42.i.i, ptr %i.bf, align 8, !noalias !10645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10645
  invoke fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h7b1a27c4f405979eE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.ay unwind label %.loopexit.i.i, !noalias !10645

bb.aw:                                            ; preds = %bb.av
  store i64 6, ptr %i.bf, align 8, !noalias !10645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10645
  invoke fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h7b1a27c4f405979eE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.bg unwind label %.loopexit.i.i, !noalias !10645

bb.ax:                                            ; preds = %bb.av
  store i64 5, ptr %i.bf, align 8, !noalias !10645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10645
  invoke fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h7b1a27c4f405979eE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.bc unwind label %.loopexit.i.i, !noalias !10645

bb.ay:                                            ; preds = %.invoke.i41.i.i
  %i.eo = load ptr, ptr %.sroa.890.0..sroa_idx.i.i, align 8, !noalias !10645, !nonnull !6, !noundef !6 ; 12 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 538 ; 2 uses
  %i.eq = load i16, ptr %i.ep, align 2, !noalias !10681, !noundef !6 ; 3 uses
  %i.er = zext i16 %i.eq to i64                   ; 4 uses
  %i.es = add i16 %i.eq, 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.eu = add nuw nsw i64 %i.ce, 1                ; 7 uses
  %.not.i38.not.i.i.i = icmp ult i16 %i.cd, %i.eq
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.ce ; 7 uses
  br i1 %.not.i38.not.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i64 %.sroa.03.0288.i.i, ptr %i.ev, align 8, !noalias !10686
  %.sroa.11108.0..sroa_idx111.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr %.sroa.8.0287.i.i, ptr %.sroa.11108.0..sroa_idx111.i.i, align 8, !noalias !10686
  %.sroa.14.0..sroa_idx121.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store i64 %.sroa.9.0286.i.i, ptr %.sroa.14.0..sroa_idx121.i.i, align 8, !noalias !10686
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 272
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %i.ce ; 3 uses
  store i64 %.sroa.913.0285.i.i, ptr %i.ex, align 8, !noalias !10687
  %.sroa.11135.0..sroa_idx138.i.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %.sroa.11.0284.i.i, ptr %.sroa.11135.0..sroa_idx138.i.i, align 8, !noalias !10687
  %.sroa.14146.0..sroa_idx149.i.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 %.sroa.12.0283.i.i, ptr %.sroa.14146.0..sroa_idx149.i.i, align 8, !noalias !10687
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.eu
  %i.ez = sub nuw nsw i64 %i.er, %i.ce            ; 2 uses
  %i.fa = mul nuw nsw i64 %i.ez, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ey, ptr nonnull align 8 %i.ev, i64 %i.fa, i1 false), !alias.scope !10688, !noalias !10691
  store i64 %.sroa.03.0288.i.i, ptr %i.ev, align 8, !noalias !10686
  %.sroa.11108.0..sroa_idx113.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr %.sroa.8.0287.i.i, ptr %.sroa.11108.0..sroa_idx113.i.i, align 8, !noalias !10686
  %.sroa.14.0..sroa_idx123.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store i64 %.sroa.9.0286.i.i, ptr %.sroa.14.0..sroa_idx123.i.i, align 8, !noalias !10686
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 272 ; 2 uses
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.ce ; 4 uses
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.eu
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fd, ptr nonnull align 8 %i.fc, i64 %i.fa, i1 false), !alias.scope !10693, !noalias !10696
  store i64 %.sroa.913.0285.i.i, ptr %i.fc, align 8, !noalias !10687
  %.sroa.11135.0..sroa_idx140.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %.sroa.11.0284.i.i, ptr %.sroa.11135.0..sroa_idx140.i.i, align 8, !noalias !10687
  %.sroa.14146.0..sroa_idx151.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i64 %.sroa.12.0283.i.i, ptr %.sroa.14146.0..sroa_idx151.i.i, align 8, !noalias !10687
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 544 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.eu
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.ce
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = shl nuw nsw i64 %i.ez, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fh, ptr nonnull align 8 %i.ff, i64 %i.fi, i1 false), !alias.scope !10698, !noalias !10681
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eo, i64 544 ; 6 uses
  %i.fk = add nuw nsw i64 %i.er, 2                ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.eu
  store ptr %.sroa.18.0280.i.i, ptr %i.fl, align 8, !alias.scope !10698, !noalias !10681
  store i16 %i.es, ptr %i.ep, align 2, !noalias !10681
  %i.fm = icmp samesign ult i64 %i.eu, %i.fk
  br i1 %i.fm, label %.lr.ph.i.i39.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc3f5a96fa23d48b7E.exit42.i.i.i"

.lr.ph.i.i39.i.i.i.preheader:                     ; preds = %bb.bb
  %i.fn = add nuw nsw i64 %i.er, 1
  %i.fo = sub nsw i64 %i.fn, %i.ce
  %i.fp = sub nsw i64 %i.er, %i.ce
  %xtraiter336 = and i64 %i.fo, 3                 ; 2 uses
  %lcmp.mod337.not = icmp eq i64 %xtraiter336, 0
  br i1 %lcmp.mod337.not, label %.lr.ph.i.i39.i.i.i.prol.loopexit, label %.lr.ph.i.i39.i.i.i.prol

.lr.ph.i.i39.i.i.i.prol:                          ; preds = %.lr.ph.i.i39.i.i.i.preheader, %.lr.ph.i.i39.i.i.i.prol
  %.sroa.0.06.i.i40.i.i.i.prol = phi i64 [ %i.fq, %.lr.ph.i.i39.i.i.i.prol ], [ %i.eu, %.lr.ph.i.i39.i.i.i.preheader ] ; 4 uses
  %prol.iter338 = phi i64 [ %prol.iter338.next, %.lr.ph.i.i39.i.i.i.prol ], [ 0, %.lr.ph.i.i39.i.i.i.preheader ]
  %i.fq = add nuw nsw i64 %.sroa.0.06.i.i40.i.i.i.prol, 1 ; 2 uses
  %i.fr = icmp samesign ult i64 %.sroa.0.06.i.i40.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.sroa.0.06.i.i40.i.i.i.prol
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !10701, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.eo, ptr %i.ft, align 8, !noalias !10706
  %i.fu = trunc nuw nsw i64 %.sroa.0.06.i.i40.i.i.i.prol to i16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 536
  store i16 %i.fu, ptr %i.fv, align 8, !noalias !10706
  %prol.iter338.next = add i64 %prol.iter338, 1   ; 2 uses
  %prol.iter338.cmp.not = icmp eq i64 %prol.iter338.next, %xtraiter336
  br i1 %prol.iter338.cmp.not, label %.lr.ph.i.i39.i.i.i.prol.loopexit, label %.lr.ph.i.i39.i.i.i.prol, !llvm.loop !10707

.lr.ph.i.i39.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i39.i.i.i.prol, %.lr.ph.i.i39.i.i.i.preheader
  %.sroa.0.06.i.i40.i.i.i.unr = phi i64 [ %i.eu, %.lr.ph.i.i39.i.i.i.preheader ], [ %i.fq, %.lr.ph.i.i39.i.i.i.prol ]
  %i.fw = icmp ult i64 %i.fp, 3
  br i1 %i.fw, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc3f5a96fa23d48b7E.exit42.i.i.i", label %.lr.ph.i.i39.i.i.i

.lr.ph.i.i39.i.i.i:                               ; preds = %.lr.ph.i.i39.i.i.i.prol.loopexit, %.lr.ph.i.i39.i.i.i
  %.sroa.0.06.i.i40.i.i.i = phi i64 [ %i.gm, %.lr.ph.i.i39.i.i.i ], [ %.sroa.0.06.i.i40.i.i.i.unr, %.lr.ph.i.i39.i.i.i.prol.loopexit ] ; 7 uses
  %i.fx = add nuw nsw i64 %.sroa.0.06.i.i40.i.i.i, 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.sroa.0.06.i.i40.i.i.i
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !10701, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.eo, ptr %i.fz, align 8, !noalias !10706
  %i.ga = trunc nuw nsw i64 %.sroa.0.06.i.i40.i.i.i to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 536
  store i16 %i.ga, ptr %i.gb, align 8, !noalias !10706
end_hunk_15
