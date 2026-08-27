Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN13fuzz_indexing4main17he4885dfa76dd41d8E:bb.a
  %i.nh = icmp slt i64 %i.ne, 0
  br i1 %i.nh, label %.invoke.i.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i47.i.i.i.i, !prof !4065

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i47.i.i.i.i: ; preds = %bb.cg
  %i.ni = icmp eq i64 %i.ne, 0
  br i1 %i.ni, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h990e194f4fa04d5aE.exit55.i.i.i.i", label %bb.ch

bb.ch:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i47.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !13173
  %i.nj = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ne, i64 noundef range(i64 1, 9) 1) #65, !noalias !13173 ; 2 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %.invoke.i.i.i.i, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h990e194f4fa04d5aE.exit55.i.i.i.i"

.invoke.i.i.i.i:                                  ; preds = %bb.ch, %bb.cg, %bb.af, %bb.ae
  %i.nl = phi i64 [ 0, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ch ], [ 0, %bb.cg ]
  %i.nm = phi i64 [ %i.fo, %bb.ae ], [ %i.fo, %bb.af ], [ %i.ne, %bb.ch ], [ %i.ne, %bb.cg ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.nl, i64 %i.nm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2018) #66
          to label %.cont.i.i.i.i unwind label %bb.z, !noalias !12798

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h990e194f4fa04d5aE.exit55.i.i.i.i": ; preds = %bb.ch, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i47.i.i.i.i
  %.sroa.10.0.i.i48.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i47.i.i.i.i ], [ %i.nj, %bb.ch ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i48.i.i.i.i, ptr nonnull readonly align 1 %i.nc, i64 %i.ne, i1 false), !noalias !13181
  store i64 %i.ne, ptr %i.nf, align 8, !alias.scope !12937, !noalias !12938
  %.sroa.575.0..sroa_idx76.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 304
  store ptr %.sroa.10.0.i.i48.i.i.i.i, ptr %.sroa.575.0..sroa_idx76.i.i.i.i, align 8, !alias.scope !12937, !noalias !12938
  %.sroa.6.0..sroa_idx78.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 312
  store i64 %i.ne, ptr %.sroa.6.0..sroa_idx78.i.i.i.i, align 8, !alias.scope !12937, !noalias !12938
  br label %bb.ca

bb.ci:                                            ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !13182)
  call void @llvm.experimental.noalias.scope.decl(metadata !13185)
  %.val4.i.i56.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !13188, !noalias !12798, !nonnull !27, !noundef !27 ; 2 uses
  %.val5.i.i57.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !13188, !noalias !12798, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13189)
  %i.nn = icmp eq i64 %.val5.i.i57.i.i.i.i, 0
  br i1 %i.nn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b94f8cd83b5301E.exit.i.i63.i.i.i.i", label %.lr.ph.i.i.i.i58.i.i.i.i

.lr.ph.i.i.i.i58.i.i.i.i:                         ; preds = %bb.ci, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h2ed6cb9a6e93ec1bE.exit.i.i.i.i62.i.i.i.i"
  %.sroa.0.011.i.i.i.i59.i.i.i.i = phi i64 [ %i.np, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h2ed6cb9a6e93ec1bE.exit.i.i.i.i62.i.i.i.i" ], [ 0, %bb.ci ] ; 2 uses
  %i.no = getelementptr inbounds nuw [24 x i8], ptr %.val4.i.i56.i.i.i.i, i64 %.sroa.0.011.i.i.i.i59.i.i.i.i ; 2 uses
  %i.np = add nuw i64 %.sroa.0.011.i.i.i.i59.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i60.i.i.i.i = load i64, ptr %i.no, align 8, !range !28, !alias.scope !13192, !noalias !13195, !noundef !27 ; 2 uses
  %i.nq = icmp eq i64 %.val8.i.i.i.i60.i.i.i.i, 0
  br i1 %i.nq, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h2ed6cb9a6e93ec1bE.exit.i.i.i.i62.i.i.i.i", label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i58.i.i.i.i
  %i.nr = getelementptr i8, ptr %i.no, i64 8
  %.val9.i.i.i.i61.i.i.i.i = load ptr, ptr %i.nr, align 8, !alias.scope !13189, !noalias !13195, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i61.i.i.i.i, i64 noundef %.val8.i.i.i.i60.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !13196
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h2ed6cb9a6e93ec1bE.exit.i.i.i.i62.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h2ed6cb9a6e93ec1bE.exit.i.i.i.i62.i.i.i.i": ; preds = %bb.cj, %.lr.ph.i.i.i.i58.i.i.i.i
  %i.ns = icmp eq i64 %i.np, %.val5.i.i57.i.i.i.i
  br i1 %i.ns, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b94f8cd83b5301E.exit.i.i63.i.i.i.i", label %.lr.ph.i.i.i.i58.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b94f8cd83b5301E.exit.i.i63.i.i.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h2ed6cb9a6e93ec1bE.exit.i.i.i.i62.i.i.i.i", %bb.ci
  %.val.i.i64.i.i.i.i = load i64, ptr %i.bn, align 8, !range !28, !alias.scope !13188, !noalias !12798, !noundef !27 ; 2 uses
  %i.nt = icmp eq i64 %.val.i.i64.i.i.i.i, 0
  br i1 %i.nt, label %bb.ck, label %"_ZN4core3ptr38drop_in_place$LT$clap_lex..RawArgs$GT$17h29299dcdd8d36088E.exit65.sink.split.i.i.i.i"

bb.ck:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b94f8cd83b5301E.exit.i.i63.i.i.i.i", %"_ZN4core3ptr38drop_in_place$LT$clap_lex..RawArgs$GT$17h29299dcdd8d36088E.exit65.sink.split.i.i.i.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b94f8cd83b5301E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !12798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !12791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.bp, ptr noundef nonnull align 8 dereferenceable(712) %i.bs, i64 712, i1 false), !noalias !13199
  %i.nu = load i64, ptr %i.bq, align 8, !range !8078, !noalias !12791, !noundef !27
  %i.nv = icmp eq i64 %i.nu, -9223372036854775808
  br i1 %i.nv, label %bb.cl, label %_ZN12clap_builder7builder7command7Command11get_matches17ha5b9047a4f06da36E.exit.i

bb.cl:                                            ; preds = %bb.ck
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8, !noalias !12791, !nonnull !27, !align !241, !noundef !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !12791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.bo, ptr noundef nonnull align 8 dereferenceable(712) %i.bs, i64 712, i1 false), !noalias !13199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !12791
  store ptr %i.nx, ptr %i.be, align 8, !noalias !13200
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h9e76fdb2350bfd25E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(712) %i.bo)
          to label %bb.cn unwind label %bb.cm, !noalias !13199

bb.cm:                                            ; preds = %bb.cn, %bb.cl
  %i.ny = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$clap_builder..error..ErrorInner$GT$17h9ecb3fee6291e94bE"(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.nx)
          to label %bb.cp unwind label %.body.i2.i.i.i, !noalias !13204

.body.i2.i.i.i:                                   ; preds = %bb.cm
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.nx, i64 noundef 256, i64 noundef 8) #65, !noalias !13204
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !13204
  unreachable

bb.cn:                                            ; preds = %bb.cl
  invoke fastcc void @"_ZN12clap_builder5error14Error$LT$F$GT$4exit17h9d15042b90ed2036E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.be) #66
          to label %bb.co unwind label %bb.cm, !noalias !13204

bb.co:                                            ; preds = %bb.cn
  unreachable

bb.cp:                                            ; preds = %bb.cm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.nx, i64 noundef 256, i64 noundef 8) #65, !noalias !13204
  br label %common.resume

bb.cq:                                            ; preds = %bb.y, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b94f8cd83b5301E.exit.i.i.i.i.i", %bb.t, %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17h12bc7a14853b385fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h2ed6cb9a6e93ec1bE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %eh.lpad-body.ph.i.i.i = phi { ptr, i32 } [ %.pn32.i.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b94f8cd83b5301E.exit.i.i.i.i.i" ], [ %i.cs, %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17h12bc7a14853b385fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.dy, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h2ed6cb9a6e93ec1bE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cs, %bb.t ], [ %.pn32.i.i.i.i, %bb.y ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h9e76fdb2350bfd25E"(ptr noalias noundef nonnull align 8 dereferenceable(712) %i.bs) #67
          to label %common.resume unwind label %bb.cr, !noalias !13199

bb.cr:                                            ; preds = %bb.cq
  %i.oa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !13199
  unreachable

common.resume:                                    ; preds = %.body, %.body, %bb.fj, %bb.cp, %bb.cq, %bb.cs, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %eh.lpad-body.ph.i.i.i, %bb.cq ], [ %i.ny, %bb.cp ], [ %i.ob, %bb.cs ], [ %.pn.pn, %bb.fj ], [ %.pn.pn, %.body ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.cs:                                            ; preds = %bb.a
  %i.ob = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h9e76fdb2350bfd25E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(712) %i.bu) #67
          to label %common.resume unwind label %bb.ct, !noalias !12785

bb.ct:                                            ; preds = %bb.cs
  %i.oc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !12781
  unreachable

_ZN12clap_builder7builder7command7Command11get_matches17ha5b9047a4f06da36E.exit.i: ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bv, ptr noundef nonnull align 8 dereferenceable(56) %i.bq, i64 56, i1 false), !noalias !13205
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h9e76fdb2350bfd25E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(712) %i.bp), !noalias !12781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !12791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !12791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !12781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !12781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !12778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !13206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !13206
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !13210
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !13214)
  %i.od = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !alias.scope !13214, !noalias !13217, !nonnull !27, !noundef !27 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 4 uses
  %i.og = load i64, ptr %i.of, align 8, !alias.scope !13214, !noalias !13217, !noundef !27 ; 7 uses
  %.idx.i24.i = shl nuw nsw i64 %i.og, 4
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 %.idx.i24.i
  %i.oi = icmp eq i64 %i.og, 0
  br i1 %i.oi, label %.thread.i.i.i, label %.lr.ph.i.i25.i

