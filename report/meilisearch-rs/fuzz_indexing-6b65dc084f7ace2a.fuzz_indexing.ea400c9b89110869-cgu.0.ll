Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17had8e0f1932ff19d9E"
define internal { ptr, ptr } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17had8e0f1932ff19d9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @111, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17haee8845f92b5d770E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @112, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h01a43471ae695d8fE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @3, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h2768e167a558c388E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @3, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h61e8b8c3412f1a40E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @3, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h939eba9ca8f468a1E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @3, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17hc17ce3d7e6c025c2E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @3, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17hddbd68f22b45070aE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @3, i64 6 }
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN107_$LT$milli..vector..extractor..DocumentTemplateExtractor$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17h22d56ac9748721e2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !16, !align !21, !noundef !16
  %i.l = load ptr, ptr %1, align 8, !nonnull !16, !align !21, !noundef !16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4180)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4181
  store ptr %2, ptr %i.g, align 8, !noalias !4181
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.m, align 8, !noalias !4181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4181
  store ptr %i.g, ptr %i.f, align 8, !noalias !4181
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.n, align 8, !noalias !4181
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.l, ptr %i.o, align 8, !noalias !4181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4181
  store ptr %i.g, ptr %i.e, align 8, !noalias !4181
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.p, align 8, !noalias !4181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4181
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !4180, !noalias !4182, !noundef !16 ; 2 uses
  %.not.i = icmp eq i64 %i.r, 0
  %..i = select i1 %.not.i, i64 400, i64 %i.r     ; 6 uses
  %i.s = call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %..i, i64 noundef 1), !noalias !4183
  br i1 %i.s, label %.split.i.i, label %.split15.i.i

.split15.i.i:                                     ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @455, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @470, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1829) #66, !noalias !4183
  unreachable

.split.i.i:                                       ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !4184, !nonnull !16, !noundef !16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !noalias !4183, !nonnull !16, !noundef !16 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 16, !noalias !4183, !nonnull !16, !noundef !16
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ugt i64 %..i, %i.aa
  br i1 %i.ab, label %bb.b, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i": ; preds = %.split.i.i
  %i.ac = sub i64 0, %..i
  %i.ad = getelementptr i8, ptr %i.w, i64 %i.ac   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  store ptr %i.ad, ptr %i.v, align 16, !noalias !4183
  br label %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h9430cfe5c931af45E.exit.i"

bb.b:                                             ; preds = %.split.i.i
  %i.ae = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %i.l, i64 noundef 1, i64 noundef %..i), !noalias !4183 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.ae, null
  br i1 %.not16.i.i, label %bb.c, label %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h9430cfe5c931af45E.exit.i"

bb.c:                                             ; preds = %bb.b
  call void @_ZN7bumpalo5alloc18handle_alloc_error17h077d55f6423c56d4E(i64 noundef 1, i64 noundef %..i) #66, !noalias !4183
  unreachable

"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h9430cfe5c931af45E.exit.i": ; preds = %bb.b, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i"
  %.sroa.01.0.i.i = phi ptr [ %i.ae, %bb.b ], [ %i.ad, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i" ]
  store ptr %.sroa.01.0.i.i, ptr %i.d, align 8, !noalias !4181
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4181
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 %..i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4181
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 0, ptr %i.af, align 8, !noalias !4181
  %i.ag = invoke noundef align 8 ptr @_ZN6liquid8template8Template9render_to17h62367749ca4b2ff2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @806, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @107)
          to label %bb.d unwind label %.body.i, !noalias !4185 ; 3 uses

"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hf943408cbf6c4b39E.exit11.i": ; preds = %bb.o, %bb.n, %.body.thread.i
  resume { ptr, i32 } %eh.lpad-body53.i

