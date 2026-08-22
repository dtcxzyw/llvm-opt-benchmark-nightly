Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.04?download=true
inline.NumInlined: 4750
inline.NumDeleted: 2179
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 18
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h5ab6833581725e24E":bb.a

bb.bb:                                            ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$anki..backend..dbproxy..SqlValue$GT$$GT$17h9e93fd61c4936bc7E.exit.i.i"
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.thread16.i unwind label %bb.bc, !noalias !206

bb.bc:                                            ; preds = %bb.bb
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !206
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i": ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$anki..backend..dbproxy..SqlValue$GT$$GT$17h9e93fd61c4936bc7E.exit.i.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.sink.split.i unwind label %.thread21.i, !noalias !199

bb.bd:                                            ; preds = %bb.au, %.body.i.i
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !206
  unreachable

.thread21.i:                                      ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i", %bb.al, %bb.ah
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread16.i

bb.be:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.028.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.028.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !206
  %.sroa.028.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.028.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.028.24..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.028.i.i, i64 48, i1 false), !noalias !250
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.ej, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !alias.scope !249, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.028.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !206
  %.pr.pre.i = load i64, ptr %0, align 8, !alias.scope !196, !noalias !286
  %i.eu = icmp eq i64 %.pr.pre.i, -9223372036854775804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !206
  br i1 %i.eu, label %bb.bf, label %bb.bg

.sink.split.i:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i", %.thread24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !206
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !199
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1729fae17c83cb11E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ak), !noalias !199
  br label %_ZN5serde7private2de7content17visit_content_seq17h017dc1c6b3ee3f8aE.exit

bb.bg:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !noalias !286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !199
  %.sroa.4.0.copyload.i = load i64, ptr %i.dp, align 8, !noalias !199 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !290, !noalias !287, !nonnull !13, !noundef !13 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !290, !noalias !287, !nonnull !13, !noundef !13 ; 2 uses
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1729fae17c83cb11E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %.noexc9.i unwind label %bb.bi, !noalias !199

.noexc9.i:                                        ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !287
  %i.ez = icmp eq ptr %i.ew, %i.ey
  br i1 %i.ez, label %bb.bk, label %bb.bh, !prof !85

bb.bh:                                            ; preds = %.noexc9.i
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ew to i64
  %i.fc = sub nuw i64 %i.fb, %i.fa
  %i.fd = lshr exact i64 %i.fc, 5
  %i.fe = add i64 %i.fd, %.sroa.4.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !287
  store i64 %.sroa.4.0.copyload.i, ptr %i.z, align 8, !noalias !287
  %i.ff = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %i.fe, ptr noundef nonnull align 1 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @528)
          to label %bb.bj unwind label %bb.bi, !noalias !199

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$anki..backend..dbproxy..DbRequest$GT$17hc31140c8ce1fd4bbE"(ptr noalias noundef align 8 dereferenceable(56) %i.aj) #39
          to label %common.resume unwind label %bb.bl, !noalias !199

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !287
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ff, ptr %i.fh, align 8, !alias.scope !196, !noalias !286
  store i64 -9223372036854775804, ptr %0, align 8, !alias.scope !196, !noalias !286
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$anki..backend..dbproxy..DbRequest$GT$17hc31140c8ce1fd4bbE"(ptr noalias noundef align 8 dereferenceable(56) %i.aj), !noalias !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !199
  br label %_ZN5serde7private2de7content17visit_content_seq17h017dc1c6b3ee3f8aE.exit

bb.bk:                                            ; preds = %.noexc9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !199
  br label %_ZN5serde7private2de7content17visit_content_seq17h017dc1c6b3ee3f8aE.exit

bb.bl:                                            ; preds = %.thread16.i, %bb.bi
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !199
  unreachable

.thread16.i:                                      ; preds = %.thread21.i, %bb.bb, %.body.i.i
  %eh.lpad-body19.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread21.i ], [ %i.er, %bb.bb ], [ %.pn.i.i, %.body.i.i ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1729fae17c83cb11E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %common.resume unwind label %bb.bl, !noalias !199

_ZN5serde7private2de7content17visit_content_seq17h017dc1c6b3ee3f8aE.exit: ; preds = %bb.bf, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !199
  br label %bb.gi

bb.bm:                                            ; preds = %bb.a
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.023.0.copyload = load i64, ptr %i.fj, align 8
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.224.0.copyload = load ptr, ptr %.sroa.224.0..sroa_idx, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %.sroa.325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.325.0.copyload = load i64, ptr %.sroa.325.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !296
  %i.fk = icmp ult i64 %.sroa.325.0.copyload, 144115188075855872
  tail call void @llvm.assume(i1 %i.fk)
  %.idx.i7 = shl nuw nsw i64 %.sroa.325.0.copyload, 6
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.224.0.copyload, i64 %.idx.i7
  %i.fm = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  store ptr %.sroa.224.0.copyload, ptr %i.fm, align 8, !noalias !296
  %.sroa.4.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 3 uses
  store ptr %.sroa.224.0.copyload, ptr %.sroa.4.0..sroa_idx.i8, align 8, !noalias !296
  %.sroa.5.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store i64 %.sroa.023.0.copyload, ptr %.sroa.5.0..sroa_idx.i9, align 8, !noalias !296
  %.sroa.6.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 2 uses
  store ptr %i.fl, ptr %.sroa.6.0..sroa_idx.i10, align 8, !noalias !296
  store i8 22, ptr %i.y, align 8, !noalias !296
  %i.fn = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 3 uses
  store i64 0, ptr %i.fn, align 8, !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !303
  store i64 -9223372036854775808, ptr %i.v, align 8, !noalias !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !303
  store i64 -9223372036854775808, ptr %i.u, align 8, !noalias !303
  %i.fo = icmp eq i64 %.sroa.325.0.copyload, 0
  br i1 %i.fo, label %.thread.thread.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.lr.ph.i.i"

.thread.thread.i.i:                               ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !303
  br label %bb.ep

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.lr.ph.i.i": ; preds = %bb.bm
  %.sroa.8.0..sroa_idx12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i143.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i144.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i135.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.591.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.692.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.640.0..sroa_idx41.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.sroa.743.0..sroa_idx44.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.588.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.689.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.622.0..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.i.i": ; preds = %bb.dv, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.lr.ph.i.i"
  %i.fx = phi ptr [ %.sroa.224.0.copyload, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.lr.ph.i.i" ], [ %i.ls, %bb.dv ] ; 4 uses
  %.sroa.046.0212.i.i = phi i8 [ 2, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.046.1.i.i, %bb.dv ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 64
  store ptr %i.fy, ptr %.sroa.4.0..sroa_idx.i8, align 8, !alias.scope !313, !noalias !314
  %.sroa.0.0.copyload.i.i.i.i.i = load i8, ptr %i.fx, align 8, !noalias !320 ; 2 uses
  %.not.i.i.i.i.i12 = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i12, label %.thread.i.i, label %bb.bn

bb.bn:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.i.i"
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.fz = load i64, ptr %i.fn, align 8, !alias.scope !321, !noalias !322, !noundef !13
  %i.ga = add i64 %i.fz, 1
  store i64 %i.ga, ptr %i.fn, align 8, !alias.scope !321, !noalias !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !323
  store i8 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.m, align 8, !noalias !323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx12.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i.i.i, i64 31, i1 false), !noalias !322
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 1 dereferenceable(32) %i.gb, i64 32, i1 false), !noalias !322
  %i.gc = load i8, ptr %i.y, align 8, !range !157, !alias.scope !324, !noalias !322, !noundef !13
  %i.gd = icmp eq i8 %i.gc, 22
  br i1 %i.gd, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i", label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i" unwind label %bb.dd, !noalias !322

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i": ; preds = %bb.bo, %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !323
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !342
  %i.ge = load i8, ptr %i.j, align 8, !range !180, !alias.scope !343, !noalias !344, !noundef !13
  switch i8 %i.ge, label %.noexc6.i.i.i.i.i [
    i8 1, label %bb.bp
    i8 4, label %bb.bq
    i8 12, label %bb.br
    i8 13, label %bb.bz
    i8 14, label %bb.cd
    i8 15, label %bb.ce
  ], !prof !183

.noexc6.i.i.i.i.i:                                ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !323
  %i.gf = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h20b8a4eb6bb5eaacE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15)
          to label %.noexc.i.i20 unwind label %.loopexit.i.i, !noalias !346

.noexc.i.i20:                                     ; preds = %.noexc6.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !345
  store ptr %i.gf, ptr %i.fw, align 8, !alias.scope !347, !noalias !348
  store i8 1, ptr %i.k, align 8, !alias.scope !347, !noalias !348
  br label %.noexc117.i.i

bb.bp:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i"
  %i.gg = load i8, ptr %i.fv, align 1, !alias.scope !343, !noalias !344, !noundef !13
  invoke void @_ZN10serde_core2de7Visitor8visit_u817he06e175004d85161E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, i8 noundef %i.gg)
          to label %_ZN10serde_core2de7Visitor12visit_string17h910cae6a0ea79c42E.exit.i.thread1.i.i.i.i.i.i.i unwind label %bb.db, !noalias !349

bb.bq:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i"
  %i.gh = load i64, ptr %i.fp, align 8, !alias.scope !343, !noalias !344, !noundef !13
  %.sink1.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gh, i64 3)
  %.sink.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sink1.i.i.i.i.i.i.i.i.i to i8
  br label %_ZN10serde_core2de7Visitor12visit_string17h910cae6a0ea79c42E.exit.i.i.i.i.i.i.i.i

bb.br:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fs, i64 24, i1 false), !noalias !323
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.gi = load ptr, ptr %i.ft, align 8, !alias.scope !353, !noalias !355, !nonnull !13, !noundef !13 ; 5 uses
  %i.gj = load i64, ptr %i.fu, align 8, !alias.scope !353, !noalias !355, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  switch i64 %i.gj, label %bb.bv [
    i64 3, label %bb.bs
    i64 4, label %bb.bt
    i64 14, label %bb.bu
  ]

bb.bs:                                            ; preds = %bb.br
  %i.gk = load i16, ptr %i.gi, align 1
  %i.gl = xor i16 %i.gk, 29043
  %i.gm = getelementptr i8, ptr %i.gi, i64 2
  %i.gn = load i8, ptr %i.gm, align 1
  %i.go = zext i8 %i.gn to i16
  %i.gp = xor i16 %i.go, 108
  %i.gq = or i16 %i.gl, %i.gp
  %i.gr = icmp ne i16 %i.gq, 0
  %i.gs = zext i1 %i.gr to i32
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.bw, label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.gu = load i32, ptr %i.gi, align 1
  %i.gv = icmp ne i32 %i.gu, 1936159329
  %i.gw = zext i1 %i.gv to i32
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.bw, label %bb.bv

bb.bu:                                            ; preds = %bb.br
  %i.gy = load i64, ptr %i.gi, align 1
  %i.gz = xor i64 %i.gy, 8030586039312738662
  %i.ha = getelementptr i8, ptr %i.gi, i64 6
  %i.hb = load i64, ptr %i.ha, align 1
  %i.hc = xor i64 %i.hb, 8749489600696119154
  %i.hd = or i64 %i.gz, %i.hc
  %i.he = icmp ne i64 %i.hd, 0
  %i.hf = zext i1 %i.he to i32
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.bt ], [ 3, %bb.bv ], [ 2, %bb.bu ], [ 0, %bb.bs ]
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i, ptr %i.fr, align 1, !alias.scope !359, !noalias !360
  store i8 0, ptr %i.k, align 8, !alias.scope !359, !noalias !360
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i.i.i.i" unwind label %bb.bx, !noalias !362

bb.bx:                                            ; preds = %bb.bw
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i.i13 unwind label %bb.by, !noalias !362

bb.by:                                            ; preds = %bb.bx
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !362
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.bw
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc117.i.i unwind label %.loopexit.i.i, !noalias !346

bb.bz:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i"
  %i.hj = load ptr, ptr %i.fp, align 8, !alias.scope !343, !noalias !344, !nonnull !13, !align !154, !noundef !13 ; 5 uses
  %i.hk = load i64, ptr %i.fq, align 8, !alias.scope !343, !noalias !344, !noundef !13
  switch i64 %i.hk, label %bb.ch [
    i64 3, label %bb.ca
    i64 4, label %bb.cb
    i64 14, label %bb.cc
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.hl = load i16, ptr %i.hj, align 1
  %i.hm = xor i16 %i.hl, 29043
  %i.hn = getelementptr i8, ptr %i.hj, i64 2
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = zext i8 %i.ho to i16
  %i.hq = xor i16 %i.hp, 108
  %i.hr = or i16 %i.hm, %i.hq
  %i.hs = icmp ne i16 %i.hr, 0
  %i.ht = zext i1 %i.hs to i32
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %_ZN10serde_core2de7Visitor12visit_string17h910cae6a0ea79c42E.exit.i.i.i.i.i.i.i.i, label %bb.ch

bb.cb:                                            ; preds = %bb.bz
  %i.hv = load i32, ptr %i.hj, align 1
  %i.hw = icmp ne i32 %i.hv, 1936159329
  %i.hx = zext i1 %i.hw to i32
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %_ZN10serde_core2de7Visitor12visit_string17h910cae6a0ea79c42E.exit.i.i.i.i.i.i.i.i, label %bb.ch

bb.cc:                                            ; preds = %bb.bz
  %i.hz = load i64, ptr %i.hj, align 1
  %i.ia = xor i64 %i.hz, 8030586039312738662
  %i.ib = getelementptr i8, ptr %i.hj, i64 6
  %i.ic = load i64, ptr %i.ib, align 1
  %i.id = xor i64 %i.ic, 8749489600696119154
  %i.ie = or i64 %i.ia, %i.id
  %i.if = icmp ne i64 %i.ie, 0
  %i.ig = zext i1 %i.if to i32
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %_ZN10serde_core2de7Visitor12visit_string17h910cae6a0ea79c42E.exit.i.i.i.i.i.i.i.i, label %bb.ch

bb.cd:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.fs, i64 24, i1 false), !noalias !323
  invoke void @_ZN10serde_core2de7Visitor14visit_byte_buf17hce5f9310d9e037a4E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc117.i.i unwind label %.loopexit.i.i, !noalias !346

bb.ce:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i"
  %i.ii = load ptr, ptr %i.fp, align 8, !alias.scope !343, !noalias !344, !nonnull !13, !align !154, !noundef !13 ; 21 uses
  %i.ij = load i64, ptr %i.fq, align 8, !alias.scope !343, !noalias !344, !noundef !13
  switch i64 %i.ij, label %bb.ch [
    i64 3, label %bb.cf
    i64 4, label %bb.cj
    i64 14, label %bb.cn
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.ik = load i8, ptr %i.ii, align 1, !alias.scope !363, !noalias !368, !noundef !13
  %i.il = icmp eq i8 %i.ik, 115
  br i1 %i.il, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  %i.in = load i8, ptr %i.im, align 1, !alias.scope !363, !noalias !368, !noundef !13
  %i.io = icmp eq i8 %i.in, 113
  br i1 %i.io, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.cg, %bb.cf, %bb.ce, %bb.cc, %bb.cb, %bb.ca, %bb.bz
  br label %_ZN10serde_core2de7Visitor12visit_string17h910cae6a0ea79c42E.exit.i.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %i.iq = load i8, ptr %i.ip, align 1, !alias.scope !363, !noalias !368, !noundef !13
  %i.ir = icmp eq i8 %i.iq, 108
  br i1 %i.ir, label %_ZN10serde_core2de7Visitor12visit_string17h910cae6a0ea79c42E.exit.i.i.i.i.i.i.i.i, label %bb.ch
end_hunk_0
begin_hunk_1_@"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h8daa3aec2f8a651eE":bb.a
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h407a6598365e8f3aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.as unwind label %.thread139, !inline_history !610

.thread139:                                       ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17hf8b14a53e81efd4aE.exit.i"
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.thread135

bb.an:                                            ; preds = %.noexc65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4102.0..sroa_idx, i64 7, i1 false), !noalias !612
  %.sroa.5103.0.copyload = load ptr, ptr %.sroa.5103.0..sroa_idx, align 8, !noalias !606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6104.0..sroa_idx, i64 16, i1 false), !noalias !612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !606
  store i8 %i.et, ptr %i.af, align 8, !noalias !592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, i64 7, i1 false)
  store ptr %.sroa.5103.0.copyload, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %i.fb = load i64, ptr %i.en, align 8, !alias.scope !613, !noalias !616, !noundef !13 ; 3 uses
  %i.fc = load i64, ptr %i.ag, align 8, !range !163, !alias.scope !613, !noalias !616, !noundef !13
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.ao, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hec1b7bb7c42684c1E.exit.i"

bb.ao:                                            ; preds = %bb.an
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha0fd1bf708344747E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hec1b7bb7c42684c1E.exit.i" unwind label %bb.ap, !noalias !618, !inline_history !610

bb.ap:                                            ; preds = %bb.ao
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af) #39
          to label %.body.i unwind label %bb.aq, !noalias !600, !inline_history !610

bb.aq:                                            ; preds = %bb.ap
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !600, !inline_history !610
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hec1b7bb7c42684c1E.exit.i": ; preds = %bb.ao, %bb.an
  %i.fg = load ptr, ptr %i.em, align 8, !alias.scope !613, !noalias !616, !nonnull !13, !noundef !13
  %i.fh = getelementptr inbounds nuw [32 x i8], ptr %i.fg, i64 %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !noalias !600
  %i.fi = add i64 %i.fb, 1
  store i64 %i.fi, ptr %i.en, align 8, !alias.scope !613, !noalias !616
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.fj = load ptr, ptr %.sroa.6.0..sroa_idx.i28, align 8, !alias.scope !619, !noalias !602, !nonnull !13, !noundef !13
  %i.fk = load ptr, ptr %.sroa.4.0..sroa_idx.i27, align 8, !alias.scope !619, !noalias !602, !nonnull !13, !noundef !13 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.fj
  br i1 %i.fl, label %.thread141, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h79c1c8500e58a543E.exit.i"

.thread141:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hec1b7bb7c42684c1E.exit.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h79c1c8500e58a543E.exit.i", %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i38)
  %.sroa.4.8..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %.sroa.4.i38, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx.i41, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  store i8 4, ptr %0, align 8, !alias.scope !589, !noalias !611
  %.sroa.4.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i42, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.i38, i64 31, i1 false), !noalias !611
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.au

bb.ar:                                            ; preds = %.body.i
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !600, !inline_history !610
  unreachable

bb.as:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17hf8b14a53e81efd4aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !592
  %.pr = load i8, ptr %0, align 8, !alias.scope !584, !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.fn = icmp eq i8 %.pr, 6
  br i1 %i.fn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !587
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1729fae17c83cb11E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.an), !noalias !587
  br label %bb.az

bb.au:                                            ; preds = %.thread141, %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !noalias !622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false), !noalias !587
  %.sroa.4.0.copyload = load i64, ptr %i.el, align 8, !noalias !587 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !626, !noalias !623, !nonnull !13, !noundef !13 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !626, !noalias !623, !nonnull !13, !noundef !13 ; 2 uses
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1729fae17c83cb11E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %.noexc unwind label %bb.aw

.noexc:                                           ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !623
  %i.fs = icmp eq ptr %i.fp, %i.fr
  br i1 %i.fs, label %bb.ay, label %bb.av, !prof !85

bb.av:                                            ; preds = %.noexc
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fp to i64
  %i.fv = sub nuw i64 %i.fu, %i.ft
  %i.fw = lshr exact i64 %i.fv, 5
  %i.fx = add i64 %i.fw, %.sroa.4.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !623
  store i64 %.sroa.4.0.copyload, ptr %i.ah, align 8, !noalias !623
  %i.fy = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %i.fx, ptr noundef nonnull align 1 %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @528)
          to label %bb.ax unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %i.am) #39
          to label %common.resume unwind label %bb.ba, !noalias !587, !inline_history !629

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !623
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fy, ptr %i.ga, align 8, !alias.scope !584, !noalias !622
  store i8 6, ptr %0, align 8, !alias.scope !584, !noalias !622
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %i.am), !noalias !587, !inline_history !629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !587
  br label %bb.az

bb.ay:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !587
  br label %_ZN5serde7private2de7content17visit_content_seq17hf04e710be8336e48E.exit

bb.az:                                            ; preds = %bb.ax, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !587
  br label %_ZN5serde7private2de7content17visit_content_seq17hf04e710be8336e48E.exit

bb.ba:                                            ; preds = %.thread135, %bb.aw
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !587, !inline_history !629
  unreachable

common.resume:                                    ; preds = %bb.ds, %bb.dt, %.thread194, %bb.dn, %bb.di, %bb.dj, %bb.aw, %.thread135
  %common.resume.op = phi { ptr, i32 } [ %i.lc, %bb.dn ], [ %eh.lpad-body138, %.thread135 ], [ %i.kv, %bb.di ], [ %i.lg, %bb.dt ], [ %i.fz, %bb.aw ], [ %i.kv, %bb.dj ], [ %i.lf, %bb.ds ], [ %eh.lpad-body57197, %.thread194 ]
  resume { ptr, i32 } %common.resume.op

.thread135:                                       ; preds = %.body.i, %bb.al, %.thread139
  %eh.lpad-body138 = phi { ptr, i32 } [ %i.fa, %.thread139 ], [ %eh.lpad-body.i, %.body.i ], [ %i.ey, %bb.al ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1729fae17c83cb11E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.an)
          to label %common.resume unwind label %bb.ba

bb.bb:                                            ; preds = %bb.a
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.076.0.copyload = load i64, ptr %i.gc, align 8
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.277.0.copyload = load ptr, ptr %.sroa.277.0..sroa_idx, align 8, !nonnull !13, !noundef !13 ; 7 uses
  %.sroa.378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.378.0.copyload = load i64, ptr %.sroa.378.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !633
  %i.gd = icmp ult i64 %.sroa.378.0.copyload, 144115188075855872
  tail call void @llvm.assume(i1 %i.gd)
  %.idx = shl nuw nsw i64 %.sroa.378.0.copyload, 6
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.277.0.copyload, i64 %.idx
  %i.gf = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  store ptr %.sroa.277.0.copyload, ptr %i.gf, align 8, !noalias !633
  %.sroa.4.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 5 uses
  store ptr %.sroa.277.0.copyload, ptr %.sroa.4.0..sroa_idx.i29, align 8, !noalias !633
  %.sroa.5.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 %.sroa.076.0.copyload, ptr %.sroa.5.0..sroa_idx.i30, align 8, !noalias !633
  %.sroa.6.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 3 uses
  store ptr %i.ge, ptr %.sroa.6.0..sroa_idx.i31, align 8, !noalias !633
  store i8 22, ptr %i.al, align 8, !noalias !633
  %i.gg = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 4 uses
  store i64 0, ptr %i.gg, align 8, !noalias !633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !633
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638), !noalias !641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642), !noalias !641
  %i.gh = icmp eq i64 %.sroa.378.0.copyload, 0
  br i1 %i.gh, label %.thread156, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i": ; preds = %bb.bb
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.277.0.copyload, i64 64
  store ptr %i.gi, ptr %.sroa.4.0..sroa_idx.i29, align 8, !alias.scope !645, !noalias !646
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %.sroa.277.0.copyload, align 8, !noalias !651 ; 4 uses
  %.not.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i, 22
  br i1 %.not.i.i.i, label %.thread156, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i"
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.277.0.copyload, i64 1
  store i64 1, ptr %i.gg, align 8, !alias.scope !638, !noalias !652
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i, i64 31, i1 false), !noalias !653
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.277.0.copyload, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 1 dereferenceable(32) %i.gj, i64 32, i1 false), !noalias !652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !654
  store i8 %.sroa.0.0.copyload.i.i.i, ptr %i.u, align 8, !noalias !654
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6, i64 31, i1 false), !noalias !654
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656), !noalias !641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659), !noalias !641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661), !noalias !641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664), !noalias !641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666), !noalias !641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669), !noalias !641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !671
  switch i8 %.sroa.0.0.copyload.i.i.i, label %.thread20.i.i.i [
    i8 12, label %bb.bc
    i8 13, label %bb.bi
    i8 14, label %bb.bj
    i8 15, label %bb.bk
  ], !prof !672