.lr.ph.i.i25.i:                                   ; preds = %_ZN12clap_builder7builder7command7Command11get_matches17ha5b9047a4f06da36E.exit.i, %.backedge.i.i28.i
  %i.oj = phi ptr [ %i.ol, %.backedge.i.i28.i ], [ %i.oe, %_ZN12clap_builder7builder7command7Command11get_matches17ha5b9047a4f06da36E.exit.i ] ; 3 uses
  %i.ok = phi i64 [ %i.ox, %.backedge.i.i28.i ], [ 0, %_ZN12clap_builder7builder7command7Command11get_matches17ha5b9047a4f06da36E.exit.i ] ; 8 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 16 ; 2 uses
  %i.om = getelementptr i8, ptr %i.oj, i64 8
  %.val9.i.i26.i = load i64, ptr %i.om, align 8, !noalias !13220, !noundef !27
  %.not.i.i.i.i.i.i27.i = icmp eq i64 %.val9.i.i26.i, 3
  br i1 %.not.i.i.i.i.i.i27.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i30.i", label %.backedge.i.i28.i

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i30.i": ; preds = %.lr.ph.i.i25.i
  %.val8.i.i31.i = load ptr, ptr %i.oj, align 8, !noalias !13220, !nonnull !27, !align !242, !noundef !27 ; 2 uses
  %i.on = load i16, ptr %.val8.i.i31.i, align 1
  %i.oo = xor i16 %i.on, 24944
  %i.op = getelementptr i8, ptr %.val8.i.i31.i, i64 2
  %i.oq = load i8, ptr %i.op, align 1
  %i.or = zext i8 %i.oq to i16
  %i.os = xor i16 %i.or, 114
  %i.ot = or i16 %i.oo, %i.os
  %i.ou = icmp ne i16 %i.ot, 0
  %i.ov = zext i1 %i.ou to i32
  %bcmp.i.fr.i.i.i.i.i33.i = freeze i32 %i.ov
  %i.ow = icmp eq i32 %bcmp.i.fr.i.i.i.i.i33.i, 0
  br i1 %i.ow, label %bb.cu, label %.backedge.i.i28.i

.backedge.i.i28.i:                                ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i30.i", %.lr.ph.i.i25.i
  %i.ox = add nuw nsw i64 %i.ok, 1
  %i.oy = icmp eq ptr %i.ol, %i.oh
  br i1 %i.oy, label %.thread.i.i.i, label %.lr.ph.i.i25.i

bb.cu:                                            ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i30.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !13225)
  %i.oz = icmp ult i64 %i.og, 576460752303423488
  call void @llvm.assume(i1 %i.oz)
  %.not.i.i34.i = icmp samesign ult i64 %i.ok, %i.og
  br i1 %.not.i.i34.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h5b92fdbeec94a87aE.exit.i35.i", label %.invoke.i, !prof !158

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h5b92fdbeec94a87aE.exit.i35.i": ; preds = %bb.cu
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %i.oe, i64 %i.ok ; 4 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !noalias !13228, !nonnull !27, !align !242, !noundef !27
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pd = load i64, ptr %i.pc, align 8, !noalias !13228, !noundef !27
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pf = xor i64 %i.ok, -1                       ; 2 uses
  %i.pg = add nsw i64 %i.og, %i.pf
  %i.ph = shl nuw nsw i64 %i.pg, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pa, ptr nonnull align 8 %i.pe, i64 %i.ph, i1 false), !noalias !13228
  %i.pi = add nsw i64 %i.og, -1
  store i64 %i.pi, ptr %i.of, align 8, !alias.scope !13229, !noalias !13217
  call void @llvm.experimental.noalias.scope.decl(metadata !13230)
  %i.pj = getelementptr inbounds nuw i8, ptr %i.bv, i64 40 ; 2 uses
  %i.pk = load i64, ptr %i.pj, align 8, !alias.scope !13233, !noalias !13234, !noundef !27 ; 5 uses
  %i.pl = icmp ult i64 %i.pk, 88686269585142076
  call void @llvm.assume(i1 %i.pl)
  %.not.i10.i36.i = icmp samesign ult i64 %i.ok, %i.pk
  br i1 %.not.i10.i36.i, label %.noexc.i, label %.invoke.i, !prof !158

.invoke.i:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h5b92fdbeec94a87aE.exit.i.i", %bb.dw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h5b92fdbeec94a87aE.exit.i35.i", %bb.cu
  %i.pm = phi i64 [ %i.ok, %bb.cu ], [ %i.ok, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h5b92fdbeec94a87aE.exit.i35.i" ], [ %i.rs, %bb.dw ], [ %i.rs, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h5b92fdbeec94a87aE.exit.i.i" ]
  %i.pn = phi i64 [ %i.og, %bb.cu ], [ %i.pk, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h5b92fdbeec94a87aE.exit.i35.i" ], [ %i.ro, %bb.dw ], [ %i.sm, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h5b92fdbeec94a87aE.exit.i.i" ]
  %i.po = phi ptr [ @245, %bb.cu ], [ @246, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h5b92fdbeec94a87aE.exit.i35.i" ], [ @245, %bb.dw ], [ @246, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h5b92fdbeec94a87aE.exit.i.i" ]
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.pm, i64 noundef %i.pn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.po) #66
          to label %.cont.i unwind label %bb.fc, !noalias !12778

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.noexc.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h5b92fdbeec94a87aE.exit.i35.i"
  %i.pp = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.pq = load ptr, ptr %i.pp, align 8, !alias.scope !13233, !noalias !13234, !nonnull !27, !noundef !27
  %i.pr = getelementptr inbounds nuw [104 x i8], ptr %i.pq, i64 %i.ok ; 4 uses
  %.sroa.745.16.copyload46.i = load i64, ptr %i.pr, align 8, !noalias !13236 ; 4 uses
  %.sroa.11.16..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.16..sroa_idx47.i, i64 96, i1 false), !noalias !13236
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 104
  %i.pt = add nsw i64 %i.pk, %i.pf
  %i.pu = mul nuw nsw i64 %i.pt, 104
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pr, ptr nonnull align 8 %i.ps, i64 %i.pu, i1 false), !noalias !13237
  %i.pv = add nsw i64 %i.pk, -1
  store i64 %i.pv, ptr %i.pj, align 8, !alias.scope !13233, !noalias !13234
  %.not.i.i.i8.i = icmp eq i64 %.sroa.745.16.copyload46.i, 2
  br i1 %.not.i.i.i8.i, label %.thread.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !13238
  store i64 %.sroa.745.16.copyload46.i, ptr %i.ba, align 8, !noalias !13238
  %.sroa.11.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.i, i64 96, i1 false), !noalias !13238
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !13238
  store i128 152095331589414885047879546280840971863, ptr %i.aw, align 16, !noalias !13238
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg13infer_type_id17h498c56091c240590E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.aw)
          to label %bb.cw unwind label %bb.cz, !noalias !13238

.thread.i.i.i:                                    ; preds = %.backedge.i.i28.i, %.noexc.i, %_ZN12clap_builder7builder7command7Command11get_matches17ha5b9047a4f06da36E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !13210
  br label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.thread.i.i

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !13238
  %.sroa.04.0.copyload.i.i.i.i = load i128, ptr %i.az, align 16, !noalias !13238 ; 3 uses
  %i.pw = icmp eq i128 %.sroa.04.0.copyload.i.i.i.i, 152095331589414885047879546280840971863
  %i.px = trunc i128 %.sroa.04.0.copyload.i.i.i.i to i64
  %i.py = lshr i128 %.sroa.04.0.copyload.i.i.i.i, 64
  %i.pz = trunc nuw i128 %i.py to i64
  br i1 %i.pw, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17hd226d5e492c6370aE.exit.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !13238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !13238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ax, ptr noundef nonnull align 8 dereferenceable(104) %i.ba, i64 104, i1 false), !noalias !13238
  invoke fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$6insert17hce9832f7745547b4E"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bv, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.pb, i64 noundef %i.pd, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.ax)
          to label %.noexc10.i unwind label %bb.fc, !noalias !12778

.noexc10.i:                                       ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !13238
  %i.qa = load i64, ptr %i.ay, align 8, !range !322, !alias.scope !13242, !noalias !13238, !noundef !27
  %i.qb = icmp eq i64 %i.qa, 2
  br i1 %i.qb, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.thread57.i.i, label %bb.cy

bb.cy:                                            ; preds = %.noexc10.i
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17ha632cdb1b04d1f00E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.ay)
          to label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.thread57.i.i unwind label %bb.fc, !noalias !12778

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.thread57.i.i: ; preds = %bb.cy, %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !13238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !13238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !13210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !13206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !13206
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !13206
  store ptr @1207, ptr %i.ar, align 8, !noalias !13245
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 3, ptr %i.qc, align 8, !noalias !13245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !13245
  br label %bb.dv

bb.cz:                                            ; preds = %bb.cv
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17ha632cdb1b04d1f00E"(ptr noalias noundef align 8 dereferenceable(104) %i.ba) #67
          to label %.body.i unwind label %bb.da, !noalias !13238

bb.da:                                            ; preds = %bb.cz
  %i.qd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !13238
  unreachable

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17hd226d5e492c6370aE.exit.i.i.i: ; preds = %bb.cw
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.11.16..sroa_idx.i, align 8, !noalias !13248 ; 3 uses
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.10.i.sroa.0.0.copyload43.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !13210 ; 3 uses
  %.sroa.10.i.sroa.6.0..sroa.10.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.10.i.sroa.6.0.copyload45.i.i = load i64, ptr %.sroa.10.i.sroa.6.0..sroa.10.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !13210 ; 2 uses
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %.sroa.11.0.copyload.i.i.i = load i128, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !13248 ; 2 uses
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx.i.i.i, i64 56, i1 false), !noalias !13210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !13238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !13210
  %cond62.i = icmp eq i64 %.sroa.745.16.copyload46.i, 3
  br i1 %cond62.i, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.i.i, label %bb.db

bb.db:                                            ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17hd226d5e492c6370aE.exit.i.i.i
  store i64 %.sroa.745.16.copyload46.i, ptr %i.bd, align 8, !noalias !13210
  %.sroa.3.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %.sroa.7.0.copyload.i.i.i, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !noalias !13210
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %.sroa.10.i.sroa.0.0.copyload43.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !13210
  %.sroa.10.i.sroa.6.0..sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %.sroa.10.i.sroa.6.0.copyload45.i.i, ptr %.sroa.10.i.sroa.6.0..sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.sroa_idx.i.i, align 8, !noalias !13210
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i128 %.sroa.11.0.copyload.i.i.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !13210
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i.i.i, i64 56, i1 false), !noalias !13210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !13210
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg17into_vals_flatten17h88b4e7d789f7178bE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.bd)
          to label %.noexc12.i unwind label %bb.fc, !noalias !12778

