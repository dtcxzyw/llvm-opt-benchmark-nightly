Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.10?download=true
inline.NumInlined: 5637
inline.NumDeleted: 1815
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZN89_$LT$anki_proto..config..preferences..BackupLimits$u20$as$u20$prost..message..Message$GT$11merge_field17hbd33c9b99441c8b2E":bb.a
  invoke void @_ZN5prost5error11DecodeError4push17hd7e04dac3a3d13bfE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @19, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @21, i64 noundef 6)
          to label %"_ZN89_$LT$anki_proto..config..preferences..BackupLimits$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17he7604450283ed8a2E.exit" unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val.i12 = load ptr, ptr %i.c, align 8, !noalias !12178, !nonnull !4, !noundef !4
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$prost..error..DecodeError$GT$17h0db662563dbe9a43E"(ptr nonnull %.val.i12) #42
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

"_ZN89_$LT$anki_proto..config..preferences..BackupLimits$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17he7604450283ed8a2E.exit": ; preds = %bb.k
  %i.r = load ptr, ptr %i.c, align 8, !noalias !12178, !nonnull !4, !align !17, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.n:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.j, ptr %i.b, align 8, !noalias !12181
  invoke void @_ZN5prost5error11DecodeError4push17hd7e04dac3a3d13bfE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @19, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @22, i64 noundef 7)
          to label %"_ZN89_$LT$anki_proto..config..preferences..BackupLimits$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17h87fa1d5899f0ccd9E.exit" unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.val.i13 = load ptr, ptr %i.b, align 8, !noalias !12181, !nonnull !4, !noundef !4
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$prost..error..DecodeError$GT$17h0db662563dbe9a43E"(ptr nonnull %.val.i13) #42
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

"_ZN89_$LT$anki_proto..config..preferences..BackupLimits$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17h87fa1d5899f0ccd9E.exit": ; preds = %bb.n
  %i.u = load ptr, ptr %i.b, align 8, !noalias !12181, !nonnull !4, !align !17, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.q:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8, !noalias !12184
  invoke void @_ZN5prost5error11DecodeError4push17hd7e04dac3a3d13bfE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @19, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @23, i64 noundef 21)
          to label %"_ZN89_$LT$anki_proto..config..preferences..BackupLimits$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17ha51ba353625a249fE.exit" unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.val.i14 = load ptr, ptr %i.a, align 8, !noalias !12184, !nonnull !4, !noundef !4
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$prost..error..DecodeError$GT$17h0db662563dbe9a43E"(ptr nonnull %.val.i14) #42
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

"_ZN89_$LT$anki_proto..config..preferences..BackupLimits$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17ha51ba353625a249fE.exit": ; preds = %bb.q
  %i.x = load ptr, ptr %i.a, align 8, !noalias !12184, !nonnull !4, !align !17, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN8bitflags6traits59_$LT$impl$u20$bitflags..parser..WriteHex$u20$for$u20$u8$GT$9write_hex17h981fa7f771dcdb03E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.d, align 8
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hbb0a6b7b80e6801bE", ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @90, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.h, align 8
  %i.i = call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h661e98f138d5b71dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.i
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h5bbdda556e040ae7E"(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !12187, !noalias !12190, !noundef !4 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 2                     ; 2 uses
  br i1 %i.d, label %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17hf9603feb63e675f0E.exit", label %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17hf9603feb63e675f0E.exit.thread"

"_ZN8smallvec17SmallVec$LT$A$GT$6triple17hf9603feb63e675f0E.exit": ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !12187, !noalias !12190, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.t, label %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17hf9603feb63e675f0E.exit.thread", !prof !1339