.thread20.i.i.i:                                  ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !673
  store i8 %.sroa.0.0.copyload.i.i.i, ptr %i.r, align 8, !noalias !654
  %.sroa.6.0..sroa_idx217 = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx217, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6, i64 31, i1 false), !noalias !654
  %i.gk = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h20b8a4eb6bb5eaacE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.r, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12)
          to label %.noexc52 unwind label %.thread199, !inline_history !674

.noexc52:                                         ; preds = %.thread20.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !654
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h36b2a7c0ca2efbd9E.exit.i.thread151"

bb.bc:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i"
  %.sroa.6.8..sroa_idx218 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 7 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx218, i64 24, i1 false), !noalias !654
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675), !noalias !641
  %i.gl = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !675, !noalias !678, !noundef !13
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.gm, 30
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gn = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !675, !noalias !678, !nonnull !13, !noundef !13 ; 2 uses
  %i.gp = load i128, ptr %i.go, align 1
  %i.gq = xor i128 %i.gp, 140163137642481810540487027204030821156
  %i.gr = getelementptr i8, ptr %i.go, i64 14
  %i.gs = load i128, ptr %i.gr, align 1
  %i.gt = xor i128 %i.gs, 134861724518854068863416560771000592754
  %i.gu = or i128 %i.gq, %i.gt
  %i.gv = icmp ne i128 %i.gu, 0
  %i.gw = zext i1 %i.gv to i32
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx218, i64 24, i1 false), !noalias !654
  br label %.noexc54

bb.bf:                                            ; preds = %bb.bd
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i.i" unwind label %bb.bg, !noalias !680, !inline_history !674

bb.bg:                                            ; preds = %bb.bf
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread194 unwind label %bb.bh, !noalias !680, !inline_history !674

bb.bh:                                            ; preds = %bb.bg
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !680, !inline_history !674
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i.i": ; preds = %bb.bf
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h36b2a7c0ca2efbd9E.exit.i.thread" unwind label %.thread199, !inline_history !674

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h36b2a7c0ca2efbd9E.exit.i.thread": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !654
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bo

bb.bi:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i"
  %i.ha = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !alias.scope !681, !noalias !682, !nonnull !13, !align !154, !noundef !13
  %i.hc = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !681, !noalias !682, !noundef !13
  invoke fastcc void @"_ZN80_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h0ed8076f5ee51dfaE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hb, i64 noundef %i.hd)
          to label %"_ZN80_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17h0ff11ef7e45eaefbE.exit.i.i.i.i.i.i" unwind label %bb.bl, !noalias !683, !inline_history !674

bb.bj:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i"
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx, i64 24, i1 false), !noalias !654
  invoke fastcc void @_ZN10serde_core2de7Visitor14visit_byte_buf17h9a1c2b5e9e1fb41fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s)
          to label %.noexc54 unwind label %.thread199, !inline_history !674

bb.bk:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i"
  %i.he = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !681, !noalias !682, !nonnull !13, !align !154, !noundef !13
  %i.hg = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !681, !noalias !682, !noundef !13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684), !noalias !641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687), !noalias !641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !690
  %i.hi = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.hf, ptr %i.hi, align 8, !noalias !690
  %i.hj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.hh, ptr %i.hj, align 8, !noalias !690
  store i8 6, ptr %i.q, align 8, !noalias !690
  %i.hk = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12)
          to label %_ZN10serde_core2de7Visitor20visit_borrowed_bytes17h6397730b70bd97a3E.exit.i.i.i.i.i.i unwind label %bb.bl, !noalias !693, !inline_history !674

_ZN10serde_core2de7Visitor20visit_borrowed_bytes17h6397730b70bd97a3E.exit.i.i.i.i.i.i: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !690
  %i.hl = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.hk, ptr %i.hl, align 8, !alias.scope !694, !noalias !695
  store i64 -9223372036854775807, ptr %i.v, align 8, !alias.scope !694, !noalias !695
  br label %"_ZN80_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17h0ff11ef7e45eaefbE.exit.i.i.i.i.i.i"

"_ZN80_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17h0ff11ef7e45eaefbE.exit.i.i.i.i.i.i": ; preds = %_ZN10serde_core2de7Visitor20visit_borrowed_bytes17h6397730b70bd97a3E.exit.i.i.i.i.i.i, %bb.bi
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %.noexc54 unwind label %.thread199, !inline_history !674

bb.bl:                                            ; preds = %bb.bk, %bb.bi
  %lpad.thr_comm.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u) #39
          to label %.thread194 unwind label %bb.bm, !noalias !696, !inline_history !674

bb.bm:                                            ; preds = %bb.bl
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !696, !inline_history !674
  unreachable

.noexc54:                                         ; preds = %"_ZN80_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17h0ff11ef7e45eaefbE.exit.i.i.i.i.i.i", %bb.bj, %bb.be
  %.pr.i.i.i = load i64, ptr %i.v, align 8, !noalias !697 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !654
  %i.hn = icmp eq i64 %.pr.i.i.i, -9223372036854775807
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !697 ; 3 uses
  br i1 %i.hn, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h36b2a7c0ca2efbd9E.exit.i.thread151", label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h36b2a7c0ca2efbd9E.exit.i"

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h36b2a7c0ca2efbd9E.exit.i.thread151": ; preds = %.noexc54, %.noexc52
  %.sroa.7.0.ph = phi ptr [ %i.gk, %.noexc52 ], [ %.pre.i.i.i, %.noexc54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !654
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bn

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h36b2a7c0ca2efbd9E.exit.i": ; preds = %.noexc54
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !654
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  switch i64 %.pr.i.i.i, label %bb.bz [
    i64 -9223372036854775806, label %bb.bn
    i64 -9223372036854775808, label %bb.bo
  ]

bb.bn:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h36b2a7c0ca2efbd9E.exit.i", %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h36b2a7c0ca2efbd9E.exit.i.thread151"
  %.sroa.7.0155 = phi ptr [ %.sroa.7.0.ph, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h36b2a7c0ca2efbd9E.exit.i.thread151" ], [ %.pre.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h36b2a7c0ca2efbd9E.exit.i" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0155) ]
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0155, ptr %i.ho, align 8, !alias.scope !635, !noalias !698
  store i8 6, ptr %0, align 8, !alias.scope !635, !noalias !698
  br label %.thread204

.thread156:                                       ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i", %bb.bb
  store i8 5, ptr %0, align 8, !alias.scope !635, !noalias !698
  %.sroa.411.sroa.3.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.411.sroa.3.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !635, !noalias !698
  %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !635, !noalias !698
  br label %.thread206

bb.bo:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h36b2a7c0ca2efbd9E.exit.i.thread", %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h36b2a7c0ca2efbd9E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !699
  call void @llvm.experimental.noalias.scope.decl(metadata !700), !noalias !641
  call void @llvm.experimental.noalias.scope.decl(metadata !703), !noalias !641
  call void @llvm.experimental.noalias.scope.decl(metadata !706), !noalias !641
  %.sroa.0.0.copyload.i.i31.i = load i8, ptr %i.al, align 8, !alias.scope !706, !noalias !708 ; 3 uses
  store i8 22, ptr %i.al, align 8, !alias.scope !706, !noalias !708
  %.not.i.i32.i = icmp eq i8 %.sroa.0.0.copyload.i.i31.i, 22
  br i1 %.not.i.i32.i, label %bb.by, label %bb.bp, !prof !33

bb.bp:                                            ; preds = %bb.bo
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx.i.i.i, i64 31, i1 false), !noalias !708
end_hunk_1
begin_hunk_2_@"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h8daa3aec2f8a651eE":bb.a
_ZN10serde_core2de7Visitor18visit_borrowed_str17h8d02357a4d70d6aaE.exit.i.i.i.i.i.i: ; preds = %"_ZN76_$LT$serde_json..raw..BoxedFromString$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h41c1441be4f2253fE.exit.i.i.i.i.i.i.i"
  %i.ij = extractvalue { ptr, i64 } %i.ii, 0      ; 3 uses
  %i.ik = extractvalue { ptr, i64 } %i.ii, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ij) ], !noalias !641
  store ptr %i.ij, ptr %i.ae, align 8, !alias.scope !746, !noalias !747
  %i.il = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ik, ptr %i.il, align 8, !alias.scope !746, !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !735
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bp
  %i.im = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.im, i64 24, i1 false), !noalias !708
  invoke fastcc void @_ZN10serde_core2de7Visitor14visit_byte_buf17hdc0c868e9422939fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.ae, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %"._ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i_crit_edge" unwind label %.thread199, !inline_history !674

"._ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i_crit_edge": ; preds = %bb.bt
  %.pr160.pre = load ptr, ptr %i.ae, align 8, !noalias !699
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i"

bb.bu:                                            ; preds = %bb.bp
  %i.in = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !alias.scope !728, !noalias !727, !nonnull !13, !align !154, !noundef !13
  %i.ip = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !alias.scope !728, !noalias !727, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !748), !noalias !641
  call void @llvm.experimental.noalias.scope.decl(metadata !751), !noalias !641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !754
  %i.ir = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.io, ptr %i.ir, align 8, !noalias !754
  %i.is = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.iq, ptr %i.is, align 8, !noalias !754
  store i8 6, ptr %i.j, align 8, !noalias !754
  %i.it = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
          to label %_ZN10serde_core2de7Visitor20visit_borrowed_bytes17h425e2789e01576f9E.exit.i.i.i.i.i.i unwind label %bb.bw, !noalias !743, !inline_history !674

_ZN10serde_core2de7Visitor20visit_borrowed_bytes17h425e2789e01576f9E.exit.i.i.i.i.i.i: ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !754
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.it, ptr %i.iu, align 8, !alias.scope !757, !noalias !758
  store ptr null, ptr %i.ae, align 8, !alias.scope !757, !noalias !758
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN10serde_core2de7Visitor20visit_borrowed_bytes17h425e2789e01576f9E.exit.i.i.i.i.i.i, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h8d02357a4d70d6aaE.exit.i.i.i.i.i.i
  %.pr160221 = phi ptr [ null, %_ZN10serde_core2de7Visitor20visit_borrowed_bytes17h425e2789e01576f9E.exit.i.i.i.i.i.i ], [ %i.ij, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h8d02357a4d70d6aaE.exit.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i" unwind label %.thread199, !inline_history !674

bb.bw:                                            ; preds = %bb.bu, %"_ZN76_$LT$serde_json..raw..BoxedFromString$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h41c1441be4f2253fE.exit.i.i.i.i.i.i.i", %bb.bs, %bb.br
  %lpad.thr_comm.i.i.i.i33.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p) #39
          to label %.thread194 unwind label %bb.bx, !noalias !759, !inline_history !674

bb.bx:                                            ; preds = %bb.bw
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !759, !inline_history !674
  unreachable

bb.by:                                            ; preds = %bb.bo
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @0, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @683) #38
          to label %.noexc62 unwind label %.thread199, !inline_history !674

.noexc62:                                         ; preds = %bb.by
  unreachable

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i": ; preds = %"._ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i_crit_edge", %bb.bv
  %.pr160 = phi ptr [ %.pr160.pre, %"._ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i_crit_edge" ], [ %.pr160221, %bb.bv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !709
  %i.iw = icmp eq ptr %.pr160, null
  %.phi.trans.insert223 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  br i1 %i.iw, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i._crit_edge222", label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i._crit_edge"

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i._crit_edge222": ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i"
  %.pre224 = load ptr, ptr %.phi.trans.insert223, align 8, !noalias !699
  br label %bb.cw

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i._crit_edge": ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i"
  %.pre = load i64, ptr %.phi.trans.insert223, align 8, !noalias !699
  br label %bb.cx

bb.bz:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h36b2a7c0ca2efbd9E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !699
  store ptr null, ptr %i.ad, align 8, !noalias !699
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !699
  store i64 %.pr.i.i.i, ptr %i.ab, align 8, !noalias !699
  %.sroa.5.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.pre.i.i.i, ptr %.sroa.5.0..sroa_idx.i47, align 8, !noalias !699
  %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx.i47.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.10.0.copyload, ptr %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx.i47.sroa_idx, align 8, !noalias !699
  invoke fastcc void @_ZN10serde_core2de9MapAccess10next_value17hbd7a7cede597d84dE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(72) %i.al)
          to label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17he8215bae953477e7E.exit.i" unwind label %bb.ca, !noalias !641, !inline_history !760

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17he8215bae953477e7E.exit.i": ; preds = %bb.bz
  %i.ix = load i8, ptr %0, align 8, !range !609, !alias.scope !635, !noalias !698, !noundef !13
  %i.iy = icmp eq i8 %i.ix, 6
  br i1 %i.iy, label %bb.cb, label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab) #39
          to label %.body.i49 unwind label %bb.cv, !noalias !761, !inline_history !674

bb.cb:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17he8215bae953477e7E.exit.i"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i" unwind label %bb.cc, !noalias !761, !inline_history !674

bb.cc:                                            ; preds = %bb.cb
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body.i49 unwind label %bb.cd, !noalias !761, !inline_history !674

bb.cd:                                            ; preds = %bb.cc
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !761, !inline_history !674
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i": ; preds = %bb.cb
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" unwind label %.loopexit.split-lp, !noalias !761, !inline_history !674

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !699
  br label %bb.cu

bb.ce:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17he8215bae953477e7E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !noalias !698
  invoke void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb333967b3fdf4a45E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa)
          to label %bb.cf unwind label %.loopexit.split-lp, !noalias !761, !inline_history !674

.body.i49:                                        ; preds = %.loopexit208, %.loopexit.split-lp, %bb.cq, %bb.ci, %bb.cl, %bb.cn, %bb.cc, %bb.ca
  %.pn.i48 = phi { ptr, i32 } [ %i.iz, %bb.ca ], [ %i.ja, %bb.cc ], [ %i.jw, %bb.cn ], [ %i.jt, %bb.cl ], [ %i.jz, %bb.cq ], [ %i.jo, %bb.ci ], [ %lpad.loopexit, %.loopexit208 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05d0c4cd1fc8ed4dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.thread194 unwind label %bb.cv, !noalias !761, !inline_history !674

.loopexit208:                                     ; preds = %bb.cr, %bb.ct
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i49

.loopexit.split-lp:                               ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i", %bb.ce, %bb.cg, %bb.cj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i49

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !699
  %i.jc = load i8, ptr %i.ac, align 8, !range !609, !alias.scope !762, !noalias !699, !noundef !13
  %i.jd = icmp eq i8 %i.jc, 6
  br i1 %i.jd, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h5c9e733dafe141c4E.exit.i", label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h5c9e733dafe141c4E.exit.i" unwind label %.loopexit.split-lp, !noalias !761, !inline_history !674

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h5c9e733dafe141c4E.exit.i": ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !699
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.sroa.6)
  %i.je = load ptr, ptr %.sroa.6.0..sroa_idx.i31, align 8, !alias.scope !765, !noalias !770, !nonnull !13, !noundef !13
  %i.jf = load ptr, ptr %.sroa.4.0..sroa_idx.i29, align 8, !alias.scope !765, !noalias !770, !nonnull !13, !noundef !13 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.je
  br i1 %i.jg, label %.loopexit207, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.lr.ph": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h5c9e733dafe141c4E.exit.i"
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.3.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.3.i44.sroa.4.0..sroa.3.0..sroa_idx7.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.lr.ph", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h5c9e733dafe141c4E.exit36.i"
  %i.jh = phi ptr [ %i.jf, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.lr.ph" ], [ %i.ke, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h5c9e733dafe141c4E.exit36.i" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  call void @llvm.experimental.noalias.scope.decl(metadata !777), !noalias !761
  call void @llvm.experimental.noalias.scope.decl(metadata !779), !noalias !761
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 64
  store ptr %i.ji, ptr %.sroa.4.0..sroa_idx.i29, align 8, !alias.scope !781, !noalias !770
  %.sroa.0105.0.copyload = load i8, ptr %i.jh, align 8, !noalias !782 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.0105.0.copyload, 22
  br i1 %.not.i.i, label %.loopexit207, label %bb.ch

bb.ch:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i"
  %.sroa.11109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  %i.jj = load i64, ptr %i.gg, align 8, !alias.scope !783, !noalias !784, !noundef !13
  %i.jk = add i64 %i.jj, 1
  store i64 %i.jk, ptr %i.gg, align 8, !alias.scope !783, !noalias !784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4112.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11109.0..sroa_idx, i64 31, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !785
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 1 dereferenceable(32) %i.jl, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !785
  store i8 %.sroa.0105.0.copyload, ptr %i.d, align 8, !noalias !785
  invoke void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17h73dcb06e49a2c5c2E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h9c5af623abad8e38E.exit.i" unwind label %bb.cq, !noalias !786, !inline_history !787

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h9c5af623abad8e38E.exit.i": ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !785
  %i.jm = load i64, ptr %i.e, align 8, !range !32, !noalias !785, !noundef !13
  %i.jn = icmp eq i64 %i.jm, -9223372036854775808
  br i1 %i.jn, label %bb.cj, label %bb.ck

bb.ci:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i69"
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i49

bb.cj:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h9c5af623abad8e38E.exit.i"
  %i.jp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !noalias !785, !nonnull !13, !align !82, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !785
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17hc3aa5b37c3de4a5eE.exit.i.thread" unwind label %.loopexit.split-lp, !inline_history !787

bb.ck:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h9c5af623abad8e38E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !785
  invoke fastcc void @"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h8daa3aec2f8a651eE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h1b16707b84cab082E.exit.i" unwind label %bb.cl, !noalias !786, !inline_history !788

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h1b16707b84cab082E.exit.i": ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !785
  %i.jr = load i8, ptr %i.c, align 8, !range !609, !noalias !785, !noundef !13
  %i.js = icmp eq i8 %i.jr, 6
  br i1 %i.js, label %bb.cm, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17hc3aa5b37c3de4a5eE.exit.i"

bb.cl:                                            ; preds = %bb.ck
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #39
          to label %.body.i49 unwind label %bb.cp, !noalias !785, !inline_history !789

bb.cm:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h1b16707b84cab082E.exit.i"
  %i.ju = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !785, !nonnull !13, !align !82, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !785
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i69" unwind label %bb.cn, !noalias !785, !inline_history !787

bb.cn:                                            ; preds = %bb.cm
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i49 unwind label %bb.co, !noalias !785, !inline_history !787

bb.co:                                            ; preds = %bb.cn
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !785, !inline_history !787
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i69": ; preds = %bb.cm
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i70" unwind label %bb.ci, !noalias !786, !inline_history !787

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i70": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i69"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !785
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17hc3aa5b37c3de4a5eE.exit.i.thread"

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17hc3aa5b37c3de4a5eE.exit.i.thread": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i70", %bb.cj
  %.sroa.991.1 = phi ptr [ %i.jv, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i70" ], [ %i.jq, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !785
  br label %.loopexit

bb.cp:                                            ; preds = %bb.cq, %bb.cl
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !785, !inline_history !789
  unreachable

bb.cq:                                            ; preds = %bb.ch
  %i.jz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #39
          to label %.body.i49 unwind label %bb.cp, !noalias !785, !inline_history !789

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17hc3aa5b37c3de4a5eE.exit.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h1b16707b84cab082E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !785
  %.sroa.0119.0.copyload = load i64, ptr %i.f, align 8, !noalias !785 ; 2 uses
  %.sroa.4120.0.copyload = load ptr, ptr %.sroa.4120.0..sroa_idx, align 8, !noalias !785 ; 2 uses
  %.sroa.5121.0.copyload = load i64, ptr %.sroa.5121.0..sroa_idx, align 8, !noalias !785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !785
  switch i64 %.sroa.0119.0.copyload, label %bb.cr [
    i64 -9223372036854775807, label %.loopexit
    i64 -9223372036854775808, label %.loopexit207
  ]

.loopexit:                                        ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17hc3aa5b37c3de4a5eE.exit.i", %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17hc3aa5b37c3de4a5eE.exit.i.thread"
  %.sroa.991.2176 = phi ptr [ %.sroa.991.1, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17hc3aa5b37c3de4a5eE.exit.i.thread" ], [ %.sroa.4120.0.copyload, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17hc3aa5b37c3de4a5eE.exit.i" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.991.2176) ]
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.991.2176, ptr %i.ka, align 8, !alias.scope !635, !noalias !698
  store i8 6, ptr %0, align 8, !alias.scope !635, !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.6)
  br label %bb.cu

bb.cr:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17hc3aa5b37c3de4a5eE.exit.i"
  store i64 %.sroa.0119.0.copyload, ptr %i.z, align 8, !noalias !699
  store ptr %.sroa.4120.0.copyload, ptr %.sroa.3.0..sroa_idx7.i, align 8, !noalias !699
  store i64 %.sroa.5121.0.copyload, ptr %.sroa.3.i44.sroa.4.0..sroa.3.0..sroa_idx7.i.sroa_idx, align 8, !noalias !699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !699
  invoke void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb333967b3fdf4a45E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.y)
          to label %bb.cs unwind label %.loopexit208, !noalias !761, !inline_history !674

.loopexit207:                                     ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_entry17hc3aa5b37c3de4a5eE.exit.i", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h5c9e733dafe141c4E.exit36.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h5c9e733dafe141c4E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i)
  %.sroa.49.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.49.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.49.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  store i8 5, ptr %0, align 8, !alias.scope !635, !noalias !698
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.49.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.49.i, i64 31, i1 false), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !699
  br label %.thread206