.body.i:                                          ; preds = %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h9430cfe5c931af45E.exit.i"
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.d:                                             ; preds = %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h9430cfe5c931af45E.exit.i"
  %.not7.i = icmp eq ptr %i.ag, null
  br i1 %.not7.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp slt i64 %.8.val, 0
  br i1 %i.ah, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ai = icmp eq i64 %.8.val, 0
  br i1 %i.ai, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !4186
  %i.aj = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.8.val, i64 noundef range(i64 1, 9) 1) #65, !noalias !4186 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.f ], [ 0, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2017) #66
          to label %.noexc.i.i unwind label %bb.h, !noalias !4187

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17hddf6601f23b4d3e0E"(ptr nonnull align 8 %i.ag) #67
          to label %.body.thread.i unwind label %bb.i, !noalias !4188

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !4188
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4181
  %i.an = load ptr, ptr %i.d, align 8, !noalias !4181, !nonnull !16, !noundef !16
  %i.ao = load i64, ptr %i.af, align 8, !noalias !4181, !noundef !16
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.an, i64 noundef %i.ao), !noalias !4185
  call void @llvm.experimental.noalias.scope.decl(metadata !4189)
  %i.ap = load i64, ptr %i.c, align 8, !range !27, !alias.scope !4189, !noalias !4181, !noundef !16
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %.noexc.i, label %bb.q, !prof !18

.noexc.i:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4190
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !noalias !4181
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @807, i64 noundef 76, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @451, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809) #66, !noalias !4185
  unreachable

bb.k:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.aj, %bb.f ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.0.val, i64 %.8.val, i1 false), !noalias !4191
  call void @llvm.experimental.noalias.scope.decl(metadata !4192)
  call void @llvm.experimental.noalias.scope.decl(metadata !4193)
  call void @llvm.experimental.noalias.scope.decl(metadata !4194)
  call void @llvm.experimental.noalias.scope.decl(metadata !4195)
  %i.as = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4196, !noalias !4181, !noundef !16 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4196, !noalias !4181, !nonnull !16, !align !21, !noundef !16
  %i.av = load ptr, ptr %i.d, align 8, !alias.scope !4196, !noalias !4181, !nonnull !16, !noundef !16
  %i.aw = getelementptr i8, ptr %i.au, i64 16
  %.val.i.i.i1.i.i = load ptr, ptr %i.aw, align 8, !noalias !4197, !nonnull !16, !noundef !16
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !4197, !nonnull !16, !noundef !16 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.av
  br i1 %i.az, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as
  store ptr %i.ba, ptr %i.ax, align 8, !noalias !4197
  br label %bb.p

.body.thread.i:                                   ; preds = %bb.h, %.body.i
  %eh.lpad-body53.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %i.al, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4198)
  call void @llvm.experimental.noalias.scope.decl(metadata !4199)
  call void @llvm.experimental.noalias.scope.decl(metadata !4200)
  call void @llvm.experimental.noalias.scope.decl(metadata !4201)
  %i.bb = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4202, !noalias !4181, !noundef !16 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hf943408cbf6c4b39E.exit11.i", label %bb.n

bb.n:                                             ; preds = %.body.thread.i
  %i.bd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4202, !noalias !4181, !nonnull !16, !align !21, !noundef !16
  %i.be = load ptr, ptr %i.d, align 8, !alias.scope !4202, !noalias !4181, !nonnull !16, !noundef !16
  %i.bf = getelementptr i8, ptr %i.bd, i64 16
  %.val.i.i.i1.i10.i = load ptr, ptr %i.bf, align 8, !noalias !4203, !nonnull !16, !noundef !16
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i10.i, i64 32 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !4203, !nonnull !16, !noundef !16 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.be
  br i1 %i.bi, label %bb.o, label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hf943408cbf6c4b39E.exit11.i"

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bb
  store ptr %i.bj, ptr %i.bg, align 8, !noalias !4203
  br label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hf943408cbf6c4b39E.exit11.i"