"_ZN8smallvec17SmallVec$LT$A$GT$6triple17hf9603feb63e675f0E.exit.thread": ; preds = %bb.a, %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17hf9603feb63e675f0E.exit"
  %.sink12.i8 = phi i64 [ %i.f, %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17hf9603feb63e675f0E.exit" ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink12.i8, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i8, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.t, label %bb.b, !prof !28

bb.b:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17hf9603feb63e675f0E.exit.thread"
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12192)
  %i.m = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.d, label %bb.c, label %"_ZN8smallvec17SmallVec$LT$A$GT$10triple_mut17hfbf38f7e5a537362E.exit.i"

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !12195, !noalias !12198, !nonnull !4, !noundef !4
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !12192
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$10triple_mut17hfbf38f7e5a537362E.exit.i"

"_ZN8smallvec17SmallVec$LT$A$GT$10triple_mut17hfbf38f7e5a537362E.exit.i": ; preds = %bb.b, %bb.c
  %i.q = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.b ] ; 5 uses
  %.sink12.i.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.c ], [ 2, %bb.b ] ; 5 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !28

bb.d:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$10triple_mut17hfbf38f7e5a537362E.exit.i"
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1522, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1523) #44, !noalias !12192
  unreachable

bb.e:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$10triple_mut17hfbf38f7e5a537362E.exit.i"
  %i.r = icmp ult i64 %.sroa.02.0, 2
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not50.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not50.i, label %_ZN8smallvec10infallible17h5dca1cd05336f057E.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.m, label %_ZN8smallvec10infallible17h5dca1cd05336f057E.exit, label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.s = shl nuw i64 %i.l, 3                      ; 4 uses
  %i.t = icmp ugt i64 %.sroa.02.0, 2305843009213693950
  br i1 %i.t, label %bb.s, label %bb.i, !prof !28

bb.i:                                             ; preds = %bb.h
  %i.u = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17hb0a1a949762f4d2eE(i64 noundef %i.s, i64 noundef 8), !noalias !12200
  br i1 %i.u, label %_ZN8smallvec12layout_array17hf73f0ec62f3e4a62E.exit.i, label %bb.s

_ZN8smallvec12layout_array17hf73f0ec62f3e4a62E.exit.i: ; preds = %bb.i
  br i1 %i.m, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17hf73f0ec62f3e4a62E.exit.i
  %i.v = shl nuw i64 %.sink.i.i, 3                ; 2 uses
  %i.w = icmp ugt i64 %.sink.i.i, 2305843009213693951
  br i1 %i.w, label %bb.s, label %bb.k, !prof !28

bb.k:                                             ; preds = %bb.j
  %i.x = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17hb0a1a949762f4d2eE(i64 noundef %i.v, i64 noundef 8), !noalias !12203
  br i1 %i.x, label %_ZN8smallvec12layout_array17hf73f0ec62f3e4a62E.exit59.i, label %bb.s

bb.l:                                             ; preds = %_ZN8smallvec12layout_array17hf73f0ec62f3e4a62E.exit.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12192
  %i.y = tail call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #45, !noalias !12192 ; 3 uses
  %.not77.i = icmp eq ptr %i.y, null
  br i1 %.not77.i, label %bb.r, label %bb.n

_ZN8smallvec12layout_array17hf73f0ec62f3e4a62E.exit59.i: ; preds = %bb.k
  %i.z = tail call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #45 ; 2 uses
  %.not76.i = icmp eq ptr %i.z, null
  br i1 %.not76.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %_ZN8smallvec12layout_array17hf73f0ec62f3e4a62E.exit59.i, %bb.n
  %.sroa.033.0.i = phi ptr [ %i.y, %bb.n ], [ %i.z, %_ZN8smallvec12layout_array17hf73f0ec62f3e4a62E.exit59.i ]
  store i64 1, ptr %0, align 8, !alias.scope !12192
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !12192
  %.sroa.545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.033.0.i, ptr %.sroa.545.0..sroa_idx.i, align 8, !alias.scope !12192
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !12192
  br label %_ZN8smallvec10infallible17h5dca1cd05336f057E.exit