bb.cs:                                            ; preds = %bb.cr
  %i.kb = load i8, ptr %i.x, align 8, !range !609, !alias.scope !791, !noalias !699, !noundef !13
  %i.kc = icmp eq i8 %i.kb, 6
  br i1 %i.kc, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h5c9e733dafe141c4E.exit36.i", label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h5c9e733dafe141c4E.exit36.i" unwind label %.loopexit208, !noalias !761, !inline_history !674

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h5c9e733dafe141c4E.exit36.i": ; preds = %bb.ct, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !699
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.sroa.6)
  %i.kd = load ptr, ptr %.sroa.6.0..sroa_idx.i31, align 8, !alias.scope !794, !noalias !770, !nonnull !13, !noundef !13
  %i.ke = load ptr, ptr %.sroa.4.0..sroa_idx.i29, align 8, !alias.scope !794, !noalias !770, !nonnull !13, !noundef !13 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.kd
  br i1 %i.kf, label %.loopexit207, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i"

bb.cu:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", %.loopexit
  invoke void @"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05d0c4cd1fc8ed4dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.noexc63 unwind label %.thread199, !inline_history !674

.noexc63:                                         ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !699
  br label %bb.dg

bb.cv:                                            ; preds = %.body.i49, %bb.ca
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !761, !inline_history !674
  unreachable

bb.cw:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i._crit_edge222", %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i.thread"
  %i.kh = phi ptr [ %.pre224, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i._crit_edge222" ], [ %i.hp, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i.thread" ]
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kh, ptr %i.ki, align 8, !alias.scope !635, !noalias !698
  store i8 6, ptr %0, align 8, !alias.scope !635, !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !699
  br label %.thread204

bb.cx:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i._crit_edge", %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i.thread161"
  %i.kj = phi i64 [ %i.ht, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i.thread161" ], [ %.pre, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i._crit_edge" ] ; 5 uses
  %i.kk = phi ptr [ %i.hs, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i.thread161" ], [ %.pr160, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h700b5eb5f40e73c8E.exit.i._crit_edge" ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !699
  invoke void @_ZN10serde_json2de8from_str17hd9d2c5b1aa6b8500E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.kk, i64 noundef %i.kj)
          to label %bb.da unwind label %bb.cy, !inline_history !674

bb.cy:                                            ; preds = %bb.db, %bb.cx
  %i.kl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.km = icmp eq i64 %i.kj, 0
  br i1 %i.km, label %.thread194, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kk, i64 noundef range(i64 1, 0) %i.kj, i64 noundef 1) #30, !noalias !761, !inline_history !674
  br label %.thread194

bb.da:                                            ; preds = %bb.cx
  %i.kn = load i8, ptr %i.w, align 8, !range !609, !noundef !13
  %i.ko = icmp eq i8 %i.kn, 6
  br i1 %i.ko, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.kp = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !nonnull !13, !align !82, !noundef !13
  %i.kr = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4aa19ef09095ef2E"(ptr noalias noundef nonnull align 8 %i.kq)
          to label %bb.df unwind label %bb.cy, !noalias !761, !inline_history !674
end_hunk_2
begin_hunk_3_@"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hb983c3ec591171cfE":bb.a
  store i64 %i.bk, ptr %i.bl, align 8, !noalias !837
  store i8 2, ptr %i.o, align 8, !noalias !837
  %i.bm = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !837
  br label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit

bb.j:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !842
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !noalias !842
  store i8 2, ptr %i.n, align 8, !noalias !842
  %i.bq = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !842
  br label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit

bb.k:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bs = load float, ptr %i.br, align 4, !noundef !13
  %i.bt = fpext float %i.bs to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !845
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store double %i.bt, ptr %i.bu, align 8, !noalias !845
  store i8 3, ptr %i.m, align 8, !noalias !845
  %i.bv = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !845
  br label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit

bb.l:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load double, ptr %i.bw, align 8, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !850
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store double %i.bx, ptr %i.by, align 8, !noalias !850
  store i8 3, ptr %i.l, align 8, !noalias !850
  %i.bz = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !850
  br label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit

bb.m:                                             ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !range !184, !noundef !13
  %i.cc = tail call fastcc noundef align 8 ptr @_ZN10serde_core2de7Visitor10visit_char17h06d9e5922da55bedE(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %1, i32 noundef %i.cb)
  br label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit

bb.n:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false)
  %i.ce = call fastcc noundef align 8 ptr @_ZN10serde_core2de7Visitor12visit_string17heec08d80f824a186E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z)
  br label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit

bb.o:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !13, !align !154, !noundef !13
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !853
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.cg, ptr %i.cj, align 8, !noalias !853
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.ci, ptr %i.ck, align 8, !noalias !853
  store i8 5, ptr %i.k, align 8, !noalias !853
  %i.cl = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !853
  br label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit

bb.p:                                             ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false)
  %i.cn = call fastcc noundef align 8 ptr @_ZN10serde_core2de7Visitor14visit_byte_buf17h31253a1139a7dbb6E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y)
  br label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit

bb.q:                                             ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !13, !align !154, !noundef !13
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !860
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.cp, ptr %i.cs, align 8, !noalias !860
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.cr, ptr %i.ct, align 8, !noalias !860
  store i8 6, ptr %i.j, align 8, !noalias !860
  %i.cu = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !860
  br label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !867
  store i8 8, ptr %i.i, align 8, !noalias !867
  %i.cv = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !867
  br label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit

bb.s:                                             ; preds = %bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !13, !align !82, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i64 32, i1 false)
  %i.cy = invoke fastcc noundef align 8 ptr @_ZN10serde_core2de7Visitor10visit_some17h469c634007673f48E(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.x)
          to label %bb.ae unwind label %bb.ad

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !870
  store i8 7, ptr %i.h, align 8, !noalias !870
  %i.cz = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !870
  br label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit

bb.u:                                             ; preds = %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !13, !align !82, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.db, i64 32, i1 false)
  %i.dc = invoke fastcc noundef align 8 ptr @_ZN10serde_core2de7Visitor20visit_newtype_struct17h43b288ea6c67b899E(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.w)
          to label %bb.ag unwind label %bb.af

bb.v:                                             ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.010.0.copyload = load i64, ptr %i.dd, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %i.de = icmp ult i64 %.sroa.3.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.de)
  %.idx.i = shl nuw nsw i64 %.sroa.3.0.copyload, 5
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !873
  store ptr %.sroa.2.0.copyload, ptr %i.g, align 8, !noalias !878
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !878
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.010.0.copyload, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !noalias !878
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.df, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !noalias !878
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1729fae17c83cb11E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g), !noalias !878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !873
  %i.dg = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %i.dg, label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit, label %.noexc10.i, !prof !85

.noexc10.i:                                       ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !873
  store i64 0, ptr %i.f, align 8, !noalias !873
  %i.dh = call noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %.sroa.3.0.copyload, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @528), !noalias !878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !873
  br label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit

bb.w:                                             ; preds = %bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.011.0.copyload = load i64, ptr %i.di, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.212.0.copyload = load ptr, ptr %.sroa.212.0..sroa_idx, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.313.0.copyload = load i64, ptr %.sroa.313.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !879
  %i.dj = icmp ult i64 %.sroa.313.0.copyload, 144115188075855872
  tail call void @llvm.assume(i1 %i.dj)
  %.idx.i8 = shl nuw nsw i64 %.sroa.313.0.copyload, 6
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.212.0.copyload, i64 %.idx.i8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.212.0.copyload, ptr %i.dl, align 8, !noalias !879
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  store ptr %.sroa.212.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !879
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %.sroa.011.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !879
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.dk, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !879
  store i8 22, ptr %i.e, align 8, !noalias !879
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  store i64 0, ptr %i.dm, align 8, !noalias !879
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.dn = icmp eq i64 %.sroa.313.0.copyload, 0
  br i1 %i.dn, label %_ZN5serde7private2de7content17visit_content_map17h488c518c3f2a0f96E.exit, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.lr.ph.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.lr.ph.i.i": ; preds = %bb.w
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.i.i": ; preds = %.noexc.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.lr.ph.i.i"
  %i.do = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.lr.ph.i.i" ], [ %i.dr, %.noexc.i ]
  %i.dp = phi ptr [ %.sroa.212.0.copyload, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.lr.ph.i.i" ], [ %i.dq, %.noexc.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 3 uses
  store ptr %i.dq, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !894, !noalias !895
  %.sroa.0.0.copyload.i.i.i.i.i = load i8, ptr %i.dp, align 8, !noalias !901 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i, label %_ZN5serde7private2de7content17visit_content_map17h488c518c3f2a0f96E.exit, label %bb.x

bb.x:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.i.i"
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = add nuw nsw i64 %i.do, 1                ; 2 uses
  store i64 %i.dr, ptr %i.dm, align 8, !alias.scope !902, !noalias !903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.10.0..sroa_idx.i.i.i.i.i, i64 31, i1 false), !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !911
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 1 dereferenceable(32) %i.ds, i64 32, i1 false), !noalias !911
  store i8 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.b, align 8, !noalias !911
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.aa unwind label %bb.y, !noalias !911

bb.y:                                             ; preds = %bb.x
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.c) #39
          to label %.thread.i unwind label %bb.z, !noalias !911

bb.z:                                             ; preds = %bb.y
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !911
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !911
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc.i unwind label %bb.ab, !noalias !879

.noexc.i:                                         ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !911
  %i.dv = icmp eq ptr %i.dq, %i.dk
  br i1 %i.dv, label %_ZN5serde7private2de7content17visit_content_map17h488c518c3f2a0f96E.exit, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

common.resume.sink.split:                         ; preds = %bb.af, %bb.ad
  %.sink = phi ptr [ %i.cx, %bb.ad ], [ %i.db, %bb.af ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.dz, %bb.ad ], [ %i.ea, %bb.af ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 32, i64 noundef 8) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.thread.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

.thread.i:                                        ; preds = %bb.ab, %bb.y
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dw, %bb.ab ], [ %i.dt, %bb.y ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde..private..de..content..MapDeserializer$LT$serde_json..error..Error$GT$$GT$17h0e552776cee27ebaE"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #39
          to label %common.resume unwind label %bb.ac, !noalias !879

bb.ac:                                            ; preds = %.thread.i
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !879
  unreachable

_ZN5serde7private2de7content17visit_content_map17h488c518c3f2a0f96E.exit: ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.i.i", %.noexc.i, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !879
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !879
  %i.dy = call fastcc noundef align 8 ptr @"_ZN5serde7private2de7content24MapDeserializer$LT$E$GT$3end17h61a6a167470b388eE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d), !noalias !879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !879
  br label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit

_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit: ; preds = %.noexc10.i, %bb.v, %bb.ag, %bb.ae, %_ZN5serde7private2de7content17visit_content_map17h488c518c3f2a0f96E.exit, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.ae, %bb.b ], [ %i.aj, %bb.c ], [ %i.ao, %bb.d ], [ %i.at, %bb.e ], [ %i.ax, %bb.f ], [ %i.bc, %bb.g ], [ %i.bh, %bb.h ], [ %i.bm, %bb.i ], [ %i.bq, %bb.j ], [ %i.bv, %bb.k ], [ %i.bz, %bb.l ], [ %i.cc, %bb.m ], [ %i.ce, %bb.n ], [ %i.cl, %bb.o ], [ %i.cn, %bb.p ], [ %i.cu, %bb.q ], [ %i.cv, %bb.r ], [ %i.cy, %bb.ae ], [ %i.cz, %bb.t ], [ %i.dc, %bb.ag ], [ %i.dy, %_ZN5serde7private2de7content17visit_content_map17h488c518c3f2a0f96E.exit ], [ %i.dh, %.noexc10.i ], [ null, %bb.v ]
  ret ptr %.sroa.0.0

bb.ad:                                            ; preds = %bb.s
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.ae:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cx, i64 noundef 32, i64 noundef 8) #30
  br label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit

bb.af:                                            ; preds = %bb.u
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.ag:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef 32, i64 noundef 8) #30
  br label %_ZN5serde7private2de7content17visit_content_seq17h45e0c465efd0e697E.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hc239c27c475582c4E"(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 11 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 22 uses
  %i.r = alloca [24 x i8], align 8                ; 21 uses
  %i.s = alloca [72 x i8], align 8                ; 4 uses
  %i.t = alloca [56 x i8], align 8                ; 7 uses
  %i.u = alloca [72 x i8], align 8                ; 25 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 11 uses
  %i.ac = alloca [56 x i8], align 8               ; 7 uses
  %i.ad = alloca [40 x i8], align 8               ; 10 uses
  %i.ae = alloca [4 x i8], align 4                ; 14 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [32 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 2 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = load i8, ptr %1, align 8, !range !180, !noundef !13
  switch i8 %i.aj, label %default.unreachable66 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.t
    i8 13, label %bb.z
    i8 14, label %bb.aa
    i8 15, label %bb.ab
    i8 16, label %bb.ac
    i8 17, label %bb.ad
    i8 18, label %bb.ae
    i8 19, label %bb.af
    i8 20, label %bb.ag
    i8 21, label %bb.ba
  ]

default.unreachable66:                            ; preds = %bb.cd, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !range !83, !noundef !13
  %i.am = trunc nuw i8 %i.al to i1
  tail call void @_ZN10serde_core2de7Visitor10visit_bool17he65ab5342081cde1E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, i1 noundef zeroext %i.am)
  br label %bb.en

bb.c:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !noundef !13
  tail call void @_ZN10serde_core2de7Visitor8visit_u817h3d006cf3194da9a3E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, i8 noundef %i.ao)
  br label %bb.en

bb.d:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.aq = load i16, ptr %i.ap, align 2, !noundef !13
  tail call void @_ZN10serde_core2de7Visitor9visit_u1617h2771579e54912eafE(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, i16 noundef %i.aq)
  br label %bb.en

bb.e:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !noundef !13
  tail call void @_ZN10serde_core2de7Visitor9visit_u3217h6ef98ef3ec848962E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, i32 noundef %i.as)
  br label %bb.en

bb.f:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noundef !13
  tail call void @_ZN10serde_core2de7Visitor9visit_u6417h5143dd24909d411aE(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, i64 noundef %i.au)
  br label %bb.en

bb.g:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !noundef !13
  tail call void @_ZN10serde_core2de7Visitor8visit_i817h016b293c61e00990E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, i8 noundef %i.aw)
  br label %bb.en

bb.h:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ay = load i16, ptr %i.ax, align 2, !noundef !13
  tail call void @_ZN10serde_core2de7Visitor9visit_i1617h8c985fcc7c186a01E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, i16 noundef %i.ay)
  br label %bb.en

bb.i:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
end_hunk_3
begin_hunk_4_@"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hc239c27c475582c4E":bb.a
          to label %bb.ap unwind label %bb.am, !noalias !940

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sink75.i.i = phi ptr [ %i.du, %bb.an ], [ %i.dy, %bb.ao ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75.i.i, ptr %i.dz, align 8, !alias.scope !983, !noalias !984
  store i64 -9223372036854775804, ptr %0, align 8, !alias.scope !983, !noalias !984
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i" unwind label %bb.aq, !noalias !940

bb.aq:                                            ; preds = %bb.ap
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.thread16.i unwind label %bb.ar, !noalias !940

bb.ar:                                            ; preds = %bb.aq
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !940
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i": ; preds = %bb.ap
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.at unwind label %.thread21.i, !noalias !933

bb.as:                                            ; preds = %bb.am
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !940
  unreachable

.thread21.i:                                      ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i", %bb.al, %bb.ah
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread16.i

bb.at:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i", %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !933
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1729fae17c83cb11E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ad), !noalias !933
  br label %_ZN5serde7private2de7content17visit_content_seq17h66424f5f5f1dbb40E.exit

bb.au:                                            ; preds = %.noexc.i.i
  %.sroa.1047.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.1047.0.copyload.i.i = load i64, ptr %.sroa.1047.0..sroa_idx.i.i, align 8, !noalias !982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !979
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.423.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !984
  store i64 -9223372036854775805, ptr %0, align 8, !alias.scope !983, !noalias !984
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.dr, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !alias.scope !983, !noalias !984
  %.sroa.625.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.du, ptr %.sroa.625.0..sroa_idx.i.i, align 8, !alias.scope !983, !noalias !984
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.1047.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !983, !noalias !984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !noalias !985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !noalias !933
  %.sroa.4.0.copyload.i = load i64, ptr %i.di, align 8, !noalias !933 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !989, !noalias !986, !nonnull !13, !noundef !13 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !989, !noalias !986, !nonnull !13, !noundef !13 ; 2 uses
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1729fae17c83cb11E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %.noexc9.i unwind label %bb.aw, !noalias !933

.noexc9.i:                                        ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !986
  %i.eh = icmp eq ptr %i.ee, %i.eg
  br i1 %i.eh, label %bb.ay, label %bb.av, !prof !85

bb.av:                                            ; preds = %.noexc9.i
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.ee to i64
  %i.ek = sub nuw i64 %i.ej, %i.ei
  %i.el = lshr exact i64 %i.ek, 5
  %i.em = add i64 %i.el, %.sroa.4.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !986
  store i64 %.sroa.4.0.copyload.i, ptr %i.v, align 8, !noalias !986
  %i.en = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %i.em, ptr noundef nonnull align 1 %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @528)
          to label %bb.ax unwind label %bb.aw, !noalias !933

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$anki..backend..dbproxy..DbRequest$GT$17hc31140c8ce1fd4bbE"(ptr noalias noundef align 8 dereferenceable(56) %i.ac) #39
          to label %common.resume unwind label %bb.az, !noalias !933

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !986
  store ptr %i.en, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !alias.scope !930, !noalias !985
  store i64 -9223372036854775804, ptr %0, align 8, !alias.scope !930, !noalias !985
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$anki..backend..dbproxy..DbRequest$GT$17hc31140c8ce1fd4bbE"(ptr noalias noundef align 8 dereferenceable(56) %i.ac), !noalias !933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !933
  br label %_ZN5serde7private2de7content17visit_content_seq17h66424f5f5f1dbb40E.exit

bb.ay:                                            ; preds = %.noexc9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !933
  br label %_ZN5serde7private2de7content17visit_content_seq17h66424f5f5f1dbb40E.exit

bb.az:                                            ; preds = %.thread16.i, %bb.aw
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !933
  unreachable

.thread16.i:                                      ; preds = %.thread21.i, %bb.aq, %bb.am
  %eh.lpad-body19.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread21.i ], [ %i.ea, %bb.aq ], [ %i.dx, %bb.am ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1729fae17c83cb11E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ad)
          to label %common.resume unwind label %bb.az, !noalias !933

_ZN5serde7private2de7content17visit_content_seq17h66424f5f5f1dbb40E.exit: ; preds = %bb.at, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !933
  br label %bb.en

bb.ba:                                            ; preds = %bb.a
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.021.0.copyload = load i64, ptr %i.eq, align 8
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.222.0.copyload = load ptr, ptr %.sroa.222.0..sroa_idx, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.323.0.copyload = load i64, ptr %.sroa.323.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !995
  %i.er = icmp ult i64 %.sroa.323.0.copyload, 144115188075855872
  tail call void @llvm.assume(i1 %i.er)
  %.idx.i7 = shl nuw nsw i64 %.sroa.323.0.copyload, 6
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.222.0.copyload, i64 %.idx.i7
  %i.et = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  store ptr %.sroa.222.0.copyload, ptr %i.et, align 8, !noalias !995
  %.sroa.4.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 3 uses
  store ptr %.sroa.222.0.copyload, ptr %.sroa.4.0..sroa_idx.i8, align 8, !noalias !995
  %.sroa.5.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i64 %.sroa.021.0.copyload, ptr %.sroa.5.0..sroa_idx.i9, align 8, !noalias !995
  %.sroa.6.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  store ptr %i.es, ptr %.sroa.6.0..sroa_idx.i10, align 8, !noalias !995
  store i8 22, ptr %i.u, align 8, !noalias !995
  %i.eu = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 3 uses
  store i64 0, ptr %i.eu, align 8, !noalias !995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !995
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1002
  store i64 -9223372036854775808, ptr %i.r, align 8, !noalias !1002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1002
  store i64 -9223372036854775808, ptr %i.q, align 8, !noalias !1002
  %i.ev = icmp eq i64 %.sroa.323.0.copyload, 0
  br i1 %i.ev, label %.thread160.thread.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.lr.ph.i.i"

.thread160.thread.i.i:                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1002
  br label %bb.dd

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.lr.ph.i.i": ; preds = %bb.ba
  %.sroa.8.0..sroa_idx12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i127.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i128.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.587.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.688.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.640.0..sroa_idx41.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.743.0..sroa_idx44.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.584.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.685.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.622.0..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.i.i": ; preds = %bb.cr, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.lr.ph.i.i"
  %i.fe = phi ptr [ %.sroa.222.0.copyload, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.lr.ph.i.i" ], [ %i.ip, %bb.cr ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  store ptr %i.ff, ptr %.sroa.4.0..sroa_idx.i8, align 8, !alias.scope !1012, !noalias !1013
  %.sroa.0.0.copyload.i.i.i.i.i = load i8, ptr %i.fe, align 8, !noalias !1019 ; 2 uses
  %.not.i.i.i.i.i12 = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i12, label %.thread160.i.i, label %bb.bb

bb.bb:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94dae60e3dfeebb6E.exit.i.i.i.i.i"
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  %i.fg = load i64, ptr %i.eu, align 8, !alias.scope !1020, !noalias !1021, !noundef !13
  %i.fh = add i64 %i.fg, 1
  store i64 %i.fh, ptr %i.eu, align 8, !alias.scope !1020, !noalias !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1022
  store i8 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.k, align 8, !noalias !1022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx12.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i.i.i, i64 31, i1 false), !noalias !1021
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 1 dereferenceable(32) %i.fi, i64 32, i1 false), !noalias !1021
  %i.fj = load i8, ptr %i.u, align 8, !range !157, !alias.scope !1023, !noalias !1021, !noundef !13
  %i.fk = icmp eq i8 %i.fj, 22
  br i1 %i.fk, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i", label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.u)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i" unwind label %bb.ca, !noalias !1021

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i": ; preds = %bb.bc, %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !1021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !1022
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1041
  %i.fl = load i8, ptr %i.h, align 8, !range !180, !alias.scope !1042, !noalias !1043, !noundef !13
  switch i8 %i.fl, label %.noexc6.i.i.i.i.i [
    i8 1, label %bb.bd
    i8 4, label %bb.be
    i8 12, label %bb.bf
    i8 13, label %bb.bl
    i8 14, label %bb.bo
    i8 15, label %bb.bp
  ], !prof !183

.noexc6.i.i.i.i.i:                                ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !1022
  %i.fm = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h20b8a4eb6bb5eaacE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13)
          to label %.noexc.i.i18 unwind label %.loopexit.i.i, !noalias !1045

.noexc.i.i18:                                     ; preds = %.noexc6.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1044
  store ptr %i.fm, ptr %i.fd, align 8, !alias.scope !1046, !noalias !1047
  store i8 1, ptr %i.i, align 8, !alias.scope !1046, !noalias !1047
  br label %.noexc110.i.i

bb.bd:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i"
  %i.fn = load i8, ptr %i.fc, align 1, !alias.scope !1042, !noalias !1043, !noundef !13
  invoke void @_ZN10serde_core2de7Visitor8visit_u817hc60fede6a468efbeE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, i8 noundef %i.fn)
          to label %_ZN10serde_core2de7Visitor12visit_string17hebc016e970ea8a46E.exit.i.thread1.i.i.i.i.i.i.i unwind label %bb.by, !noalias !1048