bb.p:                                             ; preds = %bb.k, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4181
  store i64 %.8.val, ptr %0, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.215.0..sroa_idx, align 8
  %.sroa.316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.8.val, ptr %.sroa.316.0..sroa_idx, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.2.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.417.sroa.2.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !4189, !noalias !4181, !nonnull !16, !align !22, !noundef !16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !4189, !noalias !4181, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4181
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bn, ptr %i.bp, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN107_$LT$milli..vector..extractor..DocumentTemplateExtractor$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17h75907ae6b7ff5ba4E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !16, !align !21, !noundef !16
  %i.l = load ptr, ptr %1, align 8, !nonnull !16, !align !21, !noundef !16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4239)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4240
  store ptr %2, ptr %i.g, align 8, !noalias !4240
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.m, align 8, !noalias !4240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4240
  store ptr %i.g, ptr %i.f, align 8, !noalias !4240
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.n, align 8, !noalias !4240
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.l, ptr %i.o, align 8, !noalias !4240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4240
  store ptr %i.g, ptr %i.e, align 8, !noalias !4240
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.p, align 8, !noalias !4240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4240
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !4239, !noalias !4241, !noundef !16 ; 2 uses
  %.not.i = icmp eq i64 %i.r, 0
  %..i = select i1 %.not.i, i64 400, i64 %i.r     ; 6 uses
  %i.s = call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %..i, i64 noundef 1), !noalias !4242
  br i1 %i.s, label %.split.i.i, label %.split15.i.i

.split15.i.i:                                     ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @455, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @470, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1829) #66, !noalias !4242
  unreachable

.split.i.i:                                       ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !4243, !nonnull !16, !noundef !16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !noalias !4242, !nonnull !16, !noundef !16 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 16, !noalias !4242, !nonnull !16, !noundef !16
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ugt i64 %..i, %i.aa
  br i1 %i.ab, label %bb.b, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i": ; preds = %.split.i.i
  %i.ac = sub i64 0, %..i
  %i.ad = getelementptr i8, ptr %i.w, i64 %i.ac   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  store ptr %i.ad, ptr %i.v, align 16, !noalias !4242
  br label %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h9430cfe5c931af45E.exit.i"

bb.b:                                             ; preds = %.split.i.i
  %i.ae = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %i.l, i64 noundef 1, i64 noundef %..i), !noalias !4242 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.ae, null
  br i1 %.not16.i.i, label %bb.c, label %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h9430cfe5c931af45E.exit.i"

bb.c:                                             ; preds = %bb.b
  call void @_ZN7bumpalo5alloc18handle_alloc_error17h077d55f6423c56d4E(i64 noundef 1, i64 noundef %..i) #66, !noalias !4242
  unreachable

"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h9430cfe5c931af45E.exit.i": ; preds = %bb.b, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i"
  %.sroa.01.0.i.i = phi ptr [ %i.ae, %bb.b ], [ %i.ad, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i" ]
  store ptr %.sroa.01.0.i.i, ptr %i.d, align 8, !noalias !4240
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4240
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 %..i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4240
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 0, ptr %i.af, align 8, !noalias !4240
  %i.ag = invoke noundef align 8 ptr @_ZN6liquid8template8Template9render_to17h62367749ca4b2ff2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @806, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @109)
          to label %bb.d unwind label %.body.i, !noalias !4244 ; 3 uses

"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hf943408cbf6c4b39E.exit11.i": ; preds = %bb.o, %bb.n, %.body.thread.i
  resume { ptr, i32 } %eh.lpad-body53.i

.body.i:                                          ; preds = %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h9430cfe5c931af45E.exit.i"
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.d:                                             ; preds = %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h9430cfe5c931af45E.exit.i"
  %.not7.i = icmp eq ptr %i.ag, null
  br i1 %.not7.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp slt i64 %.8.val, 0
  br i1 %i.ah, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ai = icmp eq i64 %.8.val, 0
  br i1 %i.ai, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !4245
  %i.aj = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.8.val, i64 noundef range(i64 1, 9) 1) #65, !noalias !4245 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.f ], [ 0, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2017) #66
          to label %.noexc.i.i unwind label %bb.h, !noalias !4246

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17hddf6601f23b4d3e0E"(ptr nonnull align 8 %i.ag) #67
          to label %.body.thread.i unwind label %bb.i, !noalias !4247

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !4247
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4240
  %i.an = load ptr, ptr %i.d, align 8, !noalias !4240, !nonnull !16, !noundef !16
  %i.ao = load i64, ptr %i.af, align 8, !noalias !4240, !noundef !16
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.an, i64 noundef %i.ao), !noalias !4244
  call void @llvm.experimental.noalias.scope.decl(metadata !4248)
  %i.ap = load i64, ptr %i.c, align 8, !range !27, !alias.scope !4248, !noalias !4240, !noundef !16
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %.noexc.i, label %bb.q, !prof !18