bb.n:                                             ; preds = %bb.l
  %i.aa = shl i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.y, ptr nonnull align 8 %.sink12.i.i, i64 %i.aa, i1 false)
  br label %bb.m

bb.o:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !12192
  %i.ab = shl i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.ab, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !12192
  %i.ac = shl nuw i64 %.sink.i.i, 3               ; 2 uses
  %i.ad = icmp ugt i64 %.sink.i.i, 2305843009213693951
  br i1 %i.ad, label %bb.q, label %bb.p, !prof !28

bb.p:                                             ; preds = %bb.o
  %i.ae = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17hb0a1a949762f4d2eE(i64 noundef %i.ac, i64 noundef 8), !noalias !12206
  br i1 %i.ae, label %_ZN8smallvec10deallocate17hbbf70510330ed1f2E.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12209
  store i64 0, ptr %i.a, align 8, !noalias !12209
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @867, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @866, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1518) #44, !noalias !12209
  unreachable

_ZN8smallvec10deallocate17hbbf70510330ed1f2E.exit.i: ; preds = %bb.p
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.ac, i64 noundef 8) #45
  br label %_ZN8smallvec10infallible17h5dca1cd05336f057E.exit

bb.r:                                             ; preds = %_ZN8smallvec12layout_array17hf73f0ec62f3e4a62E.exit59.i, %bb.l
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef range(i64 0, -9223372036854775806) 8, i64 noundef %i.s) #44
  unreachable

bb.s:                                             ; preds = %bb.k, %bb.h, %bb.i, %bb.j
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1519, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1520) #44
  unreachable

_ZN8smallvec10infallible17h5dca1cd05336f057E.exit: ; preds = %_ZN8smallvec10deallocate17hbbf70510330ed1f2E.exit.i, %bb.g, %bb.f, %bb.m
  ret void

bb.t:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17hf9603feb63e675f0E.exit.thread", %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17hf9603feb63e675f0E.exit"
  tail call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1519, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1521) #44
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hc71c64605cfb3c5bE"(ptr noalias noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !12212, !noalias !12215, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  br i1 %i.c, label %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h71379f5d5cf160c8E.exit", label %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h71379f5d5cf160c8E.exit.thread"

"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h71379f5d5cf160c8E.exit": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !12212, !noalias !12215, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h71379f5d5cf160c8E.exit.thread", !prof !1339

"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h71379f5d5cf160c8E.exit.thread": ; preds = %bb.a, %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h71379f5d5cf160c8E.exit"
  %.sink12.i8 = phi i64 [ %i.e, %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h71379f5d5cf160c8E.exit" ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i8, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i8, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !28

bb.b:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h71379f5d5cf160c8E.exit.thread"
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h85b1675ba7e93227E"(ptr noalias noundef align 8 dereferenceable(656) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17h5dca1cd05336f057E.exit
    i64 0, label %bb.d
  ], !prof !12217

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #44
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1519, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1520) #44
  unreachable

_ZN8smallvec10infallible17h5dca1cd05336f057E.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h71379f5d5cf160c8E.exit.thread", %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17h71379f5d5cf160c8E.exit"
  tail call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1519, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1521) #44
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17he6b9027473fb493dE"(ptr noalias noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !12218, !noalias !12221, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  br i1 %i.c, label %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17heade3ac925e72a73E.exit", label %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17heade3ac925e72a73E.exit.thread"

"_ZN8smallvec17SmallVec$LT$A$GT$6triple17heade3ac925e72a73E.exit": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !12218, !noalias !12221, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17heade3ac925e72a73E.exit.thread", !prof !1339

"_ZN8smallvec17SmallVec$LT$A$GT$6triple17heade3ac925e72a73E.exit.thread": ; preds = %bb.a, %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17heade3ac925e72a73E.exit"
  %.sink12.i8 = phi i64 [ %i.e, %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17heade3ac925e72a73E.exit" ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i8, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i8, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !28

bb.b:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17heade3ac925e72a73E.exit.thread"
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h7eb21c6248c23ae9E"(ptr noalias noundef align 8 dereferenceable(656) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17h5dca1cd05336f057E.exit
    i64 0, label %bb.d
  ], !prof !12217

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #44
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1519, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1520) #44
  unreachable