.noexc12.i:                                       ; preds = %bb.db
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8fa206786898471bE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bb, ptr noalias noundef align 8 dereferenceable(96) %i.bc)
          to label %bb.dd unwind label %bb.dc, !noalias !13210

bb.dc:                                            ; preds = %.noexc12.i
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.dr, %bb.dq, %bb.dg, %bb.df, %bb.dc
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.qp, %bb.df ], [ %i.qe, %bb.dc ], [ %i.qp, %bb.dg ], [ %i.rg, %bb.dr ], [ %i.rg, %bb.dq ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17he75efadae1c043d5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.bc)
          to label %.body.i unwind label %bb.du, !noalias !13210

bb.dd:                                            ; preds = %.noexc12.i
  %i.qf = load ptr, ptr %i.bb, align 8, !noalias !13210, !noundef !27 ; 13 uses
  %.not5.i.i.i = icmp eq ptr %i.qf, null
  br i1 %.not5.i.i.i, label %bb.do, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.25.0.copyload.i.i.i = load ptr, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8, !noalias !13210, !nonnull !27, !noundef !27 ; 4 uses
  %.sroa.36.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !13249)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !13252
  store ptr %i.qf, ptr %i.av, align 8, !noalias !13256
  %i.qg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sroa.25.0.copyload.i.i.i, ptr %i.qg, align 8, !noalias !13256
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload.i.i.i, i64 16
  %i.qi = load i64, ptr %i.qh, align 8, !range !4400, !invariant.load !27, !alias.scope !13249, !noalias !13258
  %i.qj = add i64 %i.qi, -1
  %i.qk = and i64 %i.qj, -16
  %i.ql = getelementptr i8, ptr %i.qf, i64 %i.qk
  %i.qm = getelementptr i8, ptr %i.ql, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !13256
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload.i.i.i, i64 24
  %i.qo = load ptr, ptr %i.qn, align 8, !invariant.load !27, !alias.scope !13249, !noalias !13258, !nonnull !27
  invoke void %i.qo(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.au, ptr noundef align 1 %i.qm)
          to label %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17h2e240216d65d2f8cE.exit.i.i.i.i" unwind label %bb.df, !noalias !13258

bb.df:                                            ; preds = %bb.de
  %i.qp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qq = atomicrmw sub ptr %i.qf, i64 1 release, align 8, !noalias !13259
  %i.qr = icmp eq i64 %i.qq, 1
  br i1 %i.qr, label %bb.dg, label %.body.i.i.i

bb.dg:                                            ; preds = %bb.df
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.av)
          to label %.body.i.i.i unwind label %bb.dh, !noalias !13258

bb.dh:                                            ; preds = %bb.dg
  %i.qs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !13258
  unreachable

"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17h2e240216d65d2f8cE.exit.i.i.i.i": ; preds = %bb.de
  %i.qt = load i128, ptr %i.au, align 16, !noalias !13256, !noundef !27
  %i.qu = icmp eq i128 %i.qt, 152095331589414885047879546280840971863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !13256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !13252
  br i1 %i.qu, label %bb.di, label %bb.dp

bb.di:                                            ; preds = %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17h2e240216d65d2f8cE.exit.i.i.i.i"
  %i.qv = cmpxchg ptr %i.qf, i64 1, i64 0 monotonic monotonic, align 8, !noalias !13252
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.qv, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  fence acquire
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.qx = load i64, ptr %i.qw, align 8, !range !4400, !noalias !13252, !noundef !27 ; 3 uses
  %i.qy = icmp eq ptr %i.qf, inttoptr (i64 -1 to ptr)
  br i1 %i.qy, label %bb.do, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.ra = atomicrmw sub ptr %i.qz, i64 1 release, align 8, !noalias !13252
  %i.rb = icmp eq i64 %i.ra, 1
  br i1 %i.rb, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  fence acquire
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qf, i64 noundef 24, i64 noundef 8) #65, !noalias !13252
  br label %bb.do

bb.dm:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !13252
  store ptr %i.qf, ptr %i.at, align 8, !noalias !13252
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %.val.i.i.i.i9.i = load i64, ptr %i.rc, align 8, !range !4400, !noalias !13252, !noundef !27
  %i.rd = atomicrmw sub ptr %i.qf, i64 1 release, align 8, !noalias !13264
  %i.re = icmp eq i64 %i.rd, 1
  br i1 %i.re, label %bb.dn, label %"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17hc1b62bd839c5ea1bE.exit.i.i.i.i"

bb.dn:                                            ; preds = %bb.dm
  fence acquire
  call fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h137193cb46259bedE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.at), !noalias !13252
  br label %"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17hc1b62bd839c5ea1bE.exit.i.i.i.i"

"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17hc1b62bd839c5ea1bE.exit.i.i.i.i": ; preds = %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !13252
  br label %bb.do

bb.do:                                            ; preds = %"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17hc1b62bd839c5ea1bE.exit.i.i.i.i", %bb.dl, %bb.dk, %bb.dj, %bb.dd
  %.sroa.03.0.i.i.i = phi i64 [ 0, %bb.dd ], [ %i.qx, %bb.dj ], [ %i.qx, %bb.dk ], [ %i.qx, %bb.dl ], [ %.val.i.i.i.i9.i, %"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17hc1b62bd839c5ea1bE.exit.i.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17he75efadae1c043d5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.bc)
          to label %.noexc13.i unwind label %bb.fc, !noalias !12778

.noexc13.i:                                       ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !13210
  br label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.thread.i.i

bb.dp:                                            ; preds = %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17h2e240216d65d2f8cE.exit.i.i.i.i"
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !13269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.36.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !13210
  %i.rf = ptrtoint ptr %.sroa.25.0.copyload.i.i.i to i64
  store ptr %i.qf, ptr %i.as, align 8, !noalias !13210
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.rf, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !13210
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @259, i64 noundef 99, ptr noundef nonnull align 1 %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @450, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #66
          to label %bb.ds unwind label %bb.dq, !noalias !13269

bb.dq:                                            ; preds = %bb.dp
  %i.rg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13272)
  call void @llvm.experimental.noalias.scope.decl(metadata !13275)
  call void @llvm.experimental.noalias.scope.decl(metadata !13278)
  %i.rh = load ptr, ptr %i.as, align 8, !alias.scope !13281, !noalias !13269, !nonnull !27, !noundef !27
  %i.ri = atomicrmw sub ptr %i.rh, i64 1 release, align 8, !noalias !13282
  %i.rj = icmp eq i64 %i.ri, 1
  br i1 %i.rj, label %bb.dr, label %.body.i.i.i

bb.dr:                                            ; preds = %bb.dq
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %.body.i.i.i unwind label %bb.dt, !noalias !13269

bb.ds:                                            ; preds = %bb.dp
  unreachable

bb.dt:                                            ; preds = %bb.dr
  %i.rk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !13269
  unreachable

bb.du:                                            ; preds = %.body.i.i.i
  %i.rl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !13210
  unreachable

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.thread.i.i: ; preds = %.noexc13.i, %.thread.i.i.i
  %.sroa.7.0.ph.i.i = phi i64 [ %.sroa.03.0.i.i.i, %.noexc13.i ], [ 0, %.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !13206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !13206
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !13206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !13283
  br label %_ZN12clap_builder6parser5error12MatchesError6unwrap17h819d6749ce34ad0cE.exit.i.i

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.i.i: ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17hd226d5e492c6370aE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !13206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !13206
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !13206
  store ptr @1207, ptr %i.ar, align 8, !noalias !13285
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 3, ptr %i.rm, align 8, !noalias !13285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !13285
  %.not.i.i.i = icmp eq i64 %.sroa.7.0.copyload.i.i.i, 2
  br i1 %.not.i.i.i, label %_ZN12clap_builder6parser5error12MatchesError6unwrap17h819d6749ce34ad0cE.exit.i.i, label %bb.dv, !prof !240

bb.dv:                                            ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.thread57.i.i
  %.sroa.035.066.i.i = phi i64 [ 0, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.thread57.i.i ], [ %.sroa.7.0.copyload.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.i.i ]
  %.sroa.7.065.i.i = phi i64 [ %i.px, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.thread57.i.i ], [ %.sroa.10.i.sroa.0.0.copyload43.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.i.i ]
  %.sroa.11.064.i.i = phi i64 [ %i.pz, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.thread57.i.i ], [ %.sroa.10.i.sroa.6.0.copyload45.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.i.i ]
  %.sroa.1136.063.i.i = phi i128 [ 152095331589414885047879546280840971863, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.thread57.i.i ], [ %.sroa.11.0.copyload.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.i.i ]
  store i64 %.sroa.035.066.i.i, ptr %i.aq, align 8, !noalias !13206
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.sroa.7.065.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !13206
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %.sroa.11.064.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !13206
  %.sroa.1136.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i128 %.sroa.1136.063.i.i, ptr %.sroa.1136.0..sroa_idx.i.i, align 8, !noalias !13206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !13285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !13285
  store ptr %i.ar, ptr %i.ao, align 8, !noalias !13285
  br label %.invoke147.i

_ZN12clap_builder6parser5error12MatchesError6unwrap17h819d6749ce34ad0cE.exit.i.i: ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.thread.i.i
  %.sroa.7.056.i.i = phi i64 [ %.sroa.7.0.ph.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.thread.i.i ], [ %.sroa.10.i.sroa.0.0.copyload43.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h9a4f8f4c69ed8999E.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !13285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !13206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !13206
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i2.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !13287
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1152.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !13291)
  %i.rn = load ptr, ptr %i.od, align 8, !alias.scope !13291, !noalias !13294, !nonnull !27, !noundef !27 ; 3 uses
  %i.ro = load i64, ptr %i.of, align 8, !alias.scope !13291, !noalias !13294, !noundef !27 ; 7 uses
  %.idx.i.i = shl nuw nsw i64 %i.ro, 4
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 %.idx.i.i
  %i.rq = icmp eq i64 %i.ro, 0
  br i1 %i.rq, label %.thread.i31.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN12clap_builder6parser5error12MatchesError6unwrap17h819d6749ce34ad0cE.exit.i.i, %.backedge.i.i.i
  %i.rr = phi ptr [ %i.rt, %.backedge.i.i.i ], [ %i.rn, %_ZN12clap_builder6parser5error12MatchesError6unwrap17h819d6749ce34ad0cE.exit.i.i ] ; 3 uses
  %i.rs = phi i64 [ %i.rz, %.backedge.i.i.i ], [ 0, %_ZN12clap_builder6parser5error12MatchesError6unwrap17h819d6749ce34ad0cE.exit.i.i ] ; 8 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 16 ; 2 uses
  %i.ru = getelementptr i8, ptr %i.rr, i64 8
  %.val9.i.i.i = load i64, ptr %i.ru, align 8, !noalias !13297, !noundef !27
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i.i, 4
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i", label %.backedge.i.i.i

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i
  %.val8.i.i.i = load ptr, ptr %i.rr, align 8, !noalias !13297, !nonnull !27, !align !242, !noundef !27
  %i.rv = load i32, ptr %.val8.i.i.i, align 1
  %i.rw = icmp ne i32 %i.rv, 1752457584
  %i.rx = zext i1 %i.rw to i32
  %bcmp.i.fr.i.i.i.i.i.i = freeze i32 %i.rx
  %i.ry = icmp eq i32 %bcmp.i.fr.i.i.i.i.i.i, 0
  br i1 %i.ry, label %bb.dw, label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i", %.lr.ph.i.i.i
  %i.rz = add nuw nsw i64 %i.rs, 1
  %i.sa = icmp eq ptr %i.rt, %i.rp
  br i1 %i.sa, label %.thread.i31.i.i, label %.lr.ph.i.i.i

bb.dw:                                            ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !13302)
  %i.sb = icmp ult i64 %i.ro, 576460752303423488
  call void @llvm.assume(i1 %i.sb)
  %.not.i.i21.i = icmp samesign ult i64 %i.rs, %i.ro
  br i1 %.not.i.i21.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h5b92fdbeec94a87aE.exit.i.i", label %.invoke.i, !prof !158

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h5b92fdbeec94a87aE.exit.i.i": ; preds = %bb.dw
  %i.sc = getelementptr inbounds nuw [16 x i8], ptr %i.rn, i64 %i.rs ; 4 uses
  %i.sd = load ptr, ptr %i.sc, align 8, !noalias !13305, !nonnull !27, !align !242, !noundef !27
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.sf = load i64, ptr %i.se, align 8, !noalias !13305, !noundef !27
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %i.sh = xor i64 %i.rs, -1                       ; 2 uses
  %i.si = add nsw i64 %i.ro, %i.sh
  %i.sj = shl nuw nsw i64 %i.si, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sc, ptr nonnull align 8 %i.sg, i64 %i.sj, i1 false), !noalias !13305
  %i.sk = add nsw i64 %i.ro, -1
  store i64 %i.sk, ptr %i.of, align 8, !alias.scope !13306, !noalias !13294
  call void @llvm.experimental.noalias.scope.decl(metadata !13307)
  %i.sl = getelementptr inbounds nuw i8, ptr %i.bv, i64 40 ; 2 uses
  %i.sm = load i64, ptr %i.sl, align 8, !alias.scope !13310, !noalias !13311, !noundef !27 ; 5 uses
  %i.sn = icmp ult i64 %i.sm, 88686269585142076
  call void @llvm.assume(i1 %i.sn)
  %.not.i10.i.i = icmp samesign ult i64 %i.rs, %i.sm
  br i1 %.not.i10.i.i, label %.noexc15.i, label %.invoke.i, !prof !158

