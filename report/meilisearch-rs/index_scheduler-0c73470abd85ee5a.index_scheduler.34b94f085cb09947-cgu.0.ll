Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17he8f29b96fcd06668E":bb.a
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17hf5b2124e73f84ae3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @202, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h0d5e591170f48c17E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h2d259ab169ea08b6E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h375c5e644b182eaeE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h4136fb4a7a710381E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h62dc550c764611b4E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17ha8ee3fbb980371a5E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN107_$LT$milli..vector..extractor..DocumentTemplateExtractor$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17h19ef04900de3f696E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !14, !align !240, !noundef !14
  %i.m = load ptr, ptr %1, align 8, !nonnull !14, !align !240, !noundef !14 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7571)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7574
  store ptr %2, ptr %i.h, align 8, !noalias !7574
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.m, ptr %i.n, align 8, !noalias !7574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7574
  store ptr %i.h, ptr %i.g, align 8, !noalias !7574
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !7574
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.m, ptr %i.p, align 8, !noalias !7574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7574
  store ptr %i.h, ptr %i.f, align 8, !noalias !7574
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.q, align 8, !noalias !7574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7574
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !7571, !noalias !7578, !noundef !14 ; 2 uses
  %.not.i = icmp eq i64 %i.s, 0
  %..i = select i1 %.not.i, i64 400, i64 %i.s     ; 6 uses
  %i.t = call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %..i, i64 noundef 1), !noalias !7579
  br i1 %i.t, label %.split.i.i, label %.split15.i.i

.split15.i.i:                                     ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2180, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4642) #80, !noalias !7579
  unreachable

.split.i.i:                                       ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !7582, !nonnull !14, !noundef !14 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !7579, !nonnull !14, !noundef !14 ; 2 uses
  %i.y = load ptr, ptr %i.v, align 16, !noalias !7579, !nonnull !14, !noundef !14
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ugt i64 %..i, %i.ab
  br i1 %i.ac, label %bb.b, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i": ; preds = %.split.i.i
  %i.ad = sub i64 0, %..i
  %i.ae = getelementptr i8, ptr %i.x, i64 %i.ad   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  store ptr %i.ae, ptr %i.w, align 16, !noalias !7579
  br label %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"

bb.b:                                             ; preds = %.split.i.i
  %i.af = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %i.m, i64 noundef 1, i64 noundef %..i), !noalias !7579 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.af, null
  br i1 %.not16.i.i, label %bb.c, label %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"

bb.c:                                             ; preds = %bb.b
  call void @_ZN7bumpalo5alloc18handle_alloc_error17h077d55f6423c56d4E(i64 noundef 1, i64 noundef %..i) #80, !noalias !7579
  unreachable

"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i": ; preds = %bb.b, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i"
  %.sroa.01.0.i.i = phi ptr [ %i.af, %bb.b ], [ %i.ae, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i" ]
  store ptr %.sroa.01.0.i.i, ptr %i.e, align 8, !noalias !7574
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7574
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 %..i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !7574
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !noalias !7574
  %i.ah = invoke noundef align 8 ptr @_ZN6liquid8template8Template9render_to17h62367749ca4b2ff2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.j, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2604, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @199)
          to label %bb.d unwind label %.body.i, !noalias !7583 ; 3 uses

"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hdae94967361a6493E.exit11.i": ; preds = %bb.o, %bb.n, %.body.thread.i
  resume { ptr, i32 } %eh.lpad-body53.i

.body.i:                                          ; preds = %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.d:                                             ; preds = %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"
  %.not7.i = icmp eq ptr %i.ah, null
  br i1 %.not7.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7574
  store ptr %i.ah, ptr %i.c, align 8, !noalias !7584
  %i.ai = icmp slt i64 %.8.val, 0
  br i1 %i.ai, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.e
  %i.aj = icmp eq i64 %.8.val, 0
  br i1 %i.aj, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !7588
  %i.ak = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.8.val, i64 noundef range(i64 1, 9) 1) #79, !noalias !7588 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.f ], [ 0, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80
          to label %.noexc.i.i unwind label %bb.h, !noalias !7596

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2be108a508f13e30E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #81
          to label %.body.thread.i unwind label %bb.i, !noalias !7596

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !7596
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7574
  %i.ao = load ptr, ptr %i.e, align 8, !noalias !7574, !nonnull !14, !noundef !14
  %i.ap = load i64, ptr %i.ag, align 8, !noalias !7574, !noundef !14
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ao, i64 noundef %i.ap), !noalias !7583
  call void @llvm.experimental.noalias.scope.decl(metadata !7597)
  %i.aq = load i64, ptr %i.d, align 8, !range !751, !alias.scope !7597, !noalias !7574, !noundef !14
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %.noexc.i, label %bb.q, !prof !121

.noexc.i:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7600
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.as, i64 16, i1 false), !noalias !7574
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2605, i64 noundef 76, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2135, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2607) #80, !noalias !7583
  unreachable

bb.k:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.ak, %bb.f ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.0.val, i64 %.8.val, i1 false), !noalias !7601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7574
  call void @llvm.experimental.noalias.scope.decl(metadata !7602)
  call void @llvm.experimental.noalias.scope.decl(metadata !7605)
  call void @llvm.experimental.noalias.scope.decl(metadata !7608)
  call void @llvm.experimental.noalias.scope.decl(metadata !7611)
  %i.at = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !7614, !noalias !7574, !noundef !14 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7614, !noalias !7574, !nonnull !14, !align !240, !noundef !14
  %i.aw = load ptr, ptr %i.e, align 8, !alias.scope !7614, !noalias !7574, !nonnull !14, !noundef !14
  %i.ax = getelementptr i8, ptr %i.av, i64 16
  %.val.i.i.i1.i.i = load ptr, ptr %i.ax, align 8, !noalias !7615, !nonnull !14, !noundef !14
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !7615, !nonnull !14, !noundef !14 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aw
  br i1 %i.ba, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.at
  store ptr %i.bb, ptr %i.ay, align 8, !noalias !7615
  br label %bb.p

.body.thread.i:                                   ; preds = %bb.h, %.body.i
  %eh.lpad-body53.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %i.am, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7616)
  call void @llvm.experimental.noalias.scope.decl(metadata !7619)
  call void @llvm.experimental.noalias.scope.decl(metadata !7622)
  call void @llvm.experimental.noalias.scope.decl(metadata !7625)
  %i.bc = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !7628, !noalias !7574, !noundef !14 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hdae94967361a6493E.exit11.i", label %bb.n

bb.n:                                             ; preds = %.body.thread.i
  %i.be = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7628, !noalias !7574, !nonnull !14, !align !240, !noundef !14
  %i.bf = load ptr, ptr %i.e, align 8, !alias.scope !7628, !noalias !7574, !nonnull !14, !noundef !14
  %i.bg = getelementptr i8, ptr %i.be, i64 16
  %.val.i.i.i1.i10.i = load ptr, ptr %i.bg, align 8, !noalias !7629, !nonnull !14, !noundef !14
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i10.i, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !7629, !nonnull !14, !noundef !14 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.bf
  br i1 %i.bj, label %bb.o, label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hdae94967361a6493E.exit11.i"

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bc
  store ptr %i.bk, ptr %i.bh, align 8, !noalias !7629
  br label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hdae94967361a6493E.exit11.i"

bb.p:                                             ; preds = %bb.k, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7574
  store i64 %.8.val, ptr %0, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.215.0..sroa_idx, align 8
  %.sroa.316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.8.val, ptr %.sroa.316.0..sroa_idx, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.2.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.417.sroa.2.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !7597, !noalias !7574, !nonnull !14, !align !584, !noundef !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !7597, !noalias !7574, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7574
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bo, ptr %i.bq, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN107_$LT$milli..vector..extractor..DocumentTemplateExtractor$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17h300ea9fcce197c7dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !14, !align !240, !noundef !14
  %i.m = load ptr, ptr %1, align 8, !nonnull !14, !align !240, !noundef !14 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7633
  store ptr %2, ptr %i.h, align 8, !noalias !7633
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.m, ptr %i.n, align 8, !noalias !7633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7633
  store ptr %i.h, ptr %i.g, align 8, !noalias !7633
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !7633
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.m, ptr %i.p, align 8, !noalias !7633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7633
  store ptr %i.h, ptr %i.f, align 8, !noalias !7633
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.q, align 8, !noalias !7633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7633
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !7630, !noalias !7637, !noundef !14 ; 2 uses
  %.not.i = icmp eq i64 %i.s, 0
  %..i = select i1 %.not.i, i64 400, i64 %i.s     ; 6 uses
  %i.t = call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %..i, i64 noundef 1), !noalias !7638
  br i1 %i.t, label %.split.i.i, label %.split15.i.i

.split15.i.i:                                     ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2180, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4642) #80, !noalias !7638
  unreachable