bb.be:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i"
  %i.fo = load i64, ptr %i.ew, align 8, !alias.scope !1042, !noalias !1043, !noundef !13 ; 2 uses
  %switch.selectcmp.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fo, 1
  %switch.select.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i.i.i, i8 1, i8 2
  %switch.selectcmp1.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fo, 0
  %switch.select2.i.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp1.i.i.i.i.i.i.i.i.i, i8 0, i8 %switch.select.i.i.i.i.i.i.i.i.i
  br label %_ZN10serde_core2de7Visitor12visit_string17hebc016e970ea8a46E.exit.i.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i64 24, i1 false), !noalias !1022
  call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %i.fp = load ptr, ptr %i.fa, align 8, !alias.scope !1052, !noalias !1054, !nonnull !13, !noundef !13 ; 3 uses
  %i.fq = load i64, ptr %i.fb, align 8, !alias.scope !1052, !noalias !1054, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  switch i64 %i.fq, label %bb.bi [
    i64 3, label %bb.bg
    i64 4, label %bb.bh
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.fr = load i16, ptr %i.fp, align 1
  %i.fs = xor i16 %i.fr, 29043
  %i.ft = getelementptr i8, ptr %i.fp, i64 2
  %i.fu = load i8, ptr %i.ft, align 1
  %i.fv = zext i8 %i.fu to i16
  %i.fw = xor i16 %i.fv, 108
  %i.fx = or i16 %i.fs, %i.fw
  %i.fy = icmp ne i16 %i.fx, 0
  %i.fz = zext i1 %i.fy to i32
  %i.ga = icmp eq i32 %i.fz, 0
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.ga, i8 0, i8 2
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.gb = load i32, ptr %i.fp, align 1
  %i.gc = icmp ne i32 %i.gb, 1936159329
  %i.gd = zext i1 %i.gc to i32
  %i.ge = icmp eq i32 %i.gd, 0
  %spec.select6.i.i.i.i.i.i.i.i.i.i = select i1 %i.ge, i8 1, i8 2
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.bf ], [ %spec.select6.i.i.i.i.i.i.i.i.i.i, %bb.bh ], [ %spec.select.i.i.i.i.i.i.i.i.i.i, %bb.bg ]
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i, ptr %i.ey, align 1, !alias.scope !1058, !noalias !1059
  store i8 0, ptr %i.i, align 8, !alias.scope !1058, !noalias !1059
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i.i.i.i" unwind label %bb.bj, !noalias !1061

bb.bj:                                            ; preds = %bb.bi
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i unwind label %bb.bk, !noalias !1061

bb.bk:                                            ; preds = %bb.bj
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !1061
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.bi
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc110.i.i unwind label %.loopexit.i.i, !noalias !1045

bb.bl:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i"
  %i.gh = load ptr, ptr %i.ew, align 8, !alias.scope !1042, !noalias !1043, !nonnull !13, !align !154, !noundef !13 ; 3 uses
  %i.gi = load i64, ptr %i.ex, align 8, !alias.scope !1042, !noalias !1043, !noundef !13
  switch i64 %i.gi, label %_ZN10serde_core2de7Visitor12visit_string17hebc016e970ea8a46E.exit.i.i.i.i.i.i.i.i [
    i64 3, label %bb.bm
    i64 4, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.gj = load i16, ptr %i.gh, align 1
  %i.gk = xor i16 %i.gj, 29043
  %i.gl = getelementptr i8, ptr %i.gh, i64 2
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = zext i8 %i.gm to i16
  %i.go = xor i16 %i.gn, 108
  %i.gp = or i16 %i.gk, %i.go
  %i.gq = icmp ne i16 %i.gp, 0
  %i.gr = zext i1 %i.gq to i32
  %i.gs = icmp eq i32 %i.gr, 0
  %spec.select.i.i8.i.i.i.i.i.i.i.i = select i1 %i.gs, i8 0, i8 2
  br label %_ZN10serde_core2de7Visitor12visit_string17hebc016e970ea8a46E.exit.i.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.gt = load i32, ptr %i.gh, align 1
  %i.gu = icmp ne i32 %i.gt, 1936159329
  %i.gv = zext i1 %i.gu to i32
  %i.gw = icmp eq i32 %i.gv, 0
  %spec.select6.i.i5.i.i.i.i.i.i.i.i = select i1 %i.gw, i8 1, i8 2
  br label %_ZN10serde_core2de7Visitor12visit_string17hebc016e970ea8a46E.exit.i.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i64 24, i1 false), !noalias !1022
  invoke void @_ZN10serde_core2de7Visitor14visit_byte_buf17hb929c4ed5b9772d0E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc110.i.i unwind label %.loopexit.i.i, !noalias !1045

bb.bp:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i"
  %i.gx = load ptr, ptr %i.ew, align 8, !alias.scope !1042, !noalias !1043, !nonnull !13, !align !154, !noundef !13 ; 7 uses
  %i.gy = load i64, ptr %i.ex, align 8, !alias.scope !1042, !noalias !1043, !noundef !13
  switch i64 %i.gy, label %bb.bs [
    i64 3, label %bb.bq
    i64 4, label %bb.bu
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.gz = load i8, ptr %i.gx, align 1, !alias.scope !1062, !noalias !1067, !noundef !13
  %i.ha = icmp eq i8 %i.gz, 115
  br i1 %i.ha, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !alias.scope !1062, !noalias !1067, !noundef !13
  %i.hd = icmp eq i8 %i.hc, 113
  br i1 %i.hd, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.br, %bb.bq, %bb.bp
  br label %_ZN10serde_core2de7Visitor12visit_string17hebc016e970ea8a46E.exit.i.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !1062, !noalias !1067, !noundef !13
  %i.hg = icmp eq i8 %i.hf, 108
  br i1 %i.hg, label %_ZN10serde_core2de7Visitor12visit_string17hebc016e970ea8a46E.exit.i.i.i.i.i.i.i.i, label %bb.bs

bb.bu:                                            ; preds = %bb.bp
  %i.hh = load i8, ptr %i.gx, align 1, !alias.scope !1062, !noalias !1067, !noundef !13
  %i.hi = icmp eq i8 %i.hh, 97
  br i1 %i.hi, label %bb.bv, label %bb.bs

bb.bv:                                            ; preds = %bb.bu
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !alias.scope !1062, !noalias !1067, !noundef !13
  %i.hl = icmp eq i8 %i.hk, 114
  br i1 %i.hl, label %bb.bw, label %bb.bs

bb.bw:                                            ; preds = %bb.bv
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  %i.hn = load i8, ptr %i.hm, align 1, !alias.scope !1062, !noalias !1067, !noundef !13
  %i.ho = icmp eq i8 %i.hn, 103
  br i1 %i.ho, label %bb.bx, label %bb.bs

bb.bx:                                            ; preds = %bb.bw
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gx, i64 3
  %i.hq = load i8, ptr %i.hp, align 1, !alias.scope !1062, !noalias !1067, !noundef !13
  %i.hr = icmp eq i8 %i.hq, 115
  br i1 %i.hr, label %_ZN10serde_core2de7Visitor12visit_string17hebc016e970ea8a46E.exit.i.i.i.i.i.i.i.i, label %bb.bs

end_hunk_4
begin_hunk_5_@"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17hb3721eb091cc6eb5E":bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.i = icmp eq i8 %i.h, 5
  br i1 %i.i, label %bb.i, label %bb.j

bb.e:                                             ; preds = %bb.b, %bb.f
  %i.j = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.k = icmp eq i8 %i.j, 5
  br i1 %i.k, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.l, align 8
  store i64 2, ptr %0, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.h, %bb.e
  ret void

bb.h:                                             ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1)
  br label %bb.g

bb.i:                                             ; preds = %bb.j, %bb.d
  resume { ptr, i32 } %i.g

bb.j:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1) #39
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17hc6101c2f7da9ef1aE"(ptr dead_on_unwind noalias noundef writable sret([232 x i8]) align 8 captures(address) dereferenceable(232) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.d = icmp eq i8 %i.c, 5
  br i1 %i.d, label %bb.b, label %bb.c, !prof !85

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  invoke void @"_ZN10serde_json5value2de135_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$15deserialize_any17h9babda150e8aa9abE"(ptr noalias noundef nonnull sret([232 x i8]) align 8 captures(address) dereferenceable(232) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.i = icmp eq i8 %i.h, 5
  br i1 %i.i, label %bb.i, label %bb.j

bb.e:                                             ; preds = %bb.b, %bb.f
  %i.j = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.k = icmp eq i8 %i.j, 5
  br i1 %i.k, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.l, align 8
  store i64 2, ptr %0, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.h, %bb.e
  ret void

bb.h:                                             ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1)
  br label %bb.g

bb.i:                                             ; preds = %bb.j, %bb.d
  resume { ptr, i32 } %i.g

bb.j:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1) #39
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_seq17h177bc0aeaa578e98E"(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.j = icmp eq i8 %i.i, 4
  br i1 %i.j, label %bb.b, label %bb.y, !prof !85

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3650)
  %i.l = icmp ult i64 %.sroa.3.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3653
  %.idx.i = shl nuw nsw i64 %.sroa.3.0.copyload, 5
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %.idx.i ; 3 uses
  store ptr %.sroa.2.0.copyload, ptr %i.h, align 8, !noalias !3653
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3653
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3653
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.m, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !3653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3653
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3658)
  %i.n = invoke noundef i64 @_ZN10serde_core7private9size_hint8cautious17ha70ac96dd345b835E(i64 noundef 1, i64 %.sroa.3.0.copyload)
          to label %.noexc.i unwind label %bb.q, !noalias !3653 ; 2 uses

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3660
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.n, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc5.i unwind label %bb.q, !noalias !3653

.noexc5.i:                                        ; preds = %.noexc.i
  %i.o = load i64, ptr %i.e, align 8, !range !31, !noalias !3660, !noundef !13
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !32, !noalias !3660, !noundef !13 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.p, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i", !prof !33

bb.c:                                             ; preds = %.noexc5.i
  %i.t = load i64, ptr %i.s, align 8, !noalias !3660
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.r, i64 %i.t) #38
          to label %.noexc6.i unwind label %bb.q, !noalias !3653

.noexc6.i:                                        ; preds = %bb.c
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i": ; preds = %.noexc5.i
  %i.u = load ptr, ptr %i.s, align 8, !noalias !3660, !nonnull !13, !noundef !13
  %i.v = icmp ule i64 %i.n, %i.r
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3660
  store i64 %i.r, ptr %i.f, align 8, !noalias !3660
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.w, align 8, !noalias !3660
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.x, align 8, !noalias !3660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3661
  %i.y = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %i.y, label %bb.r, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.lr.ph.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.lr.ph.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i"
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i": ; preds = %bb.o, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.lr.ph.i.i"
  %i.aa = phi ptr [ %.sroa.2.0.copyload, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.lr.ph.i.i" ], [ %i.ab, %bb.o ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3667)
  call void @llvm.experimental.noalias.scope.decl(metadata !3669)
  call void @llvm.experimental.noalias.scope.decl(metadata !3672)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 7 uses
  %.sroa.0.0.copyload2.i.i.i.i.i = load i8, ptr %i.aa, align 8, !noalias !3675 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i, 6
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 %.sroa.0.0.copyload2.i.i.i.i.i, ptr %i.d, align 8, !noalias !3679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i.i.i, i64 31, i1 false), !noalias !3679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3680
  %i.ac = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i, 2
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !85

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %i.ad, i64 16, i1 false), !noalias !3679
  invoke void @"_ZN75_$LT$serde_json..number..Number$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h1ec98e9df5f3b2b3E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.b)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hfa813a4ed5481969E.exit.i.i.i.i.i" unwind label %.thread.i.i, !noalias !3687

bb.f:                                             ; preds = %bb.d
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3690, !noalias !3691
  %i.ae = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
          to label %bb.g unwind label %bb.h, !noalias !3693

.thread.i.i:                                      ; preds = %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3690, !noalias !3691
  br label %.body.i.i

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hfa813a4ed5481969E.exit.thread.i.i.i.i.i" unwind label %.loopexit.split-lp15.i.i, !noalias !3660

bb.h:                                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #39
          to label %.body.i.i unwind label %bb.i, !noalias !3693

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !3693
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hfa813a4ed5481969E.exit.thread.i.i.i.i.i": ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3680
  br label %bb.j

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hfa813a4ed5481969E.exit.i.i.i.i.i": ; preds = %bb.e
  %.pre.i.i.i.i.i = load i32, ptr %i.c, align 8, !range !2612, !noalias !3679
  %i.ag = trunc nuw i32 %.pre.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3680
  br i1 %i.ag, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hfa813a4ed5481969E.exit.i._crit_edge.i.i.i.i", label %bb.m

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hfa813a4ed5481969E.exit.i._crit_edge.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hfa813a4ed5481969E.exit.i.i.i.i.i"
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3690, !noalias !3691
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !3679
  br label %bb.j

.loopexit14.i.i:                                  ; preds = %bb.n
  %lpad.loopexit16.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3690, !noalias !3691
  br label %.body.i.i

.loopexit.split-lp15.i.i:                         ; preds = %bb.g
  %lpad.loopexit.split-lp17.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp15.i.i, %.loopexit14.i.i, %bb.h, %.thread.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.thread.i.i ], [ %lpad.loopexit.split-lp.i.i, %bb.h ], [ %lpad.loopexit16.i.i, %.loopexit14.i.i ], [ %lpad.loopexit.split-lp17.i.i, %.loopexit.split-lp15.i.i ]
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.p, !noalias !3660

bb.j:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hfa813a4ed5481969E.exit.i._crit_edge.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hfa813a4ed5481969E.exit.thread.i.i.i.i.i"
  %i.ah = phi ptr [ %.pre.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hfa813a4ed5481969E.exit.i._crit_edge.i.i.i.i" ], [ %i.ae, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hfa813a4ed5481969E.exit.thread.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3695
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !alias.scope !3696, !noalias !3697
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !3696, !noalias !3697
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce7e94c3e5886d6aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i.i" unwind label %bb.k, !noalias !3660

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.l, !noalias !3660

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !3660
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i.i": ; preds = %bb.j
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread.i unwind label %bb.q, !noalias !3653

.thread.i:                                        ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3660
  br label %bb.w

bb.m:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hfa813a4ed5481969E.exit.i.i.i.i.i"
  %i.al = load float, ptr %i.z, align 4, !noalias !3679, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3695
  %i.am = load i64, ptr %i.x, align 8, !alias.scope !3698, !noalias !3660, !noundef !13 ; 3 uses
  %i.an = load i64, ptr %i.f, align 8, !range !163, !alias.scope !3698, !noalias !3660, !noundef !13
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb43a167f033784e5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.o unwind label %.loopexit14.i.i, !noalias !3660

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ap = load ptr, ptr %i.w, align 8, !alias.scope !3698, !noalias !3660, !nonnull !13, !noundef !13
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.am
  store float %i.al, ptr %i.aq, align 4, !noalias !3660
  %i.ar = add i64 %i.am, 1
  store i64 %i.ar, ptr %i.x, align 8, !alias.scope !3698, !noalias !3660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3701
  %i.as = icmp eq ptr %i.ab, %i.m
  br i1 %i.as, label %.loopexit.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"

bb.p:                                             ; preds = %.body.i.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !3660
  unreachable

.body.i:                                          ; preds = %bb.u, %bb.q, %bb.k, %.body.i.i
  %.pn.i = phi { ptr, i32 } [ %i.ba, %bb.u ], [ %i.au, %bb.q ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.aj, %bb.k ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3ebc01661c158fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.body unwind label %bb.x, !noalias !3653

bb.q:                                             ; preds = %bb.v, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i.i", %bb.c, %.noexc.i, %bb.b
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.i:                                      ; preds = %bb.o, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"
  %.lcssa.i = phi ptr [ %i.m, %bb.o ], [ %i.ab, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i" ]
  store ptr %.lcssa.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3690, !noalias !3691
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !3697
  %.pr.i = load i64, ptr %0, align 8, !alias.scope !3650, !noalias !3705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3660
  %i.av = icmp eq i64 %.pr.i, -9223372036854775808
  br i1 %i.av, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !noalias !3705
  %i.aw = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !3653, !nonnull !13, !noundef !13
  %i.ax = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3653, !nonnull !13, !noundef !13
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.w, label %bb.t, !prof !85

bb.t:                                             ; preds = %bb.s
  %i.az = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %.sroa.3.0.copyload, ptr noundef nonnull align 1 @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
          to label %bb.v unwind label %bb.u, !noalias !3653

bb.u:                                             ; preds = %bb.t
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #39
          to label %.body.i unwind label %bb.x, !noalias !3653

bb.v:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.bb, align 8, !alias.scope !3650, !noalias !3705
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !3650, !noalias !3705
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.w unwind label %bb.q, !noalias !3653

bb.w:                                             ; preds = %bb.s, %bb.v, %bb.r, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3653
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3ebc01661c158fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_ZN10serde_json5value2de11visit_array17h7c162f3ab0767d4bE.exit unwind label %bb.z

bb.x:                                             ; preds = %bb.u, %.body.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !3653
  unreachable

_ZN10serde_json5value2de11visit_array17h7c162f3ab0767d4bE.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3653
  br label %bb.aa

bb.y:                                             ; preds = %bb.a
  %i.bd = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @75)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.z ], [ %.pn.i, %.body.i ]
  %i.bf = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.bg = icmp eq i8 %i.bf, 4
  br i1 %i.bg, label %bb.ae, label %bb.af

bb.aa:                                            ; preds = %_ZN10serde_json5value2de11visit_array17h7c162f3ab0767d4bE.exit, %bb.ab
  %i.bh = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.bi = icmp eq i8 %i.bh, 4
  br i1 %i.bi, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.bj, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.aa

bb.ac:                                            ; preds = %bb.ad, %bb.aa
  ret void

bb.ad:                                            ; preds = %bb.aa
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1)
  br label %bb.ac

bb.ae:                                            ; preds = %bb.af, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.af:                                            ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1) #39
          to label %bb.ae unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_seq17h561846984114007fE"(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.j = icmp eq i8 %i.i, 4
  br i1 %i.j, label %bb.b, label %bb.y, !prof !85

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3706)
  %i.l = icmp ult i64 %.sroa.3.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3709
  %.idx.i = shl nuw nsw i64 %.sroa.3.0.copyload, 5
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %.idx.i ; 3 uses
  store ptr %.sroa.2.0.copyload, ptr %i.h, align 8, !noalias !3709
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3709
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3709
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.m, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !3709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3709
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3714)
  %i.n = invoke noundef i64 @_ZN10serde_core7private9size_hint8cautious17h47b290a2a32a34b5E(i64 noundef 1, i64 %.sroa.3.0.copyload)
          to label %.noexc.i unwind label %bb.q, !noalias !3709 ; 2 uses

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3716
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.n, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
          to label %.noexc5.i unwind label %bb.q, !noalias !3709

.noexc5.i:                                        ; preds = %.noexc.i
  %i.o = load i64, ptr %i.e, align 8, !range !31, !noalias !3716, !noundef !13
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !32, !noalias !3716, !noundef !13 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.p, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i", !prof !33

bb.c:                                             ; preds = %.noexc5.i
  %i.t = load i64, ptr %i.s, align 8, !noalias !3716
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.r, i64 %i.t) #38
          to label %.noexc6.i unwind label %bb.q, !noalias !3709

.noexc6.i:                                        ; preds = %bb.c
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i": ; preds = %.noexc5.i
  %i.u = load ptr, ptr %i.s, align 8, !noalias !3716, !nonnull !13, !noundef !13
  %i.v = icmp ule i64 %i.n, %i.r
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3716
  store i64 %i.r, ptr %i.f, align 8, !noalias !3716
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.w, align 8, !noalias !3716
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.x, align 8, !noalias !3716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3717
  %i.y = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %i.y, label %bb.r, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.lr.ph.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.lr.ph.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i"
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i": ; preds = %bb.o, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.lr.ph.i.i"
  %i.aa = phi ptr [ %.sroa.2.0.copyload, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.lr.ph.i.i" ], [ %i.ab, %bb.o ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3723)
  call void @llvm.experimental.noalias.scope.decl(metadata !3725)
  call void @llvm.experimental.noalias.scope.decl(metadata !3728)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 7 uses
  %.sroa.0.0.copyload2.i.i.i.i.i = load i8, ptr %i.aa, align 8, !noalias !3731 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i, 6
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 %.sroa.0.0.copyload2.i.i.i.i.i, ptr %i.d, align 8, !noalias !3733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i.i.i, i64 31, i1 false), !noalias !3733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3734
  %i.ac = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i, 2
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !85

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %i.ad, i64 16, i1 false), !noalias !3733
  invoke void @"_ZN75_$LT$serde_json..number..Number$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hfe953255f0f995fbE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.b)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i.i.i.i.i" unwind label %.thread.i.i, !noalias !3741

bb.f:                                             ; preds = %bb.d
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3744, !noalias !3745
  %i.ae = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
          to label %bb.g unwind label %bb.h, !noalias !3747

.thread.i.i:                                      ; preds = %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3744, !noalias !3745
  br label %.body.i.i

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.thread.i.i.i.i.i" unwind label %.loopexit.split-lp19.i.i, !noalias !3716

bb.h:                                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #39
          to label %.body.i.i unwind label %bb.i, !noalias !3747

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !3747
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.thread.i.i.i.i.i": ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3734
  br label %bb.j

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i.i.i.i.i": ; preds = %bb.e
  %.pre.i.i.i.i.i = load i16, ptr %i.c, align 8, !range !3749, !noalias !3733
  %i.ag = trunc nuw i16 %.pre.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3734
  br i1 %i.ag, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i._crit_edge.i.i.i.i", label %bb.m

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i._crit_edge.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i.i.i.i.i"
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3744, !noalias !3745
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !3733
  br label %bb.j

.loopexit18.i.i:                                  ; preds = %bb.n
  %lpad.loopexit20.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3744, !noalias !3745
  br label %.body.i.i