.noexc15.i:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h5b92fdbeec94a87aE.exit.i.i"
  %i.so = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.sp = load ptr, ptr %i.so, align 8, !alias.scope !13310, !noalias !13311, !nonnull !27, !noundef !27
  %i.sq = getelementptr inbounds nuw [104 x i8], ptr %i.sp, i64 %i.rs ; 4 uses
  %.sroa.750.16.copyload51.i = load i64, ptr %i.sq, align 8, !noalias !13313 ; 4 uses
  %.sroa.1152.16..sroa_idx53.i = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.1152.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.1152.16..sroa_idx53.i, i64 96, i1 false), !noalias !13313
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 104
  %i.ss = add nsw i64 %i.sm, %i.sh
  %i.st = mul nuw nsw i64 %i.ss, 104
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sq, ptr nonnull align 8 %i.sr, i64 %i.st, i1 false), !noalias !13314
  %i.su = add nsw i64 %i.sm, -1
  store i64 %i.su, ptr %i.sl, align 8, !alias.scope !13310, !noalias !13311
  %.not.i.i3.i.i = icmp eq i64 %.sroa.750.16.copyload51.i, 2
  br i1 %.not.i.i3.i.i, label %.thread.i31.i.i, label %bb.dx

bb.dx:                                            ; preds = %.noexc15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !13315
  store i64 %.sroa.750.16.copyload51.i, ptr %i.ak, align 8, !noalias !13315
  %.sroa.1152.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.1152.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.1152.i, i64 96, i1 false), !noalias !13315
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1152.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !13315
  store i128 -66577216670116649405829880219356106879, ptr %i.ag, align 16, !noalias !13315
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg13infer_type_id17h498c56091c240590E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.ag)
          to label %bb.dy unwind label %bb.eb, !noalias !13315

.thread.i31.i.i:                                  ; preds = %.backedge.i.i.i, %.noexc15.i, %_ZN12clap_builder6parser5error12MatchesError6unwrap17h819d6749ce34ad0cE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1152.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !13287
  br label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17he104272615d5e95cE.exit.thread.i.i

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !13315
  %.sroa.04.0.copyload.i.i7.i.i = load i128, ptr %i.aj, align 16, !noalias !13315 ; 3 uses
  %i.sv = icmp eq i128 %.sroa.04.0.copyload.i.i7.i.i, -66577216670116649405829880219356106879
  %i.sw = trunc i128 %.sroa.04.0.copyload.i.i7.i.i to i64
  %i.sx = lshr i128 %.sroa.04.0.copyload.i.i7.i.i, 64
  %i.sy = trunc nuw i128 %i.sx to i64
  %i.sz = inttoptr i64 %i.sy to ptr
  br i1 %i.sv, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17hb24ff9f3f878308eE.exit.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !13315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !13315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ah, ptr noundef nonnull align 8 dereferenceable(104) %i.ak, i64 104, i1 false), !noalias !13315
  invoke fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$6insert17hce9832f7745547b4E"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bv, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.sd, i64 noundef %i.sf, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.ah)
          to label %.noexc16.i unwind label %bb.fc, !noalias !12778

.noexc16.i:                                       ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !13315
  %i.ta = load i64, ptr %i.ai, align 8, !range !322, !alias.scope !13319, !noalias !13315, !noundef !27
  %i.tb = icmp eq i64 %i.ta, 2
  br i1 %i.tb, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17he104272615d5e95cE.exit.thread75.i.i, label %bb.ea

bb.ea:                                            ; preds = %.noexc16.i
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17ha632cdb1b04d1f00E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.ai)
          to label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17he104272615d5e95cE.exit.thread75.i.i unwind label %bb.fc, !noalias !12778

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17he104272615d5e95cE.exit.thread75.i.i: ; preds = %bb.ea, %.noexc16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !13315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !13315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !13287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !13206
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i2.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !13206
  store ptr @1208, ptr %i.ab, align 8, !noalias !13322
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 4, ptr %i.tc, align 8, !noalias !13322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !13322
  br label %bb.fb

bb.eb:                                            ; preds = %bb.dx
  %lpad.thr_comm.split-lp.i.i4.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17ha632cdb1b04d1f00E"(ptr noalias noundef align 8 dereferenceable(104) %i.ak) #67
          to label %.body.i unwind label %bb.ec, !noalias !13315

bb.ec:                                            ; preds = %bb.eb
  %i.td = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !13315
  unreachable

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17hb24ff9f3f878308eE.exit.i.i.i: ; preds = %bb.dy
  %.sroa.7.0.copyload.i12.i.i = load i64, ptr %.sroa.1152.16..sroa_idx.i, align 8, !noalias !13326 ; 3 uses
  %.sroa.10.0..sroa_idx.i13.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.10.i1.sroa.0.0.copyload47.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i13.i.i, align 8, !noalias !13287 ; 3 uses
  %.sroa.10.i1.sroa.6.0..sroa.10.0..sroa_idx.i13.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.10.i1.sroa.6.0.copyload49.i.i = load ptr, ptr %.sroa.10.i1.sroa.6.0..sroa.10.0..sroa_idx.i13.sroa_idx.i.i, align 8, !noalias !13287 ; 3 uses
  %.sroa.11.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.11.0.copyload.i15.i.i = load i128, ptr %.sroa.11.0..sroa_idx.i14.i.i, align 8, !noalias !13326 ; 3 uses
  %.sroa.12.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i2.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx.i16.i.i, i64 56, i1 false), !noalias !13287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !13315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !13287
  %cond.i = icmp eq i64 %.sroa.750.16.copyload51.i, 3
  br i1 %cond.i, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17he104272615d5e95cE.exit.i.i, label %bb.ed

bb.ed:                                            ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17hb24ff9f3f878308eE.exit.i.i.i
  store i64 %.sroa.750.16.copyload51.i, ptr %i.an, align 8, !noalias !13287
  %.sroa.3.0..sroa_idx2.i17.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %.sroa.7.0.copyload.i12.i.i, ptr %.sroa.3.0..sroa_idx2.i17.i.i, align 8, !noalias !13287
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.10.i1.sroa.0.0.copyload47.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i18.i.i, align 8, !noalias !13287
  %.sroa.10.i1.sroa.6.0..sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i18.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %.sroa.10.i1.sroa.6.0.copyload49.i.i, ptr %.sroa.10.i1.sroa.6.0..sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i18.sroa_idx.i.i, align 8, !noalias !13287
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx.i19.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store i128 %.sroa.11.0.copyload.i15.i.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx.i19.i.i, align 8, !noalias !13287
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx2.sroa_idx.i20.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx2.sroa_idx.i20.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i2.i.i, i64 56, i1 false), !noalias !13287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !13287
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg17into_vals_flatten17h88b4e7d789f7178bE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.an)
          to label %.noexc18.i unwind label %bb.fc, !noalias !12778

.noexc18.i:                                       ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !13287
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8fa206786898471bE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.al, ptr noalias noundef align 8 dereferenceable(96) %i.am)
          to label %bb.ef unwind label %bb.ee, !noalias !13287

bb.ee:                                            ; preds = %.noexc18.i
  %i.te = landingpad { ptr, i32 }
          cleanup
  br label %.body.i21.i.i