.noexc.i:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4249
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !noalias !4240
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @807, i64 noundef 76, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @451, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809) #66, !noalias !4244
  unreachable

bb.k:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.aj, %bb.f ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.0.val, i64 %.8.val, i1 false), !noalias !4250
  call void @llvm.experimental.noalias.scope.decl(metadata !4251)
  call void @llvm.experimental.noalias.scope.decl(metadata !4252)
  call void @llvm.experimental.noalias.scope.decl(metadata !4253)
  call void @llvm.experimental.noalias.scope.decl(metadata !4254)
  %i.as = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4255, !noalias !4240, !noundef !16 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4255, !noalias !4240, !nonnull !16, !align !21, !noundef !16
  %i.av = load ptr, ptr %i.d, align 8, !alias.scope !4255, !noalias !4240, !nonnull !16, !noundef !16
  %i.aw = getelementptr i8, ptr %i.au, i64 16
  %.val.i.i.i1.i.i = load ptr, ptr %i.aw, align 8, !noalias !4256, !nonnull !16, !noundef !16
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !4256, !nonnull !16, !noundef !16 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.av
  br i1 %i.az, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as
  store ptr %i.ba, ptr %i.ax, align 8, !noalias !4256
  br label %bb.p

.body.thread.i:                                   ; preds = %bb.h, %.body.i
  %eh.lpad-body53.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %i.al, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4257)
  call void @llvm.experimental.noalias.scope.decl(metadata !4258)
  call void @llvm.experimental.noalias.scope.decl(metadata !4259)
  call void @llvm.experimental.noalias.scope.decl(metadata !4260)
  %i.bb = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4261, !noalias !4240, !noundef !16 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hf943408cbf6c4b39E.exit11.i", label %bb.n

bb.n:                                             ; preds = %.body.thread.i
  %i.bd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4261, !noalias !4240, !nonnull !16, !align !21, !noundef !16
  %i.be = load ptr, ptr %i.d, align 8, !alias.scope !4261, !noalias !4240, !nonnull !16, !noundef !16
  %i.bf = getelementptr i8, ptr %i.bd, i64 16
  %.val.i.i.i1.i10.i = load ptr, ptr %i.bf, align 8, !noalias !4262, !nonnull !16, !noundef !16
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i10.i, i64 32 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !4262, !nonnull !16, !noundef !16 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.be
  br i1 %i.bi, label %bb.o, label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hf943408cbf6c4b39E.exit11.i"

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bb
  store ptr %i.bj, ptr %i.bg, align 8, !noalias !4262
  br label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hf943408cbf6c4b39E.exit11.i"

bb.p:                                             ; preds = %bb.k, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4240
  store i64 %.8.val, ptr %0, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.215.0..sroa_idx, align 8
  %.sroa.316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.8.val, ptr %.sroa.316.0..sroa_idx, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.2.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.417.sroa.2.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !4248, !noalias !4240, !nonnull !16, !align !22, !noundef !16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !4248, !noalias !4240, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4240
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bn, ptr %i.bp, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN107_$LT$milli..vector..extractor..DocumentTemplateExtractor$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17he24bacd611ad1118E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !16, !align !21, !noundef !16
  %i.l = load ptr, ptr %1, align 8, !nonnull !16, !align !21, !noundef !16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4298)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4299
  store ptr %2, ptr %i.g, align 8, !noalias !4299
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.m, align 8, !noalias !4299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4299
  store ptr %i.g, ptr %i.f, align 8, !noalias !4299
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.n, align 8, !noalias !4299
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.l, ptr %i.o, align 8, !noalias !4299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4299
  store ptr %i.g, ptr %i.e, align 8, !noalias !4299
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.p, align 8, !noalias !4299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4299
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !4298, !noalias !4300, !noundef !16 ; 2 uses
  %.not.i = icmp eq i64 %i.r, 0
  %..i = select i1 %.not.i, i64 400, i64 %i.r     ; 6 uses
  %i.s = call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %..i, i64 noundef 1), !noalias !4301
  br i1 %i.s, label %.split.i.i, label %.split15.i.i