.loopexit.split-lp19.i.i:                         ; preds = %bb.g
  %lpad.loopexit.split-lp21.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp19.i.i, %.loopexit18.i.i, %bb.h, %.thread.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.thread.i.i ], [ %lpad.loopexit.split-lp.i.i, %bb.h ], [ %lpad.loopexit20.i.i, %.loopexit18.i.i ], [ %lpad.loopexit.split-lp21.i.i, %.loopexit.split-lp19.i.i ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %.body.i unwind label %bb.p, !noalias !3716

bb.j:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i._crit_edge.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.thread.i.i.i.i.i"
  %i.ah = phi ptr [ %.pre.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i._crit_edge.i.i.i.i" ], [ %i.ae, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.thread.i.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3750
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !alias.scope !3751, !noalias !3752
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !3751, !noalias !3752
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52d6f739fdf6f61eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE.exit.i.i" unwind label %bb.k, !noalias !3716

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce2e7982f9276536E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.l, !noalias !3716

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !3716
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE.exit.i.i": ; preds = %bb.j
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce2e7982f9276536E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread.i unwind label %bb.q, !noalias !3709

.thread.i:                                        ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3716
  br label %bb.w

bb.m:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i.i.i.i.i"
  %i.al = load i16, ptr %i.z, align 2, !noalias !3733, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3750
  %i.am = load i64, ptr %i.x, align 8, !alias.scope !3753, !noalias !3716, !noundef !13 ; 3 uses
  %i.an = load i64, ptr %i.f, align 8, !range !163, !alias.scope !3753, !noalias !3716, !noundef !13
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h6e2c28a36add5fe5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.o unwind label %.loopexit18.i.i, !noalias !3716

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ap = load ptr, ptr %i.w, align 8, !alias.scope !3753, !noalias !3716, !nonnull !13, !noundef !13
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.am
  store i16 %i.al, ptr %i.aq, align 2, !noalias !3716
  %i.ar = add i64 %i.am, 1
  store i64 %i.ar, ptr %i.x, align 8, !noalias !3716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3756
  %i.as = icmp eq ptr %i.ab, %i.m
  br i1 %i.as, label %.loopexit.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"

bb.p:                                             ; preds = %.body.i.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !3716
  unreachable

.body.i:                                          ; preds = %bb.u, %bb.q, %bb.k, %.body.i.i
  %.pn.i = phi { ptr, i32 } [ %i.ba, %bb.u ], [ %i.au, %bb.q ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.aj, %bb.k ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3ebc01661c158fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.body unwind label %bb.x, !noalias !3709

bb.q:                                             ; preds = %bb.v, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE.exit.i.i", %bb.c, %.noexc.i, %bb.b
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.i:                                      ; preds = %bb.o, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"
  %.lcssa.i = phi ptr [ %i.m, %bb.o ], [ %i.ab, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i" ]
  store ptr %.lcssa.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3744, !noalias !3745
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !3752
  %.pr.i = load i64, ptr %0, align 8, !alias.scope !3706, !noalias !3758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3716
  %i.av = icmp eq i64 %.pr.i, -9223372036854775808
  br i1 %i.av, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !noalias !3758
  %i.aw = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !3709, !nonnull !13, !noundef !13
  %i.ax = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3709, !nonnull !13, !noundef !13
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.w, label %bb.t, !prof !85

bb.t:                                             ; preds = %bb.s
  %i.az = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %.sroa.3.0.copyload, ptr noundef nonnull align 1 @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
          to label %bb.v unwind label %bb.u, !noalias !3709

bb.u:                                             ; preds = %bb.t
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #39
          to label %.body.i unwind label %bb.x, !noalias !3709

bb.v:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.bb, align 8, !alias.scope !3706, !noalias !3758
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !3706, !noalias !3758
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE"(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.w unwind label %bb.q, !noalias !3709

bb.w:                                             ; preds = %bb.s, %bb.v, %bb.r, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3709
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3ebc01661c158fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_ZN10serde_json5value2de11visit_array17h7cb8fee9c70446ddE.exit unwind label %bb.z

bb.x:                                             ; preds = %bb.u, %.body.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !3709
  unreachable

_ZN10serde_json5value2de11visit_array17h7cb8fee9c70446ddE.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3709
  br label %bb.aa

bb.y:                                             ; preds = %bb.a
  %i.bd = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.z ], [ %.pn.i, %.body.i ]
  %i.bf = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.bg = icmp eq i8 %i.bf, 4
  br i1 %i.bg, label %bb.ae, label %bb.af

bb.aa:                                            ; preds = %_ZN10serde_json5value2de11visit_array17h7cb8fee9c70446ddE.exit, %bb.ab
end_hunk_5
begin_hunk_6_@"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_u3217h16fe2c2f22dbb04fE":bb.a

bb.h:                                             ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1)
  br label %bb.g

bb.i:                                             ; preds = %bb.j, %bb.d
  resume { ptr, i32 } %i.g

bb.j:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1) #39
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_string17hf9fc92bb9cb75d6cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %.thread, label %bb.b, !prof !85

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.h = icmp eq i8 %i.g, 3
  br i1 %i.h, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.i, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  %.pre = load i8, ptr %1, align 8, !range !164
  %i.j = icmp eq i8 %.pre, 3
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.f, %bb.d
  ret void

bb.f:                                             ; preds = %bb.d
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1)
  br label %bb.e

bb.g:                                             ; preds = %bb.h, %bb.c
  resume { ptr, i32 } %i.f

bb.h:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1) #39
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_struct17h38e88db11b2909ccE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 11 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 11 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 11 uses
  %i.q = alloca [16 x i8], align 8                ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 10 uses
  %i.v = alloca [24 x i8], align 8                ; 2 uses
  %i.w = load i8, ptr %1, align 8, !range !164, !noundef !13
  switch i8 %i.w, label %bb.b [
    i8 4, label %bb.c
    i8 5, label %bb.bu
  ], !prof !2483

bb.b:                                             ; preds = %bb.a
  %i.x = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @81)
          to label %bb.bx unwind label %bb.bv

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.y, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !13, !noundef !13 ; 21 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3931)
  %i.z = icmp ult i64 %.sroa.3.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3934
  %.idx.i = shl nuw nsw i64 %.sroa.3.0.copyload, 5
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %.idx.i
  store ptr %.sroa.2.0.copyload, ptr %i.u, align 8, !noalias !3934
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 8 uses
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3934
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3934
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  store ptr %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !3934
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3944)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3947
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3951)
  %i.ab = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %i.ab, label %bb.o, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i": ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32 ; 2 uses
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3954, !noalias !3955
  %.sroa.0.0.copyload6.i.i.i.i.i = load i8, ptr %.sroa.2.0.copyload, align 8, !noalias !3958 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload6.i.i.i.i.i, 6
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.d

bb.d:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"
  %.sroa.8.0..sroa_idx7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 1
  store i8 %.sroa.0.0.copyload6.i.i.i.i.i, ptr %i.r, align 8, !noalias !3959
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx7.i.i.i.i.i, i64 31, i1 false), !noalias !3959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3959
  invoke void @"_ZN4anki4sync10collection6sanity1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..collection..sanity..SanityCheckDueCounts$GT$11deserialize17hd3d1ad5dc7d4374dE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.r)
          to label %.noexc.i unwind label %bb.bn, !noalias !3934

.noexc.i:                                         ; preds = %bb.d
  %i.ad = load i32, ptr %i.q, align 8, !range !2612, !noalias !3959, !noundef !13
  %i.ae = trunc nuw i32 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !3959, !nonnull !13, !align !82, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3947
  br label %.noexc6.i

bb.f:                                             ; preds = %.noexc.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.7.4.copyload.i.i = load i32, ptr %i.ah, align 4, !noalias !3960
  %.sroa.9.4..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.9.4.copyload.i.i = load ptr, ptr %.sroa.9.4..sroa_idx.i.i, align 8, !noalias !3960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3947
  call void @llvm.experimental.noalias.scope.decl(metadata !3961)
  call void @llvm.experimental.noalias.scope.decl(metadata !3964)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3967
  call void @llvm.experimental.noalias.scope.decl(metadata !3971)
  %i.ai = icmp eq i64 %.sroa.3.0.copyload, 1
  br i1 %i.ai, label %bb.z, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i68.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i68.i.i": ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 64 ; 2 uses
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3974, !noalias !3975
  %.sroa.0.0.copyload2.i.i.i.i.i = load i8, ptr %i.ac, align 8, !noalias !3978 ; 3 uses
  %.not.i.i.i69.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i, 6
  br i1 %.not.i.i.i69.i.i, label %bb.z, label %bb.g

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i68.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 33
  store i8 %.sroa.0.0.copyload2.i.i.i.i.i, ptr %i.p, align 8, !noalias !3979
  %.sroa.8.0..sroa_idx.i.i.i70.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i70.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i.i.i, i64 31, i1 false), !noalias !3979
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3979
  call void @llvm.experimental.noalias.scope.decl(metadata !3980)
  call void @llvm.experimental.noalias.scope.decl(metadata !3983)
  call void @llvm.experimental.noalias.scope.decl(metadata !3986)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3989
  %i.ak = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i, 2
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 1 dereferenceable(16) %i.al, i64 16, i1 false), !noalias !3979
  invoke void @"_ZN75_$LT$serde_json..number..Number$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h8992d3add85845fcE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.n)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i.i.i" unwind label %bb.j, !noalias !3992

bb.i:                                             ; preds = %bb.g
  %i.am = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
          to label %bb.k unwind label %bb.j, !noalias !3993

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load i8, ptr %i.p, align 8, !range !164, !alias.scope !3995, !noalias !3993, !noundef !13
  %i.ap = icmp eq i8 %i.ao, 2
  br i1 %i.ap, label %.body.i, label %bb.m

bb.k:                                             ; preds = %bb.i
  %.pr.i.i.i.i.i.i.i = load i8, ptr %i.p, align 8, !alias.scope !3995, !noalias !3993
  %i.aq = icmp eq i8 %.pr.i.i.i.i.i.i.i, 2
  br i1 %i.aq, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i.i.i" unwind label %bb.bn, !noalias !3934

bb.m:                                             ; preds = %bb.j
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p) #39
          to label %.body.i unwind label %bb.n, !noalias !3993

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !3993
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i.i.i": ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3989
  br label %bb.p

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i.i.i": ; preds = %bb.h
  %.pre.i.i.i.i.i = load i32, ptr %i.o, align 8, !range !2612, !noalias !3979
  %i.as = trunc nuw i32 %.pre.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3989
  br i1 %i.as, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i.i.i", label %bb.q

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i.i.i"
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !3979
  br label %bb.p

bb.o:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i", %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3947
  br label %.invoke.i

bb.p:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i.i.i"
  %i.at = phi ptr [ %.pre.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i.i.i" ], [ %i.am, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3967
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  br label %.noexc6.i

bb.q:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i.i.i"
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noalias !3979, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3967
  call void @llvm.experimental.noalias.scope.decl(metadata !3996)
  call void @llvm.experimental.noalias.scope.decl(metadata !3999)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4002
  call void @llvm.experimental.noalias.scope.decl(metadata !4006)
  %i.aw = icmp eq i64 %.sroa.3.0.copyload, 2
  br i1 %i.aw, label %bb.ak, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i72.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i72.i.i": ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 96 ; 2 uses
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4009, !noalias !4010
  %.sroa.0.0.copyload2.i.i.i73.i.i = load i8, ptr %i.aj, align 8, !noalias !4013 ; 3 uses
  %.not.i.i.i74.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i73.i.i, 6
  br i1 %.not.i.i.i74.i.i, label %bb.ak, label %bb.r

bb.r:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i72.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i75.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 65
  store i8 %.sroa.0.0.copyload2.i.i.i73.i.i, ptr %i.m, align 8, !noalias !4014
  %.sroa.8.0..sroa_idx.i.i.i76.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i76.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i75.i.i, i64 31, i1 false), !noalias !4014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4014
  call void @llvm.experimental.noalias.scope.decl(metadata !4015)
  call void @llvm.experimental.noalias.scope.decl(metadata !4018)
  call void @llvm.experimental.noalias.scope.decl(metadata !4021)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4024
  %i.ay = icmp eq i8 %.sroa.0.0.copyload2.i.i.i73.i.i, 2
  br i1 %i.ay, label %bb.s, label %bb.t, !prof !85

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 1 dereferenceable(16) %i.az, i64 16, i1 false), !noalias !4014
  invoke void @"_ZN75_$LT$serde_json..number..Number$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h8992d3add85845fcE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.k)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i79.i.i" unwind label %bb.u, !noalias !4027

bb.t:                                             ; preds = %bb.r
  %i.ba = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
          to label %bb.v unwind label %bb.u, !noalias !4028

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load i8, ptr %i.m, align 8, !range !164, !alias.scope !4030, !noalias !4028, !noundef !13
  %i.bd = icmp eq i8 %i.bc, 2
  br i1 %i.bd, label %.body.i, label %bb.x

bb.v:                                             ; preds = %bb.t
  %.pr.i.i.i.i.i77.i.i = load i8, ptr %i.m, align 8, !alias.scope !4030, !noalias !4028
  %i.be = icmp eq i8 %.pr.i.i.i.i.i77.i.i, 2
  br i1 %i.be, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i78.i.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i78.i.i" unwind label %bb.bn, !noalias !3934

bb.x:                                             ; preds = %bb.u
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m) #39
          to label %.body.i unwind label %bb.y, !noalias !4028

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4028
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i78.i.i": ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4024
  br label %bb.aa

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i79.i.i": ; preds = %bb.s
  %.pre.i.i.i80.i.i = load i32, ptr %i.l, align 8, !range !2612, !noalias !4014
  %i.bg = trunc nuw i32 %.pre.i.i.i80.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4024
  br i1 %i.bg, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i81.i.i", label %bb.ab

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i81.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i79.i.i"
  %.phi.trans.insert.i.i82.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre.i.i83.i.i = load ptr, ptr %.phi.trans.insert.i.i82.i.i, align 8, !noalias !4014
  br label %bb.aa

bb.z:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i68.i.i", %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3967
  br label %.invoke.i

bb.aa:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i81.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i78.i.i"
  %i.bh = phi ptr [ %.pre.i.i83.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i81.i.i" ], [ %i.ba, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i78.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4002
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  br label %.noexc6.i

bb.ab:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i79.i.i"
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !4014, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4002
  call void @llvm.experimental.noalias.scope.decl(metadata !4031)
  call void @llvm.experimental.noalias.scope.decl(metadata !4034)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4037
  call void @llvm.experimental.noalias.scope.decl(metadata !4041)
  %i.bk = icmp eq i64 %.sroa.3.0.copyload, 3
  br i1 %i.bk, label %bb.av, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i86.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i86.i.i": ; preds = %bb.ab
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 128 ; 2 uses
  store ptr %i.bl, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4044, !noalias !4045
  %.sroa.0.0.copyload2.i.i.i87.i.i = load i8, ptr %i.ax, align 8, !noalias !4048 ; 3 uses
  %.not.i.i.i88.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i87.i.i, 6
  br i1 %.not.i.i.i88.i.i, label %bb.av, label %bb.ac

bb.ac:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i86.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i89.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 97
  store i8 %.sroa.0.0.copyload2.i.i.i87.i.i, ptr %i.j, align 8, !noalias !4049
  %.sroa.8.0..sroa_idx.i.i.i90.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i90.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i89.i.i, i64 31, i1 false), !noalias !4049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4049
  call void @llvm.experimental.noalias.scope.decl(metadata !4050)
  call void @llvm.experimental.noalias.scope.decl(metadata !4053)
  call void @llvm.experimental.noalias.scope.decl(metadata !4056)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4059
  %i.bm = icmp eq i8 %.sroa.0.0.copyload2.i.i.i87.i.i, 2
  br i1 %i.bm, label %bb.ad, label %bb.ae, !prof !85

bb.ad:                                            ; preds = %bb.ac
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(16) %i.bn, i64 16, i1 false), !noalias !4049
  invoke void @"_ZN75_$LT$serde_json..number..Number$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h8992d3add85845fcE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.h)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i93.i.i" unwind label %bb.af, !noalias !4062

bb.ae:                                            ; preds = %bb.ac
  %i.bo = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
          to label %bb.ag unwind label %bb.af, !noalias !4063

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load i8, ptr %i.j, align 8, !range !164, !alias.scope !4065, !noalias !4063, !noundef !13
  %i.br = icmp eq i8 %i.bq, 2
  br i1 %i.br, label %.body.i, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %.pr.i.i.i.i.i91.i.i = load i8, ptr %i.j, align 8, !alias.scope !4065, !noalias !4063
  %i.bs = icmp eq i8 %.pr.i.i.i.i.i91.i.i, 2
  br i1 %i.bs, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i92.i.i", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i92.i.i" unwind label %bb.bn, !noalias !3934

bb.ai:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j) #39
          to label %.body.i unwind label %bb.aj, !noalias !4063

bb.aj:                                            ; preds = %bb.ai
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4063
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i92.i.i": ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4059
  br label %bb.al

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i93.i.i": ; preds = %bb.ad
  %.pre.i.i.i94.i.i = load i32, ptr %i.i, align 8, !range !2612, !noalias !4049
  %i.bu = trunc nuw i32 %.pre.i.i.i94.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4059
  br i1 %i.bu, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i95.i.i", label %bb.am

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i95.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i93.i.i"
  %.phi.trans.insert.i.i96.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre.i.i97.i.i = load ptr, ptr %.phi.trans.insert.i.i96.i.i, align 8, !noalias !4049
  br label %bb.al

bb.ak:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i72.i.i", %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4002
  br label %.invoke.i

bb.al:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i95.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i92.i.i"
  %i.bv = phi ptr [ %.pre.i.i97.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i95.i.i" ], [ %i.bo, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i92.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4037
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ]
  br label %.noexc6.i

bb.am:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i93.i.i"
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !noalias !4049, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4037
  call void @llvm.experimental.noalias.scope.decl(metadata !4066)
  call void @llvm.experimental.noalias.scope.decl(metadata !4069)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4072
  call void @llvm.experimental.noalias.scope.decl(metadata !4076)
  %i.by = icmp eq i64 %.sroa.3.0.copyload, 4
  br i1 %i.by, label %bb.bg, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i100.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i100.i.i": ; preds = %bb.am
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 160 ; 2 uses
  store ptr %i.bz, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4079, !noalias !4080
  %.sroa.0.0.copyload2.i.i.i101.i.i = load i8, ptr %i.bl, align 8, !noalias !4083 ; 3 uses
  %.not.i.i.i102.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i101.i.i, 6
  br i1 %.not.i.i.i102.i.i, label %bb.bg, label %bb.an

bb.an:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i100.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i103.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 129
  store i8 %.sroa.0.0.copyload2.i.i.i101.i.i, ptr %i.g, align 8, !noalias !4084
  %.sroa.8.0..sroa_idx.i.i.i104.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i104.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i103.i.i, i64 31, i1 false), !noalias !4084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4084
  call void @llvm.experimental.noalias.scope.decl(metadata !4085)
  call void @llvm.experimental.noalias.scope.decl(metadata !4088)
  call void @llvm.experimental.noalias.scope.decl(metadata !4091)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4094
  %i.ca = icmp eq i8 %.sroa.0.0.copyload2.i.i.i101.i.i, 2
  br i1 %i.ca, label %bb.ao, label %bb.ap, !prof !85

bb.ao:                                            ; preds = %bb.an
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(16) %i.cb, i64 16, i1 false), !noalias !4084
  invoke void @"_ZN75_$LT$serde_json..number..Number$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h8992d3add85845fcE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.e)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i107.i.i" unwind label %bb.aq, !noalias !4097

bb.ap:                                            ; preds = %bb.an
  %i.cc = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
          to label %bb.ar unwind label %bb.aq, !noalias !4098

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load i8, ptr %i.g, align 8, !range !164, !alias.scope !4100, !noalias !4098, !noundef !13
  %i.cf = icmp eq i8 %i.ce, 2
  br i1 %i.cf, label %.body.i, label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %.pr.i.i.i.i.i105.i.i = load i8, ptr %i.g, align 8, !alias.scope !4100, !noalias !4098
  %i.cg = icmp eq i8 %.pr.i.i.i.i.i105.i.i, 2
  br i1 %i.cg, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i106.i.i", label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i106.i.i" unwind label %bb.bn, !noalias !3934

bb.at:                                            ; preds = %bb.aq
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g) #39
          to label %.body.i unwind label %bb.au, !noalias !4098

bb.au:                                            ; preds = %bb.at
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4098
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i106.i.i": ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4094
  br label %bb.aw

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i107.i.i": ; preds = %bb.ao
  %.pre.i.i.i108.i.i = load i32, ptr %i.f, align 8, !range !2612, !noalias !4084
  %i.ci = trunc nuw i32 %.pre.i.i.i108.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4094
  br i1 %i.ci, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i109.i.i", label %bb.ax

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i109.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i107.i.i"
  %.phi.trans.insert.i.i110.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i.i111.i.i = load ptr, ptr %.phi.trans.insert.i.i110.i.i, align 8, !noalias !4084
  br label %bb.aw

bb.av:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i86.i.i", %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4037
  br label %.invoke.i

bb.aw:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i109.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i106.i.i"
  %i.cj = phi ptr [ %.pre.i.i111.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i109.i.i" ], [ %i.cc, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i106.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4072
  br label %.noexc6.i

bb.ax:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i107.i.i"
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !noalias !4084, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4072
  call void @llvm.experimental.noalias.scope.decl(metadata !4101)
  call void @llvm.experimental.noalias.scope.decl(metadata !4104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4107
  call void @llvm.experimental.noalias.scope.decl(metadata !4111)
  %i.cm = icmp eq i64 %.sroa.3.0.copyload, 5
  br i1 %i.cm, label %bb.bj, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i114.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i114.i.i": ; preds = %bb.ax
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 192
  store ptr %i.cn, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4114, !noalias !4115
  %.sroa.0.0.copyload2.i.i.i115.i.i = load i8, ptr %i.bz, align 8, !noalias !4118 ; 3 uses
  %.not.i.i.i116.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i115.i.i, 6
  br i1 %.not.i.i.i116.i.i, label %bb.bj, label %bb.ay

bb.ay:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i114.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i117.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 161
  store i8 %.sroa.0.0.copyload2.i.i.i115.i.i, ptr %i.d, align 8, !noalias !4119
  %.sroa.8.0..sroa_idx.i.i.i118.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i118.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i117.i.i, i64 31, i1 false), !noalias !4119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4119
  call void @llvm.experimental.noalias.scope.decl(metadata !4120)
  call void @llvm.experimental.noalias.scope.decl(metadata !4123)
  call void @llvm.experimental.noalias.scope.decl(metadata !4126)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4129
  %i.co = icmp eq i8 %.sroa.0.0.copyload2.i.i.i115.i.i, 2
  br i1 %i.co, label %bb.az, label %bb.ba, !prof !85

bb.az:                                            ; preds = %bb.ay
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %i.cp, i64 16, i1 false), !noalias !4119
  invoke void @"_ZN75_$LT$serde_json..number..Number$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h8992d3add85845fcE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.b)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i121.i.i" unwind label %bb.bb, !noalias !4132

bb.ba:                                            ; preds = %bb.ay
  %i.cq = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
          to label %bb.bc unwind label %bb.bb, !noalias !4133

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load i8, ptr %i.d, align 8, !range !164, !alias.scope !4135, !noalias !4133, !noundef !13
  %i.ct = icmp eq i8 %i.cs, 2
  br i1 %i.ct, label %.body.i, label %bb.be

bb.bc:                                            ; preds = %bb.ba
  %.pr.i.i.i.i.i119.i.i = load i8, ptr %i.d, align 8, !alias.scope !4135, !noalias !4133
  %i.cu = icmp eq i8 %.pr.i.i.i.i.i119.i.i, 2
  br i1 %i.cu, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i120.i.i", label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i120.i.i" unwind label %bb.bn, !noalias !3934