.body.i21.i.i:                                    ; preds = %bb.ex, %bb.ew, %bb.er, %bb.eq, %bb.ei, %bb.eh, %bb.ee
  %eh.lpad-body.i22.i.i = phi { ptr, i32 } [ %i.ui, %bb.eq ], [ %i.te, %bb.ee ], [ %i.tp, %bb.eh ], [ %i.tp, %bb.ei ], [ %i.ui, %bb.er ], [ %i.uo, %bb.ex ], [ %i.uo, %bb.ew ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17he75efadae1c043d5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.am)
          to label %.body.i unwind label %bb.fa, !noalias !13287

bb.ef:                                            ; preds = %.noexc18.i
  %i.tf = load ptr, ptr %i.al, align 8, !noalias !13287, !noundef !27 ; 13 uses
  %.not9.i.i.i = icmp eq ptr %i.tf, null
  br i1 %.not9.i.i.i, label %bb.eu, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %.sroa.25.0..sroa_idx.i23.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.25.0.copyload.i24.i.i = load ptr, ptr %.sroa.25.0..sroa_idx.i23.i.i, align 8, !noalias !13287, !nonnull !27, !noundef !27 ; 4 uses
  %.sroa.36.0..sroa_idx.i25.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.36.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.36.0..sroa_idx.i25.i.i, align 8, !noalias !13287
  %.sroa.36.sroa.2.0..sroa.36.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.36.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.36.sroa.2.0..sroa.36.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !13287
  call void @llvm.experimental.noalias.scope.decl(metadata !13327)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !13330
  store ptr %i.tf, ptr %i.af, align 8, !noalias !13334
  %i.tg = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.sroa.25.0.copyload.i24.i.i, ptr %i.tg, align 8, !noalias !13334
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload.i24.i.i, i64 16
  %i.ti = load i64, ptr %i.th, align 8, !range !4400, !invariant.load !27, !alias.scope !13327, !noalias !13336
  %i.tj = add i64 %i.ti, -1
  %i.tk = and i64 %i.tj, -16
  %i.tl = getelementptr i8, ptr %i.tf, i64 %i.tk
  %i.tm = getelementptr i8, ptr %i.tl, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !13334
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload.i24.i.i, i64 24
  %i.to = load ptr, ptr %i.tn, align 8, !invariant.load !27, !alias.scope !13327, !noalias !13336, !nonnull !27
  invoke void %i.to(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ae, ptr noundef align 1 %i.tm)
          to label %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17h3da079edcdb74182E.exit.i.i.i.i" unwind label %bb.eh, !noalias !13336

bb.eh:                                            ; preds = %bb.eg
  %i.tp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tq = atomicrmw sub ptr %i.tf, i64 1 release, align 8, !noalias !13337
  %i.tr = icmp eq i64 %i.tq, 1
  br i1 %i.tr, label %bb.ei, label %.body.i21.i.i

bb.ei:                                            ; preds = %bb.eh
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %.body.i21.i.i unwind label %bb.ej, !noalias !13336

bb.ej:                                            ; preds = %bb.ei
  %i.ts = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !13336
  unreachable

"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17h3da079edcdb74182E.exit.i.i.i.i": ; preds = %bb.eg
  %i.tt = load i128, ptr %i.ae, align 16, !noalias !13334, !noundef !27
  %i.tu = icmp eq i128 %i.tt, -66577216670116649405829880219356106879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !13334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !13330
  br i1 %i.tu, label %bb.ek, label %bb.ev

bb.ek:                                            ; preds = %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17h3da079edcdb74182E.exit.i.i.i.i"
  %i.tv = cmpxchg ptr %i.tf, i64 1, i64 0 monotonic monotonic, align 8, !noalias !13342
  %.sroa.18.0.in.i.i.i.i28.i.i = extractvalue { i64, i1 } %i.tv, 1
  br i1 %.sroa.18.0.in.i.i.i.i28.i.i, label %bb.el, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he19e0e412ac8945aE.exit.thread.i.i.i.i"

bb.el:                                            ; preds = %bb.ek
  fence acquire
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %.sroa.016.0.copyload17.i.i.i.i = load i64, ptr %i.tw, align 8, !noalias !13330 ; 2 uses
  %.sroa.618.0..sroa_idx19.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tf, i64 24
  %.sroa.618.0.copyload20.i.i.i.i = load ptr, ptr %.sroa.618.0..sroa_idx19.i.i.i.i, align 8, !noalias !13330 ; 2 uses
  %.sroa.821.0..sroa_idx22.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tf, i64 32
  %.sroa.821.0.copyload23.i.i.i.i = load i64, ptr %.sroa.821.0..sroa_idx22.i.i.i.i, align 8, !noalias !13330
  %i.tx = icmp eq ptr %i.tf, inttoptr (i64 -1 to ptr)
  br i1 %i.tx, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he19e0e412ac8945aE.exit.i.i.i.i", label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.tz = atomicrmw sub ptr %i.ty, i64 1 release, align 8, !noalias !13342
  %i.ua = icmp eq i64 %i.tz, 1
  br i1 %i.ua, label %bb.en, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he19e0e412ac8945aE.exit.i.i.i.i"

bb.en:                                            ; preds = %bb.em
  fence acquire
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tf, i64 noundef 40, i64 noundef 8) #65, !noalias !13342
  br label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he19e0e412ac8945aE.exit.i.i.i.i"
end_hunk_0
begin_hunk_1_@_ZN5milli6update3new6merger20merge_and_send_rtree17h20f6c7f11be2e86fE:bb.a
  %i.te = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.te, align 8, !noalias !31872
  %i.tf = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.tf, align 8, !noalias !31872
  %i.tg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.tg, align 8, !noalias !31872
  %i.th = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %i.th, align 8, !noalias !31872
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #66
          to label %bb.gc unwind label %bb.gd, !noalias !31835

bb.gc:                                            ; preds = %bb.gf, %bb.gb
  unreachable

bb.gd:                                            ; preds = %bb.gb
  %i.ti = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h945f0b8ebda546daE"(ptr noalias noundef align 8 dereferenceable(72) %i.j) #67
          to label %.body.i1.i unwind label %bb.ge, !noalias !31835

bb.ge:                                            ; preds = %bb.gg, %bb.gd
  %i.tj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !31835
  unreachable

bb.gf:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17hb130c54c200a4761E.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !31872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !31872
  store ptr @217, ptr %i.g, align 8, !noalias !31872
  %.sroa.44.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hdede6b7140aa9959E", ptr %.sroa.44.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31872
  store ptr @214, ptr %i.h, align 8, !noalias !31872
  %i.tk = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.tk, align 8, !noalias !31872
  %i.tl = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.tl, align 8, !noalias !31872
  %i.tm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.tm, align 8, !noalias !31872
  %i.tn = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %i.tn, align 8, !noalias !31872
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #66
          to label %bb.gc unwind label %bb.gg, !noalias !31835

bb.gg:                                            ; preds = %bb.gf
  %i.to = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h945f0b8ebda546daE"(ptr noalias noundef align 8 dereferenceable(72) %i.l) #67
          to label %.body.i1.i unwind label %bb.ge, !noalias !31835

bb.gh:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17hb130c54c200a4761E.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !31872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !31872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !31872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false), !noalias !31872
  %i.tp = load i64, ptr %i.dw, align 8, !alias.scope !31949, !noalias !31952, !noundef !27 ; 3 uses
  %i.tq = load i64, ptr %i.p, align 8, !range !28, !alias.scope !31949, !noalias !31952, !noundef !27
  %i.tr = icmp eq i64 %i.tp, %i.tq
  br i1 %i.tr, label %bb.gi, label %bb.gl

bb.gi:                                            ; preds = %bb.gh
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4a41d8201b760b5bE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @219)
          to label %bb.gl unwind label %bb.gj, !noalias !31955

bb.gj:                                            ; preds = %bb.gi
  %i.ts = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr196drop_in_place$LT$$LP$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$usize$C$usize$RP$$GT$17h3752409f0bed46e3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.k) #67
          to label %.body.i1.i unwind label %bb.gk, !noalias !31835

bb.gk:                                            ; preds = %bb.gj
  %i.tt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !31955
  unreachable

bb.gl:                                            ; preds = %bb.gi, %bb.gh
  %i.tu = load ptr, ptr %i.dx, align 8, !alias.scope !31949, !noalias !31952, !nonnull !27, !noundef !27
  %i.tv = getelementptr inbounds nuw [88 x i8], ptr %i.tu, i64 %i.tp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.tv, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.k, i64 88, i1 false), !noalias !31835
  %i.tw = add i64 %i.tp, 1                        ; 2 uses
  store i64 %i.tw, ptr %i.dw, align 8, !alias.scope !31949, !noalias !31952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !31872
  br label %.backedge.i.i.i.i.i

bb.gm:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17hb130c54c200a4761E.exit24.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !31872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !31820
  store i64 0, ptr %i.dv, align 8, !alias.scope !31956, !noalias !31957
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h5dd23f9751df6cf0E.exit.i"

.loopexit.i.i.i336:                               ; preds = %.backedge.i.i.i.i.i, %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h3a9791a6163210e6E.exit.i.i.i.i.i", %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !31820
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h5dd23f9751df6cf0E.exit.i"

.loopexit.i.i:                                    ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17hf8eb9a0ed9e9e072E.exit.thread.i.i.i.i.i"
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1.i

.loopexit.split-lp.i.i:                           ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1.i

.body.i1.i:                                       ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.gj, %bb.gg, %bb.gd, %.body.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.to, %bb.gg ], [ %i.ts, %bb.gj ], [ %i.ro, %.body.i.i.i.i.i ], [ %i.ti, %bb.gd ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr450drop_in_place$LT$core..iter..adapters..take..Take$LT$rstar..algorithm..removal..DrainIterator$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$C$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$rstar..params..DefaultParams$GT$$GT$$GT$17ha005dbf5f953315aE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p) #67
          to label %.body342 unwind label %bb.gn, !noalias !31871

bb.gn:                                            ; preds = %.body.i1.i
  %i.tx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !31871
  unreachable

"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h5dd23f9751df6cf0E.exit.i": ; preds = %.loopexit.i.i.i336, %bb.gm
  invoke fastcc void @"_ZN4core3ptr450drop_in_place$LT$core..iter..adapters..take..Take$LT$rstar..algorithm..removal..DrainIterator$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$C$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$rstar..params..DefaultParams$GT$$GT$$GT$17ha005dbf5f953315aE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p)
          to label %bb.go unwind label %.loopexit615