.split.i.i:                                       ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !7641, !nonnull !14, !noundef !14 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !7638, !nonnull !14, !noundef !14 ; 2 uses
  %i.y = load ptr, ptr %i.v, align 16, !noalias !7638, !nonnull !14, !noundef !14
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ugt i64 %..i, %i.ab
  br i1 %i.ac, label %bb.b, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i": ; preds = %.split.i.i
  %i.ad = sub i64 0, %..i
  %i.ae = getelementptr i8, ptr %i.x, i64 %i.ad   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  store ptr %i.ae, ptr %i.w, align 16, !noalias !7638
  br label %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"

bb.b:                                             ; preds = %.split.i.i
  %i.af = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %i.m, i64 noundef 1, i64 noundef %..i), !noalias !7638 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.af, null
  br i1 %.not16.i.i, label %bb.c, label %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"

bb.c:                                             ; preds = %bb.b
  call void @_ZN7bumpalo5alloc18handle_alloc_error17h077d55f6423c56d4E(i64 noundef 1, i64 noundef %..i) #80, !noalias !7638
  unreachable

"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i": ; preds = %bb.b, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i"
  %.sroa.01.0.i.i = phi ptr [ %i.af, %bb.b ], [ %i.ae, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i" ]
  store ptr %.sroa.01.0.i.i, ptr %i.e, align 8, !noalias !7633
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7633
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 %..i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !7633
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !noalias !7633
  %i.ah = invoke noundef align 8 ptr @_ZN6liquid8template8Template9render_to17h62367749ca4b2ff2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.j, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2604, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @198)
          to label %bb.d unwind label %.body.i, !noalias !7642 ; 3 uses

"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hdae94967361a6493E.exit11.i": ; preds = %bb.o, %bb.n, %.body.thread.i
  resume { ptr, i32 } %eh.lpad-body53.i

.body.i:                                          ; preds = %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.d:                                             ; preds = %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"
  %.not7.i = icmp eq ptr %i.ah, null
  br i1 %.not7.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7633
  store ptr %i.ah, ptr %i.c, align 8, !noalias !7643
  %i.ai = icmp slt i64 %.8.val, 0
  br i1 %i.ai, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.e
  %i.aj = icmp eq i64 %.8.val, 0
  br i1 %i.aj, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !7647
  %i.ak = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.8.val, i64 noundef range(i64 1, 9) 1) #79, !noalias !7647 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.f ], [ 0, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80
          to label %.noexc.i.i unwind label %bb.h, !noalias !7655

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2be108a508f13e30E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #81
          to label %.body.thread.i unwind label %bb.i, !noalias !7655

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !7655
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7633
  %i.ao = load ptr, ptr %i.e, align 8, !noalias !7633, !nonnull !14, !noundef !14
  %i.ap = load i64, ptr %i.ag, align 8, !noalias !7633, !noundef !14
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ao, i64 noundef %i.ap), !noalias !7642
  call void @llvm.experimental.noalias.scope.decl(metadata !7656)
  %i.aq = load i64, ptr %i.d, align 8, !range !751, !alias.scope !7656, !noalias !7633, !noundef !14
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %.noexc.i, label %bb.q, !prof !121

.noexc.i:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7659
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.as, i64 16, i1 false), !noalias !7633
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2605, i64 noundef 76, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2135, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2607) #80, !noalias !7642
  unreachable

bb.k:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.ak, %bb.f ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.0.val, i64 %.8.val, i1 false), !noalias !7660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7633
  call void @llvm.experimental.noalias.scope.decl(metadata !7661)
  call void @llvm.experimental.noalias.scope.decl(metadata !7664)
  call void @llvm.experimental.noalias.scope.decl(metadata !7667)
  call void @llvm.experimental.noalias.scope.decl(metadata !7670)
  %i.at = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !7673, !noalias !7633, !noundef !14 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7673, !noalias !7633, !nonnull !14, !align !240, !noundef !14
  %i.aw = load ptr, ptr %i.e, align 8, !alias.scope !7673, !noalias !7633, !nonnull !14, !noundef !14
  %i.ax = getelementptr i8, ptr %i.av, i64 16
  %.val.i.i.i1.i.i = load ptr, ptr %i.ax, align 8, !noalias !7674, !nonnull !14, !noundef !14
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !7674, !nonnull !14, !noundef !14 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aw
  br i1 %i.ba, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.at
  store ptr %i.bb, ptr %i.ay, align 8, !noalias !7674
  br label %bb.p

.body.thread.i:                                   ; preds = %bb.h, %.body.i
  %eh.lpad-body53.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %i.am, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7675)
  call void @llvm.experimental.noalias.scope.decl(metadata !7678)
  call void @llvm.experimental.noalias.scope.decl(metadata !7681)
  call void @llvm.experimental.noalias.scope.decl(metadata !7684)
  %i.bc = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !7687, !noalias !7633, !noundef !14 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hdae94967361a6493E.exit11.i", label %bb.n

bb.n:                                             ; preds = %.body.thread.i
  %i.be = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7687, !noalias !7633, !nonnull !14, !align !240, !noundef !14
  %i.bf = load ptr, ptr %i.e, align 8, !alias.scope !7687, !noalias !7633, !nonnull !14, !noundef !14
  %i.bg = getelementptr i8, ptr %i.be, i64 16
  %.val.i.i.i1.i10.i = load ptr, ptr %i.bg, align 8, !noalias !7688, !nonnull !14, !noundef !14
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i10.i, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !7688, !nonnull !14, !noundef !14 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.bf
  br i1 %i.bj, label %bb.o, label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hdae94967361a6493E.exit11.i"

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bc
  store ptr %i.bk, ptr %i.bh, align 8, !noalias !7688
  br label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hdae94967361a6493E.exit11.i"

bb.p:                                             ; preds = %bb.k, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7633
  store i64 %.8.val, ptr %0, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.215.0..sroa_idx, align 8
  %.sroa.316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.8.val, ptr %.sroa.316.0..sroa_idx, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.2.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.417.sroa.2.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !7656, !noalias !7633, !nonnull !14, !align !584, !noundef !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !7656, !noalias !7633, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7633
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bo, ptr %i.bq, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN107_$LT$milli..vector..extractor..DocumentTemplateExtractor$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17he4c1b7ab7ced2a47E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !14, !align !240, !noundef !14
  %i.m = load ptr, ptr %1, align 8, !nonnull !14, !align !240, !noundef !14 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7689)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7692
  store ptr %2, ptr %i.h, align 8, !noalias !7692
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.m, ptr %i.n, align 8, !noalias !7692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7692
  store ptr %i.h, ptr %i.g, align 8, !noalias !7692
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !7692
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.m, ptr %i.p, align 8, !noalias !7692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7692
  store ptr %i.h, ptr %i.f, align 8, !noalias !7692
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.q, align 8, !noalias !7692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7692
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !7689, !noalias !7696, !noundef !14 ; 2 uses
  %.not.i = icmp eq i64 %i.s, 0
  %..i = select i1 %.not.i, i64 400, i64 %i.s     ; 6 uses
  %i.t = call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %..i, i64 noundef 1), !noalias !7697
  br i1 %i.t, label %.split.i.i, label %.split15.i.i

.split15.i.i:                                     ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2180, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4642) #80, !noalias !7697
  unreachable

.split.i.i:                                       ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !7700, !nonnull !14, !noundef !14 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !7697, !nonnull !14, !noundef !14 ; 2 uses
  %i.y = load ptr, ptr %i.v, align 16, !noalias !7697, !nonnull !14, !noundef !14
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ugt i64 %..i, %i.ab
  br i1 %i.ac, label %bb.b, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i": ; preds = %.split.i.i
  %i.ad = sub i64 0, %..i
  %i.ae = getelementptr i8, ptr %i.x, i64 %i.ad   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  store ptr %i.ae, ptr %i.w, align 16, !noalias !7697
  br label %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"

bb.b:                                             ; preds = %.split.i.i
  %i.af = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %i.m, i64 noundef 1, i64 noundef %..i), !noalias !7697 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.af, null
  br i1 %.not16.i.i, label %bb.c, label %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"

bb.c:                                             ; preds = %bb.b
  call void @_ZN7bumpalo5alloc18handle_alloc_error17h077d55f6423c56d4E(i64 noundef 1, i64 noundef %..i) #80, !noalias !7697
  unreachable

"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i": ; preds = %bb.b, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i"
  %.sroa.01.0.i.i = phi ptr [ %i.af, %bb.b ], [ %i.ae, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i" ]
  store ptr %.sroa.01.0.i.i, ptr %i.e, align 8, !noalias !7692
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7692
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 %..i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !7692
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !noalias !7692
  %i.ah = invoke noundef align 8 ptr @_ZN6liquid8template8Template9render_to17h62367749ca4b2ff2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.j, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2604, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @201)
          to label %bb.d unwind label %.body.i, !noalias !7701 ; 3 uses

"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hdae94967361a6493E.exit11.i": ; preds = %bb.o, %bb.n, %.body.thread.i
  resume { ptr, i32 } %eh.lpad-body53.i