_ZN8smallvec10infallible17h5dca1cd05336f057E.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17heade3ac925e72a73E.exit.thread", %"_ZN8smallvec17SmallVec$LT$A$GT$6triple17heade3ac925e72a73E.exit"
  tail call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1519, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1521) #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h7eb21c6248c23ae9E"(ptr noalias noundef nonnull align 8 dereferenceable(656) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
"_ZN8smallvec17SmallVec$LT$A$GT$10triple_mut17h95c3b3d2502ebe72E.exit":
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val78 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val78   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !28

bb.a:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$10triple_mut17h95c3b3d2502ebe72E.exit"
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1522, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1523) #44
  unreachable

bb.b:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$10triple_mut17h95c3b3d2502ebe72E.exit"
  %i.j = icmp ult i64 %1, 17
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not51 = icmp eq i64 %i.c, %1
  br i1 %.not51, label %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60.thread, label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 40) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 0         ; 7 uses
  %i.m = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.m, label %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60.thread, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  %i.n = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17hb0a1a949762f4d2eE(i64 noundef %i.l, i64 noundef 8), !noalias !12223
  br i1 %i.n, label %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit, label %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60.thread

_ZN8smallvec12layout_array17h149c97d051e0a774E.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit
  %i.o = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 40) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 0         ; 4 uses
  %i.q = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.q, label %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60.thread, label %bb.h, !prof !28

bb.h:                                             ; preds = %bb.g
  %i.r = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17hb0a1a949762f4d2eE(i64 noundef %i.p, i64 noundef 8), !noalias !12226
  br i1 %i.r, label %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60, label %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60.thread

bb.i:                                             ; preds = %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.s = tail call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef 8) #45 ; 3 uses
  %.not75 = icmp eq ptr %i.s, null
  br i1 %.not75, label %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60.thread, label %bb.k

_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60: ; preds = %bb.h
  %i.t = tail call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.p, i64 noundef 8, i64 noundef %i.l) #45 ; 2 uses
  %.not74 = icmp eq ptr %i.t, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60.thread, label %bb.j

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60, %bb.k
  %.sroa.033.0 = phi ptr [ %i.s, %bb.k ], [ %i.t, %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.033.0, ptr %.sroa.545.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60.thread

bb.k:                                             ; preds = %bb.i
  %i.u = mul i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %.sink12.i, i64 %i.u, i1 false)
  br label %bb.j

bb.l:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.v = mul i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.v, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 40) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 0         ; 3 uses
  %i.y = extractvalue { i64, i1 } %i.w, 1
  br i1 %i.y, label %bb.n, label %bb.m, !prof !28

bb.m:                                             ; preds = %bb.l
  %i.z = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17hb0a1a949762f4d2eE(i64 noundef %i.x, i64 noundef 8), !noalias !12229
  br i1 %i.z, label %_ZN8smallvec10deallocate17h99d23e5cac69ecadE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12232
  store i64 0, ptr %i.a, align 8, !noalias !12232
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.aa, align 8, !noalias !12232
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @867, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @866, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1518) #44, !noalias !12232
  unreachable

_ZN8smallvec10deallocate17h99d23e5cac69ecadE.exit: ; preds = %bb.m
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.x, i64 noundef 8) #45
  br label %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60.thread