bb.be:                                            ; preds = %bb.bb
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #39
          to label %.body.i unwind label %bb.bf, !noalias !4133

bb.bf:                                            ; preds = %bb.be
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4133
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i120.i.i": ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4129
  br label %bb.bh

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i121.i.i": ; preds = %bb.az
  %.pre.i.i.i122.i.i = load i32, ptr %i.c, align 8, !range !2612, !noalias !4119
  %i.cw = trunc nuw i32 %.pre.i.i.i122.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4129
  br i1 %i.cw, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i123.i.i", label %bb.bi

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i123.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i121.i.i"
  %.phi.trans.insert.i.i124.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i.i125.i.i = load ptr, ptr %.phi.trans.insert.i.i124.i.i, align 8, !noalias !4119
  br label %bb.bh

bb.bg:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i100.i.i", %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4072
  br label %.invoke.i

bb.bh:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i123.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i120.i.i"
  %i.cx = phi ptr [ %.pre.i.i125.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i123.i.i" ], [ %i.cq, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i120.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4107
  br label %.noexc6.i

bb.bi:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i121.i.i"
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !noalias !4119, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4136
  invoke fastcc void @"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17hd0c021ccb8a02366E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.t, ptr nonnull align 8 dereferenceable(32) %i.u)
          to label %.noexc15.i unwind label %bb.bn, !noalias !3934

.noexc15.i:                                       ; preds = %bb.bi
  %i.da = load i32, ptr %i.t, align 8, !range !2612, !noalias !4136, !noundef !13
  %i.db = trunc nuw i32 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !4136 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.df = load i32, ptr %i.de, align 4, !range !2612, !noalias !4136
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = trunc i64 %i.dg to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4136
  br i1 %i.db, label %.noexc6.i, label %bb.bk

bb.bj:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i114.i.i", %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4107
  br label %.invoke.i

bb.bk:                                            ; preds = %.noexc15.i
  %i.di = trunc nuw i32 %i.df to i1
  br i1 %i.di, label %bb.bl, label %.invoke.i, !prof !85

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4136
  invoke fastcc void @"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17hd0c021ccb8a02366E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.s, ptr nonnull align 8 dereferenceable(32) %i.u)
          to label %.noexc17.i unwind label %bb.bn, !noalias !3934

.noexc17.i:                                       ; preds = %bb.bl
  %i.dj = load i32, ptr %i.s, align 8, !range !2612, !noalias !4136, !noundef !13
  %i.dk = trunc nuw i32 %i.dj to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !4136 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !range !2612, !noalias !4136
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = trunc i64 %i.dp to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4136
  br i1 %i.dk, label %.noexc6.i, label %bb.bm

bb.bm:                                            ; preds = %.noexc17.i
  %i.dr = trunc nuw i32 %i.do to i1
  br i1 %i.dr, label %bb.bo, label %.invoke.i, !prof !85

.invoke.i:                                        ; preds = %bb.bm, %bb.bk, %bb.bj, %bb.bg, %bb.av, %bb.ak, %bb.z, %bb.o
  %i.ds = phi i64 [ 6, %bb.bk ], [ 0, %bb.o ], [ 5, %bb.bj ], [ 4, %bb.bg ], [ 3, %bb.av ], [ 2, %bb.ak ], [ 1, %bb.z ], [ 7, %bb.bm ]
  %i.dt = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %i.ds, ptr noundef nonnull align 1 @201, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
          to label %.noexc6.i unwind label %bb.bn, !noalias !3934

.body.i:                                          ; preds = %bb.bq, %bb.bn, %bb.be, %bb.bb, %bb.at, %bb.aq, %bb.ai, %bb.af, %bb.x, %bb.u, %bb.m, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.eb, %bb.bq ], [ %i.du, %bb.bn ], [ %i.cd, %bb.aq ], [ %i.an, %bb.j ], [ %i.bb, %bb.u ], [ %i.bp, %bb.af ], [ %i.an, %bb.m ], [ %i.bb, %bb.x ], [ %i.bp, %bb.ai ], [ %i.cd, %bb.at ], [ %i.cr, %bb.be ], [ %i.cr, %bb.bb ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3ebc01661c158fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %.body unwind label %bb.bt, !noalias !3934

bb.bn:                                            ; preds = %.invoke.i, %bb.bl, %bb.bi, %bb.bd, %bb.as, %bb.ah, %bb.w, %bb.l, %bb.d
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.noexc6.i:                                        ; preds = %.invoke.i, %.noexc17.i, %.noexc15.i, %bb.bh, %bb.aw, %bb.al, %bb.aa, %bb.p, %bb.e
  %.sink.i.sink.i = phi ptr [ %i.bh, %bb.aa ], [ %i.bv, %bb.al ], [ %i.cx, %bb.bh ], [ %i.dm, %.noexc17.i ], [ %i.dt, %.invoke.i ], [ %i.dd, %.noexc15.i ], [ %i.cj, %bb.aw ], [ %i.ag, %bb.e ], [ %i.at, %bb.p ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.sink.i, ptr %i.dv, align 8, !alias.scope !4137, !noalias !4138
  br label %.sink.split

bb.bo:                                            ; preds = %bb.bm
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.7.4.copyload.i.i, ptr %i.dw, align 4, !alias.scope !4137, !noalias !4138
  %.sroa.450.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %.sroa.9.4.copyload.i.i, ptr %.sroa.450.0..sroa_idx.i.i, align 8, !alias.scope !4137, !noalias !4138
  %.sroa.551.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.av, ptr %.sroa.551.0..sroa_idx.i.i, align 8, !alias.scope !4137, !noalias !4138
  %.sroa.652.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bj, ptr %.sroa.652.0..sroa_idx.i.i, align 4, !alias.scope !4137, !noalias !4138
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bx, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !alias.scope !4137, !noalias !4138
  %.sroa.854.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.cl, ptr %.sroa.854.0..sroa_idx.i.i, align 4, !alias.scope !4137, !noalias !4138
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.cz, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !4137, !noalias !4138
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.dh, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !alias.scope !4137, !noalias !4138
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.dq, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !4137, !noalias !4138
  store i32 0, ptr %0, align 8, !alias.scope !4137, !noalias !4138
  %i.dx = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !3934, !nonnull !13, !noundef !13
  %i.dy = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3934, !nonnull !13, !noundef !13
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %bb.bs, label %bb.bp, !prof !85

bb.bp:                                            ; preds = %bb.bo
  %i.ea = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %.sroa.3.0.copyload, ptr noundef nonnull align 1 @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
          to label %bb.br unwind label %bb.bq, !noalias !3934

bb.bq:                                            ; preds = %bb.bp
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.br:                                            ; preds = %bb.bp
  store ptr %i.ea, ptr %.sroa.450.0..sroa_idx.i.i, align 8, !alias.scope !3931, !noalias !4139
  br label %.sink.split

.sink.split:                                      ; preds = %.noexc6.i, %bb.br
  store i32 1, ptr %0, align 8, !alias.scope !3931, !noalias !4139
  br label %bb.bs

bb.bs:                                            ; preds = %.sink.split, %bb.bo
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3ebc01661c158fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN10serde_json5value2de11visit_array17hd7f6341992d2cb43E.exit unwind label %bb.bv

bb.bt:                                            ; preds = %.body.i
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !3934
  unreachable

_ZN10serde_json5value2de11visit_array17hd7f6341992d2cb43E.exit: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3934
  br label %bb.bw

bb.bu:                                            ; preds = %bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i64 24, i1 false)
  invoke void @"_ZN10serde_json5value2de135_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$15deserialize_any17hce1e8cbda333d34dE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.v)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bs, %bb.bu, %bb.b
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.bv
  %eh.lpad-body = phi { ptr, i32 } [ %i.ee, %bb.bv ], [ %.pn.i, %.body.i ]
  %i.ef = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.eg = and i8 %i.ef, 6
  %switch = icmp eq i8 %i.eg, 4
  br i1 %switch, label %bb.cb, label %bb.ca

bb.bw:                                            ; preds = %_ZN10serde_json5value2de11visit_array17hd7f6341992d2cb43E.exit, %bb.bu, %bb.bx
  %i.eh = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.ei = and i8 %i.eh, 6
  %switch3 = icmp eq i8 %i.ei, 4
  br i1 %switch3, label %bb.bz, label %bb.by

bb.bx:                                            ; preds = %bb.b
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.ej, align 8
  store i32 1, ptr %0, align 8
  br label %bb.bw

bb.by:                                            ; preds = %bb.bw
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bw, %bb.by
  ret void

bb.ca:                                            ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1) #39
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %.body, %bb.ca
  resume { ptr, i32 } %eh.lpad-body

bb.cc:                                            ; preds = %bb.ca
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_struct17h53e2e7adf412417fE"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 11 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = load i8, ptr %1, align 8, !range !164, !noundef !13
  switch i8 %i.j, label %bb.b [
    i8 4, label %bb.c
    i8 5, label %bb.af
  ], !prof !2483

bb.b:                                             ; preds = %bb.a
  %i.k = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82)
          to label %bb.ai unwind label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.l, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !13, !noundef !13 ; 10 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4140)
  %i.m = icmp ult i64 %.sroa.3.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4143
  %.idx.i = shl nuw nsw i64 %.sroa.3.0.copyload, 5
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %.idx.i
  store ptr %.sroa.2.0.copyload, ptr %i.h, align 8, !noalias !4143
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4143
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4143
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.n, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4143
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4153)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4160)
  %i.o = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %i.o, label %bb.v, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i": ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32 ; 2 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4163, !noalias !4164
  %.sroa.0.0.copyload2.i.i.i.i.i = load i8, ptr %.sroa.2.0.copyload, align 8, !noalias !4167 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i, 6
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.d

bb.d:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 1
  store i8 %.sroa.0.0.copyload2.i.i.i.i.i, ptr %i.g, align 8, !noalias !4168
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i.i.i, i64 31, i1 false), !noalias !4168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4178
  %i.q = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i, 2
  br i1 %i.q, label %bb.e, label %bb.f, !prof !85

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !4168
  invoke void @"_ZN75_$LT$serde_json..number..Number$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h8992d3add85845fcE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.e)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i.i.i" unwind label %bb.g, !noalias !4181

bb.f:                                             ; preds = %bb.d
  %i.s = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
          to label %bb.h unwind label %bb.g, !noalias !4182

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load i8, ptr %i.g, align 8, !range !164, !alias.scope !4184, !noalias !4182, !noundef !13
  %i.v = icmp eq i8 %i.u, 2
  br i1 %i.v, label %.body.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %.pr.i.i.i.i.i.i.i = load i8, ptr %i.g, align 8, !alias.scope !4184, !noalias !4182
  %i.w = icmp eq i8 %.pr.i.i.i.i.i.i.i, 2
  br i1 %i.w, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i.i.i" unwind label %bb.y, !noalias !4143

bb.j:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g) #39
          to label %.body.i unwind label %bb.k, !noalias !4182

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4182
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i.i.i": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4178
  br label %bb.l

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i.i.i": ; preds = %bb.e
  %.pre.i.i.i.i.i = load i32, ptr %i.f, align 8, !range !2612, !noalias !4168
  %i.y = trunc nuw i32 %.pre.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4178
  br i1 %i.y, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i.i.i", label %bb.m

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i.i.i"
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !4168
  br label %bb.l

bb.l:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i.i.i"
  %i.z = phi ptr [ %.pre.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i.i.i" ], [ %i.s, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4156
  br label %.noexc6.sink.split.i

bb.m:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i.i.i"
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !4168, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4156
  call void @llvm.experimental.noalias.scope.decl(metadata !4185)
  call void @llvm.experimental.noalias.scope.decl(metadata !4188)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4191
  call void @llvm.experimental.noalias.scope.decl(metadata !4195)
  %i.ac = icmp eq i64 %.sroa.3.0.copyload, 1
  br i1 %i.ac, label %bb.x, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i11.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i11.i.i": ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 64
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4198, !noalias !4199
  %.sroa.0.0.copyload2.i.i.i12.i.i = load i8, ptr %i.p, align 8, !noalias !4202 ; 3 uses
  %.not.i.i.i13.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i12.i.i, 6
  br i1 %.not.i.i.i13.i.i, label %bb.x, label %bb.n

bb.n:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i11.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 33
  store i8 %.sroa.0.0.copyload2.i.i.i12.i.i, ptr %i.d, align 8, !noalias !4203
  %.sroa.8.0..sroa_idx.i.i.i15.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i15.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i14.i.i, i64 31, i1 false), !noalias !4203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4203
  call void @llvm.experimental.noalias.scope.decl(metadata !4204)
  call void @llvm.experimental.noalias.scope.decl(metadata !4207)
  call void @llvm.experimental.noalias.scope.decl(metadata !4210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4213
  %i.ae = icmp eq i8 %.sroa.0.0.copyload2.i.i.i12.i.i, 2
  br i1 %i.ae, label %bb.o, label %bb.p, !prof !85

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %i.af, i64 16, i1 false), !noalias !4203
  invoke void @"_ZN75_$LT$serde_json..number..Number$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h8992d3add85845fcE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.b)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i18.i.i" unwind label %bb.q, !noalias !4216

bb.p:                                             ; preds = %bb.n
  %i.ag = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
          to label %bb.r unwind label %bb.q, !noalias !4217

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load i8, ptr %i.d, align 8, !range !164, !alias.scope !4219, !noalias !4217, !noundef !13
  %i.aj = icmp eq i8 %i.ai, 2
  br i1 %i.aj, label %.body.i, label %bb.t

bb.r:                                             ; preds = %bb.p
  %.pr.i.i.i.i.i16.i.i = load i8, ptr %i.d, align 8, !alias.scope !4219, !noalias !4217
  %i.ak = icmp eq i8 %.pr.i.i.i.i.i16.i.i, 2
  br i1 %i.ak, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i17.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i17.i.i" unwind label %bb.y, !noalias !4143

bb.t:                                             ; preds = %bb.q
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #39
          to label %.body.i unwind label %bb.u, !noalias !4217

bb.u:                                             ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4217
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i17.i.i": ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4213
  br label %bb.w

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i18.i.i": ; preds = %bb.o
  %.pre.i.i.i19.i.i = load i32, ptr %i.c, align 8, !range !2612, !noalias !4203
  %i.am = trunc nuw i32 %.pre.i.i.i19.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4213
  br i1 %i.am, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i20.i.i", label %bb.z

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i20.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i18.i.i"
  %.phi.trans.insert.i.i21.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i.i22.i.i = load ptr, ptr %.phi.trans.insert.i.i21.i.i, align 8, !noalias !4203
  br label %bb.w

bb.v:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i", %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4156
  br label %.invoke.i

bb.w:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i20.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i17.i.i"
  %i.an = phi ptr [ %.pre.i.i22.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i20.i.i" ], [ %i.ag, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i17.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4191
  br label %.noexc6.sink.split.i

bb.x:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i11.i.i", %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4191
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.x, %bb.v
  %i.ao = phi i64 [ 1, %bb.x ], [ 0, %bb.v ]
  %i.ap = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %i.ao, ptr noundef nonnull align 1 @149, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
          to label %.noexc6.i unwind label %bb.y, !noalias !4143

.body.i:                                          ; preds = %bb.ab, %bb.y, %bb.t, %bb.q, %bb.j, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.ba, %bb.ab ], [ %i.aq, %bb.y ], [ %i.t, %bb.g ], [ %i.t, %bb.j ], [ %i.ah, %bb.t ], [ %i.ah, %bb.q ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3ebc01661c158fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.body unwind label %bb.ae, !noalias !4143

bb.y:                                             ; preds = %.invoke.i, %bb.s, %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.noexc6.sink.split.i:                             ; preds = %bb.w, %bb.l
  %.sink.i = phi ptr [ %i.an, %bb.w ], [ %i.z, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i) ]
  br label %.noexc6.i

.noexc6.i:                                        ; preds = %.noexc6.sink.split.i, %.invoke.i
  %.sink.i.sink.i = phi ptr [ %i.ap, %.invoke.i ], [ %.sink.i, %.noexc6.sink.split.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.sink.i, ptr %i.ar, align 8, !alias.scope !4220, !noalias !4221
  br label %bb.ad

bb.z:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i18.i.i"
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noalias !4203, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4191
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ab, ptr %i.au, align 4, !alias.scope !4220, !noalias !4221
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.at, ptr %i.av, align 8, !alias.scope !4220, !noalias !4221
  store i32 0, ptr %0, align 8, !alias.scope !4220, !noalias !4221
  %i.aw = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4143, !nonnull !13, !noundef !13
  %i.ax = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4143, !nonnull !13, !noundef !13
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.ad, label %bb.aa, !prof !85

bb.aa:                                            ; preds = %bb.z
  %i.az = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %.sroa.3.0.copyload, ptr noundef nonnull align 1 @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
          to label %bb.ac unwind label %bb.ab, !noalias !4143

bb.ab:                                            ; preds = %bb.aa
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ac:                                            ; preds = %bb.aa
  store ptr %i.az, ptr %i.av, align 8, !alias.scope !4140, !noalias !4222
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z, %.noexc6.i
  %storemerge.sink.i = phi i32 [ 1, %.noexc6.i ], [ 1, %bb.ac ], [ 0, %bb.z ]
  store i32 %storemerge.sink.i, ptr %0, align 8, !alias.scope !4140, !noalias !4222
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3ebc01661c158fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_ZN10serde_json5value2de11visit_array17h163348ccf8cd5471E.exit unwind label %bb.ag

bb.ae:                                            ; preds = %.body.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4143
  unreachable

_ZN10serde_json5value2de11visit_array17h163348ccf8cd5471E.exit: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4143
  br label %bb.ah

bb.af:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  invoke void @"_ZN10serde_json5value2de135_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$15deserialize_any17hea2c4a898481f2c7E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af, %bb.b
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.ag ], [ %.pn.i, %.body.i ]
  %i.be = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.bf = and i8 %i.be, 6
  %switch = icmp eq i8 %i.bf, 4
  br i1 %switch, label %bb.am, label %bb.al

bb.ah:                                            ; preds = %_ZN10serde_json5value2de11visit_array17h163348ccf8cd5471E.exit, %bb.af, %bb.ai
  %i.bg = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.bh = and i8 %i.bg, 6
  %switch3 = icmp eq i8 %i.bh, 4
  br i1 %switch3, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.bi, align 8
  store i32 1, ptr %0, align 8
  br label %bb.ah

bb.aj:                                            ; preds = %bb.ah
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.aj
  ret void

bb.al:                                            ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1) #39
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %.body, %bb.al
  resume { ptr, i32 } %eh.lpad-body

bb.an:                                            ; preds = %bb.al
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_struct17h84f5501ed3a068e5E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = load i8, ptr %1, align 8, !range !164, !noundef !13
  switch i8 %i.m, label %bb.b [
    i8 4, label %bb.c
    i8 5, label %bb.ai
  ], !prof !2483

bb.b:                                             ; preds = %bb.a
  %i.n = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83)
          to label %bb.al unwind label %bb.aj

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.o, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !13, !noundef !13 ; 11 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4223)
  %i.p = icmp ult i64 %.sroa.3.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4226
  %.idx.i = shl nuw nsw i64 %.sroa.3.0.copyload, 5
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %.idx.i
  store ptr %.sroa.2.0.copyload, ptr %i.k, align 8, !noalias !4226
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4226
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4226
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4226
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4233
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4240
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4244)
  %i.r = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %i.r, label %bb.h, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i": ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32 ; 2 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4247, !noalias !4248
  %.sroa.0.0.copyload4.i.i.i.i.i = load i8, ptr %.sroa.2.0.copyload, align 8, !noalias !4251 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload4.i.i.i.i.i, 6
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"
  %.sroa.8.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 1
  store i8 %.sroa.0.0.copyload4.i.i.i.i.i, ptr %i.h, align 8, !noalias !4252
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx5.i.i.i.i.i, i64 31, i1 false), !noalias !4252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4252
  invoke void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17h3e20c0111c6d0681E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %.noexc.i unwind label %bb.aa, !noalias !4226

.noexc.i:                                         ; preds = %bb.d
  %i.t = load i64, ptr %i.g, align 8, !range !32, !noalias !4252, !noundef !13 ; 2 uses
  %i.u = icmp eq i64 %i.t, -9223372036854775808
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !4253 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4240
  br label %.noexc5.i

bb.f:                                             ; preds = %.noexc.i
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !4253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4240
  store i64 %i.t, ptr %i.i, align 8, !noalias !4233
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.w, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !4233
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.10.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4233
  call void @llvm.experimental.noalias.scope.decl(metadata !4254)
  call void @llvm.experimental.noalias.scope.decl(metadata !4257)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4260
  call void @llvm.experimental.noalias.scope.decl(metadata !4264)
  %i.x = icmp eq i64 %.sroa.3.0.copyload, 1
  br i1 %i.x, label %bb.t, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i32.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i32.i.i": ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 64 ; 2 uses
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4267, !noalias !4268
  %.sroa.0.0.copyload2.i.i.i.i.i = load i8, ptr %i.s, align 8, !noalias !4271 ; 2 uses
  %.not.i.i.i33.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i, 6
  br i1 %.not.i.i.i33.i.i, label %bb.t, label %bb.g

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i32.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 33
  store i8 %.sroa.0.0.copyload2.i.i.i.i.i, ptr %i.f, align 8, !noalias !4272
  %.sroa.8.0..sroa_idx.i.i.i34.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i34.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i.i.i, i64 31, i1 false), !noalias !4272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4272
  invoke void @"_ZN277_$LT$$LT$anki..decks..schema11.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..schema11..FilteredSearchTermSchema11$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$..visit_seq..__DeserializeWith$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h0b458261b083124cE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.noexc.i.i unwind label %bb.i, !noalias !4233

.noexc.i.i:                                       ; preds = %bb.g
  %i.z = load i32, ptr %i.e, align 8, !range !2612, !noalias !4272, !noundef !13
  %i.aa = trunc nuw i32 %i.z to i1
  br i1 %i.aa, label %bb.j, label %bb.k

bb.h:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i", %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4240
  %i.ab = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef 0, ptr noundef nonnull align 1 @140, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
          to label %.noexc5.i unwind label %bb.aa, !noalias !4226