.body.i:                                          ; preds = %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.d:                                             ; preds = %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"
  %.not7.i = icmp eq ptr %i.ah, null
  br i1 %.not7.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7692
  store ptr %i.ah, ptr %i.c, align 8, !noalias !7702
  %i.ai = icmp slt i64 %.8.val, 0
  br i1 %i.ai, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.e
  %i.aj = icmp eq i64 %.8.val, 0
  br i1 %i.aj, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !7706
  %i.ak = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.8.val, i64 noundef range(i64 1, 9) 1) #79, !noalias !7706 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.f ], [ 0, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80
          to label %.noexc.i.i unwind label %bb.h, !noalias !7714

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2be108a508f13e30E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #81
          to label %.body.thread.i unwind label %bb.i, !noalias !7714

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !7714
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7692
  %i.ao = load ptr, ptr %i.e, align 8, !noalias !7692, !nonnull !14, !noundef !14
  %i.ap = load i64, ptr %i.ag, align 8, !noalias !7692, !noundef !14
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ao, i64 noundef %i.ap), !noalias !7701
  call void @llvm.experimental.noalias.scope.decl(metadata !7715)
  %i.aq = load i64, ptr %i.d, align 8, !range !751, !alias.scope !7715, !noalias !7692, !noundef !14
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %.noexc.i, label %bb.q, !prof !121

.noexc.i:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7718
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.as, i64 16, i1 false), !noalias !7692
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2605, i64 noundef 76, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2135, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2607) #80, !noalias !7701
  unreachable

bb.k:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.ak, %bb.f ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.0.val, i64 %.8.val, i1 false), !noalias !7719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7692
  call void @llvm.experimental.noalias.scope.decl(metadata !7720)
  call void @llvm.experimental.noalias.scope.decl(metadata !7723)
  call void @llvm.experimental.noalias.scope.decl(metadata !7726)
  call void @llvm.experimental.noalias.scope.decl(metadata !7729)
  %i.at = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !7732, !noalias !7692, !noundef !14 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7732, !noalias !7692, !nonnull !14, !align !240, !noundef !14
  %i.aw = load ptr, ptr %i.e, align 8, !alias.scope !7732, !noalias !7692, !nonnull !14, !noundef !14
  %i.ax = getelementptr i8, ptr %i.av, i64 16
  %.val.i.i.i1.i.i = load ptr, ptr %i.ax, align 8, !noalias !7733, !nonnull !14, !noundef !14
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !7733, !nonnull !14, !noundef !14 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aw
  br i1 %i.ba, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.at
  store ptr %i.bb, ptr %i.ay, align 8, !noalias !7733
  br label %bb.p

.body.thread.i:                                   ; preds = %bb.h, %.body.i
  %eh.lpad-body53.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %i.am, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7734)
  call void @llvm.experimental.noalias.scope.decl(metadata !7737)
  call void @llvm.experimental.noalias.scope.decl(metadata !7740)
  call void @llvm.experimental.noalias.scope.decl(metadata !7743)
  %i.bc = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !7746, !noalias !7692, !noundef !14 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hdae94967361a6493E.exit11.i", label %bb.n

bb.n:                                             ; preds = %.body.thread.i
  %i.be = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7746, !noalias !7692, !nonnull !14, !align !240, !noundef !14
  %i.bf = load ptr, ptr %i.e, align 8, !alias.scope !7746, !noalias !7692, !nonnull !14, !noundef !14
  %i.bg = getelementptr i8, ptr %i.be, i64 16
  %.val.i.i.i1.i10.i = load ptr, ptr %i.bg, align 8, !noalias !7747, !nonnull !14, !noundef !14
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i10.i, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !7747, !nonnull !14, !noundef !14 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.bf
  br i1 %i.bj, label %bb.o, label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hdae94967361a6493E.exit11.i"

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bc
  store ptr %i.bk, ptr %i.bh, align 8, !noalias !7747
  br label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hdae94967361a6493E.exit11.i"

bb.p:                                             ; preds = %bb.k, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7692
  store i64 %.8.val, ptr %0, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.215.0..sroa_idx, align 8
  %.sroa.316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.8.val, ptr %.sroa.316.0..sroa_idx, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.2.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.417.sroa.2.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !7715, !noalias !7692, !nonnull !14, !align !584, !noundef !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !7715, !noalias !7692, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7692
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bo, ptr %i.bq, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN107_$LT$serde..private..de..content..VariantDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17ha0274bd7393021adE"(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !range !5471, !noundef !14
  switch i8 %i.b, label %bb.b [
    i8 22, label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h823b652025b69833E.exit"
    i8 18, label %bb.e
    i8 21, label %bb.c
  ], !prof !7748

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17hb4dccdd94701ef7cE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @135)
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h823b652025b69833E.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !7749, !noundef !14 ; 2 uses
  %i.f = icmp ult i64 %i.e, 144115188075855872
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.e, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.h = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17hb4dccdd94701ef7cE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @135)
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h823b652025b69833E.exit"

bb.e:                                             ; preds = %bb.a, %bb.c
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h73ccac2b1ed295d4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h823b652025b69833E.exit"