_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60.thread: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %_ZN8smallvec10deallocate17h99d23e5cac69ecadE.exit, %bb.j, %bb.c, %bb.i, %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60
  %.sroa.7.0 = phi i64 [ undef, %_ZN8smallvec10deallocate17h99d23e5cac69ecadE.exit ], [ %i.l, %bb.i ], [ undef, %bb.d ], [ %i.l, %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60 ], [ %i.l, %bb.f ], [ undef, %bb.c ], [ undef, %bb.j ], [ %i.l, %bb.e ], [ %i.p, %bb.g ], [ %i.p, %bb.h ]
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h99d23e5cac69ecadE.exit ], [ 8, %bb.i ], [ -9223372036854775807, %bb.d ], [ 8, %_ZN8smallvec12layout_array17h149c97d051e0a774E.exit60 ], [ 0, %bb.f ], [ -9223372036854775807, %bb.c ], [ -9223372036854775807, %bb.j ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ]
  %i.ab = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.ac = insertvalue { i64, i64 } %i.ab, i64 %.sroa.7.0, 1
  ret { i64, i64 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h85b1675ba7e93227E"(ptr noalias noundef nonnull align 8 dereferenceable(656) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
"_ZN8smallvec17SmallVec$LT$A$GT$10triple_mut17h2a327982e0db0402E.exit":
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val78 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val78   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !28

bb.a:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$10triple_mut17h2a327982e0db0402E.exit"
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1522, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1523) #44
  unreachable

bb.b:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$10triple_mut17h2a327982e0db0402E.exit"
  %i.j = icmp ult i64 %1, 17
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not51 = icmp eq i64 %i.c, %1
  br i1 %.not51, label %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60.thread, label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 40) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 0         ; 7 uses
  %i.m = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.m, label %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60.thread, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  %i.n = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17hb0a1a949762f4d2eE(i64 noundef %i.l, i64 noundef 8), !noalias !12235
  br i1 %i.n, label %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit, label %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60.thread

_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit
  %i.o = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 40) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 0         ; 4 uses
  %i.q = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.q, label %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60.thread, label %bb.h, !prof !28

bb.h:                                             ; preds = %bb.g
  %i.r = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17hb0a1a949762f4d2eE(i64 noundef %i.p, i64 noundef 8), !noalias !12238
  br i1 %i.r, label %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60, label %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60.thread

bb.i:                                             ; preds = %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.s = tail call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef 8) #45 ; 3 uses
  %.not75 = icmp eq ptr %i.s, null
  br i1 %.not75, label %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60.thread, label %bb.k

_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60: ; preds = %bb.h
  %i.t = tail call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.p, i64 noundef 8, i64 noundef %i.l) #45 ; 2 uses
  %.not74 = icmp eq ptr %i.t, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60.thread, label %bb.j

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60, %bb.k
  %.sroa.033.0 = phi ptr [ %i.s, %bb.k ], [ %i.t, %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.033.0, ptr %.sroa.545.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60.thread

bb.k:                                             ; preds = %bb.i
  %i.u = mul i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %.sink12.i, i64 %i.u, i1 false)
  br label %bb.j

bb.l:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.v = mul i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.v, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 40) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 0         ; 3 uses
  %i.y = extractvalue { i64, i1 } %i.w, 1
  br i1 %i.y, label %bb.n, label %bb.m, !prof !28

bb.m:                                             ; preds = %bb.l
  %i.z = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17hb0a1a949762f4d2eE(i64 noundef %i.x, i64 noundef 8), !noalias !12241
  br i1 %i.z, label %_ZN8smallvec10deallocate17h74e529e2782427e2E.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12244
  store i64 0, ptr %i.a, align 8, !noalias !12244
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.aa, align 8, !noalias !12244
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @867, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @866, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1518) #44, !noalias !12244
  unreachable

_ZN8smallvec10deallocate17h74e529e2782427e2E.exit: ; preds = %bb.m
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.x, i64 noundef 8) #45
  br label %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60.thread