.split15.i.i:                                     ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @455, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @470, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1829) #66, !noalias !4301
  unreachable

.split.i.i:                                       ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !4302, !nonnull !16, !noundef !16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !noalias !4301, !nonnull !16, !noundef !16 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 16, !noalias !4301, !nonnull !16, !noundef !16
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ugt i64 %..i, %i.aa
  br i1 %i.ab, label %bb.b, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i": ; preds = %.split.i.i
  %i.ac = sub i64 0, %..i
  %i.ad = getelementptr i8, ptr %i.w, i64 %i.ac   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  store ptr %i.ad, ptr %i.v, align 16, !noalias !4301
  br label %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h9430cfe5c931af45E.exit.i"

bb.b:                                             ; preds = %.split.i.i
  %i.ae = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %i.l, i64 noundef 1, i64 noundef %..i), !noalias !4301 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.ae, null
  br i1 %.not16.i.i, label %bb.c, label %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h9430cfe5c931af45E.exit.i"

bb.c:                                             ; preds = %bb.b
  call void @_ZN7bumpalo5alloc18handle_alloc_error17h077d55f6423c56d4E(i64 noundef 1, i64 noundef %..i) #66, !noalias !4301
  unreachable

"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h9430cfe5c931af45E.exit.i": ; preds = %bb.b, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i"
  %.sroa.01.0.i.i = phi ptr [ %i.ae, %bb.b ], [ %i.ad, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i" ]
  store ptr %.sroa.01.0.i.i, ptr %i.d, align 8, !noalias !4299
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4299
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 %..i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4299
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 0, ptr %i.af, align 8, !noalias !4299
  %i.ag = invoke noundef align 8 ptr @_ZN6liquid8template8Template9render_to17h62367749ca4b2ff2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @806, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @112)
          to label %bb.d unwind label %.body.i, !noalias !4303 ; 3 uses

"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hf943408cbf6c4b39E.exit11.i": ; preds = %bb.o, %bb.n, %.body.thread.i
  resume { ptr, i32 } %eh.lpad-body53.i

.body.i:                                          ; preds = %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h9430cfe5c931af45E.exit.i"
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.d:                                             ; preds = %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h9430cfe5c931af45E.exit.i"
  %.not7.i = icmp eq ptr %i.ag, null
  br i1 %.not7.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp slt i64 %.8.val, 0
  br i1 %i.ah, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ai = icmp eq i64 %.8.val, 0
  br i1 %i.ai, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !4304
  %i.aj = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.8.val, i64 noundef range(i64 1, 9) 1) #65, !noalias !4304 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.f ], [ 0, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2017) #66
          to label %.noexc.i.i unwind label %bb.h, !noalias !4305

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17hddf6601f23b4d3e0E"(ptr nonnull align 8 %i.ag) #67
          to label %.body.thread.i unwind label %bb.i, !noalias !4306

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !4306
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4299
  %i.an = load ptr, ptr %i.d, align 8, !noalias !4299, !nonnull !16, !noundef !16
  %i.ao = load i64, ptr %i.af, align 8, !noalias !4299, !noundef !16
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.an, i64 noundef %i.ao), !noalias !4303
  call void @llvm.experimental.noalias.scope.decl(metadata !4307)
  %i.ap = load i64, ptr %i.c, align 8, !range !27, !alias.scope !4307, !noalias !4299, !noundef !16
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %.noexc.i, label %bb.q, !prof !18

.noexc.i:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4308
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !noalias !4299
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @807, i64 noundef 76, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @451, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809) #66, !noalias !4303
  unreachable