"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h823b652025b69833E.exit": ; preds = %bb.a, %bb.e, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ %i.c, %bb.b ], [ %i.h, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5dc3657929fd7e01E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1
  store i64 %i.d, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7752)
  %i.e = load i64, ptr %0, align 8, !range !751, !alias.scope !7752, !noundef !14
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !7752, !noundef !14 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.d, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit_crit_edge"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit_crit_edge": ; preds = %bb.c
  %.sroa.26.0.copyload.i.pre = load i64, ptr %i.i, align 8, !alias.scope !7755
  %.sroa.37.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.37.0.copyload.i.pre = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert, align 8, !alias.scope !7755
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit"

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7752, !noundef !14 ; 5 uses
  %.sroa.012.013.i = load ptr, ptr %i.i, align 8, !alias.scope !7752, !nonnull !14, !noundef !14 ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.k, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.012.015.i.prol = phi ptr [ %.sroa.012.0.i.prol, %.lr.ph.i.prol ], [ %.sroa.012.013.i, %.lr.ph.i.preheader ]
  %.sroa.011.014.i.prol = phi i64 [ %i.n, %.lr.ph.i.prol ], [ %i.k, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.prol, i64 720
  %i.n = add i64 %.sroa.011.014.i.prol, -1        ; 2 uses
  %.sroa.012.0.i.prol = load ptr, ptr %i.m, align 8, !noalias !7752, !nonnull !14, !noundef !14 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !7758

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.012.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.012.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.012.015.i.unr = phi ptr [ %.sroa.012.013.i, %.lr.ph.i.preheader ], [ %.sroa.012.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.011.014.i.unr = phi i64 [ %i.k, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %i.o = icmp ult i64 %i.k, 8
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.013.i, %bb.d ], [ %.sroa.012.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.012.0.i.7, %.lr.ph.i ] ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !7752
  store ptr %.sroa.012.0.lcssa.i, ptr %i.g, align 8, !alias.scope !7752
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !alias.scope !7752
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit"

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.012.015.i = phi ptr [ %.sroa.012.0.i.7, %.lr.ph.i ], [ %.sroa.012.015.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.011.014.i = phi i64 [ %i.x, %.lr.ph.i ], [ %.sroa.011.014.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i, i64 720
  %.sroa.012.0.i = load ptr, ptr %i.p, align 8, !noalias !7752, !nonnull !14, !noundef !14
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 720
  %.sroa.012.0.i.1 = load ptr, ptr %i.q, align 8, !noalias !7752, !nonnull !14, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.1, i64 720
  %.sroa.012.0.i.2 = load ptr, ptr %i.r, align 8, !noalias !7752, !nonnull !14, !noundef !14
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.2, i64 720
  %.sroa.012.0.i.3 = load ptr, ptr %i.s, align 8, !noalias !7752, !nonnull !14, !noundef !14
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.3, i64 720
  %.sroa.012.0.i.4 = load ptr, ptr %i.t, align 8, !noalias !7752, !nonnull !14, !noundef !14
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.4, i64 720
  %.sroa.012.0.i.5 = load ptr, ptr %i.u, align 8, !noalias !7752, !nonnull !14, !noundef !14
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.5, i64 720
  %.sroa.012.0.i.6 = load ptr, ptr %i.v, align 8, !noalias !7752, !nonnull !14, !noundef !14
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.6, i64 720
  %i.x = add i64 %.sroa.011.014.i, -8             ; 2 uses
  %.sroa.012.0.i.7 = load ptr, ptr %i.w, align 8, !noalias !7752, !nonnull !14, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %._crit_edge.i, label %.lr.ph.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit": ; preds = %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit_crit_edge", %._crit_edge.i
  %.sroa.37.0.copyload.i = phi i64 [ %.sroa.37.0.copyload.i.pre, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit_crit_edge" ], [ 0, %._crit_edge.i ] ; 2 uses
  %.sroa.26.0.copyload.i = phi i64 [ %.sroa.26.0.copyload.i.pre, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit_crit_edge" ], [ 0, %._crit_edge.i ] ; 2 uses
  %.sroa.05.0.copyload.i = phi ptr [ %i.h, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit_crit_edge" ], [ %.sroa.012.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7755)
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.37.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i, i64 714
  %i.aa = load i16, ptr %i.z, align 2, !noalias !7759, !noundef !14
  %i.ab = zext i16 %i.aa to i64
  %i.ac = icmp ult i64 %.sroa.37.0.copyload.i, %i.ab
  br i1 %i.ac, label %bb.g, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.a, %_ZN5alloc11collections5btree3mem7replace17h34e7d5b6a5e6d750E.exit
  %.sroa.3.0 = phi ptr [ %i.bi, %_ZN5alloc11collections5btree3mem7replace17h34e7d5b6a5e6d750E.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.bg, %_ZN5alloc11collections5btree3mem7replace17h34e7d5b6a5e6d750E.exit ], [ null, %bb.a ]
  %i.ad = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ae = insertvalue { ptr, ptr } %i.ad, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.ae

.lr.ph.i.i.i:                                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit", %bb.f
  %.sroa.0.038.i.i.i = phi ptr [ %i.ag, %bb.f ], [ %.sroa.05.0.copyload.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit" ] ; 2 uses
  %.sroa.5.037.i.i.i = phi i64 [ %i.ai, %bb.f ], [ %.sroa.26.0.copyload.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit" ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i, i64 704
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !7766, !noundef !14 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.f

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %i.ah = zext i16 %i.ak to i64
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = add i64 %.sroa.5.037.i.i.i, 1           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i, i64 712
  %i.ak = load i16, ptr %i.aj, align 8, !noalias !7766 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 714
  %i.am = load i16, ptr %i.al, align 2, !noalias !7759, !noundef !14
  %i.an = icmp ult i16 %i.ak, %i.am
  br i1 %i.an, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %._crit_edge.loopexit.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit"
  %.sroa.6.sroa.4.0.ph.i.i = phi i64 [ %.sroa.37.0.copyload.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit" ], [ %i.ah, %._crit_edge.loopexit.i.i.i ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i = phi i64 [ %.sroa.26.0.copyload.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit" ], [ %i.ai, %._crit_edge.loopexit.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i = phi ptr [ %.sroa.05.0.copyload.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit" ], [ %i.ag, %._crit_edge.loopexit.i.i.i ] ; 4 uses
  %i.ao = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i, 0
  %i.ap = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i, 1 ; 2 uses
  br i1 %i.ao, label %_ZN5alloc11collections5btree3mem7replace17h34e7d5b6a5e6d750E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_ZN7memmap211MmapOptions3map17h80ec8e6902688c42E:bb.a
bb.h:                                             ; preds = %bb.g, %bb.c
  %.sroa.4.1.i = phi ptr [ %i.p, %bb.g ], [ %i.h, %bb.c ]
  %i.q = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.4.1.i, 1
  br label %_ZN7memmap211MmapOptions7get_len17h0ccf6ff71718e901E.exit

_ZN7memmap211MmapOptions7get_len17h0ccf6ff71718e901E.exit: ; preds = %bb.d, %bb.h
  %.merged.i = phi { i64, ptr } [ %i.k, %bb.d ], [ %i.q, %bb.h ] ; 2 uses
  %i.r = extractvalue { i64, ptr } %.merged.i, 0
  %i.s = extractvalue { i64, ptr } %.merged.i, 1  ; 2 uses
  %i.t = trunc nuw i64 %i.r to i1
  br i1 %i.t, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN7memmap211MmapOptions7get_len17h0ccf6ff71718e901E.exit
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !14
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.y = load i8, ptr %i.x, align 1, !range !1313, !noundef !14
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ab = load i8, ptr %i.aa, align 4, !range !1313, !noundef !14
  %i.ac = trunc nuw i8 %i.ab to i1
  call void @_ZN7memmap22os9MmapInner3map17h945c0949fcd15ae1E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.u, i32 noundef %.val.i, i64 noundef %i.w, i1 noundef zeroext %i.z, i1 noundef zeroext %i.ac)
  %i.ad = load i64, ptr %i.a, align 8, !range !751, !noundef !14
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noundef !14 ; 2 uses
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %i.aj, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_ZN7memmap211MmapOptions7get_len17h0ccf6ff71718e901E.exit
  %.sink = phi ptr [ %i.s, %_ZN7memmap211MmapOptions7get_len17h0ccf6ff71718e901E.exit ], [ %i.ag, %bb.i ], [ %i.ag, %bb.j ]
  %storemerge.sink = phi i64 [ 1, %_ZN7memmap211MmapOptions7get_len17h0ccf6ff71718e901E.exit ], [ 1, %bb.i ], [ 0, %bb.j ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ak, align 8
  store i64 %storemerge.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_ZN7reqwest5error5Error3new17hea483f0e2e217070E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, i8 noundef range(i8 0, 7) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [144 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.c = tail call noundef dereferenceable_or_null(2) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #79 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.f, !prof !586

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 2) #80
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186589)
  %i.f = load i16, ptr %i.a, align 8, !range !113111, !alias.scope !186589, !noundef !14
  %i.g = icmp eq i16 %i.f, 3
  br i1 %i.g, label %bb.d, label %common.resume

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186592)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !186595, !noundef !14 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186602)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noalias !186605, !nonnull !14, !noundef !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !186605, !noundef !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !186605, !noundef !14
  invoke void %i.l(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.o, i64 noundef %i.q)
          to label %common.resume unwind label %bb.j, !inline_history !113126

bb.f:                                             ; preds = %bb.a
  store i8 %1, ptr %i.c, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.c, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @2552, ptr %i.t, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !186606
  %i.u = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !186606 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6a3757dbbf110d31E.exit", !prof !586

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 144) #80
          to label %.noexc8 unwind label %bb.h

.noexc8:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$reqwest..error..Inner$GT$17he2e69dc72293284bE"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.b) #81
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.c, %bb.d, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.e, %bb.d ], [ %i.e, %bb.c ], [ %i.e, %bb.e ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6a3757dbbf110d31E.exit": ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.u, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.u

bb.j:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7roaring6bitmap13serialization48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21deserialize_from_impl17h928a84a3e5a0a8baE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 24 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = icmp ult i64 %2, 4
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.h, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.j = add i64 %2, -4                           ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !186609, !noalias !186613 ; 4 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, 12346
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %.sroa.0.0.copyload.i, 65535
  %i.l = icmp eq i32 %i.k, 12347
  br i1 %i.l, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %i.j, 4
  br i1 %i.m, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4651, i64 noundef 20)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.p, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

bb.h:                                             ; preds = %bb.d
  %i.q = lshr i32 %.sroa.0.0.copyload.i, 16
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = icmp ugt i32 %.sroa.0.0.copyload.i, 196607 ; 2 uses
  %i.u = add nuw nsw i64 %i.s, 7
  %i.v = lshr i64 %i.u, 3                         ; 12 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !186620
  %i.w = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !186620 ; 6 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E.exit"

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4653) #80, !noalias !186626
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E.exit": ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186627)
  %i.y = icmp ugt i64 %i.v, %i.j
  br i1 %i.y, label %bb.m, label %bb.j

bb.j:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E.exit"
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v ; 2 uses
  %i.aa = sub nuw i64 %i.j, %i.v                  ; 2 uses
  %i.ab = icmp eq i64 %i.v, 1
  br i1 %i.ab, label %bb.k, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i": ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.i, i64 %i.v, i1 false), !alias.scope !186630, !noalias !186634
  br label %.thread381.thread

bb.k:                                             ; preds = %bb.j
  %i.ac = load i8, ptr %i.i, align 1, !noalias !186637, !noundef !14
  store i8 %i.ac, ptr %i.w, align 1, !alias.scope !186627, !noalias !186638
  br label %.thread381.thread

bb.l:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i167 = load i32, ptr %i.i, align 1, !alias.scope !186639, !noalias !186643 ; 3 uses
  %i.ad = icmp ugt i32 %.sroa.0.0.copyload.i167, 65536
  br i1 %i.ad, label %bb.p, label %.thread381

bb.m:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.ae, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !186650
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

.thread381:                                       ; preds = %bb.l
  %i.af = zext nneg i32 %.sroa.0.0.copyload.i167 to i64
  %i.ag = add i64 %2, -8                          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = icmp eq i32 %.sroa.0.0.copyload.i167, 0
  br i1 %i.ai, label %bb.s, label %.thread381.thread

.thread381.thread:                                ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i", %bb.k, %.thread381
  %.sroa.0102.0372389656 = phi i1 [ true, %.thread381 ], [ %i.t, %bb.k ], [ %i.t, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i" ]
  %.sroa.0101.0370390654 = phi i64 [ %i.af, %.thread381 ], [ %i.s, %bb.k ], [ %i.s, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i" ] ; 2 uses
  %.sroa.9.0385637 = phi ptr [ undef, %.thread381 ], [ %i.w, %bb.k ], [ %i.w, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i" ] ; 2 uses
  %.sroa.13.0401645 = phi i64 [ undef, %.thread381 ], [ %i.v, %bb.k ], [ %i.v, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i" ]
  %.sroa.0279.0403638 = phi i64 [ -9223372036854775808, %.thread381 ], [ %i.v, %bb.k ], [ %i.v, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i" ] ; 2 uses
  %.sroa.19.1412636 = phi i64 [ %i.ag, %.thread381 ], [ %i.aa, %bb.k ], [ %i.aa, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i" ]
  %.sroa.0.1413634 = phi ptr [ %i.ah, %.thread381 ], [ %i.z, %bb.k ], [ %i.z, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i" ]
  %i.aj = shl nuw nsw i64 %.sroa.0101.0370390654, 2 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !186653
  %i.ak = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !186653 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread381.thread
  %i.am = ptrtoint ptr %i.ak to i64
  br label %bb.s

bb.o:                                             ; preds = %.thread381.thread
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4654) #80
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.an = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4660, i64 noundef 30)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252.thread" unwind label %bb.r

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit185": ; preds = %.split658, %bb.u, %bb.r
  %.sroa.0279.0404.a = phi i64 [ %.sroa.0279.0411, %bb.r ], [ %.sroa.0279.0403639, %.split658 ], [ %.sroa.0279.0403639, %bb.u ] ; 2 uses
  %.sroa.9.0386 = phi ptr [ %.sroa.9.0393, %bb.r ], [ %.sroa.9.0385638, %.split658 ], [ %.sroa.9.0385638, %bb.u ] ; 2 uses
  %.pn130 = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.at, %.split658 ], [ %.pn128662, %bb.u ]
  switch i64 %.sroa.0279.0404.a, label %bb.q [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit"
  ]

bb.q:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit185"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0386) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0386, i64 noundef %.sroa.0279.0404.a, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !186659
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit"

bb.r:                                             ; preds = %bb.o, %bb.p
  %.sroa.0279.0411 = phi i64 [ %.sroa.0279.0403638, %bb.o ], [ -9223372036854775808, %bb.p ]
  %.sroa.9.0393 = phi ptr [ %.sroa.9.0385637, %bb.o ], [ undef, %bb.p ]
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit185"

bb.s:                                             ; preds = %bb.n, %.thread381
  %i.ap = phi i1 [ false, %bb.n ], [ true, %.thread381 ] ; 3 uses
  %i.aq = phi i64 [ %i.aj, %bb.n ], [ 0, %.thread381 ] ; 9 uses
  %.sroa.0102.0372389657 = phi i1 [ %.sroa.0102.0372389656, %bb.n ], [ true, %.thread381 ]
  %.sroa.0101.0370390655 = phi i64 [ %.sroa.0101.0370390654, %bb.n ], [ 0, %.thread381 ] ; 4 uses
  %.sroa.9.0385638 = phi ptr [ %.sroa.9.0385637, %bb.n ], [ undef, %.thread381 ] ; 7 uses
  %.sroa.13.0401646 = phi i64 [ %.sroa.13.0401645, %bb.n ], [ undef, %.thread381 ] ; 2 uses
  %.sroa.0279.0403639 = phi i64 [ %.sroa.0279.0403638, %bb.n ], [ -9223372036854775808, %.thread381 ] ; 7 uses
  %.sroa.19.1412637 = phi i64 [ %.sroa.19.1412636, %bb.n ], [ %i.ag, %.thread381 ] ; 2 uses
  %.sroa.0.1413635 = phi ptr [ %.sroa.0.1413634, %bb.n ], [ %i.ah, %.thread381 ] ; 2 uses
  %.sroa.10.0.i176 = phi i64 [ %i.am, %bb.n ], [ 1, %.thread381 ]
  %i.ar = inttoptr i64 %.sroa.10.0.i176 to ptr    ; 5 uses
  %i.as = icmp ugt i64 %i.aq, %.sroa.19.1412637
  br i1 %i.as, label %.thread520, label %bb.v

bb.t:                                             ; preds = %bb.bi
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
  br label %bb.u

bb.u:                                             ; preds = %.thread468.loopexit.split-lp, %.thread468.loopexit, %.thread448.loopexit.split-lp, %.thread448.loopexit, %.split667, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit", %bb.t, %.split672, %.split670, %.split658.thread, %.split658
  %.pn128662 = phi { ptr, i32 } [ %i.at, %.split658 ], [ %lpad.thr_comm499, %bb.t ], [ %i.fh, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit" ], [ %lpad.loopexit.split-lp525, %.thread468.loopexit.split-lp ], [ %lpad.loopexit524, %.thread468.loopexit ], [ %lpad.loopexit, %.thread448.loopexit ], [ %i.dp, %.split667 ], [ %lpad.loopexit.split-lp, %.thread448.loopexit.split-lp ], [ %i.bv, %.split670 ], [ %lpad.thr_comm499, %.split672 ], [ %i.bd, %.split658.thread ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !186662
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit185"

.split658:                                        ; preds = %bb.y
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ap, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit185", label %bb.u

.thread520:                                       ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.au, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.bk

bb.v:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.1413635, i64 %i.aq ; 4 uses
  %i.aw = sub nuw i64 %.sroa.19.1412637, %i.aq    ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %.sroa.0.1413635, i64 %i.aq, i1 false), !alias.scope !186665, !noalias !186669
  br i1 %.sroa.0102.0372389657, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit198", %bb.v
  %.sroa.19.2 = phi i64 [ %i.bk, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit198" ], [ %i.aw, %bb.v ]
  %.sroa.0.2 = phi ptr [ %i.bj, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit198" ], [ %i.av, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ax = shl nuw nsw i64 %.sroa.0101.0370390655, 5 ; 2 uses
  br i1 %i.ap, label %._crit_edge.thread, label %bb.w

._crit_edge.thread:                               ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %i.ay = icmp eq i64 %.sroa.0101.0370390655, 0
  tail call void @llvm.assume(i1 %i.ay)
  store i64 0, ptr %i.e, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.ba, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit205"

bb.w:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !186673
  %i.bb = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ax, i64 noundef range(i64 1, 9) 8) #79, !noalias !186673 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.x, label %.lr.ph

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4656) #80
          to label %.noexc187 unwind label %.split658.thread

.split658.thread:                                 ; preds = %bb.x
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.noexc187:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4655)
          to label %bb.z unwind label %.split658

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !14 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186678)
  %i.bi = icmp ugt i64 %i.bh, %i.aw
  br i1 %i.bi, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bh
  %i.bk = sub nuw i64 %i.aw, %i.bh
  %i.bl = icmp eq i64 %i.bh, 1
  br i1 %i.bl, label %bb.ab, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i188"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i188": ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull readonly align 1 %i.av, i64 %i.bh, i1 false), !alias.scope !186681, !noalias !186685
  br label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bm = load i8, ptr %i.av, align 1, !noalias !186688, !noundef !14
  store i8 %i.bm, ptr %i.bf, align 1, !alias.scope !186678, !noalias !186689
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.bn, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186690)
  %.val.i193 = load i64, ptr %i.f, align 8, !range !9, !alias.scope !186690, !noundef !14 ; 2 uses
  %i.bo = icmp eq i64 %.val.i193, 0
  br i1 %i.bo, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit195", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %.val.i193, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !186690
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit195"

bb.ae:                                            ; preds = %bb.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i188"
  %.sroa.0296.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %i.bp = icmp eq i64 %.sroa.0296.0.copyload, 0
  br i1 %i.bp, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit198", label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %.sroa.0296.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !186693
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit198"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit198": ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i

.lr.ph:                                           ; preds = %bb.w
  store i64 %.sroa.0101.0370390655, ptr %i.e, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.br, align 8
  %.not115 = icmp eq i64 %.sroa.0279.0403639, -9223372036854775808
  %.sroa.730.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.835.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.bg
  %.sroa.0104.1569 = phi i64 [ 1, %.lr.ph ], [ %.sroa.0104.1, %bb.bg ] ; 3 uses
  %.sroa.0104.0568 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0104.1569, %bb.bg ] ; 2 uses
  %.sroa.0.3567 = phi ptr [ %.sroa.0.2, %.lr.ph ], [ %.sroa.0.4, %bb.bg ] ; 8 uses
  %.sroa.19.3566 = phi i64 [ %.sroa.19.2, %.lr.ph ], [ %.sroa.19.4, %bb.bg ] ; 6 uses
  %.sroa.0293.0565 = phi ptr [ %i.ar, %.lr.ph ], [ %i.by, %bb.bg ] ; 3 uses
  %.sroa.8.0353564 = phi i64 [ %i.aq, %.lr.ph ], [ %i.bz, %bb.bg ] ; 2 uses
  %i.bu = icmp eq i64 %.sroa.8.0353564, 0
  br i1 %i.bu, label %bb.ai, label %bb.aj

._crit_edge:                                      ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !186696
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit205"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit205": ; preds = %._crit_edge.thread, %._crit_edge
  switch i64 %.sroa.0279.0403639, label %bb.ah [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"
  ]

bb.ah:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit205"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0385638) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0385638, i64 noundef %.sroa.0279.0403639, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !186699
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206": ; preds = %bb.m, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252.thread", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252", %bb.bl, %bb.ah, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit205", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit205", %bb.b, %bb.g, %bb.f
  ret void

.split670:                                        ; preds = %.invoke, %bb.an, %bb.ak
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
  br label %bb.u

bb.ai:                                            ; preds = %bb.ag
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.bw, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit"

bb.aj:                                            ; preds = %bb.ag
  %.sroa.0.0.copyload.i199 = load i16, ptr %.sroa.0293.0565, align 1, !alias.scope !186702, !noalias !186706
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0293.0565, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0293.0565, i64 4
  %i.bz = add nsw i64 %.sroa.8.0353564, -4
  %.sroa.0.0.copyload.i207 = load i16, ptr %i.bx, align 1, !alias.scope !186713, !noalias !186717 ; 2 uses
  %i.ca = zext i16 %.sroa.0.0.copyload.i207 to i64
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 4 uses
  br i1 %.not115, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit.thread", label %.cont

.cont:                                            ; preds = %bb.aj
  %i.cc = lshr i64 %.sroa.0104.0568, 3            ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %.sroa.13.0401646
  br i1 %i.cd, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit", label %bb.ak

bb.ak:                                            ; preds = %.cont
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cc, i64 noundef %.sroa.13.0401646, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4661) #80
          to label %.noexc212 unwind label %.split670

.noexc212:                                        ; preds = %bb.ak
  unreachable

"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit": ; preds = %.cont
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.9.0385638, i64 %i.cc
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !186724, !noundef !14
  %i.cg = trunc i64 %.sroa.0104.0568 to i8
  %i.ch = and i8 %i.cg, 7
  %i.ci = shl nuw i8 1, %i.ch
  %i.cj = and i8 %i.cf, %i.ci
  %.not523 = icmp eq i8 %i.cj, 0
  br i1 %.not523, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit.thread", label %bb.al

"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit.thread": ; preds = %bb.aj, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit"
  %i.ck = icmp ult i16 %.sroa.0.0.copyload.i207, 4096
  br i1 %i.ck, label %bb.ao, label %bb.am

bb.al:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit"
  %i.cl = icmp ult i64 %.sroa.19.3566, 2
  br i1 %i.cl, label %bb.bb, label %bb.bc

bb.am:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit.thread"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.cm = call noundef align 8 dereferenceable_or_null(8192) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, -9223372036854775807) 8) #79 ; 5 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.an, label %bb.ap, !prof !586

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8192) #80
          to label %.noexc218 unwind label %.split670

.noexc218:                                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit.thread"
  %i.co = shl nuw nsw i64 %i.cb, 1                ; 7 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !186727
  %i.cp = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.co, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !186727 ; 4 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.invoke, label %bb.au

.thread448.loopexit:                              ; preds = %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
  br label %bb.u

.thread448.loopexit.split-lp:                     ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
  br label %bb.u

bb.ap:                                            ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.cm, i8 0, i64 8192, i1 false)
  %i.cr = icmp ult i64 %.sroa.19.3566, 8192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.3567) ]
  br i1 %i.cr, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.3567, i64 8192
  %i.ct = add i64 %.sroa.19.3566, -8192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.cm, ptr noundef nonnull readonly align 1 dereferenceable(8192) %.sroa.0.3567, i64 8192, i1 false), !alias.scope !186732, !noalias !186736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN7roaring6bitmap5store12bitmap_store11BitmapStore8try_from17h24fc3ed428f45e5dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 4097, 65537) %i.cb, ptr noalias noundef nonnull align 8 %i.cm)
          to label %_ZN4core3ops8function2Fn4call17h88937a45dbb9493bE.exit unwind label %.thread448.loopexit