_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60.thread: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %_ZN8smallvec10deallocate17h74e529e2782427e2E.exit, %bb.j, %bb.c, %bb.i, %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60
  %.sroa.7.0 = phi i64 [ undef, %_ZN8smallvec10deallocate17h74e529e2782427e2E.exit ], [ %i.l, %bb.i ], [ undef, %bb.d ], [ %i.l, %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60 ], [ %i.l, %bb.f ], [ undef, %bb.c ], [ undef, %bb.j ], [ %i.l, %bb.e ], [ %i.p, %bb.g ], [ %i.p, %bb.h ]
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h74e529e2782427e2E.exit ], [ 8, %bb.i ], [ -9223372036854775807, %bb.d ], [ 8, %_ZN8smallvec12layout_array17h5f8f25d6b044f80dE.exit60 ], [ 0, %bb.f ], [ -9223372036854775807, %bb.c ], [ -9223372036854775807, %bb.j ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ]
  %i.ab = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.ac = insertvalue { i64, i64 } %i.ab, i64 %.sroa.7.0, 1
  ret { i64, i64 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @"_ZN90_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..FnOnce$LT$Args$GT$$GT$9call_once17h0aa2e41acc374bd1E"(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !4, !nonnull !4
  %i.c = invoke { ptr, ptr } %i.b(ptr noundef nonnull %0, ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !93, !invariant.load !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !94, !invariant.load !4 ; 2 uses
  %i.i = icmp ult i64 %i.h, -9223372036854775807
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5842be7a5c0498ebE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.h) #45
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5842be7a5c0498ebE.exit"

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !93, !invariant.load !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !94, !invariant.load !4 ; 2 uses
  %i.o = icmp ult i64 %i.n, -9223372036854775807
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5842be7a5c0498ebE.exit6", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.n) #45
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5842be7a5c0498ebE.exit6"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5842be7a5c0498ebE.exit6": ; preds = %bb.d, %bb.e
  ret { ptr, ptr } %i.c

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5842be7a5c0498ebE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN90_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..FnOnce$LT$Args$GT$$GT$9call_once17h79067dfbfa811c86E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !12251
  invoke void @_ZN4anki4sync7request9multipart25decode_gzipped_data_inner17hf3c88f7b3daa2665E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12247
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 32, i64 noundef 8) #45
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 32, i64 noundef 8) #45
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN90_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..FnOnce$LT$Args$GT$$GT$9call_once17hac47ac1c055b6644E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !12256
  invoke void @_ZN3std2fs4File6create17hbd60dc0f35b0f1cfE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12252
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 24, i64 noundef 8) #45
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 24, i64 noundef 8) #45
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN90_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..FnOnce$LT$Args$GT$$GT$9call_once17hae7817bed9e25923E"(ptr dead_on_unwind noalias noundef writable sret([184 x i8]) align 8 captures(address) dereferenceable(184) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.c(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !93, !invariant.load !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !94, !invariant.load !4 ; 2 uses
  %i.i = icmp ult i64 %i.h, -9223372036854775807
  call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h85713cc23a159169E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.h) #45
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h85713cc23a159169E.exit"

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !93, !invariant.load !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !94, !invariant.load !4 ; 2 uses
  %i.o = icmp ult i64 %i.n, -9223372036854775807
  call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h85713cc23a159169E.exit5", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.n) #45
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h85713cc23a159169E.exit5"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h85713cc23a159169E.exit5": ; preds = %bb.d, %bb.e
  ret void

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h85713cc23a159169E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @"_ZN90_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..FnOnce$LT$Args$GT$$GT$9call_once17hf050cdbccc4a979eE"(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4, !nonnull !4
  %i.d = invoke { ptr, ptr } %i.c(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !93, !invariant.load !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !94, !invariant.load !4 ; 2 uses
  %i.j = icmp ult i64 %i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f2aa0131488f366E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.i) #45
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f2aa0131488f366E.exit"

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !93, !invariant.load !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !94, !invariant.load !4 ; 2 uses
  %i.p = icmp ult i64 %i.o, -9223372036854775807
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.m, 0
  br i1 %i.q, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f2aa0131488f366E.exit5", label %bb.e
end_hunk_0