bb.go:                                            ; preds = %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h5dd23f9751df6cf0E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !31778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !31961)
  %i.ty = lshr i32 %.sroa.11.sroa.0.0.insert.insert518, 16
  %i.tz = trunc nuw i32 %i.ty to i16              ; 3 uses
  %i.ua = trunc i32 %.sroa.11.sroa.0.0.insert.insert518 to i16
  %i.ub = load ptr, ptr %i.ea, align 8, !alias.scope !31961, !nonnull !27, !noundef !27 ; 2 uses
  %i.uc = load i64, ptr %i.eb, align 8, !alias.scope !31961, !noundef !27 ; 8 uses
  switch i64 %i.uc, label %.lr.ph.i.i.i350 [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
    i64 1, label %._crit_edge.i.i.i345
  ]

._crit_edge.i.i.i345:                             ; preds = %.lr.ph.i.i.i350, %bb.go
  %.sroa.05.0.lcssa.i.i.i346 = phi i64 [ 0, %bb.go ], [ %i.un, %.lr.ph.i.i.i350 ] ; 4 uses
  %i.ud = icmp ult i64 %.sroa.05.0.lcssa.i.i.i346, %i.uc
  call void @llvm.assume(i1 %i.ud)
  %i.ue = getelementptr inbounds nuw [32 x i8], ptr %i.ub, i64 %.sroa.05.0.lcssa.i.i.i346 ; 7 uses
  %i.uf = getelementptr i8, ptr %i.ue, i64 24
  %.val20.i.i.i347 = load i16, ptr %i.uf, align 8, !alias.scope !31964, !noalias !31969, !noundef !27 ; 2 uses
  %i.ug = icmp eq i16 %.val20.i.i.i347, %i.tz
  br i1 %i.ug, label %bb.gq, label %bb.gp

.lr.ph.i.i.i350:                                  ; preds = %bb.go, %.lr.ph.i.i.i350
  %.sroa.01.025.i.i.i351 = phi i64 [ %i.uo, %.lr.ph.i.i.i350 ], [ %i.uc, %bb.go ] ; 2 uses
  %.sroa.05.024.i.i.i352 = phi i64 [ %i.un, %.lr.ph.i.i.i350 ], [ 0, %bb.go ] ; 2 uses
  %i.uh = lshr i64 %.sroa.01.025.i.i.i351, 1      ; 2 uses
  %i.ui = add i64 %i.uh, %.sroa.05.024.i.i.i352   ; 3 uses
  %i.uj = icmp ult i64 %i.ui, %i.uc
  call void @llvm.assume(i1 %i.uj)
  %i.uk = getelementptr inbounds nuw [32 x i8], ptr %i.ub, i64 %i.ui
  %i.ul = getelementptr i8, ptr %i.uk, i64 24
  %.val22.i.i.i353 = load i16, ptr %i.ul, align 8, !alias.scope !31964, !noalias !31969, !noundef !27
  %i.um = icmp ugt i16 %.val22.i.i.i353, %i.tz
  %i.un = select i1 %i.um, i64 %.sroa.05.024.i.i.i352, i64 %i.ui, !unpredictable !27 ; 2 uses
  %i.uo = sub nuw i64 %.sroa.01.025.i.i.i351, %i.uh ; 2 uses
  %i.up = icmp ugt i64 %i.uo, 1
  br i1 %i.up, label %.lr.ph.i.i.i350, label %._crit_edge.i.i.i345

bb.gp:                                            ; preds = %._crit_edge.i.i.i345
  %i.uq = icmp ult i16 %.val20.i.i.i347, %i.tz
  %i.ur = zext i1 %i.uq to i64
  %i.us = add nuw i64 %.sroa.05.0.lcssa.i.i.i346, %i.ur
  %i.ut = icmp ule i64 %i.us, %i.uc
  call void @llvm.assume(i1 %i.ut)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.gq:                                            ; preds = %._crit_edge.i.i.i345
  %i.uu = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ue, i16 noundef %i.ua)
          to label %.noexc354 unwind label %.loopexit615

.noexc354:                                        ; preds = %bb.gq
  br i1 %i.uu, label %bb.gr, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.gr:                                            ; preds = %.noexc354
  %i.uv = load i64, ptr %i.ue, align 8, !range !8078, !noalias !31961, !noundef !27 ; 3 uses
  %i.uw = icmp eq i64 %i.uv, -9223372036854775808
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.uy = load i64, ptr %i.ux, align 8, !noalias !31961, !noundef !27 ; 2 uses
  br i1 %i.uw, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.uz = icmp ult i64 %i.uy, 4611686018427387904
  call void @llvm.assume(i1 %i.uz)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %.sroa.03.0.in.i = icmp eq i64 %i.uy, 0
  br i1 %.sroa.03.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hefa0dc75a9ffc0dcE.exit.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hefa0dc75a9ffc0dcE.exit.i": ; preds = %bb.gt
  call void @llvm.experimental.noalias.scope.decl(metadata !31971)
  %i.va = icmp ult i64 %i.uc, 288230376151711744
  call void @llvm.assume(i1 %i.va)
  %.sroa.4.0..sroa_idx.i349 = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i349, align 8, !noalias !31974 ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ue, i64 32
  %i.vc = xor i64 %.sroa.05.0.lcssa.i.i.i346, -1
  %i.vd = add nsw i64 %i.uc, %i.vc
  %i.ve = shl nuw nsw i64 %i.vd, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ue, ptr nonnull align 8 %i.vb, i64 %i.ve, i1 false), !noalias !31975
  %i.vf = add nsw i64 %i.uc, -1
  store i64 %i.vf, ptr %i.eb, align 8, !alias.scope !31974, !noalias !31977
  switch i64 %i.uv, label %bb.gu [
    i64 -9223372036854775808, label %bb.gv
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  ]

bb.gu:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hefa0dc75a9ffc0dcE.exit.i"
  %i.vg = shl nuw i64 %i.uv, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.vg, i64 noundef range(i64 1, -9223372036854775807) 2) #65, !noalias !31961
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.gv:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hefa0dc75a9ffc0dcE.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef 8192, i64 noundef 8) #65, !noalias !31961
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit": ; preds = %bb.gv, %bb.gu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hefa0dc75a9ffc0dcE.exit.i", %bb.gt, %.noexc354, %bb.gp, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.bz

"_ZN4core3ptr478drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$milli..update..new..extract..geo..ExtractedGeoPoint$GT$$GT$$C$core..result..Result$LT$milli..update..new..extract..geo..ExtractedGeoPoint$C$std..io..error..Error$GT$..Ok$GT$$C$core..iter..sources..from_fn..FromFn$LT$milli..update..new..extract..geo..iterator_over_spilled_geopoints..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1d2074b5fad41f4E.exit332": ; preds = %"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17h8ee36c451dfdb82aE.exit.i.i.i.i.i330", %bb.fa, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.ew

"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17h34401f696a7ee309E.exit327": ; preds = %"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17h8ee36c451dfdb82aE.exit.i3.i325", %"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$17h4912c3d61df54de8E.exit.i322", %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.gw

bb.gw:                                            ; preds = %"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17h34401f696a7ee309E.exit327", %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6376)
  br label %bb.gx

bb.gx:                                            ; preds = %.backedge.i.i.i.i, %bb.gw
  %.sroa.0.0.idx12.i.i.i.i = phi i64 [ 0, %bb.gw ], [ %.sroa.0.0.add.i.i.i.i, %.backedge.i.i.i.i ] ; 2 uses
  %.sroa.7.011.i.i.i.i = phi i64 [ 0, %bb.gw ], [ %i.vh, %.backedge.i.i.i.i ] ; 2 uses
  %.sroa.0.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.0.0.idx12.i.i.i.i
  %.sroa.0.0.add.i.i.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i.i, 8 ; 2 uses
  %i.vh = add nuw nsw i64 %.sroa.7.011.i.i.i.i, 1
  %i.vi = load ptr, ptr %.sroa.0.0.ptr.i.i.i.i, align 8, !alias.scope !31978, !noundef !27 ; 2 uses
  %i.vj = icmp eq ptr %i.vi, null
  br i1 %i.vj, label %.backedge.i.i.i.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.vk = shl nuw i64 1, %.sroa.7.011.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$$u5d$$GT$$GT$17h8676580a1f34c951E"(ptr nonnull %i.vi, i64 %i.vk)
          to label %.backedge.i.i.i.i unwind label %.loopexit

.backedge.i.i.i.i:                                ; preds = %bb.gy, %bb.gx
  %i.vl = icmp eq i64 %.sroa.0.0.add.i.i.i.i, 504
  br i1 %i.vl, label %"_ZN4core3ptr148drop_in_place$LT$milli..update..new..thread_local..IntoIter$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17h8d5ea8c7251eacfeE.exit", label %bb.gx

"_ZN4core3ptr148drop_in_place$LT$milli..update..new..thread_local..IntoIter$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17h8d5ea8c7251eacfeE.exit": ; preds = %.backedge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0366)
  br label %bb.bj

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit": ; preds = %bb.bm, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i", %bb.hd
  %.sroa.0125.8 = phi i8 [ 1, %bb.hd ], [ 0, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i" ], [ 0, %bb.bm ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.experimental.noalias.scope.decl(metadata !31987)
  call void @llvm.experimental.noalias.scope.decl(metadata !31990)
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h88ca1caf4a8dcee1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.bf)
          to label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E.exit.i.i358" unwind label %bb.gz, !inline_history !19030

bb.gz:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit"
  %i.vm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i356 = load i64, ptr %i.bf, align 8, !range !28, !alias.scope !31993, !noundef !27 ; 2 uses
  %i.vn = icmp eq i64 %.val2.i.i.i356, 0
  br i1 %i.vn, label %.body361, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.vo = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val3.i.i.i357 = load ptr, ptr %i.vo, align 8, !alias.scope !31993, !nonnull !27, !noundef !27
  %i.vp = mul nuw i64 %.val2.i.i.i356, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i357, i64 noundef %i.vp, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !31996, !inline_history !19034
  br label %.body361

"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E.exit.i.i358": ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit"
  %.val.i.i.i359 = load i64, ptr %i.bf, align 8, !range !28, !alias.scope !31993, !noundef !27 ; 2 uses
  %i.vq = icmp eq i64 %.val.i.i.i359, 0
  br i1 %i.vq, label %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h4ecc546dc0682d77E.exit", label %bb.hb