_ZN4core3ops8function2Fn4call17h88937a45dbb9493bE.exit: ; preds = %bb.aq
  %i.cu = load i64, ptr %i.b, align 8, !range !751, !noundef !14
  %i.cv = trunc nuw i64 %i.cu to i1
  %i.cw = load i64, ptr %i.bt, align 8, !noundef !14 ; 2 uses
  br i1 %i.cv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN4core3ops8function2Fn4call17h88937a45dbb9493bE.exit
  %i.cx = load i64, ptr %i.bs, align 8, !noundef !14
  %i.cy = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h3d5870e22f9457d9E(i8 noundef 21, i64 noundef %i.cx, i64 noundef %i.cw)
          to label %.thread463 unwind label %.thread448.loopexit.split-lp

.thread463:                                       ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.cz, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit"

bb.as:                                            ; preds = %_ZN4core3ops8function2Fn4call17h88937a45dbb9493bE.exit
  %i.da = load ptr, ptr %i.bs, align 8, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.az

bb.at:                                            ; preds = %bb.ap
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.db, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef 8192, i64 noundef 8) #79
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit"

.thread468.loopexit:                              ; preds = %bb.av
  %lpad.loopexit524 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
  br label %bb.u

.thread468.loopexit.split-lp:                     ; preds = %bb.ax
  %lpad.loopexit.split-lp525 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
  br label %bb.u