.noexc5.i:                                        ; preds = %bb.h, %bb.e
  %.sink.i.i = phi ptr [ %i.w, %bb.e ], [ %i.ab, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i, ptr %i.ac, align 8, !alias.scope !4273, !noalias !4274
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !4273, !noalias !4274
  br label %.thread.i

bb.i:                                             ; preds = %.invoke.i.i, %bb.q, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.r, %bb.o, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.an, %bb.r ], [ %i.an, %bb.o ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #39
          to label %.body.i unwind label %bb.z, !noalias !4233

bb.j:                                             ; preds = %.noexc.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !4272, !nonnull !13, !align !82, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4260
  br label %bb.w

bb.k:                                             ; preds = %.noexc.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !4272, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4260
  call void @llvm.experimental.noalias.scope.decl(metadata !4275)
  call void @llvm.experimental.noalias.scope.decl(metadata !4278)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4281
  call void @llvm.experimental.noalias.scope.decl(metadata !4285)
  %i.ai = icmp eq i64 %.sroa.3.0.copyload, 2
  br i1 %i.ai, label %bb.v, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i36.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i36.i.i": ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 96
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4288, !noalias !4289
  %.sroa.0.0.copyload2.i.i.i37.i.i = load i8, ptr %i.y, align 8, !noalias !4292 ; 3 uses
  %.not.i.i.i38.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i37.i.i, 6
  br i1 %.not.i.i.i38.i.i, label %bb.v, label %bb.l

bb.l:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i36.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i39.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 65
  store i8 %.sroa.0.0.copyload2.i.i.i37.i.i, ptr %i.d, align 8, !noalias !4293
  %.sroa.8.0..sroa_idx.i.i.i40.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i40.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i39.i.i, i64 31, i1 false), !noalias !4293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4293
  call void @llvm.experimental.noalias.scope.decl(metadata !4294)
  call void @llvm.experimental.noalias.scope.decl(metadata !4297)
  call void @llvm.experimental.noalias.scope.decl(metadata !4300)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4303
  %i.ak = icmp eq i8 %.sroa.0.0.copyload2.i.i.i37.i.i, 2
  br i1 %i.ak, label %bb.m, label %bb.n, !prof !85

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %i.al, i64 16, i1 false), !noalias !4293
  invoke void @"_ZN75_$LT$serde_json..number..Number$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hc7602f8754811eb8E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.b)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h048ab60c9ccb499dE.exit.i.i.i.i.i" unwind label %bb.o, !noalias !4306

bb.n:                                             ; preds = %bb.l
  %i.am = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51)
          to label %bb.p unwind label %bb.o, !noalias !4307

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load i8, ptr %i.d, align 8, !range !164, !alias.scope !4309, !noalias !4307, !noundef !13
  %i.ap = icmp eq i8 %i.ao, 2
  br i1 %i.ap, label %.body.i.i, label %bb.r

bb.p:                                             ; preds = %bb.n
  %.pr.i.i.i.i.i.i.i = load i8, ptr %i.d, align 8, !alias.scope !4309, !noalias !4307
  %i.aq = icmp eq i8 %.pr.i.i.i.i.i.i.i, 2
  br i1 %i.aq, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h048ab60c9ccb499dE.exit.thread.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h048ab60c9ccb499dE.exit.thread.i.i.i.i.i" unwind label %bb.i, !noalias !4233

bb.r:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #39
          to label %.body.i.i unwind label %bb.s, !noalias !4307

bb.s:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4307
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h048ab60c9ccb499dE.exit.thread.i.i.i.i.i": ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4303
  br label %bb.u

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h048ab60c9ccb499dE.exit.i.i.i.i.i": ; preds = %bb.m
  %.pre.i.i.i.i.i = load i32, ptr %i.c, align 8, !range !2612, !noalias !4293
  %i.as = trunc nuw i32 %.pre.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4303
  br i1 %i.as, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h048ab60c9ccb499dE.exit.i._crit_edge.i.i.i.i", label %bb.ab

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h048ab60c9ccb499dE.exit.i._crit_edge.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h048ab60c9ccb499dE.exit.i.i.i.i.i"
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !4293
  br label %bb.u

bb.t:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i32.i.i", %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4260
  br label %.invoke.i.i

bb.u:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h048ab60c9ccb499dE.exit.i._crit_edge.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h048ab60c9ccb499dE.exit.thread.i.i.i.i.i"
  %i.at = phi ptr [ %.pre.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h048ab60c9ccb499dE.exit.i._crit_edge.i.i.i.i" ], [ %i.am, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h048ab60c9ccb499dE.exit.thread.i.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4281
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  br label %bb.w

bb.v:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i36.i.i", %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4281
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.v, %bb.t
  %i.au = phi i64 [ 2, %bb.v ], [ 1, %bb.t ]
  %i.av = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %i.au, ptr noundef nonnull align 1 @140, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
          to label %bb.w unwind label %bb.i, !noalias !4233

bb.w:                                             ; preds = %.invoke.i.i, %bb.u, %bb.j
  %.sink89.i.i = phi ptr [ %i.at, %bb.u ], [ %i.av, %.invoke.i.i ], [ %i.af, %bb.j ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink89.i.i, ptr %i.aw, align 8, !alias.scope !4273, !noalias !4274
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !4273, !noalias !4274
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i" unwind label %bb.x, !noalias !4233

bb.x:                                             ; preds = %bb.w
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.y, !noalias !4233

bb.y:                                             ; preds = %bb.x
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4233
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i": ; preds = %bb.w
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread.i unwind label %bb.aa, !noalias !4226

bb.z:                                             ; preds = %.body.i.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4233
  unreachable

.body.i:                                          ; preds = %bb.ae, %bb.aa, %bb.x, %.body.i.i
  %.pn.i = phi { ptr, i32 } [ %i.bi, %bb.ae ], [ %i.ba, %bb.aa ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ax, %bb.x ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3ebc01661c158fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.body unwind label %bb.ah, !noalias !4226

bb.aa:                                            ; preds = %bb.af, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i", %bb.h, %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.thread.i:                                        ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i", %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4233
  br label %bb.ag

bb.ab:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h048ab60c9ccb499dE.exit.i.i.i.i.i"
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !4293, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !4274
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ah, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !alias.scope !4273, !noalias !4274
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bc, ptr %.sroa.523.0..sroa_idx.i.i, align 4, !alias.scope !4273, !noalias !4274
  %.pr.i = load i64, ptr %0, align 8, !alias.scope !4223, !noalias !4310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4233
  %i.bd = icmp eq i64 %.pr.i, -9223372036854775808
  br i1 %i.bd, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !noalias !4310
  %i.be = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4226, !nonnull !13, !noundef !13
  %i.bf = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4226, !nonnull !13, !noundef !13
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.ag, label %bb.ad, !prof !85

bb.ad:                                            ; preds = %bb.ac
  %i.bh = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %.sroa.3.0.copyload, ptr noundef nonnull align 1 @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
          to label %bb.af unwind label %bb.ae, !noalias !4226

bb.ae:                                            ; preds = %bb.ad
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$anki..decks..schema11..FilteredSearchTermSchema11$GT$17h4af333d10bd42ae4E"(ptr noalias noundef align 8 dereferenceable(32) %i.j) #39
          to label %.body.i unwind label %bb.ah, !noalias !4226

bb.af:                                            ; preds = %bb.ad
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bj, align 8, !alias.scope !4223, !noalias !4310
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !4223, !noalias !4310
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$anki..decks..schema11..FilteredSearchTermSchema11$GT$17h4af333d10bd42ae4E"(ptr noalias noundef align 8 dereferenceable(32) %i.j)
          to label %bb.ag unwind label %bb.aa, !noalias !4226

bb.ag:                                            ; preds = %bb.ac, %bb.af, %bb.ab, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4226
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3ebc01661c158fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_ZN10serde_json5value2de11visit_array17heb78aaee120e5e56E.exit unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ae, %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4226
  unreachable

_ZN10serde_json5value2de11visit_array17heb78aaee120e5e56E.exit: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4226
  br label %bb.ak

bb.ai:                                            ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  invoke void @"_ZN10serde_json5value2de135_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$15deserialize_any17hc110080122d41033E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ai, %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.aj
  %eh.lpad-body = phi { ptr, i32 } [ %i.bm, %bb.aj ], [ %.pn.i, %.body.i ]
  %i.bn = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.bo = and i8 %i.bn, 6
  %switch = icmp eq i8 %i.bo, 4
  br i1 %switch, label %bb.ap, label %bb.ao

bb.ak:                                            ; preds = %_ZN10serde_json5value2de11visit_array17heb78aaee120e5e56E.exit, %bb.ai, %bb.al
  %i.bp = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.bq = and i8 %i.bp, 6
  %switch3 = icmp eq i8 %i.bq, 4
  br i1 %switch3, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.br, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.ak

bb.am:                                            ; preds = %bb.ak
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1)
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am
  ret void

bb.ao:                                            ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1) #39
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %.body, %bb.ao
  resume { ptr, i32 } %eh.lpad-body

bb.aq:                                            ; preds = %bb.ao
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_struct17ha14a10c2b2361346E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 11 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = load i8, ptr %1, align 8, !range !164, !noundef !13
  switch i8 %i.l, label %bb.b [
    i8 4, label %bb.c
    i8 5, label %bb.ac
  ], !prof !2483

bb.b:                                             ; preds = %bb.a
  %i.m = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84)
          to label %bb.af unwind label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !13, !noundef !13 ; 11 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4311)
  %i.o = icmp ult i64 %.sroa.3.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4314
  %.idx.i = shl nuw nsw i64 %.sroa.3.0.copyload, 5
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %.idx.i
  store ptr %.sroa.2.0.copyload, ptr %i.j, align 8, !noalias !4314
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4314
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4314
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store ptr %i.p, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4314
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4324)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4327
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4331)
  %i.q = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %i.q, label %bb.o, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i": ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32 ; 2 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4334, !noalias !4335
  %.sroa.0.0.copyload2.i.i.i.i.i = load i8, ptr %.sroa.2.0.copyload, align 8, !noalias !4338 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i, 6
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.d

bb.d:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 1
  store i8 %.sroa.0.0.copyload2.i.i.i.i.i, ptr %i.h, align 8, !noalias !4339
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i.i.i, i64 31, i1 false), !noalias !4339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4349
  %i.s = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i, 2
  br i1 %i.s, label %bb.e, label %bb.f, !prof !85

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 1 dereferenceable(16) %i.t, i64 16, i1 false), !noalias !4339
  invoke void @"_ZN75_$LT$serde_json..number..Number$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hfe953255f0f995fbE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i.i.i.i.i" unwind label %bb.g, !noalias !4352

bb.f:                                             ; preds = %bb.d
  %i.u = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
          to label %bb.h unwind label %bb.g, !noalias !4353

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load i8, ptr %i.h, align 8, !range !164, !alias.scope !4355, !noalias !4353, !noundef !13
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %.body.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %.pr.i.i.i.i.i.i.i = load i8, ptr %i.h, align 8, !alias.scope !4355, !noalias !4353
  %i.y = icmp eq i8 %.pr.i.i.i.i.i.i.i, 2
  br i1 %i.y, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.thread.i.i.i.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.thread.i.i.i.i.i" unwind label %bb.v, !noalias !4314

bb.j:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h) #39
          to label %.body.i unwind label %bb.k, !noalias !4353

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4353
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.thread.i.i.i.i.i": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4349
  br label %bb.l

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i.i.i.i.i": ; preds = %bb.e
  %.pre.i.i.i.i.i = load i16, ptr %i.g, align 8, !range !3749, !noalias !4339
  %i.aa = trunc nuw i16 %.pre.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4349
  br i1 %i.aa, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i._crit_edge.i.i.i.i", label %bb.m

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i._crit_edge.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i.i.i.i.i"
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !4339
  br label %bb.l

bb.l:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i._crit_edge.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.thread.i.i.i.i.i"
  %i.ab = phi ptr [ %.pre.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i._crit_edge.i.i.i.i" ], [ %i.u, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.thread.i.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4327
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  br label %"_ZN203_$LT$anki..notetype..schema11.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..notetype..schema11..CardRequirementSchema11$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h437b65c3ef3a76dbE.exit.thread.i"

bb.m:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7b9ddc4fee00f050E.exit.i.i.i.i.i"
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !4339, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4327
  call void @llvm.experimental.noalias.scope.decl(metadata !4356)
  call void @llvm.experimental.noalias.scope.decl(metadata !4359)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4362
  call void @llvm.experimental.noalias.scope.decl(metadata !4366)
  %i.ae = icmp eq i64 %.sroa.3.0.copyload, 1
  br i1 %i.ae, label %bb.s, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i35.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i35.i.i": ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 64 ; 2 uses
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4369, !noalias !4370
  %.sroa.0.0.copyload2.i.i.i36.i.i = load i8, ptr %i.r, align 8, !noalias !4373 ; 2 uses
  %.not.i.i.i37.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i36.i.i, 6
  br i1 %.not.i.i.i37.i.i, label %bb.s, label %bb.n

bb.n:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i35.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i38.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 33
  store i8 %.sroa.0.0.copyload2.i.i.i36.i.i, ptr %i.e, align 8, !noalias !4374
  %.sroa.8.0..sroa_idx.i.i.i39.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i39.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i38.i.i, i64 31, i1 false), !noalias !4374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4374
  invoke void @"_ZN4anki8notetype8schema111_112_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..notetype..schema11..FieldRequirementKindSchema11$GT$11deserialize17h216de9e15d3d1829E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %.noexc5.i unwind label %bb.v, !noalias !4314

.noexc5.i:                                        ; preds = %bb.n
  %i.ag = load i8, ptr %i.d, align 8, !range !83, !noalias !4374, !noundef !13
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.p, label %bb.q

bb.o:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i", %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4327
  br label %.invoke.i

bb.p:                                             ; preds = %.noexc5.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !4374, !nonnull !13, !align !82, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4362
  br label %"_ZN203_$LT$anki..notetype..schema11.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..notetype..schema11..CardRequirementSchema11$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h437b65c3ef3a76dbE.exit.thread.i"

bb.q:                                             ; preds = %.noexc5.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !range !1073, !noalias !4374, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4362
  call void @llvm.experimental.noalias.scope.decl(metadata !4375)
  call void @llvm.experimental.noalias.scope.decl(metadata !4378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4381
  call void @llvm.experimental.noalias.scope.decl(metadata !4385)
  %i.am = icmp eq i64 %.sroa.3.0.copyload, 2
  br i1 %i.am, label %bb.u, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i41.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i41.i.i": ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 96
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4388, !noalias !4389
  %.sroa.0.0.copyload4.i.i.i.i.i = load i8, ptr %i.af, align 8, !noalias !4392 ; 2 uses
  %.not.i.i.i42.i.i = icmp eq i8 %.sroa.0.0.copyload4.i.i.i.i.i, 6
  br i1 %.not.i.i.i42.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i41.i.i"
  %.sroa.8.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 65
  store i8 %.sroa.0.0.copyload4.i.i.i.i.i, ptr %i.c, align 8, !noalias !4393
  %.sroa.8.0..sroa_idx.i.i.i43.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i43.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx5.i.i.i.i.i, i64 31, i1 false), !noalias !4393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4393
  invoke void @"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h3cddb3f0c542c6f3E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc7.i unwind label %bb.v, !noalias !4314

.noexc7.i:                                        ; preds = %bb.r
  %i.ao = load i64, ptr %i.b, align 8, !range !32, !noalias !4393, !noundef !13 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -9223372036854775808
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !4394 ; 2 uses
  br i1 %i.ap, label %bb.t, label %bb.w

bb.s:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i35.i.i", %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4362
  br label %.invoke.i

bb.t:                                             ; preds = %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4381
  br label %"_ZN203_$LT$anki..notetype..schema11.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..notetype..schema11..CardRequirementSchema11$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h437b65c3ef3a76dbE.exit.thread.i"

bb.u:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i41.i.i", %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4381
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.u, %bb.s, %bb.o
  %i.as = phi i64 [ 2, %bb.u ], [ 1, %bb.s ], [ 0, %bb.o ]
  %i.at = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %i.as, ptr noundef nonnull align 1 @151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
          to label %"_ZN203_$LT$anki..notetype..schema11.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..notetype..schema11..CardRequirementSchema11$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h437b65c3ef3a76dbE.exit.thread.i" unwind label %bb.v, !noalias !4314

.body.i:                                          ; preds = %bb.y, %bb.v, %bb.j, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.ba, %bb.y ], [ %i.au, %bb.v ], [ %i.v, %bb.j ], [ %i.v, %bb.g ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3ebc01661c158fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.body unwind label %bb.ab, !noalias !4314

bb.v:                                             ; preds = %bb.z, %.invoke.i, %bb.r, %bb.n, %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

"_ZN203_$LT$anki..notetype..schema11.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..notetype..schema11..CardRequirementSchema11$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h437b65c3ef3a76dbE.exit.thread.i": ; preds = %.invoke.i, %bb.t, %bb.p, %bb.l
  %.sink.i.sink.i = phi ptr [ %i.at, %.invoke.i ], [ %i.ar, %bb.t ], [ %i.ab, %bb.l ], [ %i.aj, %bb.p ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.sink.i, ptr %i.av, align 8, !alias.scope !4395, !noalias !4396
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !4395, !noalias !4396
  br label %bb.aa

bb.w:                                             ; preds = %.noexc7.i
  %.sroa.1053.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.1053.0.copyload.i.i = load i64, ptr %.sroa.1053.0..sroa_idx.i.i, align 8, !noalias !4394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4381
  store i64 %i.ao, ptr %0, align 8, !alias.scope !4395, !noalias !4396
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ar, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !alias.scope !4395, !noalias !4396
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.1053.0.copyload.i.i, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !alias.scope !4395, !noalias !4396
  %.sroa.623.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.ad, ptr %.sroa.623.0..sroa_idx.i.i, align 8, !alias.scope !4395, !noalias !4396
  %.sroa.724.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.al, ptr %.sroa.724.0..sroa_idx.i.i, align 2, !alias.scope !4395, !noalias !4396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !noalias !4397
  %i.aw = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4314, !nonnull !13, !noundef !13
  %i.ax = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4314, !nonnull !13, !noundef !13
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.aa, label %bb.x, !prof !85

bb.x:                                             ; preds = %bb.w
  %i.az = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %.sroa.3.0.copyload, ptr noundef nonnull align 1 @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
          to label %bb.z unwind label %bb.y, !noalias !4314

bb.y:                                             ; preds = %bb.x
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$anki..notetype..schema11..CardRequirementSchema11$GT$17h42e35018754e6cdfE"(ptr noalias noundef align 8 dereferenceable(32) %i.i) #39
          to label %.body.i unwind label %bb.ab, !noalias !4314

bb.z:                                             ; preds = %bb.x
  store ptr %i.az, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !alias.scope !4311, !noalias !4397
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !4311, !noalias !4397
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$anki..notetype..schema11..CardRequirementSchema11$GT$17h42e35018754e6cdfE"(ptr noalias noundef align 8 dereferenceable(32) %i.i)
          to label %bb.aa unwind label %bb.v, !noalias !4314

bb.aa:                                            ; preds = %bb.w, %bb.z, %"_ZN203_$LT$anki..notetype..schema11.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..notetype..schema11..CardRequirementSchema11$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h437b65c3ef3a76dbE.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4314
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3ebc01661c158fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_ZN10serde_json5value2de11visit_array17h5b84226dbcaf2493E.exit unwind label %bb.ad

bb.ab:                                            ; preds = %bb.y, %.body.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4314
  unreachable

_ZN10serde_json5value2de11visit_array17h5b84226dbcaf2493E.exit: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4314
  br label %bb.ae

bb.ac:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  invoke void @"_ZN10serde_json5value2de135_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$15deserialize_any17hcf528fc1b4cb8b60E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac, %bb.b
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ad
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.ad ], [ %.pn.i, %.body.i ]
  %i.be = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.bf = and i8 %i.be, 6
  %switch = icmp eq i8 %i.bf, 4
  br i1 %switch, label %bb.aj, label %bb.ai

bb.ae:                                            ; preds = %_ZN10serde_json5value2de11visit_array17h5b84226dbcaf2493E.exit, %bb.ac, %bb.af
  %i.bg = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.bh = and i8 %i.bg, 6
  %switch3 = icmp eq i8 %i.bh, 4
  br i1 %switch3, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.bi, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ae
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag
  ret void

bb.ai:                                            ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1) #39
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.body, %bb.ai
  resume { ptr, i32 } %eh.lpad-body

bb.ak:                                            ; preds = %bb.ai
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_struct17ha914bfa006a154f1E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 11 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = load i8, ptr %1, align 8, !range !164, !noundef !13
  switch i8 %i.m, label %bb.b [
    i8 4, label %bb.c
    i8 5, label %bb.aq
  ], !prof !2483

bb.b:                                             ; preds = %bb.a
  %i.n = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85)
          to label %bb.at unwind label %bb.ar

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.o, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !13, !noundef !13 ; 13 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4398)
  %i.p = icmp ult i64 %.sroa.3.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4401
  %.idx.i = shl nuw nsw i64 %.sroa.3.0.copyload, 5
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %.idx.i
  store ptr %.sroa.2.0.copyload, ptr %i.k, align 8, !noalias !4401
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4401
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4401
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4411)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4414
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4418)
  %i.r = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %i.r, label %bb.v, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i": ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32 ; 2 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4421, !noalias !4422
  %.sroa.0.0.copyload2.i.i.i.i.i = load i8, ptr %.sroa.2.0.copyload, align 8, !noalias !4425 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i, 6
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.d

bb.d:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 1
  store i8 %.sroa.0.0.copyload2.i.i.i.i.i, ptr %i.j, align 8, !noalias !4426
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i.i.i, i64 31, i1 false), !noalias !4426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4433)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4436
  %i.t = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i, 2
  br i1 %i.t, label %bb.e, label %bb.f, !prof !85

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !4426
  invoke void @"_ZN75_$LT$serde_json..number..Number$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h8992d3add85845fcE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.h)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i.i.i" unwind label %bb.g, !noalias !4439

bb.f:                                             ; preds = %bb.d
  %i.v = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
          to label %bb.h unwind label %bb.g, !noalias !4440

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load i8, ptr %i.j, align 8, !range !164, !alias.scope !4442, !noalias !4440, !noundef !13
  %i.y = icmp eq i8 %i.x, 2
  br i1 %i.y, label %.body.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %.pr.i.i.i.i.i.i.i = load i8, ptr %i.j, align 8, !alias.scope !4442, !noalias !4440
  %i.z = icmp eq i8 %.pr.i.i.i.i.i.i.i, 2
  br i1 %i.z, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i.i.i" unwind label %bb.aj, !noalias !4401

bb.j:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j) #39
          to label %.body.i unwind label %bb.k, !noalias !4440

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4440
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i.i.i": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4436
  br label %bb.l

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i.i.i": ; preds = %bb.e
  %.pre.i.i.i.i.i = load i32, ptr %i.i, align 8, !range !2612, !noalias !4426
  %i.ab = trunc nuw i32 %.pre.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4436
  br i1 %i.ab, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i.i.i", label %bb.m

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i.i.i"
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !4426
  br label %bb.l