bb.k:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.aj, %bb.f ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.0.val, i64 %.8.val, i1 false), !noalias !4309
  call void @llvm.experimental.noalias.scope.decl(metadata !4310)
  call void @llvm.experimental.noalias.scope.decl(metadata !4311)
  call void @llvm.experimental.noalias.scope.decl(metadata !4312)
  call void @llvm.experimental.noalias.scope.decl(metadata !4313)
  %i.as = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4314, !noalias !4299, !noundef !16 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4314, !noalias !4299, !nonnull !16, !align !21, !noundef !16
  %i.av = load ptr, ptr %i.d, align 8, !alias.scope !4314, !noalias !4299, !nonnull !16, !noundef !16
  %i.aw = getelementptr i8, ptr %i.au, i64 16
  %.val.i.i.i1.i.i = load ptr, ptr %i.aw, align 8, !noalias !4315, !nonnull !16, !noundef !16
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !4315, !nonnull !16, !noundef !16 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.av
  br i1 %i.az, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as
  store ptr %i.ba, ptr %i.ax, align 8, !noalias !4315
  br label %bb.p

.body.thread.i:                                   ; preds = %bb.h, %.body.i
  %eh.lpad-body53.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %i.al, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4316)
  call void @llvm.experimental.noalias.scope.decl(metadata !4317)
  call void @llvm.experimental.noalias.scope.decl(metadata !4318)
  call void @llvm.experimental.noalias.scope.decl(metadata !4319)
  %i.bb = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4320, !noalias !4299, !noundef !16 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hf943408cbf6c4b39E.exit11.i", label %bb.n

bb.n:                                             ; preds = %.body.thread.i
  %i.bd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4320, !noalias !4299, !nonnull !16, !align !21, !noundef !16
  %i.be = load ptr, ptr %i.d, align 8, !alias.scope !4320, !noalias !4299, !nonnull !16, !noundef !16
  %i.bf = getelementptr i8, ptr %i.bd, i64 16
  %.val.i.i.i1.i10.i = load ptr, ptr %i.bf, align 8, !noalias !4321, !nonnull !16, !noundef !16
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i10.i, i64 32 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !4321, !nonnull !16, !noundef !16 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.be
  br i1 %i.bi, label %bb.o, label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hf943408cbf6c4b39E.exit11.i"

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bb
  store ptr %i.bj, ptr %i.bg, align 8, !noalias !4321
  br label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hf943408cbf6c4b39E.exit11.i"

bb.p:                                             ; preds = %bb.k, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4299
  store i64 %.8.val, ptr %0, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.215.0..sroa_idx, align 8
  %.sroa.316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.8.val, ptr %.sroa.316.0..sroa_idx, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.2.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.417.sroa.2.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !4307, !noalias !4299, !nonnull !16, !align !22, !noundef !16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !4307, !noalias !4299, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4299
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bn, ptr %i.bp, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$11query_state17h10208773910dcda9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !16, !align !21, !noundef !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4324)
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !4324, !nonnull !16, !align !21, !noundef !16
  %i.c = tail call noundef i64 @"_ZN109_$LT$milli..update..new..document..DocumentFromVersions$u20$as$u20$milli..update..new..document..Document$GT$22top_level_fields_count17h3210fd69959dcdc4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i), !noalias !4324
  %i.d = icmp eq i64 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.d, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$11query_state17hc907a0fa7a3c5acdE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !16, !align !21, !noundef !16
  %i.c = tail call noundef i64 @"_ZN110_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$4size17h9af51c6dc414c196E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.d = icmp eq i64 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.d, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$11query_state17hfc2dd38b20680d88E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !16, !align !21, !noundef !16
  %i.c = tail call noundef i64 @"_ZN110_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$4size17h74b5d88f775e645dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.d = icmp eq i64 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.d, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6render17h01333a1b05aa0768E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !4327
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !4327 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #66, !noalias !4327
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !noalias !4327
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @120, ptr %i.d, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6render17h976e299d910318efE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !4330
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !4330 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #66, !noalias !4330
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !noalias !4330
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @121, ptr %i.d, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6render17hf9170f3d56760e37E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !4333
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !4333 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #66, !noalias !4333
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !noalias !4333
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @122, ptr %i.d, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6source17h056461c46e7bc36cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !4336
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !4336 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #66, !noalias !4336
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !noalias !4336
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @123, ptr %i.d, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6source17h28a82f304fc0ebf0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !4339
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !4339 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #66, !noalias !4339
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !noalias !4339
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @124, ptr %i.d, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6source17h879b877334dad56cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !4342
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !4342 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #66, !noalias !4342
  unreachable

end_hunk_0