bb.au:                                            ; preds = %bb.ao
  %i.dc = icmp ugt i64 %i.co, %.sroa.19.3566
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.3567) ]
  br i1 %i.dc, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hde6a1cdb893cd5aeE.exit", label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.3567, i64 %i.co
  %i.de = sub nuw i64 %.sroa.19.3566, %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.cp, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.3567, i64 %i.co, i1 false), !alias.scope !186740, !noalias !186744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cb, ptr %i.a, align 8, !noalias !186748
  store ptr %i.cp, ptr %.sroa.4334.0..sroa_idx, align 8, !noalias !186748
  store i64 %i.cb, ptr %.sroa.5335.0..sroa_idx, align 8, !noalias !186748
  invoke void @"_ZN124_$LT$roaring..bitmap..store..array_store..ArrayStore$u20$as$u20$core..convert..TryFrom$LT$alloc..vec..Vec$LT$u16$GT$$GT$$GT$8try_from17h9b325ec933d5e4fdE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aw unwind label %.thread468.loopexit

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.df = load i64, ptr %i.c, align 8, !range !2917, !noundef !14 ; 2 uses
  %i.dg = icmp eq i64 %i.df, -9223372036854775808
  br i1 %i.dg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dh = load i64, ptr %.sroa.496.0..sroa_idx, align 8, !noundef !14
  %i.di = load i8, ptr %.sroa.597.0..sroa_idx, align 8, !range !1313, !noundef !14
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h7157d976289c6a33E(i8 noundef 21, i64 noundef %i.dh, i1 noundef zeroext %i.dj)
          to label %.thread485 unwind label %.thread468.loopexit.split-lp

.thread485:                                       ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dk, ptr %i.dl, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit"

bb.ay:                                            ; preds = %bb.aw
  %.sroa.496.0.copyload = load ptr, ptr %.sroa.496.0..sroa_idx, align 8
  %.sroa.597.0.copyload = load i64, ptr %.sroa.597.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.az