bb.l:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i.i.i"
  %i.ac = phi ptr [ %.pre.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i.i.i" ], [ %i.v, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4414
  br label %.noexc6.sink.split.i

bb.m:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i.i.i"
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !4426, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4414
  call void @llvm.experimental.noalias.scope.decl(metadata !4443)
  call void @llvm.experimental.noalias.scope.decl(metadata !4446)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4449
  call void @llvm.experimental.noalias.scope.decl(metadata !4453)
  %i.af = icmp eq i64 %.sroa.3.0.copyload, 1
  br i1 %i.af, label %bb.ag, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i21.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i21.i.i": ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 64 ; 2 uses
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4456, !noalias !4457
  %.sroa.0.0.copyload2.i.i.i22.i.i = load i8, ptr %i.s, align 8, !noalias !4460 ; 3 uses
  %.not.i.i.i23.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i22.i.i, 6
  br i1 %.not.i.i.i23.i.i, label %bb.ag, label %bb.n

bb.n:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i21.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i24.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 33
  store i8 %.sroa.0.0.copyload2.i.i.i22.i.i, ptr %i.g, align 8, !noalias !4461
  %.sroa.8.0..sroa_idx.i.i.i25.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i25.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i24.i.i, i64 31, i1 false), !noalias !4461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4461
  call void @llvm.experimental.noalias.scope.decl(metadata !4462)
  call void @llvm.experimental.noalias.scope.decl(metadata !4465)
  call void @llvm.experimental.noalias.scope.decl(metadata !4468)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4471
  %i.ah = icmp eq i8 %.sroa.0.0.copyload2.i.i.i22.i.i, 2
  br i1 %i.ah, label %bb.o, label %bb.p, !prof !85

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(16) %i.ai, i64 16, i1 false), !noalias !4461
  invoke void @"_ZN75_$LT$serde_json..number..Number$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h8992d3add85845fcE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.e)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i28.i.i" unwind label %bb.q, !noalias !4474

bb.p:                                             ; preds = %bb.n
  %i.aj = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
          to label %bb.r unwind label %bb.q, !noalias !4475

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load i8, ptr %i.g, align 8, !range !164, !alias.scope !4477, !noalias !4475, !noundef !13
  %i.am = icmp eq i8 %i.al, 2
  br i1 %i.am, label %.body.i, label %bb.t

bb.r:                                             ; preds = %bb.p
  %.pr.i.i.i.i.i26.i.i = load i8, ptr %i.g, align 8, !alias.scope !4477, !noalias !4475
  %i.an = icmp eq i8 %.pr.i.i.i.i.i26.i.i, 2
  br i1 %i.an, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i27.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i27.i.i" unwind label %bb.aj, !noalias !4401

bb.t:                                             ; preds = %bb.q
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g) #39
          to label %.body.i unwind label %bb.u, !noalias !4475

bb.u:                                             ; preds = %bb.t
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4475
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i27.i.i": ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4471
  br label %bb.w

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i28.i.i": ; preds = %bb.o
  %.pre.i.i.i29.i.i = load i32, ptr %i.f, align 8, !range !2612, !noalias !4461
  %i.ap = trunc nuw i32 %.pre.i.i.i29.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4471
  br i1 %i.ap, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i30.i.i", label %bb.x

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i30.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i28.i.i"
  %.phi.trans.insert.i.i31.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i.i32.i.i = load ptr, ptr %.phi.trans.insert.i.i31.i.i, align 8, !noalias !4461
  br label %bb.w

bb.v:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i.i.i", %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4414
  br label %.invoke.i

bb.w:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i30.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i27.i.i"
  %i.aq = phi ptr [ %.pre.i.i32.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i30.i.i" ], [ %i.aj, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i27.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4449
  br label %.noexc6.sink.split.i

bb.x:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i28.i.i"
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !noalias !4461, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4449
  call void @llvm.experimental.noalias.scope.decl(metadata !4478)
  call void @llvm.experimental.noalias.scope.decl(metadata !4481)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4484
  call void @llvm.experimental.noalias.scope.decl(metadata !4488)
  %i.at = icmp eq i64 %.sroa.3.0.copyload, 2
  br i1 %i.at, label %bb.ai, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i35.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i35.i.i": ; preds = %bb.x
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 96
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4491, !noalias !4492
  %.sroa.0.0.copyload2.i.i.i36.i.i = load i8, ptr %i.ag, align 8, !noalias !4495 ; 3 uses
  %.not.i.i.i37.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i36.i.i, 6
  br i1 %.not.i.i.i37.i.i, label %bb.ai, label %bb.y

bb.y:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i35.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i38.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 65
  store i8 %.sroa.0.0.copyload2.i.i.i36.i.i, ptr %i.d, align 8, !noalias !4496
  %.sroa.8.0..sroa_idx.i.i.i39.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i39.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i38.i.i, i64 31, i1 false), !noalias !4496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4496
  call void @llvm.experimental.noalias.scope.decl(metadata !4497)
  call void @llvm.experimental.noalias.scope.decl(metadata !4500)
  call void @llvm.experimental.noalias.scope.decl(metadata !4503)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4506
  %i.av = icmp eq i8 %.sroa.0.0.copyload2.i.i.i36.i.i, 2
  br i1 %i.av, label %bb.z, label %bb.aa, !prof !85

bb.z:                                             ; preds = %bb.y
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %i.aw, i64 16, i1 false), !noalias !4496
  invoke void @"_ZN75_$LT$serde_json..number..Number$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h8992d3add85845fcE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.b)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i42.i.i" unwind label %bb.ab, !noalias !4509

bb.aa:                                            ; preds = %bb.y
  %i.ax = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
          to label %bb.ac unwind label %bb.ab, !noalias !4510

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load i8, ptr %i.d, align 8, !range !164, !alias.scope !4512, !noalias !4510, !noundef !13
  %i.ba = icmp eq i8 %i.az, 2
  br i1 %i.ba, label %.body.i, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %.pr.i.i.i.i.i40.i.i = load i8, ptr %i.d, align 8, !alias.scope !4512, !noalias !4510
  %i.bb = icmp eq i8 %.pr.i.i.i.i.i40.i.i, 2
  br i1 %i.bb, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i41.i.i", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i41.i.i" unwind label %bb.aj, !noalias !4401

bb.ae:                                            ; preds = %bb.ab
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #39
          to label %.body.i unwind label %bb.af, !noalias !4510

bb.af:                                            ; preds = %bb.ae
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4510
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i41.i.i": ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4506
  br label %bb.ah

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i42.i.i": ; preds = %bb.z
  %.pre.i.i.i43.i.i = load i32, ptr %i.c, align 8, !range !2612, !noalias !4496
  %i.bd = trunc nuw i32 %.pre.i.i.i43.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4506
  br i1 %i.bd, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i44.i.i", label %bb.ak

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i44.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i42.i.i"
  %.phi.trans.insert.i.i45.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i.i46.i.i = load ptr, ptr %.phi.trans.insert.i.i45.i.i, align 8, !noalias !4496
  br label %bb.ah

bb.ag:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i21.i.i", %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4449
  br label %.invoke.i

bb.ah:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i44.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i41.i.i"
  %i.be = phi ptr [ %.pre.i.i46.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i.i44.i.i" ], [ %i.ax, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i.i41.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4484
  br label %.noexc6.sink.split.i

bb.ai:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i.i35.i.i", %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4484
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ai, %bb.ag, %bb.v
  %i.bf = phi i64 [ 2, %bb.ai ], [ 1, %bb.ag ], [ 0, %bb.v ]
  %i.bg = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %i.bf, ptr noundef nonnull align 1 @210, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
          to label %.noexc6.i unwind label %bb.aj, !noalias !4401

.body.i:                                          ; preds = %bb.am, %bb.aj, %bb.ae, %bb.ab, %bb.t, %bb.q, %bb.j, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.bq, %bb.am ], [ %i.bh, %bb.aj ], [ %i.ak, %bb.q ], [ %i.w, %bb.g ], [ %i.w, %bb.j ], [ %i.ak, %bb.t ], [ %i.ay, %bb.ae ], [ %i.ay, %bb.ab ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3ebc01661c158fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.body unwind label %bb.ap, !noalias !4401

bb.aj:                                            ; preds = %.invoke.i, %bb.ad, %bb.s, %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.noexc6.sink.split.i:                             ; preds = %bb.ah, %bb.w, %bb.l
  %.sink.i = phi ptr [ %i.be, %bb.ah ], [ %i.aq, %bb.w ], [ %i.ac, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i) ]
  br label %.noexc6.i

.noexc6.i:                                        ; preds = %.noexc6.sink.split.i, %.invoke.i
  %.sink.i.sink.i = phi ptr [ %i.bg, %.invoke.i ], [ %.sink.i, %.noexc6.sink.split.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.sink.i, ptr %i.bi, align 8, !alias.scope !4513, !noalias !4514
  br label %.sink.split

bb.ak:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i.i42.i.i"
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !noalias !4496, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4484
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ae, ptr %i.bl, align 4, !alias.scope !4513, !noalias !4514
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.as, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !4513, !noalias !4514
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bk, ptr %.sroa.516.0..sroa_idx.i.i, align 4, !alias.scope !4513, !noalias !4514
  store i32 0, ptr %0, align 8, !alias.scope !4513, !noalias !4514
  %i.bm = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4401, !nonnull !13, !noundef !13
  %i.bn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4401, !nonnull !13, !noundef !13
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.ao, label %bb.al, !prof !85

bb.al:                                            ; preds = %bb.ak
  %i.bp = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %.sroa.3.0.copyload, ptr noundef nonnull align 1 @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
          to label %bb.an unwind label %bb.am, !noalias !4401

bb.am:                                            ; preds = %bb.al
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.an:                                            ; preds = %bb.al
  store ptr %i.bp, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !4398, !noalias !4515
  br label %.sink.split

.sink.split:                                      ; preds = %.noexc6.i, %bb.an
  store i32 1, ptr %0, align 8, !alias.scope !4398, !noalias !4515
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %bb.ak
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3ebc01661c158fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_ZN10serde_json5value2de11visit_array17hde1f9d2650298b6fE.exit unwind label %bb.ar

bb.ap:                                            ; preds = %.body.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4401
  unreachable

_ZN10serde_json5value2de11visit_array17hde1f9d2650298b6fE.exit: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4401
  br label %bb.as

bb.aq:                                            ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  invoke void @"_ZN10serde_json5value2de135_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$15deserialize_any17ha823d620687837c0E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %bb.ao, %bb.aq, %bb.b
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ar
  %eh.lpad-body = phi { ptr, i32 } [ %i.bt, %bb.ar ], [ %.pn.i, %.body.i ]
  %i.bu = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.bv = and i8 %i.bu, 6
  %switch = icmp eq i8 %i.bv, 4
  br i1 %switch, label %bb.ax, label %bb.aw

bb.as:                                            ; preds = %_ZN10serde_json5value2de11visit_array17hde1f9d2650298b6fE.exit, %bb.aq, %bb.at
  %i.bw = load i8, ptr %1, align 8, !range !164, !noundef !13
  %i.bx = and i8 %i.bw, 6
  %switch3 = icmp eq i8 %i.bx, 4
  br i1 %switch3, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.by, align 8
  store i32 1, ptr %0, align 8
  br label %bb.as

bb.au:                                            ; preds = %bb.as
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1)
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.au
  ret void

bb.aw:                                            ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %1) #39
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %.body, %bb.aw
  resume { ptr, i32 } %eh.lpad-body

bb.ay:                                            ; preds = %bb.aw
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 dereferenceable_or_null(32) ptr @_ZN10serde_json5value5Value3get17h51a85ae9953167a1E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = call noundef align 8 dereferenceable_or_null(32) ptr @"_ZN57_$LT$$RF$T$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hb34d2973a2020bb0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @"_ZN10serde_json5value5index87_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$serde_json..value..Value$GT$5index17hed31524881cbfb2bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_6
begin_hunk_7_@"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$8next_key17hde806beca6a232a3E":bb.a
bb.i:                                             ; preds = %bb.g
  %i.aq = load i16, ptr %i.aj, align 1
  %i.ar = xor i16 %i.aq, 29285
  %i.as = getelementptr i8, ptr %i.aj, i64 2
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i16
  %i.av = xor i16 %i.au, 114
  %i.aw = or i16 %i.ar, %i.av
  %i.ax = icmp ne i16 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  %spec.select6.i.i.i.i.i.i.i = select i1 %i.az, i8 1, i8 2
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.thread.i.i"

bb.j:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !10000, !noalias !10001, !nonnull !13, !noundef !13 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !10000, !noalias !10001, !noundef !13
  switch i64 %i.bd, label %bb.t [
    i64 4, label %bb.k
    i64 3, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.be = load i8, ptr %i.bb, align 1, !alias.scope !10005, !noalias !10008, !noundef !13
  %i.bf = icmp eq i8 %i.be, 100
  br i1 %i.bf, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !10005, !noalias !10008, !noundef !13
  %i.bi = icmp eq i8 %i.bh, 97
  br i1 %i.bi, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !10005, !noalias !10008, !noundef !13
  %i.bl = icmp eq i8 %i.bk, 116
  br i1 %i.bl, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !10005, !noalias !10008, !noundef !13
  %i.bo = icmp eq i8 %i.bn, 97
  br i1 %i.bo, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.thread.i.i", label %bb.t

bb.o:                                             ; preds = %bb.j
  %i.bp = load i8, ptr %i.bb, align 1, !alias.scope !10005, !noalias !10008, !noundef !13
  %i.bq = icmp eq i8 %i.bp, 101
  br i1 %i.bq, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !10005, !noalias !10008, !noundef !13
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !10005, !noalias !10008, !noundef !13
  %i.bv = icmp eq i8 %i.bs, 114
  %i.bw = icmp eq i8 %i.bu, 114
  %or.cond.i.i.i.i.i.i = and i1 %i.bv, %i.bw
  br i1 %or.cond.i.i.i.i.i.i, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.thread.i.i", label %bb.t

bb.q:                                             ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !10000, !noalias !10001, !nonnull !13, !align !154, !noundef !13 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !10000, !noalias !10001, !noundef !13
  switch i64 %i.ca, label %bb.t [
    i64 4, label %bb.r
    i64 3, label %bb.w
  ]

bb.r:                                             ; preds = %bb.q
  %i.cb = load i8, ptr %i.by, align 1, !alias.scope !10010, !noalias !10015, !noundef !13
  %i.cc = icmp eq i8 %i.cb, 100
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !10010, !noalias !10015, !noundef !13
  %i.cf = icmp eq i8 %i.ce, 97
  br i1 %i.cf, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.thread.i.i"

bb.u:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !10010, !noalias !10015, !noundef !13
  %i.ci = icmp eq i8 %i.ch, 116
  br i1 %i.ci, label %bb.v, label %bb.t

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !10010, !noalias !10015, !noundef !13
  %i.cl = icmp eq i8 %i.ck, 97
  br i1 %i.cl, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.thread.i.i", label %bb.t

bb.w:                                             ; preds = %bb.q
  %i.cm = load i8, ptr %i.by, align 1, !alias.scope !10010, !noalias !10015, !noundef !13
  %i.cn = icmp eq i8 %i.cm, 101
  br i1 %i.cn, label %bb.x, label %bb.t

bb.x:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !10010, !noalias !10015, !noundef !13
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !10010, !noalias !10015, !noundef !13
  %i.cs = icmp eq i8 %i.cp, 114
  %i.ct = icmp eq i8 %i.cr, 114
  %or.cond.i.i.i.i.i.i.i = and i1 %i.cs, %i.ct
  br i1 %or.cond.i.i.i.i.i.i.i, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.thread.i.i", label %bb.t

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.i.i": ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !10000, !noalias !10001, !noundef !13
  call void @_ZN10serde_core2de7Visitor8visit_u817hfff2829826fe2f3aE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, i8 noundef %i.cv), !noalias !10018
  %.pre.i.i = load i8, ptr %i.b, align 8, !range !83, !noalias !9990
  %i.cw = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.cw, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.i._crit_edge.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.i._ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.thread.i_crit_edge.i"

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.i._crit_edge.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.i.i"
  %.phi.trans.insert1.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre2.i = load ptr, ptr %.phi.trans.insert1.i, align 8, !noalias !9990
  br label %bb.z

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.i._ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.thread.i_crit_edge.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.i.i"
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !range !1073, !noalias !9990
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.thread.i.i"

bb.y:                                             ; preds = %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.cx, align 1, !alias.scope !9988, !noalias !9989
  store i8 0, ptr %0, align 8, !alias.scope !9988, !noalias !9989
  br label %_ZN10serde_core2de9MapAccess8next_key17hf5b68d1d7e96e6cfE.exit

bb.z:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.i._crit_edge.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.thread8.i.i"
  %i.cy = phi ptr [ %.pre2.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.i._crit_edge.i" ], [ %i.n, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.thread8.i.i" ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.cz, align 8, !alias.scope !9988, !noalias !9989
  store i8 1, ptr %0, align 8, !alias.scope !9988, !noalias !9989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9990
  br label %_ZN10serde_core2de9MapAccess8next_key17hf5b68d1d7e96e6cfE.exit

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.thread.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.i._ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.thread.i_crit_edge.i", %bb.x, %bb.v, %bb.t, %bb.p, %bb.n, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.da = phi i8 [ %.pre.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.i._ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.thread.i_crit_edge.i" ], [ 0, %bb.n ], [ %spec.select.i.i.i.i.i.i.i, %bb.h ], [ %spec.select.i.i.i.i.i.i, %bb.e ], [ %switch.select2.i.i.i.i.i.i, %bb.c ], [ 2, %bb.d ], [ %spec.select6.i.i.i.i.i.i, %bb.f ], [ 2, %bb.g ], [ %spec.select6.i.i.i.i.i.i.i, %bb.i ], [ 0, %bb.v ], [ 1, %bb.p ], [ 2, %bb.t ], [ 1, %bb.x ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.da, ptr %i.db, align 1, !alias.scope !9988, !noalias !9989
  store i8 0, ptr %0, align 8, !alias.scope !9988, !noalias !9989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9990
  br label %_ZN10serde_core2de9MapAccess8next_key17hf5b68d1d7e96e6cfE.exit

_ZN10serde_core2de9MapAccess8next_key17hf5b68d1d7e96e6cfE.exit: ; preds = %bb.y, %bb.z, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h28ac95cb6064c7b0E.exit.thread.i.i"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17hd0c021ccb8a02366E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr nofree captures(none) %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10027)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10029
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10030)
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !10033, !noalias !10034, !nonnull !13, !noundef !13
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !10033, !noalias !10034, !nonnull !13, !noundef !13 ; 5 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i": ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.j, ptr %i.g, align 8, !alias.scope !10033, !noalias !10034
  %.sroa.0.0.copyload2.i.i = load i8, ptr %i.h, align 8, !noalias !10036 ; 3 uses
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i, 6
  br i1 %.not.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.thread.i.i", label %bb.b

bb.b:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i"
  %.sroa.8.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %.sroa.0.0.copyload2.i.i, ptr %i.d, align 8, !noalias !10037
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i, i64 31, i1 false), !noalias !10037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10037
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10044)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10047
  %i.k = icmp eq i8 %.sroa.0.0.copyload2.i.i, 2
  br i1 %i.k, label %bb.c, label %bb.d, !prof !85

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !10037
  invoke void @"_ZN75_$LT$serde_json..number..Number$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h8992d3add85845fcE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.b)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i" unwind label %bb.e, !noalias !10050

bb.d:                                             ; preds = %bb.b
  %i.m = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
          to label %bb.f unwind label %bb.e, !noalias !10051

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i8, ptr %i.d, align 8, !range !164, !alias.scope !10053, !noalias !10051, !noundef !13
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.d
  %.pr.i.i.i.i = load i8, ptr %i.d, align 8, !alias.scope !10053, !noalias !10051
  %i.q = icmp eq i8 %.pr.i.i.i.i, 2
  br i1 %i.q, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d), !noalias !10051
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i"

bb.h:                                             ; preds = %bb.i, %bb.e
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #39
          to label %bb.h unwind label %bb.j, !noalias !10051

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !10051
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i": ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10047
  br label %bb.k

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i": ; preds = %bb.c
  %.pre.i.i = load i32, ptr %i.c, align 8, !range !2612, !noalias !10037
  %i.s = trunc nuw i32 %.pre.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10047
  br i1 %i.s, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i", label %bb.l

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i"
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !10037
  br label %bb.k

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.i.i", %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.t, align 4, !alias.scope !10054, !noalias !10055
  store i32 0, ptr %0, align 8, !alias.scope !10054, !noalias !10055
  br label %_ZN10serde_core2de9SeqAccess12next_element17ha564e077efa780daE.exit

bb.k:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i"
  %i.u = phi ptr [ %.pre.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i._crit_edge.i" ], [ %i.m, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.thread.i.i" ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !10054, !noalias !10055
  store i32 1, ptr %0, align 8, !alias.scope !10054, !noalias !10055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10037
  br label %_ZN10serde_core2de9SeqAccess12next_element17ha564e077efa780daE.exit

bb.l:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3a22ff36cf9a192cE.exit.i.i"
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.x = load i32, ptr %i.w, align 4, !noalias !10037, !noundef !13
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.y, align 4, !alias.scope !10054, !noalias !10055
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.x, ptr %i.z, align 8, !alias.scope !10054, !noalias !10055
  store i32 0, ptr %0, align 8, !alias.scope !10054, !noalias !10055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10037
  br label %_ZN10serde_core2de9SeqAccess12next_element17ha564e077efa780daE.exit

_ZN10serde_core2de9SeqAccess12next_element17ha564e077efa780daE.exit: ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94856c7f2085d6f5E.exit.thread.i.i", %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10029
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN59_$LT$anki..error..AnkiError$u20$as$u20$core..fmt..Debug$GT$3fmt17h23f68fece724418fE"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = load i64, ptr %0, align 8, !range !9315, !noundef !13 ; 3 uses
  %i.s = icmp ne i64 %i.r, -9223372036854775802
  tail call void @llvm.assume(i1 %i.s)
  %i.t = xor i64 %i.r, -9223372036854775808
  %i.u = icmp slt i64 %i.r, 0
  %i.v = select i1 %i.u, i64 %i.t, i64 6
  switch i64 %i.v, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
    i64 22, label %bb.y
    i64 23, label %bb.z
    i64 24, label %bb.aa
    i64 25, label %bb.ab
    i64 26, label %bb.ac
    i64 27, label %bb.ad
    i64 28, label %bb.ae
    i64 29, label %bb.af
    i64 30, label %bb.ag
    i64 31, label %bb.ah
    i64 32, label %bb.ai
    i64 33, label %bb.aj
    i64 34, label %bb.ak
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.q, align 8
  %i.x = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @477, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @478, i64 noundef 6, ptr noundef nonnull align 1 %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @476)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.al

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.p, align 8
  %i.z = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @481, i64 noundef 4, ptr noundef nonnull align 1 %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @479)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.al

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.o, align 8
  %i.ab = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @483, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @478, i64 noundef 6, ptr noundef nonnull align 1 %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @482)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.al

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.n, align 8
  %i.ad = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @485, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @478, i64 noundef 6, ptr noundef nonnull align 1 %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @484)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.al

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.m, align 8
  %i.af = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @487, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @478, i64 noundef 6, ptr noundef nonnull align 1 %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.al

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.l, align 8
  %i.ah = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @489, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @478, i64 noundef 6, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @488)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.al

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %0, ptr %i.k, align 8
  %i.ai = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @491, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @478, i64 noundef 6, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @490)
end_hunk_7