bb.hb:                                            ; preds = %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E.exit.i.i358"
  %i.vr = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val1.i.i.i360 = load ptr, ptr %i.vr, align 8, !alias.scope !31993, !nonnull !27, !noundef !27
  %i.vs = mul nuw i64 %.val.i.i.i359, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i360, i64 noundef %i.vs, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !31996, !inline_history !19034
  br label %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h4ecc546dc0682d77E.exit"

bb.hc:                                            ; preds = %bb.ai
  %i.vt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$17h3882b6daf7e8174cE"(ptr noalias noundef align 8 dereferenceable(136) %i.ba) #67
          to label %.thread453 unwind label %bb.r

bb.hd:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.am, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit"

"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h4ecc546dc0682d77E.exit": ; preds = %bb.hb, %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E.exit.i.i358", %bb.u
  %.sroa.0125.9 = phi i8 [ 1, %bb.u ], [ %.sroa.0125.8, %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E.exit.i.i358" ], [ %.sroa.0125.8, %bb.hb ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.vu = trunc nuw i8 %.sroa.0117.2 to i1
  br i1 %i.vu, label %bb.he, label %bb.hi

bb.he:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h4ecc546dc0682d77E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !31997)
  %i.vv = load i64, ptr %i.bk, align 8, !range !322, !alias.scope !31997, !noalias !32000, !noundef !27
  %.not.i.i363 = icmp eq i64 %i.vv, 2
  br i1 %.not.i.i363, label %.noexc364, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.vw = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.vw)
          to label %.noexc364 unwind label %.thread.thread

.noexc364:                                        ; preds = %bb.hf, %bb.he
  %i.vx = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !32000
  %i.vy = icmp eq i8 %i.vx, 0
  br i1 %i.vy, label %bb.hg, label %.thread609

bb.hg:                                            ; preds = %.noexc364
  %i.vz = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.wa = load ptr, ptr %i.vz, align 8, !alias.scope !31997, !noalias !32000, !align !241, !noundef !27 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.wa, null
  br i1 %.not4.i.i, label %.thread609, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32003
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %i.wc = load ptr, ptr %i.wb, align 8, !noalias !32000, !nonnull !27, !align !242, !noundef !27
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wa, i64 24
  %i.we = load i64, ptr %i.wd, align 8, !noalias !32000, !noundef !27
  store ptr %i.wc, ptr %i.b, align 8, !noalias !32003
  %i.wf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.we, ptr %i.wf, align 8, !noalias !32003
  store ptr %i.b, ptr %i.c, align 8, !noalias !32003
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hdede6b7140aa9959E", ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !32003
  store ptr @1857, ptr %i.d, align 8, !noalias !32003
  %i.wg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %i.wg, align 8, !noalias !32003
  %i.wh = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.wh, align 8, !noalias !32003
  %i.wi = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.wi, align 8, !noalias !32003
  %i.wj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %i.wj, align 8, !noalias !32003
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bk, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1858, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %.noexc365 unwind label %.thread.thread

.noexc365:                                        ; preds = %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32003
  br label %.thread609

bb.hi:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h4ecc546dc0682d77E.exit", %.thread609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %i.wk = trunc nuw i8 %.sroa.0125.9 to i1
  br i1 %i.wk, label %bb.hj, label %"_ZN4core3ptr151drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17h048a3094aec7a2b8E.exit"

.thread609:                                       ; preds = %.noexc364, %bb.hg, %.noexc365
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hdbae466239ccc932E"(ptr noalias noundef align 8 dereferenceable(40) %i.bk)
          to label %bb.hi unwind label %bb.bg

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.experimental.noalias.scope.decl(metadata !32004)
  call void @llvm.experimental.noalias.scope.decl(metadata !32007)
  call void @llvm.experimental.noalias.scope.decl(metadata !32010)
  br label %bb.hk

bb.hk:                                            ; preds = %.backedge.i.i.i, %bb.hj
  %.sroa.0.0.idx12.i.i.i = phi i64 [ 0, %bb.hj ], [ %.sroa.0.0.add.i.i.i, %.backedge.i.i.i ] ; 2 uses
  %.sroa.7.011.i.i.i = phi i64 [ 0, %bb.hj ], [ %i.wl, %.backedge.i.i.i ] ; 2 uses
  %.sroa.0.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx12.i.i.i
  %.sroa.0.0.add.i.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i, 8 ; 2 uses
  %i.wl = add nuw nsw i64 %.sroa.7.011.i.i.i, 1
  %i.wm = load ptr, ptr %.sroa.0.0.ptr.i.i.i, align 8, !alias.scope !32013, !noundef !27 ; 2 uses
  %i.wn = icmp eq ptr %i.wm, null
  br i1 %i.wn, label %.backedge.i.i.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.wo = shl nuw i64 1, %.sroa.7.011.i.i.i
  call fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$$u5d$$GT$$GT$17h8676580a1f34c951E"(ptr nonnull %i.wm, i64 %i.wo), !noalias !32013
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %bb.hl, %bb.hk
  %i.wp = icmp eq i64 %.sroa.0.0.add.i.i.i, 504
  br i1 %i.wp, label %"_ZN4core3ptr151drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17h048a3094aec7a2b8E.exit", label %bb.hk
end_hunk_1
begin_hunk_2_@"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h807849db75189ca0E":bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !46373, !nonnull !27, !noundef !27 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !46373, !noundef !27 ; 11 uses
  switch i64 %i.aq, label %.lr.ph.i.i.i [
    i64 0, label %bb.k
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.i ], [ %i.az, %.lr.ph.i.i.i ] ; 3 uses
  %i.ar = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.aq
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %.sroa.05.0.lcssa.i.i.i
  %.val20.i.i.i = load i16, ptr %i.as, align 2, !alias.scope !46374, !noalias !46377, !noundef !27 ; 2 uses
  %i.at = icmp eq i16 %.val20.i.i.i, %i.d
  br i1 %i.at, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22, label %bb.j

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i ], [ %i.aq, %bb.i ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.au = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.av = add i64 %i.au, %.sroa.05.024.i.i.i      ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.aq
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.av
  %.val22.i.i.i = load i16, ptr %i.ax, align 2, !alias.scope !46374, !noalias !46377, !noundef !27
  %i.ay = icmp ugt i16 %.val22.i.i.i, %i.d
  %i.az = select i1 %i.ay, i64 %.sroa.05.024.i.i.i, i64 %i.av, !unpredictable !27 ; 2 uses
  %i.ba = sub nuw i64 %.sroa.01.025.i.i.i, %i.au  ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, 1
  br i1 %i.bb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = icmp ult i16 %.val20.i.i.i, %i.d
  %i.bd = zext i1 %i.bc to i64
  %i.be = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ule i64 %i.be, %i.aq
  tail call void @llvm.assume(i1 %i.bf)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.be, %bb.j ], [ %i.aq, %bb.i ] ; 3 uses
  %i.bg = icmp ult i64 %i.aq, 4611686018427387904
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = load i64, ptr %i.am, align 8, !range !28, !alias.scope !46379, !noalias !46382, !noundef !27
  %i.bi = icmp eq i64 %i.aq, %i.bh
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1ce9a538e264a91eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1845)
  %.pre.i.i = load ptr, ptr %i.an, align 8, !alias.scope !46379, !noalias !46382
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bj = phi ptr [ %.pre.i.i, %bb.l ], [ %i.ao, %bb.k ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  %i.bl = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.aq
  br i1 %i.bl, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h6daf36892bc78d21E.exit.i.i"

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bn = sub nuw nsw i64 %i.aq, %.sroa.4.0.i.ph.i.i
  %i.bo = shl nuw nsw i64 %i.bn, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bm, ptr nonnull align 2 %i.bk, i64 %i.bo, i1 false)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h6daf36892bc78d21E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h6daf36892bc78d21E.exit.i.i": ; preds = %bb.n, %bb.m
  store i16 %i.d, ptr %i.bk, align 2
  %i.bp = add nuw nsw i64 %i.aq, 1
  store i64 %i.bp, ptr %i.ap, align 8, !alias.scope !46379, !noalias !46382
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