bb.az:                                            ; preds = %bb.as, %bb.ay, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248"
  %.sroa.19.4 = phi i64 [ %i.fa, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248" ], [ %i.de, %bb.ay ], [ %i.ct, %bb.as ]
  %.sroa.0.4 = phi ptr [ %i.ez, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248" ], [ %i.dd, %bb.ay ], [ %i.cs, %bb.as ]
  %.sroa.835.0 = phi i64 [ %.sroa.835.0.copyload39, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248" ], [ %.sroa.597.0.copyload, %bb.ay ], [ %i.cw, %bb.as ]
  %.sroa.730.0 = phi ptr [ %.sroa.730.0.copyload34, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248" ], [ %.sroa.496.0.copyload, %bb.ay ], [ %i.da, %bb.as ] ; 2 uses
  %.sroa.027.0 = phi i64 [ %.sroa.027.0.copyload29, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248" ], [ %i.df, %bb.ay ], [ -9223372036854775808, %bb.as ] ; 2 uses
  %i.dm = load i64, ptr %i.br, align 8, !alias.scope !186751, !noalias !186754, !noundef !14 ; 3 uses
  %i.dn = load i64, ptr %i.e, align 8, !range !9, !alias.scope !186751, !noalias !186754, !noundef !14
  %i.do = icmp eq i64 %i.dm, %i.dn
  br i1 %i.do, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2bed7fedf0cce30dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4659)
          to label %bb.bg unwind label %.split667, !noalias !186757

.split667:                                        ; preds = %bb.ba
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E"(i64 %.sroa.027.0, ptr %.sroa.730.0) #81, !noalias !186757
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
  br label %bb.u

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hde6a1cdb893cd5aeE.exit": ; preds = %bb.au
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.dq, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 2) #79
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit"

bb.bb:                                            ; preds = %bb.al
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.dr, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit"

bb.bc:                                            ; preds = %bb.al
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.3567, i64 2 ; 3 uses
  %i.dt = add i64 %.sroa.19.3566, -2              ; 2 uses
  %.sroa.0.0.copyload.i213 = load i16, ptr %.sroa.0.3567, align 1, !alias.scope !186758, !noalias !186762 ; 3 uses
  %i.du = zext i16 %.sroa.0.0.copyload.i213 to i64 ; 4 uses
  %i.dv = shl nuw nsw i64 %i.du, 2                ; 14 uses
  %i.dw = icmp eq i16 %.sroa.0.0.copyload.i213, 0 ; 3 uses
  br i1 %i.dw, label %.thread, label %bb.bd

.thread:                                          ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 inttoptr (i64 2 to ptr), ptr nonnull readonly align 1 %i.ds, i64 %i.dv, i1 false), !alias.scope !186769, !noalias !186773
  %i.dx = getelementptr inbounds nuw i8, ptr inttoptr (i64 2 to ptr), i64 %i.dv
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h48c286424d464cfdE.exit"

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !186777
  %i.dy = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !186777 ; 8 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %.invoke, label %.thread516

.invoke:                                          ; preds = %bb.bd, %bb.ao
  %i.ea = phi i64 [ %i.co, %bb.ao ], [ %i.dv, %bb.bd ]
  %i.eb = phi ptr [ @4657, %bb.ao ], [ @4658, %bb.bd ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb) #80
          to label %.cont713 unwind label %.split670

.cont713:                                         ; preds = %.invoke
  unreachable

.thread516:                                       ; preds = %bb.bd
  %i.ec = icmp ugt i64 %i.dv, %i.dt
  br i1 %i.ec, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %.thread516
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dy, ptr nonnull readonly align 1 %i.ds, i64 %i.dv, i1 false), !alias.scope !186769, !noalias !186773
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  %min.iters.check = icmp ult i16 %.sroa.0.0.copyload.i213, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.be
  %i.ee = and i64 %i.du, 3                        ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  %i.eg = select i1 %i.ef, i64 4, i64 %i.ee
  %n.vec = sub nsw i64 %i.du, %i.eg               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.en, %vector.body ]
  %vec.phi745 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.eo, %vector.body ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index
  %i.ej = getelementptr i8, ptr %i.eh, i64 2
  %i.ek = getelementptr i8, ptr %i.ei, i64 10
  %wide.vec = load <4 x i16>, ptr %i.ej, align 2
  %strided.vec = shufflevector <4 x i16> %wide.vec, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec746 = load <4 x i16>, ptr %i.ek, align 2
  %strided.vec747 = shufflevector <4 x i16> %wide.vec746, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.el = zext <2 x i16> %strided.vec to <2 x i64>
  %i.em = zext <2 x i16> %strided.vec747 to <2 x i64>
  %i.en = add <2 x i64> %vec.phi, %i.el           ; 2 uses
  %i.eo = add <2 x i64> %vec.phi745, %i.em        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !186782

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.eo, %i.en
  %i.eq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.be, %middle.block
  %.sroa.09.0.i.ph = phi i64 [ 0, %bb.be ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i.ph = phi i64 [ 0, %bb.be ], [ %i.eq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.09.0.i = phi i64 [ %i.ev, %scalar.ph ], [ %.sroa.09.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.07.0.i = phi i64 [ %i.eu, %scalar.ph ], [ %.sroa.07.0.i.ph, %scalar.ph.preheader ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.sroa.09.0.i
  %i.es = getelementptr i8, ptr %i.er, i64 2
  %.val.i243 = load i16, ptr %i.es, align 2, !noundef !14
  %i.et = zext i16 %.val.i243 to i64
  %i.eu = add i64 %.sroa.07.0.i, %i.et            ; 2 uses
  %i.ev = add nuw i64 %.sroa.09.0.i, 1            ; 2 uses
  %i.ew = icmp eq i64 %i.ev, %i.du
  br i1 %i.ew, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h48c286424d464cfdE.exit", label %scalar.ph, !llvm.loop !186783

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h48c286424d464cfdE.exit": ; preds = %scalar.ph, %.thread
  %i.ex = phi ptr [ %i.dx, %.thread ], [ %i.ed, %scalar.ph ]
  %i.ey = phi ptr [ inttoptr (i64 2 to ptr), %.thread ], [ %i.dy, %scalar.ph ] ; 5 uses
  %.sroa.04.0.i = phi i64 [ 0, %.thread ], [ %i.eu, %scalar.ph ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dv
  %i.fa = sub nuw i64 %i.dt, %i.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN7roaring6bitmap5store5Store13with_capacity17hc6b77316ec3dc503E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %.sroa.04.0.i)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h48c286424d464cfdE.exit"
  br i1 %i.dw, label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bf, %.noexc246
  %i.fb = phi ptr [ %i.fc, %.noexc246 ], [ %i.ey, %bb.bf ] ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %i.fb, align 2, !noalias !186784 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i = trunc i32 %.sroa.02.0.copyload.i to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i32 %.sroa.02.0.copyload.i, 16
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i to i16
  %i.fd = add i16 %.sroa.4.0.extract.trunc.i.i.i, %.sroa.01.0.extract.trunc.i.i.i ; 2 uses
  %i.fe = icmp ult i16 %i.fd, %.sroa.01.0.extract.trunc.i.i.i
  br i1 %i.fe, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h76e4b863f28397b3E.exit", label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf1699a7e5c36e13cE.exit.i", !prof !121

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf1699a7e5c36e13cE.exit.i": ; preds = %.lr.ph.i
  %.sroa.012.2.insert.ext.i.i.i = zext i16 %i.fd to i48
  %.sroa.012.2.insert.shift.i.i.i = shl nuw nsw i48 %.sroa.012.2.insert.ext.i.i.i, 16
  %i.ff = and i32 %.sroa.02.0.copyload.i, 65535
  %.sroa.012.2.insert.mask.i.i.i = zext nneg i32 %i.ff to i48
  %.sroa.012.2.insert.insert.i.i.i = or disjoint i48 %.sroa.012.2.insert.shift.i.i.i, %.sroa.012.2.insert.mask.i.i.i
  %i.fg = invoke noundef i64 @_ZN7roaring6bitmap5store5Store12insert_range17h99c18b5fd54fe8ebE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i48 %.sroa.012.2.insert.insert.i.i.i)
          to label %.noexc246 unwind label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit" ; 0 uses

.noexc246:                                        ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf1699a7e5c36e13cE.exit.i"
  %.not.i = icmp eq ptr %i.fc, %i.ex
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf1699a7e5c36e13cE.exit.i"
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !186787
  %.val154 = load i64, ptr %i.d, align 8, !range !2917, !noundef !14
  %.val155 = load ptr, ptr %.sroa.730.0..sroa_idx33, align 8
  call fastcc void @"_ZN4core3ptr50drop_in_place$LT$roaring..bitmap..store..Store$GT$17h2eb08a1476f2931cE"(i64 %.val154, ptr %.val155) #81
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
  br label %bb.u

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h76e4b863f28397b3E.exit": ; preds = %.lr.ph.i
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 90194313219 to ptr), ptr %i.fi, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !186790
  %.val152 = load i64, ptr %i.d, align 8, !range !2917, !noundef !14
  %.val153 = load ptr, ptr %.sroa.730.0..sroa_idx33, align 8
  call fastcc void @"_ZN4core3ptr50drop_in_place$LT$roaring..bitmap..store..Store$GT$17h2eb08a1476f2931cE"(i64 %.val152, ptr %.val153)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit"

.loopexit:                                        ; preds = %.noexc246
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !186793
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248"

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248": ; preds = %bb.bf, %.loopexit
  %.sroa.027.0.copyload29 = load i64, ptr %i.d, align 8
  %.sroa.730.0.copyload34 = load ptr, ptr %.sroa.730.0..sroa_idx33, align 8
  %.sroa.835.0.copyload39 = load i64, ptr %.sroa.835.0..sroa_idx38, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.az

bb.bg:                                            ; preds = %bb.ba, %bb.az
  %i.fj = load ptr, ptr %i.bq, align 8, !alias.scope !186751, !noalias !186754, !nonnull !14, !noundef !14
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %i.dm ; 4 uses
  store i64 %.sroa.027.0, ptr %i.fk, align 8
  %.sroa.5339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %.sroa.730.0, ptr %.sroa.5339.0..sroa_idx, align 8
  %.sroa.7340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store i64 %.sroa.835.0, ptr %.sroa.7340.0..sroa_idx, align 8
  %.sroa.8341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store i16 %.sroa.0.0.copyload.i199, ptr %.sroa.8341.0..sroa_idx, align 8
  %i.fl = add i64 %i.dm, 1
  store i64 %i.fl, ptr %i.br, align 8
  %i.fm = icmp samesign ult i64 %.sroa.0104.1569, %.sroa.0101.0370390655 ; 2 uses
  %i.fn = zext i1 %i.fm to i64
  %.sroa.0104.1 = add nuw nsw i64 %.sroa.0104.1569, %i.fn
  br i1 %i.fm, label %bb.ag, label %._crit_edge

bb.bh:                                            ; preds = %.thread516
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.fo, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dy, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #79
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit"

bb.bi:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h48c286424d464cfdE.exit"
  %lpad.thr_comm499 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.dw, label %bb.t, label %.split672

.split672:                                        ; preds = %bb.bi
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #79
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
  br label %bb.u

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit": ; preds = %bb.bh, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h76e4b863f28397b3E.exit", %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hde6a1cdb893cd5aeE.exit", %.thread485, %bb.at, %.thread463, %bb.bb, %bb.ai
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bj

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit195": ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bj

bb.bj:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit195"
  br i1 %i.ap, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252", label %bb.bk

bb.bk:                                            ; preds = %.thread520, %bb.bj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !186796
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252": ; preds = %bb.bj, %bb.bk
  switch i64 %.sroa.0279.0403639, label %bb.bl [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"
  ]

bb.bl:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0385638) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0385638, i64 noundef %.sroa.0279.0403639, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !186799
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252.thread": ; preds = %bb.p
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.fp, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit": ; preds = %bb.q, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit185", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit185"
  resume { ptr, i32 } %.pn130
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN7roaring6bitmap4iter107_$LT$impl$u20$core..iter..traits..collect..Extend$LT$u32$GT$$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$6extend17h2576881001d3dde0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef nonnull readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !noalias !186802, !noundef !14 ; 3 uses
  %i.c = lshr i32 %i.b, 16
  %i.d = trunc nuw i32 %i.c to i16                ; 5 uses
  %i.e = trunc i32 %i.b to i16                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186805)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !186805, !nonnull !14, !noundef !14 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !186805, !noundef !14 ; 12 uses
  switch i64 %i.i, label %.lr.ph.i.i.i [
    i64 0, label %bb.d
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.b
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %i.t, %.lr.ph.i.i.i ] ; 4 uses
  %i.j = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.i
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.sroa.05.0.lcssa.i.i.i
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %.val20.i.i.i = load i16, ptr %i.l, align 8, !alias.scope !186808, !noalias !186813, !noundef !14 ; 2 uses
  %i.m = icmp eq i16 %.val20.i.i.i, %i.d
  br i1 %i.m, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21find_container_by_key17h87df9d849b720ed8E.exit", label %bb.c

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = lshr i64 %.sroa.01.025.i.i.i, 1          ; 2 uses
  %i.o = add i64 %i.n, %.sroa.05.024.i.i.i        ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %.val22.i.i.i = load i16, ptr %i.r, align 8, !alias.scope !186808, !noalias !186813, !noundef !14
  %i.s = icmp ugt i16 %.val22.i.i.i, %i.d
  %i.t = select i1 %i.s, i64 %.sroa.05.024.i.i.i, i64 %i.o, !unpredictable !14 ; 2 uses
  %i.u = sub nuw i64 %.sroa.01.025.i.i.i, %i.n    ; 2 uses
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.w = icmp ult i16 %.val20.i.i.i, %i.d
  %i.x = zext i1 %i.w to i64
  %i.y = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.x ; 2 uses
  %i.z = icmp ule i64 %i.y, %i.i
  tail call void @llvm.assume(i1 %i.z)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.i.i.ph.i = phi i64 [ %i.y, %bb.c ], [ %i.i, %bb.b ] ; 4 uses
  %i.aa = icmp ult i64 %i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i64, ptr %0, align 8, !range !9, !alias.scope !186815, !noalias !186818, !noundef !14
  %i.ac = icmp eq i64 %i.i, %i.ab
  br i1 %i.ac, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2bed7fedf0cce30dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4672), !noalias !186821
  %.pre.i = load ptr, ptr %i.f, align 8, !alias.scope !186815, !noalias !186818
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %bb.d
  %i.ad = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.g, %bb.d ]
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %.sroa.4.0.i.i.ph.i ; 6 uses
  %i.af = icmp samesign ult i64 %.sroa.4.0.i.i.ph.i, %i.i
  br i1 %i.af, label %bb.f, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i"

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ah = sub nuw nsw i64 %i.i, %.sroa.4.0.i.i.ph.i
  %i.ai = shl nuw nsw i64 %i.ah, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %i.ae, i64 %i.ai, i1 false), !noalias !186821
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i": ; preds = %bb.f, %bb.e
  store i64 0, ptr %i.ae, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i16 %i.d, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.aj = add nuw nsw i64 %i.i, 1                 ; 2 uses
  store i64 %i.aj, ptr %i.h, align 8, !alias.scope !186815, !noalias !186818
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21find_container_by_key17h87df9d849b720ed8E.exit"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21find_container_by_key17h87df9d849b720ed8E.exit": ; preds = %._crit_edge.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i"
  %i.ak = phi i64 [ %i.aj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i" ], [ %i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i16.i = phi i64 [ %.sroa.4.0.i.i.ph.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i" ], [ %.sroa.05.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.al = icmp ult i64 %.sroa.4.0.i.i16.i, %i.ak
  br i1 %i.al, label %bb.g, label %bb.o

.loopexit:                                        ; preds = %_ZN7roaring6bitmap9container9Container6insert17h10bfdf8dd2dc937aE.exit60, %_ZN7roaring6bitmap9container9Container6insert17h10bfdf8dd2dc937aE.exit, %bb.a
  ret void

bb.g:                                             ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21find_container_by_key17h87df9d849b720ed8E.exit"
  %i.am = load ptr, ptr %i.f, align 8, !nonnull !14, !noundef !14
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %.sroa.4.0.i.i16.i ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186822)
  %i.ao = load i64, ptr %i.an, align 8, !range !2917, !alias.scope !186822, !noundef !14 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -9223372036854775808
  br i1 %i.ap, label %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186825)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !186828, !nonnull !14, !noundef !14 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !186828, !noundef !14 ; 11 uses
  switch i64 %i.at, label %.lr.ph.i.i.i24 [
    i64 0, label %bb.j
    i64 1, label %._crit_edge.i.i.i21
  ]

._crit_edge.i.i.i21:                              ; preds = %.lr.ph.i.i.i24, %bb.h
  %.sroa.05.0.lcssa.i.i.i22 = phi i64 [ 0, %bb.h ], [ %i.bc, %.lr.ph.i.i.i24 ] ; 3 uses
  %i.au = icmp ult i64 %.sroa.05.0.lcssa.i.i.i22, %i.at
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %.sroa.05.0.lcssa.i.i.i22
  %.val20.i.i.i23 = load i16, ptr %i.av, align 2, !alias.scope !186829, !noalias !186832, !noundef !14 ; 2 uses
  %i.aw = icmp eq i16 %.val20.i.i.i23, %i.e
  br i1 %i.aw, label %_ZN7roaring6bitmap9container9Container6insert17h10bfdf8dd2dc937aE.exit, label %bb.i

.lr.ph.i.i.i24:                                   ; preds = %bb.h, %.lr.ph.i.i.i24
  %.sroa.01.025.i.i.i25 = phi i64 [ %i.bd, %.lr.ph.i.i.i24 ], [ %i.at, %bb.h ] ; 2 uses
  %.sroa.05.024.i.i.i26 = phi i64 [ %i.bc, %.lr.ph.i.i.i24 ], [ 0, %bb.h ] ; 2 uses
  %i.ax = lshr i64 %.sroa.01.025.i.i.i25, 1       ; 2 uses
  %i.ay = add i64 %i.ax, %.sroa.05.024.i.i.i26    ; 3 uses
  %i.az = icmp ult i64 %i.ay, %i.at
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.ay
  %.val22.i.i.i27 = load i16, ptr %i.ba, align 2, !alias.scope !186829, !noalias !186832, !noundef !14
  %i.bb = icmp ugt i16 %.val22.i.i.i27, %i.e
  %i.bc = select i1 %i.bb, i64 %.sroa.05.024.i.i.i26, i64 %i.ay, !unpredictable !14 ; 2 uses
  %i.bd = sub nuw i64 %.sroa.01.025.i.i.i25, %i.ax ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 1
  br i1 %i.be, label %.lr.ph.i.i.i24, label %._crit_edge.i.i.i21

bb.i:                                             ; preds = %._crit_edge.i.i.i21
  %i.bf = icmp ult i16 %.val20.i.i.i23, %i.e
  %i.bg = zext i1 %i.bf to i64
  %i.bh = add nuw i64 %.sroa.05.0.lcssa.i.i.i22, %i.bg ; 2 uses
  %i.bi = icmp ule i64 %i.bh, %i.at
  tail call void @llvm.assume(i1 %i.bi)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.bh, %bb.i ], [ %i.at, %bb.h ] ; 3 uses
  %i.bj = icmp ult i64 %i.at, 4611686018427387904
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp eq i64 %i.at, %i.ao
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1ce9a538e264a91eE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4665)
  %.pre.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !186834, !noalias !186837
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = phi ptr [ %.pre.i.i, %bb.k ], [ %i.ar, %bb.j ]
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  %i.bn = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.at
  br i1 %i.bn, label %bb.m, label %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bp = sub nuw nsw i64 %i.at, %.sroa.4.0.i.ph.i.i
  %i.bq = shl nuw nsw i64 %i.bp, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bo, ptr nonnull align 2 %i.bm, i64 %i.bq, i1 false)
  br label %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.thread.i

_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.thread.i: ; preds = %bb.m, %bb.l
  store i16 %i.e, ptr %i.bm, align 2
  %i.br = add nuw nsw i64 %i.at, 1
  store i64 %i.br, ptr %i.as, align 8, !alias.scope !186834, !noalias !186837
  br label %bb.n

_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.i: ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186839)
  %.mask = and i32 %i.b, 65535
end_hunk_1