bb.o:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46384)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !46387, !nonnull !27, !noundef !27 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 24 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !46387, !noundef !27 ; 16 uses
  switch i64 %i.bt, label %.lr.ph.i.i.i.i [
    i64 0, label %.thread.i.i
    i64 1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17hfa073fd11801c9d9E.exit.i.i"
  ]

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %.lr.ph.i.i.i.i
  %.sroa.01.026.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bt, %bb.o ] ; 2 uses
  %.sroa.05.025.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i.i ], [ 0, %bb.o ] ; 2 uses
  %i.bu = lshr i64 %.sroa.01.026.i.i.i.i, 1       ; 2 uses
  %i.bv = add i64 %i.bu, %.sroa.05.025.i.i.i.i    ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.bt
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bv
  %i.by = getelementptr i8, ptr %i.bx, i64 2
  %.val22.i.i.i.i = load i16, ptr %i.by, align 2, !alias.scope !46388, !noalias !46393, !noundef !27
  %.not.i.i.i.i = icmp ult i16 %.val22.i.i.i.i, %i.d
  %i.bz = select i1 %.not.i.i.i.i, i64 %i.bv, i64 %.sroa.05.025.i.i.i.i, !unpredictable !27 ; 2 uses
  %i.ca = sub nuw i64 %.sroa.01.026.i.i.i.i, %i.bu ; 2 uses
  %i.cb = icmp ugt i64 %i.ca, 1
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17hfa073fd11801c9d9E.exit.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17hfa073fd11801c9d9E.exit.i.i": ; preds = %.lr.ph.i.i.i.i, %bb.o
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.o ], [ %i.bz, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.cc = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i, %i.bt
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.sroa.05.0.lcssa.i.i.i.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 2
  %.val20.i.i.i.i = load i16, ptr %i.ce, align 2, !alias.scope !46388, !noalias !46393, !noundef !27
  %i.cf = icmp ult i16 %.val20.i.i.i.i, %i.d
  %i.cg = zext i1 %i.cf to i64
  %i.ch = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.cg ; 8 uses
  %i.ci = icmp ule i64 %i.ch, %i.bt
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr [4 x i8], ptr %i.br, i64 %i.ch ; 7 uses
  %i.ck = sub nuw i64 %i.bt, %i.ch                ; 2 uses
  %.not9.i.i = icmp eq i64 %i.bt, %i.ch
  br i1 %.not9.i.i, label %.thread23.i.i, label %bb.p

bb.p:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17hfa073fd11801c9d9E.exit.i.i"
  %i.cl = load i16, ptr %i.cj, align 2, !noalias !46387, !noundef !27 ; 3 uses
  %.not10.i.i = icmp ugt i16 %i.cl, %i.d
  br i1 %.not10.i.i, label %bb.r, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22

bb.q:                                             ; preds = %bb.r
  %.not11.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not11.i.i, label %.thread.i.i, label %.thread23.i.i

bb.r:                                             ; preds = %bb.p
  %i.cm = add nuw i16 %i.d, 1
  %i.cn = icmp eq i16 %i.cl, %i.cm
  br i1 %i.cn, label %bb.s, label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.co = add i16 %i.cl, -1
  store i16 %i.co, ptr %i.cj, align 2, !noalias !46387
  %.not12.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not12.i.i, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread, label %bb.x

.thread23.i.i:                                    ; preds = %bb.q, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17hfa073fd11801c9d9E.exit.i.i"
  %i.cp = phi i64 [ %i.ck, %bb.q ], [ 0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17hfa073fd11801c9d9E.exit.i.i" ]
  %i.cq = getelementptr i8, ptr %i.cj, i64 -2     ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 2, !noalias !46387, !noundef !27
  %i.cs = add i16 %i.cr, 1
  %i.ct = icmp eq i16 %i.cs, %i.d
  br i1 %i.ct, label %bb.w, label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread23.i.i, %bb.q, %bb.o
  %.sroa.4.0.i.i1922.i.i = phi i64 [ %i.ch, %.thread23.i.i ], [ 0, %bb.q ], [ %i.bt, %bb.o ] ; 2 uses
  %i.cu = phi i64 [ %i.cp, %.thread23.i.i ], [ %i.ck, %bb.q ], [ %i.bt, %bb.o ]
  %i.cv = icmp ult i64 %i.bt, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = load i64, ptr %i.am, align 8, !range !28, !alias.scope !46396, !noundef !27
  %i.cx = icmp eq i64 %i.bt, %i.cw
  br i1 %i.cx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread.i.i
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8d5e9699404ee268E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1847)
  %.pre.i1.i = load ptr, ptr %i.bq, align 8, !alias.scope !46396
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread.i.i
  %i.cy = phi ptr [ %.pre.i1.i, %bb.t ], [ %i.br, %.thread.i.i ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.sroa.4.0.i.i1922.i.i ; 4 uses
  %i.da = icmp samesign ult i64 %.sroa.4.0.i.i1922.i.i, %i.bt
  br i1 %i.da, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h785fbae58038d4ebE.exit.i.i"

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dc = shl nuw nsw i64 %i.cu, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.db, ptr nonnull align 2 %i.cz, i64 %i.dc, i1 false)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h785fbae58038d4ebE.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h785fbae58038d4ebE.exit.i.i": ; preds = %bb.v, %bb.u
  store i16 %i.d, ptr %i.cz, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  store i16 %i.d, ptr %i.dd, align 2
  %i.de = add nuw nsw i64 %i.bt, 1
  store i64 %i.de, ptr %i.bs, align 8, !alias.scope !46396
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

bb.w:                                             ; preds = %.thread23.i.i
  store i16 %i.d, ptr %i.cq, align 2, !noalias !46387
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

bb.x:                                             ; preds = %bb.s
  %i.df = getelementptr i8, ptr %i.cj, i64 -2     ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !noalias !46387, !noundef !27
  %i.dh = add i16 %i.d, -1
  %i.di = icmp eq i16 %i.dg, %i.dh
  br i1 %i.di, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h137f9115462f251bE.exit.i.i", label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h137f9115462f251bE.exit.i.i": ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.dk = load i16, ptr %i.dj, align 2, !noalias !46387, !noundef !27
  store i16 %i.dk, ptr %i.df, align 2, !noalias !46387
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46399)
  %i.dl = icmp ult i64 %i.bt, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.dn = xor i64 %i.ch, -1
  %i.do = add nsw i64 %i.bt, %i.dn
  %i.dp = shl nuw nsw i64 %i.do, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cj, ptr nonnull align 2 %i.dm, i64 %i.dp, i1 false), !noalias !46402
  %i.dq = add nsw i64 %i.bt, -1
  store i64 %i.dq, ptr %i.bs, align 8, !alias.scope !46402
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit: ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46403)
  %.mask = and i32 %1, 65535
  %i.dr = zext nneg i32 %.mask to i64             ; 2 uses
  %i.ds = and i64 %i.dr, 63                       ; 2 uses
  %i.dt = lshr i64 %i.dr, 6
  %i.du = load ptr, ptr %i.am, align 8, !alias.scope !46406, !nonnull !27, !align !241, !noundef !27
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !46406, !noundef !27 ; 2 uses
  %i.dx = shl nuw i64 1, %i.ds
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = xor i64 %i.dy, %i.dw
  %i.ea = lshr i64 %i.dz, %i.ds                   ; 2 uses
  store i64 %i.dy, ptr %i.dv, align 8, !noalias !46406
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !46406, !noundef !27
  %i.ed = add i64 %i.ea, %i.ec
  store i64 %i.ed, ptr %i.eb, align 8, !alias.scope !46406
  %.not = icmp eq i64 %i.ea, 0
  br i1 %.not, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h137f9115462f251bE.exit.i.i", %bb.x, %bb.s, %bb.w, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h785fbae58038d4ebE.exit.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h6daf36892bc78d21E.exit.i.i", %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit
  %i.ee = tail call noundef zeroext i1 @_ZN7roaring6bitmap9container9Container20ensure_correct_store17hbe63faf056884c5aE(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.01.0) ; 0 uses
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22

_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22: ; preds = %bb.p, %._crit_edge.i.i.i, %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit, %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 13, 22) %2, ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(48) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 13 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 17 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !align !241, !noundef !27 ; 13 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !range !22140, !noundef !27
  %switch.offset = sub nuw nsw i64 5, %i.h
  %i.i = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.j = icmp ult i64 %i.i, 6
  tail call void @llvm.assume(i1 %i.j)
  %.not123 = icmp samesign ugt i64 %switch.offset, %i.i
  br i1 %.not123, label %bb.b, label %bb.c

bb.b:                                             ; preds = %switch.lookup, %bb.c, %bb.j, %bb.k, %bb.a
  ret void

bb.c:                                             ; preds = %switch.lookup
  %i.k = tail call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 3 uses
  store i64 5, ptr %i.e, align 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %.sroa.5103.0..sroa_idx, align 8
  %.sroa.7104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %2, ptr %.sroa.7104.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !27, !nonnull !27
  %i.p = call noundef zeroext i1 %i.o(ptr noundef align 1 %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  br i1 %i.p, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %0, align 8, !range !322, !noundef !27
  %.not124 = icmp eq i64 %i.q, 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  br i1 %.not124, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.s = load ptr, ptr %i.r, align 8, !align !242, !noundef !27 ; 2 uses
  %.not128.not = icmp eq ptr %i.s, null
  br i1 %.not128.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = load ptr, ptr %i.r, align 8, !align !242, !noundef !27 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.v = load i64, ptr %i.u, align 8
  %.not125 = icmp eq ptr %i.t, null               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !align !242, !noundef !27 ; 2 uses
  %.not126.not = icmp eq ptr %i.x, null
  %. = select i1 %.not125, i64 2, i64 1
  %.141 = select i1 %.not125, i64 undef, i64 %i.v
  br i1 %.not126.not, label %bb.k, label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.z = load i64, ptr %i.y, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %..sroa.530.sroa.4.0 = phi i64 [ %i.z, %bb.g ], [ undef, %bb.e ]
  %..sroa.028.0 = phi i64 [ 1, %bb.g ], [ 2, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !align !242, !noundef !27 ; 2 uses
  %.not129.not = icmp eq ptr %i.ab, null
  br i1 %.not129.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.ad = load i64, ptr %i.ac, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.556.sroa.4.0 = phi i64 [ %i.ad, %bb.i ], [ undef, %bb.h ]
  %.sroa.054.0 = phi i64 [ 1, %bb.i ], [ 2, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !range !13667, !noundef !27 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ah = load i32, ptr %i.ag, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !range !4400, !noundef !27
  store i64 %i.aj, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %3, ptr %i.b, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h90f15cc8560a1477E", ptr %.sroa.445.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.ak, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3277f427d6075caeE", ptr %.sroa.449.0..sroa_idx, align 8
  %i.al = trunc nuw i32 %i.af to i1
  %.sroa.559.0 = select i1 %i.al, i32 %i.ah, i32 undef
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @1855, ptr %i.an, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %i.b, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr null, ptr %.sroa.59.0..sroa_idx, align 8
  store i64 %..sroa.028.0, ptr %i.d, align 8
  %.sroa.552.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.s, ptr %.sroa.552.0..sroa_idx53, align 8
  %.sroa.552.sroa.4.0..sroa.552.0..sroa_idx53.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %..sroa.530.sroa.4.0, ptr %.sroa.552.sroa.4.0..sroa.552.0..sroa_idx53.sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.054.0, ptr %i.ao, align 8
  %.sroa.556.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.ab, ptr %.sroa.556.0..sroa_idx57, align 8
  %.sroa.556.sroa.4.0..sroa.556.0..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.556.sroa.4.0, ptr %.sroa.556.sroa.4.0..sroa.556.0..sroa_idx57.sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.af, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %.sroa.559.0, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !27, !nonnull !27
  call void %i.as(ptr noundef align 1 %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

.sink.split:                                      ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.au = load i64, ptr %i.at, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %.sink.split
  %.sroa.097.0 = phi i64 [ 1, %.sink.split ], [ 2, %bb.f ]
  %.sroa.7.sroa.6.1 = phi i64 [ %i.au, %.sink.split ], [ undef, %bb.f ]
  %.sroa.021.3.in = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.021.3 = load i32, ptr %.sroa.021.3.in, align 8, !range !13667, !noundef !27 ; 2 uses
  %.sroa.623.3.in = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.623.3 = load i32, ptr %.sroa.623.3.in, align 4
  %i.av = trunc nuw i32 %.sroa.021.3 to i1
  %.sroa.623.3. = select i1 %i.av, i32 %.sroa.623.3, i32 undef
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  store i64 %., ptr %i.a, align 8
  %.sroa.9.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %.sroa.9.0..sroa_idx96, align 8
  %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx96.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.141, ptr %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx96.sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.097.0, ptr %i.ay, align 8
  %.sroa.7.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.x, ptr %.sroa.7.0..sroa_idx99, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx99.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
end_hunk_2
