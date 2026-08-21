Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-40df1108108d7559.meilisearch.66439a82a0d7f210-cgu.0?download=true
inline.NumInlined: 140831
inline.NumDeleted: 44699
loop-unroll.NumCompletelyUnrolled: 243
loop-unroll.NumRuntimeUnrolled: 906
loop-unroll.NumUnrolled: 1163
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@"_ZN10actix_http8encoding7decoder16Decoder$LT$S$GT$12from_headers17h9411b72e20c14ceaE":bb.a
          to label %.noexc.i.i unwind label %bb.av, !noalias !63296

.noexc.i.i:                                       ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$flate2..zio..Writer$LT$flate2..crc..CrcWriter$LT$actix_http..encoding..Writer$GT$$C$flate2..mem..Decompress$GT$$GT$17he9b86cc0f1bdcae5E"(ptr noalias noundef align 8 dereferenceable(104) %i.f) #86
          to label %.body.i unwind label %bb.aw, !noalias !63296

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !63296
  unreachable

bb.ax:                                            ; preds = %"_ZN6flate23crc18CrcWriter$LT$W$GT$3new17h24297f855961c440E.exit.i.i"
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ee)
          to label %.body.i unwind label %bb.aw, !noalias !63296

bb.ay:                                            ; preds = %bb.at
  %.sroa.01.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 210
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.01.sroa.6.0..sroa_idx.i.i, i8 0, i64 10, i1 false), !alias.scope !63293, !noalias !63336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.u, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false), !noalias !63336
  %i.et = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  store i64 8, ptr %i.et, align 8, !alias.scope !63293, !noalias !63336
  %.sroa.4.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  store ptr %i.eo, ptr %.sroa.4.0..sroa_idx.i17.i, align 8, !alias.scope !63293, !noalias !63336
  %.sroa.5.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store i64 0, ptr %.sroa.5.0..sroa_idx.i18.i, align 8, !alias.scope !63293, !noalias !63336
  %i.eu = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  store i64 -9223372036854775808, ptr %i.eu, align 8, !alias.scope !63293, !noalias !63336
  %.sroa.01.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  store i64 -9223372036854775808, ptr %.sroa.01.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !63293, !noalias !63336
  %.sroa.01.sroa.0.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 176
  store i64 -9223372036854775808, ptr %.sroa.01.sroa.0.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !63293, !noalias !63336
  %.sroa.01.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  store i32 0, ptr %.sroa.01.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !63293, !noalias !63336
  %.sroa.01.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 204
  store i8 0, ptr %.sroa.01.sroa.0.sroa.5.0..sroa_idx.i.i, align 4, !alias.scope !63293, !noalias !63336
  %.sroa.01.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 208
  store i8 0, ptr %.sroa.01.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !63293, !noalias !63336
  %.sroa.01.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 209
  store i8 0, ptr %.sroa.01.sroa.5.0..sroa_idx.i.i, align 1, !alias.scope !63293, !noalias !63336
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 224
  store i8 0, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !alias.scope !63293, !noalias !63336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !63296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !63208
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !63337
  %i.ev = call noundef align 8 dereferenceable_or_null(232) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 232, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !63337 ; 3 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.az, label %bb.bc, !prof !334

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 232) #85
          to label %.noexc22.i unwind label %bb.ba, !noalias !63208

.noexc22.i:                                       ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.az
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$flate2..gz..write..GzDecoder$LT$actix_http..encoding..Writer$GT$$GT$17hce11af221a8683ddE"(ptr noalias noundef nonnull align 8 dereferenceable(232) %i.u) #86
          to label %.body.i unwind label %bb.bb, !noalias !63208

bb.bb:                                            ; preds = %bb.ba
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !63208
  unreachable

bb.bc:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ev, ptr noundef nonnull align 8 dereferenceable(232) %i.u, i64 232, i1 false), !noalias !63208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !63208
  br label %bb.be

bb.bd:                                            ; preds = %.body.i
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !63203
  unreachable

.thread26:                                        ; preds = %.lr.ph.i, %.noexc, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.ak, %bb.x, %bb.e, %.thread26
  %.sroa.7.0.i = phi ptr [ %i.ev, %bb.bc ], [ %i.dm, %bb.x ], [ %i.dy, %bb.ak ], [ undef, %bb.e ], [ undef, %.thread26 ]
  %.sroa.0.0.i17 = phi i64 [ 1, %bb.bc ], [ 2, %bb.x ], [ 0, %bb.ak ], [ 3, %bb.e ], [ 3, %.thread26 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !alias.scope !63208
  store i64 %.sroa.0.0.i17, ptr %0, align 8, !alias.scope !63203, !noalias !63206
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.i, ptr %i.fb, align 8, !alias.scope !63203, !noalias !63206
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.fc, align 8, !alias.scope !63203, !noalias !63206
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.fd, align 8, !alias.scope !63203, !noalias !63206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  ret void

.body:                                            ; preds = %.body.i, %bb.bf
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.fe, %bb.bf ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %eh.lpad-body20

bb.bf:                                            ; preds = %.loopexit, %bb.a, %bb.b
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr245drop_in_place$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$17hc4863d20bf320725E"(ptr noalias noundef align 8 dereferenceable(24) %1) #86
          to label %.body unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN10prometheus3vec18MetricVec$LT$T$GT$17with_label_values17h0ea4e2963859a70bE"(ptr %.0.val, ptr noalias noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63340)
  %i.e = getelementptr i8, ptr %.0.val, i64 104
  %.val26.i = load i64, ptr %i.e, align 8, !noalias !63343, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63345)
  %i.f = icmp ult i64 %.val26.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.f)
  %.not.i.i = icmp eq i64 %.val26.i, 2
  br i1 %.not.i.i, label %.preheader.preheader.i.i, label %"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$28get_metric_with_label_values17haf3c3b18c970efdeE.exit.thread6"

.preheader.preheader.i.i:                         ; preds = %bb.a
  %.sroa.03.0.ptr.val.i.i = load ptr, ptr %0, align 8, !alias.scope !63348, !noalias !63349, !nonnull !12, !align !12036, !noundef !12 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 8
  %.sroa.03.0.ptr.val5.i.i = load i64, ptr %i.g, align 8, !alias.scope !63348, !noalias !63349, !noundef !12 ; 4 uses
  %i.h = icmp samesign eq i64 %.sroa.03.0.ptr.val5.i.i, 0
  br i1 %i.h, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader.preheader.i.i
  %xtraiter = and i64 %.sroa.03.0.ptr.val5.i.i, 7 ; 3 uses
  %i.i = icmp ult i64 %.sroa.03.0.ptr.val5.i.i, 8
  br i1 %i.i, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.03.0.ptr.val5.i.i, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.aw, %.lr.ph.i.i.i ]
  %.sroa.04.05.i.i.i = phi ptr [ %.sroa.03.0.ptr.val.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.as, %.lr.ph.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 1
  %i.k = load i8, ptr %.sroa.04.05.i.i.i, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.l = zext i8 %i.k to i64
  %i.m = xor i64 %.sroa.0.06.i.i.i, %i.l
  %i.n = mul i64 %i.m, 1099511628211
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 2
  %i.p = load i8, ptr %i.j, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.q = zext i8 %i.p to i64
  %i.r = xor i64 %i.n, %i.q
  %i.s = mul i64 %i.r, 1099511628211
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 3
  %i.u = load i8, ptr %i.o, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.v = zext i8 %i.u to i64
  %i.w = xor i64 %i.s, %i.v
  %i.x = mul i64 %i.w, 1099511628211
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 4
  %i.z = load i8, ptr %i.t, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.aa = zext i8 %i.z to i64
  %i.ab = xor i64 %i.x, %i.aa
  %i.ac = mul i64 %i.ab, 1099511628211
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 5
  %i.ae = load i8, ptr %i.y, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.af = zext i8 %i.ae to i64
  %i.ag = xor i64 %i.ac, %i.af
  %i.ah = mul i64 %i.ag, 1099511628211
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 6
  %i.aj = load i8, ptr %i.ad, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.ak = zext i8 %i.aj to i64
  %i.al = xor i64 %i.ah, %i.ak
  %i.am = mul i64 %i.al, 1099511628211
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 7
  %i.ao = load i8, ptr %i.ai, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.ap = zext i8 %i.ao to i64
  %i.aq = xor i64 %i.am, %i.ap
  %i.ar = mul i64 %i.aq, 1099511628211
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 8 ; 2 uses
  %i.at = load i8, ptr %i.an, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %i.ar, %i.au
  %i.aw = mul i64 %i.av, 1099511628211            ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.loopexit.unr-lcssa", label %.lr.ph.i.i.i

"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i", label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader ], [ %i.aw, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.loopexit.unr-lcssa" ]
  %.sroa.04.05.i.i.i.epil.init = phi ptr [ %.sroa.03.0.ptr.val.i.i, %.lr.ph.i.i.i.preheader ], [ %i.as, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.loopexit.unr-lcssa" ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.06.i.i.i.epil = phi i64 [ %i.bb, %.lr.ph.i.i.i.epil ], [ %.sroa.0.06.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.sroa.04.05.i.i.i.epil = phi ptr [ %i.ax, %.lr.ph.i.i.i.epil ], [ %.sroa.04.05.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.epil, i64 1
  %i.ay = load i8, ptr %.sroa.04.05.i.i.i.epil, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.az = zext i8 %i.ay to i64
  %i.ba = xor i64 %.sroa.0.06.i.i.i.epil, %i.az
  %i.bb = mul i64 %i.ba, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i", label %.lr.ph.i.i.i.epil, !llvm.loop !63356

"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i": ; preds = %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.epil, %.preheader.preheader.i.i
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ -3750763034362895579, %.preheader.preheader.i.i ], [ %i.aw, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.loopexit.unr-lcssa" ], [ %i.bb, %.lr.ph.i.i.i.epil ] ; 3 uses
  %.sroa.03.0.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.03.0.ptr.val.1.i.i = load ptr, ptr %.sroa.03.0.ptr.1.i.i, align 8, !alias.scope !63348, !noalias !63349, !nonnull !12, !align !12036, !noundef !12 ; 3 uses
  %i.bc = getelementptr i8, ptr %0, i64 24
  %.sroa.03.0.ptr.val5.1.i.i = load i64, ptr %i.bc, align 8, !alias.scope !63348, !noalias !63349, !noundef !12 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.ptr.val.1.i.i, i64 %.sroa.03.0.ptr.val5.1.i.i
  %i.be = icmp samesign eq i64 %.sroa.03.0.ptr.val5.1.i.i, 0
  br i1 %i.be, label %.loopexit.i, label %.lr.ph.i.1.i.i.preheader

.lr.ph.i.1.i.i.preheader:                         ; preds = %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i"
  %xtraiter13 = and i64 %.sroa.03.0.ptr.val5.1.i.i, 7 ; 2 uses
  %lcmp.mod14.not = icmp eq i64 %xtraiter13, 0
  br i1 %lcmp.mod14.not, label %.lr.ph.i.1.i.i.prol.loopexit, label %.lr.ph.i.1.i.i.prol

.lr.ph.i.1.i.i.prol:                              ; preds = %.lr.ph.i.1.i.i.preheader, %.lr.ph.i.1.i.i.prol
  %.sroa.0.06.i.1.i.i.prol = phi i64 [ %i.bj, %.lr.ph.i.1.i.i.prol ], [ %.sroa.0.0.lcssa.i.i.i, %.lr.ph.i.1.i.i.preheader ]
  %.sroa.04.05.i.1.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.1.i.i.prol ], [ %.sroa.03.0.ptr.val.1.i.i, %.lr.ph.i.1.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.1.i.i.prol ], [ 0, %.lr.ph.i.1.i.i.preheader ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i.prol, i64 1 ; 2 uses
  %i.bg = load i8, ptr %.sroa.04.05.i.1.i.i.prol, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.bh = zext i8 %i.bg to i64
  %i.bi = xor i64 %.sroa.0.06.i.1.i.i.prol, %i.bh
  %i.bj = mul i64 %i.bi, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter13
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.1.i.i.prol.loopexit, label %.lr.ph.i.1.i.i.prol, !llvm.loop !63357

.lr.ph.i.1.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.1.i.i.prol, %.lr.ph.i.1.i.i.preheader
  %.lcssa9.unr = phi i64 [ poison, %.lr.ph.i.1.i.i.preheader ], [ %i.bj, %.lr.ph.i.1.i.i.prol ]
  %.sroa.0.06.i.1.i.i.unr = phi i64 [ %.sroa.0.0.lcssa.i.i.i, %.lr.ph.i.1.i.i.preheader ], [ %i.bj, %.lr.ph.i.1.i.i.prol ]
  %.sroa.04.05.i.1.i.i.unr = phi ptr [ %.sroa.03.0.ptr.val.1.i.i, %.lr.ph.i.1.i.i.preheader ], [ %i.bf, %.lr.ph.i.1.i.i.prol ]
  %i.bk = icmp ult i64 %.sroa.03.0.ptr.val5.1.i.i, 8
  br i1 %i.bk, label %.loopexit.i, label %.lr.ph.i.1.i.i

.lr.ph.i.1.i.i:                                   ; preds = %.lr.ph.i.1.i.i.prol.loopexit, %.lr.ph.i.1.i.i
  %.sroa.0.06.i.1.i.i = phi i64 [ %i.cy, %.lr.ph.i.1.i.i ], [ %.sroa.0.06.i.1.i.i.unr, %.lr.ph.i.1.i.i.prol.loopexit ]
  %.sroa.04.05.i.1.i.i = phi ptr [ %i.cu, %.lr.ph.i.1.i.i ], [ %.sroa.04.05.i.1.i.i.unr, %.lr.ph.i.1.i.i.prol.loopexit ] ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i, i64 1
  %i.bm = load i8, ptr %.sroa.04.05.i.1.i.i, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.bn = zext i8 %i.bm to i64
  %i.bo = xor i64 %.sroa.0.06.i.1.i.i, %i.bn
  %i.bp = mul i64 %i.bo, 1099511628211
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i, i64 2
  %i.br = load i8, ptr %i.bl, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.bs = zext i8 %i.br to i64
  %i.bt = xor i64 %i.bp, %i.bs
  %i.bu = mul i64 %i.bt, 1099511628211
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i, i64 3
  %i.bw = load i8, ptr %i.bq, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.bx = zext i8 %i.bw to i64
  %i.by = xor i64 %i.bu, %i.bx
  %i.bz = mul i64 %i.by, 1099511628211
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i, i64 4
  %i.cb = load i8, ptr %i.bv, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.cc = zext i8 %i.cb to i64
  %i.cd = xor i64 %i.bz, %i.cc
  %i.ce = mul i64 %i.cd, 1099511628211
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i, i64 5
  %i.cg = load i8, ptr %i.ca, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.ch = zext i8 %i.cg to i64
  %i.ci = xor i64 %i.ce, %i.ch
  %i.cj = mul i64 %i.ci, 1099511628211
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i, i64 6
  %i.cl = load i8, ptr %i.cf, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.cm = zext i8 %i.cl to i64
  %i.cn = xor i64 %i.cj, %i.cm
  %i.co = mul i64 %i.cn, 1099511628211
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i, i64 7
  %i.cq = load i8, ptr %i.ck, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.cr = zext i8 %i.cq to i64
  %i.cs = xor i64 %i.co, %i.cr
  %i.ct = mul i64 %i.cs, 1099511628211
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i, i64 8 ; 2 uses
  %i.cv = load i8, ptr %i.cp, align 1, !alias.scope !63351, !noalias !63354, !noundef !12
  %i.cw = zext i8 %i.cv to i64
  %i.cx = xor i64 %i.ct, %i.cw
  %i.cy = mul i64 %i.cx, 1099511628211            ; 2 uses
  %i.cz = icmp eq ptr %i.cu, %i.bd
  br i1 %i.cz, label %.loopexit.i, label %.lr.ph.i.1.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.1.i.i.prol.loopexit, %.lr.ph.i.1.i.i, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i"
  %.sroa.6.0.ph.i = phi i64 [ %.sroa.0.0.lcssa.i.i.i, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i" ], [ %.lcssa9.unr, %.lr.ph.i.1.i.i.prol.loopexit ], [ %i.cy, %.lr.ph.i.1.i.i ] ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0.val, i64 296 ; 15 uses
  %i.db = load atomic i64, ptr %i.da monotonic, align 8, !noalias !63343 ; 4 uses
  %i.dc = and i64 %i.db, 8
  %i.dd = icmp ne i64 %i.dc, 0
  %i.de = icmp ugt i64 %i.db, -17
  %or.cond.i.i = or i1 %i.de, %i.dd
  br i1 %or.cond.i.i, label %_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.thread.i, label %_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.i, !prof !167

_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.i: ; preds = %.loopexit.i
  %i.df = add nuw i64 %i.db, 16
  %i.dg = cmpxchg weak ptr %i.da, i64 %i.db, i64 %i.df acquire monotonic, align 8, !noalias !63343
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.dg, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.b, label %_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.thread.i, !prof !13

_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.thread.i: ; preds = %_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.i, %.loopexit.i
  %i.dh = tail call noundef zeroext i1 @_ZN11parking_lot10raw_rwlock9RawRwLock16lock_shared_slow17h477fbdcdd74fb222E(ptr noundef nonnull align 8 %i.da, i1 noundef zeroext false, i64 undef, i32 noundef 1000000000), !noalias !63343 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.thread.i, %_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %.0.val, i64 304 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63358)
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.val, i64 328 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !63358, !noalias !63343, !noundef !12
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %select.unfold.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63364)
  %i.dm = lshr i64 %.sroa.6.0.ph.i, 57
  %i.dn = trunc nuw nsw i64 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %.0.val, i64 312
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !63367, !noalias !63368, !noundef !12 ; 2 uses
  %i.dq = load ptr, ptr %i.di, align 8, !alias.scope !63367, !noalias !63368, !nonnull !12, !noundef !12 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.dn, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.eh, %bb.f ]
  %.pn.i.i.i = phi i64 [ %.sroa.6.0.ph.i, %bb.c ], [ %i.ei, %bb.f ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.dp ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.dr, align 1, !noalias !63371 ; 2 uses
  %i.ds = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.dt = bitcast <16 x i1> %i.ds to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.dt, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i28.i

.lr.ph.i.i28.i:                                   ; preds = %bb.d, %bb.e
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.eg, %bb.e ], [ %i.dt, %bb.d ] ; 3 uses
  %i.du = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.dv = zext nneg i16 %i.du to i64
  %i.dw = add i64 %.sroa.01.0.i.i.i.i, %i.dv
  %i.dx = and i64 %i.dw, %i.dp
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr inbounds [16 x i8], ptr %i.dq, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -16
  %.val3.i.i.i.i = load i64, ptr %i.ea, align 8, !noalias !63374, !noundef !12
  %i.eb = icmp eq i64 %.sroa.6.0.ph.i, %.val3.i.i.i.i
  br i1 %i.eb, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17hae13ca7560681e9aE.exit.i", label %bb.e, !prof !17

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.d
  %i.ec = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ed = bitcast <16 x i1> %i.ec to i16
  %i.ee = icmp eq i16 %i.ed, 0
  br i1 %i.ee, label %bb.f, label %select.unfold.i, !prof !10

bb.e:                                             ; preds = %.lr.ph.i.i28.i
  %i.ef = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.eg = and i16 %i.ef, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.eg, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i28.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.eh = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.ei = add i64 %.sroa.01.0.i.i.i.i, %i.eh
  br label %bb.d

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17hae13ca7560681e9aE.exit.i": ; preds = %.lr.ph.i.i28.i
  %i.ej = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %.val25.i = load ptr, ptr %i.ej, align 8, !noalias !63343, !nonnull !12, !noundef !12 ; 3 uses
  %i.ek = atomicrmw add ptr %.val25.i, i64 1 monotonic, align 8, !noalias !63343
  %i.el = icmp slt i64 %i.ek, 0
  br i1 %i.el, label %bb.g, label %"_ZN79_$LT$prometheus..gauge..GenericGauge$LT$P$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6b56b3381d37f211E.exit.i"

bb.g:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17hae13ca7560681e9aE.exit.i"
  tail call void @llvm.trap()
  unreachable

end_hunk_0
begin_hunk_1_@"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h22815969df5c3a16E":bb.a
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.d
  %unroll_iter = and i64 %i.g, 576460752303423486
  br label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1", %.new
  %i.i = phi i64 [ %.sroa.7.0.copyload.i, %.new ], [ %i.v, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ] ; 3 uses
  %.sroa.9.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.758.0.copyload.i.i.i.i.i.i, %.new ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.657.0.copyload.i.i.i.i.i.i, %.new ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ]
  %.sroa.725.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.556.0.copyload.i.i.i.i.i.i, %.new ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ]
  %.sroa.620.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i.i, %.new ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ]
  %.sroa.017.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.091.0.copyload.pre.i.i.i.i.i.i, %.new ], [ %.sink13.i.i.i.i.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ]
  %.sroa.06.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %.new ], [ %i.w, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1" ]
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.017.0.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %.sroa.33.0.copyload.i, i64 %.sroa.06.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val2.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !85677, !noalias !85682
  %.val1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !range !861, !alias.scope !85677, !noalias !85682, !noundef !12
  %i.l = trunc nuw i64 %.val1.i.i.i.i.i.i.i.i.i.i to i1
  %i.m = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i.i, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, i64 4, i64 2
  %.2.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.l, i64 %..i.i.i.i.i.i.i.i.i.i.i.i, i64 %.2.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.f, %bb.e
  %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ 2, %bb.e ]
  %.sink13.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.f ], [ %.sroa.620.0.i.i.i.i.i.i.i.i, %bb.e ]
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.8.0.copyload.i, %bb.f ], [ %.sroa.725.0.i.i.i.i.i.i.i.i, %bb.e ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.i, %bb.f ], [ %.sroa.8.0.i.i.i.i.i.i.i.i, %bb.e ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.f ], [ %.sroa.9.0.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.sink13.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i"
  %i.o = add i64 %i.i, 1
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %.sroa.33.0.copyload.i, i64 %.sroa.06.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.val2.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.r, align 8, !alias.scope !85677, !noalias !85682
  %.val1.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.q, align 8, !range !861, !alias.scope !85677, !noalias !85682, !noundef !12
  %i.s = trunc nuw i64 %.val1.i.i.i.i.i.i.i.i.i.i.1 to i1
  %i.t = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i.i.1, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %i.t, i64 4, i64 2
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %i.t, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %i.s, i64 %..i.i.i.i.i.i.i.i.i.i.i.i.1, i64 %.2.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.u = add i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1": ; preds = %bb.g, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i"
  %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.1, %bb.g ], [ 2, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sink13.i.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ 2, %bb.g ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i.1 = phi i64 [ %.sroa.8.0.copyload.i, %bb.g ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sink.i.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.o, %bb.g ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.u, %bb.g ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.v = add i64 %i.i, 2                          ; 2 uses
  %i.w = add nuw i64 %.sroa.06.0.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.e

.unr-lcssa:                                       ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.1"
  %i.x = and i64 %i.f, 32
  %lcmp.mod.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil", label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.d
  %.epil.init = phi i64 [ %.sroa.7.0.copyload.i, %bb.d ], [ %i.v, %.unr-lcssa ]
  %.sroa.9.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.758.0.copyload.i.i.i.i.i.i, %bb.d ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.657.0.copyload.i.i.i.i.i.i, %bb.d ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ]
  %.sroa.725.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.556.0.copyload.i.i.i.i.i.i, %bb.d ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ]
  %.sroa.620.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i.i, %bb.d ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i.1, %.unr-lcssa ]
  %.sroa.017.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.091.0.copyload.pre.i.i.i.i.i.i, %bb.d ], [ %.sink13.i.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ]
  %.sroa.06.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.d ], [ %i.w, %.unr-lcssa ]
  %lcmp.mod12 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = icmp eq i64 %.sroa.017.0.i.i.i.i.i.i.i.i.epil.init, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil", label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.sroa.33.0.copyload.i, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val2.i.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.z, align 8, !alias.scope !85677, !noalias !85682
  %.val1.i.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.y, align 8, !range !861, !alias.scope !85677, !noalias !85682, !noundef !12
  %i.aa = trunc nuw i64 %.val1.i.i.i.i.i.i.i.i.i.i.epil to i1
  %i.ab = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i.i.epil, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i.i.epil = select i1 %i.ab, i64 4, i64 2
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.epil = select i1 %i.ab, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.epil = select i1 %i.aa, i64 %..i.i.i.i.i.i.i.i.i.i.i.i.epil, i64 %.2.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.ac = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.epil.init, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil": ; preds = %.epil.preheader, %bb.h, %.unr-lcssa
  %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.h ], [ 2, %.epil.preheader ]
  %.sink13.i.i.i.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sink13.i.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ], [ 2, %bb.h ], [ %.sroa.620.0.i.i.i.i.i.i.i.i.epil.init, %.epil.preheader ]
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i.1, %.unr-lcssa ], [ %.sroa.8.0.copyload.i, %bb.h ], [ %.sroa.725.0.i.i.i.i.i.i.i.i.epil.init, %.epil.preheader ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sink.i.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ], [ %.epil.init, %bb.h ], [ %.sroa.8.0.i.i.i.i.i.i.i.i.epil.init, %.epil.preheader ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.1, %.unr-lcssa ], [ %i.ac, %bb.h ], [ %.sroa.9.0.i.i.i.i.i.i.i.i.epil.init, %.epil.preheader ]
  %i.ad = add i64 %i.g, %.sroa.7.0.copyload.i
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil", %bb.c, %._crit_edge.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i = phi i64 [ %.sroa.7.0.copyload.i, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.7.0.copyload.i, %bb.c ], [ %i.ad, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil" ] ; 6 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.758.0.copyload.i.i.i.i.i.i, %bb.c ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil" ] ; 5 uses
  %.sroa.9109.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.9109.0.copyload.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.657.0.copyload.i.i.i.i.i.i, %bb.c ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil" ] ; 5 uses
  %.sroa.8102.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.8102.0.copyload.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.556.0.copyload.i.i.i.i.i.i, %bb.c ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil" ] ; 5 uses
  %.sroa.795.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.795.0.copyload.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.i.i.i.i.i, %bb.c ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil" ] ; 5 uses
  %.sroa.091.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.091.0.copyload.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.091.0.copyload.pre.i.i.i.i.i.i, %bb.c ], [ %.sink13.i.i.i.i.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.i.i.i.i.i.epil" ] ; 5 uses
  %.sroa.795.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.8102.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.9109.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = trunc nuw i64 %i.a to i1
  br i1 %i.ae, label %bb.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17hbe81a8578cafa9b9E.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85696)
  %.not39.i.i.i.i.i.i.i = icmp eq ptr %.sroa.22.0.copyload.i, null
  br i1 %.not39.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17hbe81a8578cafa9b9E.exit.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i:                    ; preds = %bb.i
  %i.af = getelementptr i8, ptr %.sroa.22.0.copyload.i, i64 8
  %.val4.us.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !85696, !noalias !85699, !nonnull !12, !noundef !12 ; 3 uses
  %i.ag = getelementptr i8, ptr %.sroa.22.0.copyload.i, i64 16
  %.val5.us.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !85696, !noalias !85699, !noundef !12 ; 6 uses
  %i.ah = icmp eq i64 %.val5.us.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %_ZN4core4iter6traits8iterator8Iterator4fold17hbe81a8578cafa9b9E.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i
  %xtraiter14 = and i64 %.val5.us.i.i.i.i.i.i.i, 1
  %i.ai = icmp eq i64 %.val5.us.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter24 = and i64 %.val5.us.i.i.i.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1", %.preheader.i.i.i.i.i.i.i.preheader.new
  %i.aj = phi i64 [ %.sroa.6.0.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.aw, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ] ; 3 uses
  %.sroa.9.0.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ] ; 2 uses
  %.sroa.8.0.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.sroa.9109.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ]
  %.sroa.725.0.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.sroa.8102.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ]
  %.sroa.620.0.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.sroa.795.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ]
  %.sroa.017.0.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.sroa.091.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ]
  %.sroa.06.0.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.ax, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ] ; 3 uses
  %niter25 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter25.next.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1" ]
  %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = icmp eq i64 %.sroa.017.0.i.i.i.us.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %.val4.us.i.i.i.i.i.i.i, i64 %.sroa.06.0.i.i.i.us.i.i.i.i.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val2.i.i.i.i.i.us.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !85703, !noalias !85708
  %.val1.i.i.i.i.i.us.i.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !range !861, !alias.scope !85703, !noalias !85708, !noundef !12
  %i.am = trunc nuw i64 %.val1.i.i.i.i.i.us.i.i.i.i.i.i.i to i1
  %i.an = icmp eq i64 %.val2.i.i.i.i.i.us.i.i.i.i.i.i.i, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = select i1 %i.an, i64 4, i64 2
  %.2.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = select i1 %i.an, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = select i1 %i.am, i64 %..i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, i64 %.2.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.ao = add i64 %.sroa.9.0.i.i.i.us.i.i.i.i.i.i.i, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i": ; preds = %bb.j, %.preheader.i.i.i.i.i.i.i
  %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %bb.j ], [ 2, %.preheader.i.i.i.i.i.i.i ]
  %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ 2, %bb.j ], [ %.sroa.620.0.i.i.i.us.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ]
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.sroa.8.0.copyload.i, %bb.j ], [ %.sroa.725.0.i.i.i.us.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.j ], [ %.sroa.8.0.i.i.i.us.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.j ], [ %.sroa.9.0.i.i.i.us.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = icmp eq i64 %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i"
  %i.ap = add i64 %i.aj, 1
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %.val4.us.i.i.i.i.i.i.i, i64 %.sroa.06.0.i.i.i.us.i.i.i.i.i.i.i ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %.val2.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = load i64, ptr %i.as, align 8, !alias.scope !85703, !noalias !85708
  %.val1.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = load i64, ptr %i.ar, align 8, !range !861, !alias.scope !85703, !noalias !85708, !noundef !12
  %i.at = trunc nuw i64 %.val1.i.i.i.i.i.us.i.i.i.i.i.i.i.1 to i1
  %i.au = icmp eq i64 %.val2.i.i.i.i.i.us.i.i.i.i.i.i.i.1, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = select i1 %i.au, i64 4, i64 2
  %.2.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = select i1 %i.au, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = select i1 %i.at, i64 %..i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, i64 %.2.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1
  %i.av = add i64 %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1": ; preds = %bb.k, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i"
  %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %bb.k ], [ 2, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i" ] ; 3 uses
  %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = phi i64 [ 2, %bb.k ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i" ] ; 3 uses
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i.1 = phi i64 [ %.sroa.8.0.copyload.i, %bb.k ], [ %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i" ] ; 3 uses
  %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = phi i64 [ %i.ap, %bb.k ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i" ] ; 3 uses
  %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1 = phi i64 [ %i.av, %bb.k ], [ %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i" ] ; 3 uses
  %i.aw = add i64 %i.aj, 2                        ; 2 uses
  %i.ax = add nuw nsw i64 %.sroa.06.0.i.i.i.us.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter25.next.1 = add nuw nsw i64 %niter25, 2   ; 2 uses
  %niter25.ncmp.1 = icmp eq i64 %niter25.next.1, %unroll_iter24
  br i1 %niter25.ncmp.1, label %.unr-lcssa13, label %.preheader.i.i.i.i.i.i.i

.unr-lcssa13:                                     ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.1"
  %lcmp.mod17.not = icmp eq i64 %xtraiter14, 0
  br i1 %lcmp.mod17.not, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil", label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %.unr-lcssa13, %.preheader.i.i.i.i.i.i.i.preheader
  %.epil.init16 = phi i64 [ %.sroa.6.0.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.aw, %.unr-lcssa13 ]
  %.sroa.9.0.i.i.i.us.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader ], [ %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ] ; 2 uses
  %.sroa.8.0.i.i.i.us.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.9109.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ]
  %.sroa.725.0.i.i.i.us.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.8102.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader ], [ %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ]
  %.sroa.620.0.i.i.i.us.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.795.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ]
  %.sroa.017.0.i.i.i.us.i.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.091.0.copyload.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader ], [ %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ]
  %.sroa.06.0.i.i.i.us.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.ax, %.unr-lcssa13 ]
  %lcmp.mod23 = trunc i64 %.val5.us.i.i.i.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil = icmp eq i64 %.sroa.017.0.i.i.i.us.i.i.i.i.i.i.i.epil.init, 3
  br i1 %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil", label %bb.l

bb.l:                                             ; preds = %.preheader.i.i.i.i.i.i.i.epil.preheader
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %.val4.us.i.i.i.i.i.i.i, i64 %.sroa.06.0.i.i.i.us.i.i.i.i.i.i.i.epil.init ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.val2.i.i.i.i.i.us.i.i.i.i.i.i.i.epil = load i64, ptr %i.az, align 8, !alias.scope !85703, !noalias !85708
  %.val1.i.i.i.i.i.us.i.i.i.i.i.i.i.epil = load i64, ptr %i.ay, align 8, !range !861, !alias.scope !85703, !noalias !85708, !noundef !12
  %i.ba = trunc nuw i64 %.val1.i.i.i.i.i.us.i.i.i.i.i.i.i.epil to i1
  %i.bb = icmp eq i64 %.val2.i.i.i.i.i.us.i.i.i.i.i.i.i.epil, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil = select i1 %i.bb, i64 4, i64 2
  %.2.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil = select i1 %i.bb, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil = select i1 %i.ba, i64 %..i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil, i64 %.2.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil
  %i.bc = add i64 %.sroa.9.0.i.i.i.us.i.i.i.i.i.i.i.epil.init, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil": ; preds = %.preheader.i.i.i.i.i.i.i.epil.preheader, %bb.l, %.unr-lcssa13
  %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ], [ %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.epil, %bb.l ], [ 2, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ], [ 2, %bb.l ], [ %.sroa.620.0.i.i.i.us.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i.lcssa = phi i64 [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ], [ %.sroa.8.0.copyload.i, %bb.l ], [ %.sroa.725.0.i.i.i.us.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ], [ %.epil.init16, %bb.l ], [ %.sroa.8.0.i.i.i.us.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.1, %.unr-lcssa13 ], [ %i.bc, %bb.l ], [ %.sroa.9.0.i.i.i.us.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %i.bd = add i64 %.val5.us.i.i.i.i.i.i.i, %.sroa.6.0.i.i.i.i.i
  br label %_ZN4core4iter6traits8iterator8Iterator4fold17hbe81a8578cafa9b9E.exit.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator4fold17hbe81a8578cafa9b9E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil", %.lr.ph.split.us.i.i.i.i.i.i.i, %bb.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i"
  %.sroa.6.1.i.i.i.i.i = phi i64 [ %.sroa.6.0.i.i.i.i.i, %bb.i ], [ %.sroa.6.0.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %i.bd, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil" ], [ %.sroa.6.0.i.i.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.11126.0.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i.i, %bb.i ], [ %.sroa.10.0.copyload.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil" ], [ %.sroa.10.0.copyload.i.i.i.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.9125.0.i.i.i.i.i.i = phi i64 [ %.sroa.9109.0.copyload.i.i.i.i.i.i, %bb.i ], [ %.sroa.9109.0.copyload.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %.sroa.6.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil" ], [ %.sroa.9109.0.copyload.i.i.i.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.7124.0.i.i.i.i.i.i = phi i64 [ %.sroa.8102.0.copyload.i.i.i.i.i.i, %bb.i ], [ %.sroa.8102.0.copyload.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil" ], [ %.sroa.8102.0.copyload.i.i.i.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.5123.0.i.i.i.i.i.i = phi i64 [ %.sroa.795.0.copyload.i.i.i.i.i.i, %bb.i ], [ %.sroa.795.0.copyload.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i.i.us.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil" ], [ %.sroa.795.0.copyload.i.i.i.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.0122.0.i.i.i.i.i.i = phi i64 [ %.sroa.091.0.copyload.i.i.i.i.i.i, %bb.i ], [ %.sroa.091.0.copyload.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %.sink13.i.i.i.i.i.i.us.i.i.i.i.i.i.i.lcssa, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i.i.us.i.i.i.i.i.i.i.epil" ], [ %.sroa.091.0.copyload.i.i.i.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit.i.i.i.i.i.i" ] ; 4 uses
  store i64 %.sroa.0122.0.i.i.i.i.i.i, ptr %1, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.5123.0.i.i.i.i.i.i, ptr %.sroa.795.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.7124.0.i.i.i.i.i.i, ptr %.sroa.8102.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.9125.0.i.i.i.i.i.i, ptr %.sroa.9109.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.11126.0.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  %.not7.i.i.i.i.i.i = icmp eq ptr %.sroa.55.0.copyload.i, null
  br i1 %.not7.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb4635f8381aefd64E.exit.i", label %bb.m

bb.m:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17hbe81a8578cafa9b9E.exit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.be = icmp eq ptr %.sroa.55.0.copyload.i, %.sroa.6.0.copyload.i
  br i1 %i.be, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = ptrtoint ptr %.sroa.6.0.copyload.i to i64
  %i.bg = ptrtoint ptr %.sroa.55.0.copyload.i to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 5                       ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %.epil.preheader27, label %.new26

.new26:                                           ; preds = %bb.n
  %unroll_iter38 = and i64 %i.bi, 576460752303423486
  br label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1", %.new26
  %i.bk = phi i64 [ %.sroa.6.1.i.i.i.i.i, %.new26 ], [ %i.bx, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ] ; 3 uses
  %.sroa.9.0.i.i19.i.i.i.i.i.i = phi i64 [ %.sroa.11126.0.i.i.i.i.i.i, %.new26 ], [ %.sink.i.i.i.i.i.i36.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ] ; 2 uses
  %.sroa.8.0.i.i20.i.i.i.i.i.i = phi i64 [ %.sroa.9125.0.i.i.i.i.i.i, %.new26 ], [ %.sroa.6.sroa.0.0.i.i.i.i32.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ]
  %.sroa.725.0.i.i21.i.i.i.i.i.i = phi i64 [ %.sroa.7124.0.i.i.i.i.i.i, %.new26 ], [ %.sink.i.i.i.i.i35.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ]
  %.sroa.620.0.i.i22.i.i.i.i.i.i = phi i64 [ %.sroa.5123.0.i.i.i.i.i.i, %.new26 ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i34.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ]
  %.sroa.017.0.i.i23.i.i.i.i.i.i = phi i64 [ %.sroa.0122.0.i.i.i.i.i.i, %.new26 ], [ %.sink13.i.i.i.i.i33.i.i.i.i.i.i.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ]
  %.sroa.06.0.i.i24.i.i.i.i.i.i = phi i64 [ 0, %.new26 ], [ %i.by, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ] ; 3 uses
  %niter39 = phi i64 [ 0, %.new26 ], [ %niter39.next.1, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1" ]
  %.not.i.i.i.i.i.i.i25.i.i.i.i.i.i = icmp eq i64 %.sroa.017.0.i.i23.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i25.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %.sroa.55.0.copyload.i, i64 %.sroa.06.0.i.i24.i.i.i.i.i.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val2.i.i.i.i26.i.i.i.i.i.i = load i64, ptr %i.bm, align 8, !alias.scope !85725, !noalias !85730
  %.val1.i.i.i.i27.i.i.i.i.i.i = load i64, ptr %i.bl, align 8, !range !861, !alias.scope !85725, !noalias !85730, !noundef !12
  %i.bn = trunc nuw i64 %.val1.i.i.i.i27.i.i.i.i.i.i to i1
  %i.bo = icmp eq i64 %.val2.i.i.i.i26.i.i.i.i.i.i, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i28.i.i.i.i.i.i = select i1 %i.bo, i64 4, i64 2
  %.2.i.i.i.i.i.i29.i.i.i.i.i.i = select i1 %i.bo, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i30.i.i.i.i.i.i = select i1 %i.bn, i64 %..i.i.i.i.i.i28.i.i.i.i.i.i, i64 %.2.i.i.i.i.i.i29.i.i.i.i.i.i
  %i.bp = add i64 %.sroa.9.0.i.i19.i.i.i.i.i.i, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i": ; preds = %bb.p, %bb.o
  %.sroa.6.sroa.0.0.i.i.i.i32.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i30.i.i.i.i.i.i, %bb.p ], [ 2, %bb.o ]
  %.sink13.i.i.i.i.i33.i.i.i.i.i.i = phi i64 [ 2, %bb.p ], [ %.sroa.620.0.i.i22.i.i.i.i.i.i, %bb.o ]
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i34.i.i.i.i.i.i = phi i64 [ %.sroa.8.0.copyload.i, %bb.p ], [ %.sroa.725.0.i.i21.i.i.i.i.i.i, %bb.o ]
  %.sink.i.i.i.i.i35.i.i.i.i.i.i = phi i64 [ %i.bk, %bb.p ], [ %.sroa.8.0.i.i20.i.i.i.i.i.i, %bb.o ]
  %.sink.i.i.i.i.i.i36.i.i.i.i.i.i = phi i64 [ %i.bp, %bb.p ], [ %.sroa.9.0.i.i19.i.i.i.i.i.i, %bb.o ] ; 2 uses
  %.not.i.i.i.i.i.i.i25.i.i.i.i.i.i.1 = icmp eq i64 %.sink13.i.i.i.i.i33.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i25.i.i.i.i.i.i.1, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1", label %bb.q

bb.q:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i"
  %i.bq = add i64 %i.bk, 1
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %.sroa.55.0.copyload.i, i64 %.sroa.06.0.i.i24.i.i.i.i.i.i ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %.val2.i.i.i.i26.i.i.i.i.i.i.1 = load i64, ptr %i.bt, align 8, !alias.scope !85725, !noalias !85730
  %.val1.i.i.i.i27.i.i.i.i.i.i.1 = load i64, ptr %i.bs, align 8, !range !861, !alias.scope !85725, !noalias !85730, !noundef !12
  %i.bu = trunc nuw i64 %.val1.i.i.i.i27.i.i.i.i.i.i.1 to i1
  %i.bv = icmp eq i64 %.val2.i.i.i.i26.i.i.i.i.i.i.1, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i28.i.i.i.i.i.i.1 = select i1 %i.bv, i64 4, i64 2
  %.2.i.i.i.i.i.i29.i.i.i.i.i.i.1 = select i1 %i.bv, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i30.i.i.i.i.i.i.1 = select i1 %i.bu, i64 %..i.i.i.i.i.i28.i.i.i.i.i.i.1, i64 %.2.i.i.i.i.i.i29.i.i.i.i.i.i.1
  %i.bw = add i64 %.sink.i.i.i.i.i.i36.i.i.i.i.i.i, 1
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1": ; preds = %bb.q, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i"
  %.sroa.6.sroa.0.0.i.i.i.i32.i.i.i.i.i.i.1 = phi i64 [ %.sroa.0.0.i.i.i.i.i.i30.i.i.i.i.i.i.1, %bb.q ], [ 2, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i" ] ; 3 uses
  %.sink13.i.i.i.i.i33.i.i.i.i.i.i.1 = phi i64 [ 2, %bb.q ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i34.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i" ] ; 3 uses
  %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i34.i.i.i.i.i.i.1 = phi i64 [ %.sroa.8.0.copyload.i, %bb.q ], [ %.sink.i.i.i.i.i35.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i" ] ; 3 uses
  %.sink.i.i.i.i.i35.i.i.i.i.i.i.1 = phi i64 [ %i.bq, %bb.q ], [ %.sroa.6.sroa.0.0.i.i.i.i32.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i" ] ; 3 uses
  %.sink.i.i.i.i.i.i36.i.i.i.i.i.i.1 = phi i64 [ %i.bw, %bb.q ], [ %.sink.i.i.i.i.i.i36.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i" ] ; 3 uses
  %i.bx = add i64 %i.bk, 2                        ; 2 uses
  %i.by = add nuw i64 %.sroa.06.0.i.i24.i.i.i.i.i.i, 2 ; 2 uses
  %niter39.next.1 = add i64 %niter39, 2           ; 2 uses
  %niter39.ncmp.1 = icmp eq i64 %niter39.next.1, %unroll_iter38
  br i1 %niter39.ncmp.1, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa", label %bb.o

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa": ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hc9d333e66b445010E.exit.i.i31.i.i.i.i.i.i.1"
  %i.bz = and i64 %i.bh, 32
  %lcmp.mod31.not = icmp eq i64 %i.bz, 0
  br i1 %lcmp.mod31.not, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i", label %.epil.preheader27

.epil.preheader27:                                ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa", %bb.n
  %.epil.init30 = phi i64 [ %.sroa.6.1.i.i.i.i.i, %bb.n ], [ %i.bx, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.9.0.i.i19.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.11126.0.i.i.i.i.i.i, %bb.n ], [ %.sink.i.i.i.i.i.i36.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ] ; 2 uses
  %.sroa.8.0.i.i20.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.9125.0.i.i.i.i.i.i, %bb.n ], [ %.sroa.6.sroa.0.0.i.i.i.i32.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.725.0.i.i21.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.7124.0.i.i.i.i.i.i, %bb.n ], [ %.sink.i.i.i.i.i35.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.620.0.i.i22.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.5123.0.i.i.i.i.i.i, %bb.n ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i34.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.017.0.i.i23.i.i.i.i.i.i.epil.init = phi i64 [ %.sroa.0122.0.i.i.i.i.i.i, %bb.n ], [ %.sink13.i.i.i.i.i33.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.06.0.i.i24.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.n ], [ %i.by, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ]
  %lcmp.mod37 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %.not.i.i.i.i.i.i.i25.i.i.i.i.i.i.epil = icmp eq i64 %.sroa.017.0.i.i23.i.i.i.i.i.i.epil.init, 3
  br i1 %.not.i.i.i.i.i.i.i25.i.i.i.i.i.i.epil, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %.epil.preheader27
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %.sroa.55.0.copyload.i, i64 %.sroa.06.0.i.i24.i.i.i.i.i.i.epil.init ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.val2.i.i.i.i26.i.i.i.i.i.i.epil = load i64, ptr %i.cb, align 8, !alias.scope !85725, !noalias !85730
  %.val1.i.i.i.i27.i.i.i.i.i.i.epil = load i64, ptr %i.ca, align 8, !range !861, !alias.scope !85725, !noalias !85730, !noundef !12
  %i.cc = trunc nuw i64 %.val1.i.i.i.i27.i.i.i.i.i.i.epil to i1
  %i.cd = icmp eq i64 %.val2.i.i.i.i26.i.i.i.i.i.i.epil, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i28.i.i.i.i.i.i.epil = select i1 %i.cd, i64 4, i64 2
  %.2.i.i.i.i.i.i29.i.i.i.i.i.i.epil = select i1 %i.cd, i64 3, i64 1
  %.sroa.0.0.i.i.i.i.i.i30.i.i.i.i.i.i.epil = select i1 %i.cc, i64 %..i.i.i.i.i.i28.i.i.i.i.i.i.epil, i64 %.2.i.i.i.i.i.i29.i.i.i.i.i.i.epil
  %i.ce = add i64 %.sroa.9.0.i.i19.i.i.i.i.i.i.epil.init, 1
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i": ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa", %bb.r, %.epil.preheader27, %bb.m
  %.sroa.870.0.i.i.i.i.i.i = phi i64 [ %.sroa.11126.0.i.i.i.i.i.i, %bb.m ], [ %.sink.i.i.i.i.i.i36.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ], [ %i.ce, %bb.r ], [ %.sroa.9.0.i.i19.i.i.i.i.i.i.epil.init, %.epil.preheader27 ]
  %.sroa.767.0.i.i.i.i.i.i = phi i64 [ %.sroa.9125.0.i.i.i.i.i.i, %bb.m ], [ %.sroa.6.sroa.0.0.i.i.i.i32.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i.i.i.i.i30.i.i.i.i.i.i.epil, %bb.r ], [ 2, %.epil.preheader27 ]
  %.sroa.664.0.i.i.i.i.i.i = phi i64 [ %.sroa.7124.0.i.i.i.i.i.i, %bb.m ], [ %.sink.i.i.i.i.i35.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ], [ %.epil.init30, %bb.r ], [ %.sroa.8.0.i.i20.i.i.i.i.i.i.epil.init, %.epil.preheader27 ]
  %.sroa.561.0.i.i.i.i.i.i = phi i64 [ %.sroa.5123.0.i.i.i.i.i.i, %bb.m ], [ %.8.val.sink.i.in.i.sroa.speculated.in.i.sroa.speculated.i.i34.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ], [ %.sroa.8.0.copyload.i, %bb.r ], [ %.sroa.725.0.i.i21.i.i.i.i.i.i.epil.init, %.epil.preheader27 ]
  %.sroa.059.0.i.i.i.i.i.i = phi i64 [ %.sroa.0122.0.i.i.i.i.i.i, %bb.m ], [ %.sink13.i.i.i.i.i33.i.i.i.i.i.i.1, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i.loopexit.unr-lcssa" ], [ 2, %bb.r ], [ %.sroa.620.0.i.i22.i.i.i.i.i.i.epil.init, %.epil.preheader27 ]
  store i64 %.sroa.059.0.i.i.i.i.i.i, ptr %1, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.561.0.i.i.i.i.i.i, ptr %.sroa.795.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.664.0.i.i.i.i.i.i, ptr %.sroa.8102.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.767.0.i.i.i.i.i.i, ptr %.sroa.9109.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  store i64 %.sroa.870.0.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85668, !noalias !85669
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb4635f8381aefd64E.exit.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb4635f8381aefd64E.exit.i": ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h8f7b6898e7c309acE.exit41.i.i.i.i.i.i", %_ZN4core4iter6traits8iterator8Iterator4fold17hbe81a8578cafa9b9E.exit.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !85744, !noalias !85745
  br label %"_ZN6either8iterator96_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$either..Either$LT$L$C$R$GT$$GT$4fold17hfe543770b60896f4E.exit"

bb.s:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !alias.scope !85638, !noalias !85642 ; 9 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !85638, !noalias !85642 ; 5 uses
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !85638, !noalias !85642 ; 4 uses
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !85638, !noalias !85642 ; 6 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.sroa.5.0.copyload.i = load i56, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !85638, !noalias !85642
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85749)
  %.sroa.07.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !85751, !noalias !85752 ; 3 uses
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.610.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !alias.scope !85751, !noalias !85752 ; 3 uses
  %.sroa.715.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.715.0.copyload.i.i = load i64, ptr %.sroa.715.0..sroa_idx.i.i, align 8, !alias.scope !85751, !noalias !85752 ; 2 uses
  %.sroa.8.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.0.copyload.i2.i = load i64, ptr %.sroa.8.0..sroa_idx.i1.i, align 8, !alias.scope !85751, !noalias !85752 ; 3 uses
  %.sroa.9.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_1
begin_hunk_2_@"_ZN11meilisearch6routes7metrics11get_metrics28_$u7b$$u7b$closure$u7d$$u7d$17he58946bb0c73bfddE":bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !144219)
  %i.lk = icmp eq i64 %.sroa.994.sroa.9.0.copyload746, 0
  br i1 %i.lk, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he070b9e754e8e013E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he070b9e754e8e013E.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he070b9e754e8e013E.exit": ; preds = %bb.bx
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.994.sroa.8.0.copyload744, i64 1264
  store ptr %i.ll, ptr %i.li, align 8, !alias.scope !144219, !noalias !144222
  %.sroa.0127.0.copyload128 = load i64, ptr %.sroa.994.sroa.8.0.copyload744, align 8, !noalias !144219 ; 2 uses
  %.sroa.7129.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %.sroa.994.sroa.8.0.copyload744, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1256) %.sroa.7129, ptr noundef nonnull align 8 dereferenceable(1256) %.sroa.7129.0..sroa_idx130, i64 1256, i1 false), !noalias !144219
  %.not44 = icmp eq i64 %.sroa.0127.0.copyload128, 2
  br i1 %.not44, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he070b9e754e8e013E.exit.thread", label %bb.by

bb.by:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he070b9e754e8e013E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store i64 %.sroa.0127.0.copyload128, ptr %i.bx, align 8
  %.sroa.7129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1256) %.sroa.7129.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1256) %.sroa.7129, i64 1256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bx, i64 1256
  %.val353 = load i32, ptr %i.lm, align 8, !noundef !12
  invoke fastcc void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hbe55421859b2d365E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bw, i32 %.val353)
          to label %bb.bz unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit468"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he070b9e754e8e013E.exit.thread": ; preds = %bb.bx, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit475", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he070b9e754e8e013E.exit"
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$meilisearch_types..batches..Batch$GT$$GT$17haf5d55397e04389cE"(ptr noalias noundef align 8 dereferenceable(32) %i.by)
          to label %bb.el unwind label %bb.ek

bb.bz:                                            ; preds = %bb.by
  %i.ln = getelementptr inbounds nuw i8, ptr %i.bx, i64 1120
  %i.lo = load i64, ptr %i.ln, align 8, !range !186, !noundef !12 ; 2 uses
  %.not45 = icmp eq i64 %i.lo, -9223372036854775808
  br i1 %.not45, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2880ef1029728fcE.exit.thread", %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !144224)
  call void @llvm.experimental.noalias.scope.decl(metadata !144227)
  %.val.i.i = load i64, ptr %i.bw, align 8, !alias.scope !144230 ; 2 uses
  %i.lp = icmp eq i64 %.val.i.i, 0
  br i1 %i.lp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit", label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lq = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.val1.i.i = load ptr, ptr %i.lq, align 8, !alias.scope !144230, !nonnull !12, !noundef !12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !144230
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit"

bb.cc:                                            ; preds = %bb.bz
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 1128
  %.sroa.5142.0.copyload = load ptr, ptr %.sroa.5142.0..sroa_idx, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 1136
  %.sroa.6143.0.copyload = load i64, ptr %.sroa.6143.0..sroa_idx, align 8 ; 3 uses
  %i.lr = icmp ult i64 %.sroa.6143.0.copyload, 288230376151711744
  call void @llvm.assume(i1 %i.lr)
  %.idx667 = shl nuw nsw i64 %.sroa.6143.0.copyload, 5
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.5142.0.copyload, i64 %.idx667 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr %.sroa.5142.0.copyload, ptr %i.bv, align 8
  %.sroa.5135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 6 uses
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %i.lo, ptr %.sroa.6136.0..sroa_idx, align 8
  %.sroa.7137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %i.ls, ptr %.sroa.7137.0..sroa_idx, align 8
  %i.lt = icmp eq i64 %.sroa.6143.0.copyload, 0
  br i1 %i.lt, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2880ef1029728fcE.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2880ef1029728fcE.exit.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2880ef1029728fcE.exit.lr.ph": ; preds = %bb.cc
  %i.lu = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.lw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.lz = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.614.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2880ef1029728fcE.exit"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h1b41c414718aaac8E.exit465": ; preds = %bb.du, %bb.dt, %bb.dt
  call fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$milli..progress..ProgressStepView$GT$$GT$17hf0b7dc543a251a3aE"(ptr noalias noundef align 8 dereferenceable(32) %i.bv) #86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.experimental.noalias.scope.decl(metadata !144231)
  call void @llvm.experimental.noalias.scope.decl(metadata !144234)
  %.val.i.i466 = load i64, ptr %i.bw, align 8, !alias.scope !144237 ; 2 uses
  %i.ma = icmp eq i64 %.val.i.i466, 0
  br i1 %i.ma, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit468.thread", label %bb.dv

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2880ef1029728fcE.exit": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2880ef1029728fcE.exit.lr.ph", %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h1b41c414718aaac8E.exit"
  %i.mb = phi ptr [ %.sroa.5142.0.copyload, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2880ef1029728fcE.exit.lr.ph" ], [ %i.mc, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h1b41c414718aaac8E.exit" ] ; 6 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 32 ; 8 uses
  %.sroa.0145.0.copyload = load i64, ptr %i.mb, align 8, !noalias !144238 ; 5 uses
  %.sroa.8147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %.sroa.8147.sroa.0.0.copyload = load ptr, ptr %.sroa.8147.0..sroa_idx, align 8, !noalias !144238 ; 8 uses
  %.sroa.8147.sroa.6.0..sroa.8147.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %.sroa.8147.sroa.6.0.copyload = load i64, ptr %.sroa.8147.sroa.6.0..sroa.8147.0..sroa_idx.sroa_idx, align 8, !noalias !144238 ; 5 uses
  %.sroa.8149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %.sroa.8149.0.copyload = load i32, ptr %.sroa.8149.0..sroa_idx, align 8, !noalias !144238
  %.sroa.9150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mb, i64 28
  %.sroa.9150.0.copyload = load i32, ptr %.sroa.9150.0..sroa_idx, align 4, !noalias !144238
  %.not46 = icmp eq i64 %.sroa.0145.0.copyload, -9223372036854775807
  br i1 %.not46, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2880ef1029728fcE.exit.thread", label %bb.cd

bb.cd:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2880ef1029728fcE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %i.md = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN106_$LT$meilisearch..metrics..MEILISEARCH_BATCH_RUNNING_PROGRESS_TRACE$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hcf626309a392fe4dE", i64 8) acquire, align 8 ; 2 uses
  %i.me = icmp ult i8 %i.md, 4
  call void @llvm.assume(i1 %i.me)
  %.not.i.i449 = icmp eq i8 %i.md, 2
  br i1 %.not.i.i449, label %bb.cg, label %bb.ce, !prof !17

bb.ce:                                            ; preds = %bb.cd
  %i.mf = invoke fastcc noundef align 8 dereferenceable(8) ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h228953cde8319492E"()
          to label %bb.cg unwind label %bb.cf

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2880ef1029728fcE.exit.thread": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2880ef1029728fcE.exit", %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h1b41c414718aaac8E.exit", %bb.cc
  %i.mg = phi ptr [ %.sroa.5142.0.copyload, %bb.cc ], [ %i.mc, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2880ef1029728fcE.exit" ], [ %i.ls, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h1b41c414718aaac8E.exit" ]
  store ptr %i.mg, ptr %.sroa.5135.0..sroa_idx, align 8
  call fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$milli..progress..ProgressStepView$GT$$GT$17hf0b7dc543a251a3aE"(ptr noalias noundef align 8 dereferenceable(32) %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.ca

bb.cf:                                            ; preds = %bb.ce
  %i.mh = landingpad { ptr, i32 }
          cleanup
  store ptr %i.mc, ptr %.sroa.5135.0..sroa_idx, align 8
  br label %bb.dt

bb.cg:                                            ; preds = %bb.cd, %bb.ce
  %.sroa.0.0.i.i450 = phi ptr [ @"_ZN106_$LT$meilisearch..metrics..MEILISEARCH_BATCH_RUNNING_PROGRESS_TRACE$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hcf626309a392fe4dE", %bb.cd ], [ %i.mf, %bb.ce ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %.val269 = load ptr, ptr %i.lu, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %.val270 = load i64, ptr %i.lv, align 8, !noundef !12 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8147.sroa.0.0.copyload) ]
  store ptr %.val269, ptr %i.bt, align 8
  store i64 %.val270, ptr %i.lw, align 8
  store ptr %.sroa.8147.sroa.0.0.copyload, ptr %i.lx, align 8
  store i64 %.sroa.8147.sroa.6.0.copyload, ptr %i.ly, align 8
  %.val354 = load ptr, ptr %.sroa.0.0.i.i450, align 8, !nonnull !12, !noundef !12 ; 10 uses
  %i.mi = getelementptr i8, ptr %.val354, i64 104
  %.val24.i.i = load i64, ptr %i.mi, align 8, !noalias !144241, !noundef !12 ; 3 uses
  %i.mj = icmp ult i64 %.val24.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.mj)
  %.not.i.i.i = icmp eq i64 %.val24.i.i, 2
  br i1 %.not.i.i.i, label %.preheader.preheader.i.i.i, label %"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$28get_metric_with_label_values17h2a8522474d0f4714E.exit.thread6.i"

.preheader.preheader.i.i.i:                       ; preds = %bb.cg
  %i.mk = icmp samesign eq i64 %.val270, 0
  br i1 %i.mk, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.i", label %.lr.ph.i.i.i.i453.preheader

.lr.ph.i.i.i.i453.preheader:                      ; preds = %.preheader.preheader.i.i.i
  %xtraiter1076 = and i64 %.val270, 7             ; 3 uses
  %i.ml = icmp ult i64 %.val270, 8
  br i1 %i.ml, label %.lr.ph.i.i.i.i453.epil.preheader, label %.lr.ph.i.i.i.i453.preheader.new

.lr.ph.i.i.i.i453.preheader.new:                  ; preds = %.lr.ph.i.i.i.i453.preheader
  %unroll_iter = and i64 %.val270, -8
  br label %.lr.ph.i.i.i.i453

.lr.ph.i.i.i.i453:                                ; preds = %.lr.ph.i.i.i.i453, %.lr.ph.i.i.i.i453.preheader.new
  %.sroa.0.06.i.i.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.i453.preheader.new ], [ %i.nz, %.lr.ph.i.i.i.i453 ]
  %.sroa.04.05.i.i.i.i = phi ptr [ %.val269, %.lr.ph.i.i.i.i453.preheader.new ], [ %i.nv, %.lr.ph.i.i.i.i453 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i453.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i453 ]
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 1
  %i.mn = load i8, ptr %.sroa.04.05.i.i.i.i, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.mo = zext i8 %i.mn to i64
  %i.mp = xor i64 %.sroa.0.06.i.i.i.i, %i.mo
  %i.mq = mul i64 %i.mp, 1099511628211
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 2
  %i.ms = load i8, ptr %i.mm, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.mt = zext i8 %i.ms to i64
  %i.mu = xor i64 %i.mq, %i.mt
  %i.mv = mul i64 %i.mu, 1099511628211
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 3
  %i.mx = load i8, ptr %i.mr, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.my = zext i8 %i.mx to i64
  %i.mz = xor i64 %i.mv, %i.my
  %i.na = mul i64 %i.mz, 1099511628211
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 4
  %i.nc = load i8, ptr %i.mw, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.nd = zext i8 %i.nc to i64
  %i.ne = xor i64 %i.na, %i.nd
  %i.nf = mul i64 %i.ne, 1099511628211
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 5
  %i.nh = load i8, ptr %i.nb, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.ni = zext i8 %i.nh to i64
  %i.nj = xor i64 %i.nf, %i.ni
  %i.nk = mul i64 %i.nj, 1099511628211
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 6
  %i.nm = load i8, ptr %i.ng, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.nn = zext i8 %i.nm to i64
  %i.no = xor i64 %i.nk, %i.nn
  %i.np = mul i64 %i.no, 1099511628211
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 7
  %i.nr = load i8, ptr %i.nl, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.ns = zext i8 %i.nr to i64
  %i.nt = xor i64 %i.np, %i.ns
  %i.nu = mul i64 %i.nt, 1099511628211
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 8 ; 2 uses
  %i.nw = load i8, ptr %i.nq, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.nx = zext i8 %i.nw to i64
  %i.ny = xor i64 %i.nu, %i.nx
  %i.nz = mul i64 %i.ny, 1099511628211            ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.i.loopexit.unr-lcssa", label %.lr.ph.i.i.i.i453

"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.i.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i.i.i453
  %lcmp.mod1077.not = icmp eq i64 %xtraiter1076, 0
  br i1 %lcmp.mod1077.not, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.i", label %.lr.ph.i.i.i.i453.epil.preheader

.lr.ph.i.i.i.i453.epil.preheader:                 ; preds = %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i453.preheader
  %.sroa.0.06.i.i.i.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.i453.preheader ], [ %i.nz, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.i.loopexit.unr-lcssa" ]
  %.sroa.04.05.i.i.i.i.epil.init = phi ptr [ %.val269, %.lr.ph.i.i.i.i453.preheader ], [ %i.nv, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.i.loopexit.unr-lcssa" ]
  %lcmp.mod1079 = icmp ne i64 %xtraiter1076, 0
  call void @llvm.assume(i1 %lcmp.mod1079)
  br label %.lr.ph.i.i.i.i453.epil

.lr.ph.i.i.i.i453.epil:                           ; preds = %.lr.ph.i.i.i.i453.epil, %.lr.ph.i.i.i.i453.epil.preheader
  %.sroa.0.06.i.i.i.i.epil = phi i64 [ %i.oe, %.lr.ph.i.i.i.i453.epil ], [ %.sroa.0.06.i.i.i.i.epil.init, %.lr.ph.i.i.i.i453.epil.preheader ]
  %.sroa.04.05.i.i.i.i.epil = phi ptr [ %i.oa, %.lr.ph.i.i.i.i453.epil ], [ %.sroa.04.05.i.i.i.i.epil.init, %.lr.ph.i.i.i.i453.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i453.epil ], [ 0, %.lr.ph.i.i.i.i453.epil.preheader ]
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.epil, i64 1
  %i.ob = load i8, ptr %.sroa.04.05.i.i.i.i.epil, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.oc = zext i8 %i.ob to i64
  %i.od = xor i64 %.sroa.0.06.i.i.i.i.epil, %i.oc
  %i.oe = mul i64 %i.od, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1076
  br i1 %epil.iter.cmp.not, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.i", label %.lr.ph.i.i.i.i453.epil, !llvm.loop !144255

"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.i": ; preds = %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i453.epil, %.preheader.preheader.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ -3750763034362895579, %.preheader.preheader.i.i.i ], [ %i.nz, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.i.loopexit.unr-lcssa" ], [ %i.oe, %.lr.ph.i.i.i.i453.epil ] ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.8147.sroa.0.0.copyload, i64 %.sroa.8147.sroa.6.0.copyload
  %i.og = icmp samesign eq i64 %.sroa.8147.sroa.6.0.copyload, 0
  br i1 %i.og, label %.loopexit.i.i, label %.lr.ph.i.1.i.i.i.preheader

.lr.ph.i.1.i.i.i.preheader:                       ; preds = %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.i"
  %xtraiter1080 = and i64 %.sroa.8147.sroa.6.0.copyload, 7 ; 2 uses
  %lcmp.mod1081.not = icmp eq i64 %xtraiter1080, 0
  br i1 %lcmp.mod1081.not, label %.lr.ph.i.1.i.i.i.prol.loopexit, label %.lr.ph.i.1.i.i.i.prol

.lr.ph.i.1.i.i.i.prol:                            ; preds = %.lr.ph.i.1.i.i.i.preheader, %.lr.ph.i.1.i.i.i.prol
  %.sroa.0.06.i.1.i.i.i.prol = phi i64 [ %i.ol, %.lr.ph.i.1.i.i.i.prol ], [ %.sroa.0.0.lcssa.i.i.i.i, %.lr.ph.i.1.i.i.i.preheader ]
  %.sroa.04.05.i.1.i.i.i.prol = phi ptr [ %i.oh, %.lr.ph.i.1.i.i.i.prol ], [ %.sroa.8147.sroa.0.0.copyload, %.lr.ph.i.1.i.i.i.preheader ] ; 2 uses
  %prol.iter1082 = phi i64 [ %prol.iter1082.next, %.lr.ph.i.1.i.i.i.prol ], [ 0, %.lr.ph.i.1.i.i.i.preheader ]
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i.i.prol, i64 1 ; 2 uses
  %i.oi = load i8, ptr %.sroa.04.05.i.1.i.i.i.prol, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.oj = zext i8 %i.oi to i64
  %i.ok = xor i64 %.sroa.0.06.i.1.i.i.i.prol, %i.oj
  %i.ol = mul i64 %i.ok, 1099511628211            ; 3 uses
  %prol.iter1082.next = add i64 %prol.iter1082, 1 ; 2 uses
  %prol.iter1082.cmp.not = icmp eq i64 %prol.iter1082.next, %xtraiter1080
  br i1 %prol.iter1082.cmp.not, label %.lr.ph.i.1.i.i.i.prol.loopexit, label %.lr.ph.i.1.i.i.i.prol, !llvm.loop !144256

.lr.ph.i.1.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.1.i.i.i.prol, %.lr.ph.i.1.i.i.i.preheader
  %.lcssa998.unr = phi i64 [ poison, %.lr.ph.i.1.i.i.i.preheader ], [ %i.ol, %.lr.ph.i.1.i.i.i.prol ]
  %.sroa.0.06.i.1.i.i.i.unr = phi i64 [ %.sroa.0.0.lcssa.i.i.i.i, %.lr.ph.i.1.i.i.i.preheader ], [ %i.ol, %.lr.ph.i.1.i.i.i.prol ]
  %.sroa.04.05.i.1.i.i.i.unr = phi ptr [ %.sroa.8147.sroa.0.0.copyload, %.lr.ph.i.1.i.i.i.preheader ], [ %i.oh, %.lr.ph.i.1.i.i.i.prol ]
  %i.om = icmp ult i64 %.sroa.8147.sroa.6.0.copyload, 8
  br i1 %i.om, label %.loopexit.i.i, label %.lr.ph.i.1.i.i.i

.lr.ph.i.1.i.i.i:                                 ; preds = %.lr.ph.i.1.i.i.i.prol.loopexit, %.lr.ph.i.1.i.i.i
  %.sroa.0.06.i.1.i.i.i = phi i64 [ %i.qa, %.lr.ph.i.1.i.i.i ], [ %.sroa.0.06.i.1.i.i.i.unr, %.lr.ph.i.1.i.i.i.prol.loopexit ]
  %.sroa.04.05.i.1.i.i.i = phi ptr [ %i.pw, %.lr.ph.i.1.i.i.i ], [ %.sroa.04.05.i.1.i.i.i.unr, %.lr.ph.i.1.i.i.i.prol.loopexit ] ; 9 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i.i, i64 1
  %i.oo = load i8, ptr %.sroa.04.05.i.1.i.i.i, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.op = zext i8 %i.oo to i64
  %i.oq = xor i64 %.sroa.0.06.i.1.i.i.i, %i.op
  %i.or = mul i64 %i.oq, 1099511628211
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i.i, i64 2
  %i.ot = load i8, ptr %i.on, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.ou = zext i8 %i.ot to i64
  %i.ov = xor i64 %i.or, %i.ou
  %i.ow = mul i64 %i.ov, 1099511628211
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i.i, i64 3
  %i.oy = load i8, ptr %i.os, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.oz = zext i8 %i.oy to i64
  %i.pa = xor i64 %i.ow, %i.oz
  %i.pb = mul i64 %i.pa, 1099511628211
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i.i, i64 4
  %i.pd = load i8, ptr %i.ox, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.pe = zext i8 %i.pd to i64
  %i.pf = xor i64 %i.pb, %i.pe
  %i.pg = mul i64 %i.pf, 1099511628211
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i.i, i64 5
  %i.pi = load i8, ptr %i.pc, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.pj = zext i8 %i.pi to i64
  %i.pk = xor i64 %i.pg, %i.pj
  %i.pl = mul i64 %i.pk, 1099511628211
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i.i, i64 6
  %i.pn = load i8, ptr %i.ph, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.po = zext i8 %i.pn to i64
  %i.pp = xor i64 %i.pl, %i.po
  %i.pq = mul i64 %i.pp, 1099511628211
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i.i, i64 7
  %i.ps = load i8, ptr %i.pm, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.pt = zext i8 %i.ps to i64
  %i.pu = xor i64 %i.pq, %i.pt
  %i.pv = mul i64 %i.pu, 1099511628211
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.1.i.i.i, i64 8 ; 2 uses
  %i.px = load i8, ptr %i.pr, align 1, !alias.scope !144247, !noalias !144250, !noundef !12
  %i.py = zext i8 %i.px to i64
  %i.pz = xor i64 %i.pv, %i.py
  %i.qa = mul i64 %i.pz, 1099511628211            ; 2 uses
  %i.qb = icmp eq ptr %i.pw, %i.of
  br i1 %i.qb, label %.loopexit.i.i, label %.lr.ph.i.1.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.1.i.i.i.prol.loopexit, %.lr.ph.i.1.i.i.i, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.i"
  %.sroa.6.0.ph.i.i = phi i64 [ %.sroa.0.0.lcssa.i.i.i.i, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i.i" ], [ %.lcssa998.unr, %.lr.ph.i.1.i.i.i.prol.loopexit ], [ %i.qa, %.lr.ph.i.1.i.i.i ] ; 10 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.val354, i64 296 ; 14 uses
  %i.qd = load atomic i64, ptr %i.qc monotonic, align 8, !noalias !144241 ; 4 uses
  %i.qe = and i64 %i.qd, 8
  %i.qf = icmp ne i64 %i.qe, 0
  %i.qg = icmp ugt i64 %i.qd, -17
  %or.cond.i.i.i = or i1 %i.qg, %i.qf
  br i1 %or.cond.i.i.i, label %_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.thread.i.i, label %_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.i.i, !prof !167

_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.i.i: ; preds = %.loopexit.i.i
  %i.qh = add nuw i64 %i.qd, 16
  %i.qi = cmpxchg weak ptr %i.qc, i64 %i.qd, i64 %i.qh acquire monotonic, align 8, !noalias !144241
  %.sroa.18.0.in.i.i.i454 = extractvalue { i64, i1 } %i.qi, 1
  br i1 %.sroa.18.0.in.i.i.i454, label %.noexc459, label %_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.thread.i.i, !prof !13

_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.thread.i.i: ; preds = %_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.i.i, %.loopexit.i.i
  %i.qj = invoke noundef zeroext i1 @_ZN11parking_lot10raw_rwlock9RawRwLock16lock_shared_slow17h477fbdcdd74fb222E(ptr noundef nonnull align 8 %i.qc, i1 noundef zeroext false, i64 undef, i32 noundef 1000000000)
          to label %.noexc459 unwind label %bb.dp ; 0 uses

.noexc459:                                        ; preds = %_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.thread.i.i, %_ZN11parking_lot10raw_rwlock9RawRwLock20try_lock_shared_fast17h295fdc0b52e2d4ceE.exit.i.i
  %i.qk = getelementptr inbounds nuw i8, ptr %.val354, i64 304 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !144257)
  %i.ql = getelementptr inbounds nuw i8, ptr %.val354, i64 328 ; 2 uses
  %i.qm = load i64, ptr %i.ql, align 8, !alias.scope !144257, !noalias !144241, !noundef !12
  %i.qn = icmp eq i64 %i.qm, 0
  br i1 %i.qn, label %select.unfold.i.i, label %bb.ch

bb.ch:                                            ; preds = %.noexc459
  call void @llvm.experimental.noalias.scope.decl(metadata !144260)
  call void @llvm.experimental.noalias.scope.decl(metadata !144263)
  %i.qo = lshr i64 %.sroa.6.0.ph.i.i, 57
  %i.qp = trunc nuw nsw i64 %i.qo to i8
  %i.qq = getelementptr inbounds nuw i8, ptr %.val354, i64 312
  %i.qr = load i64, ptr %i.qq, align 8, !alias.scope !144266, !noalias !144267, !noundef !12 ; 2 uses
  %i.qs = load ptr, ptr %i.qk, align 8, !alias.scope !144266, !noalias !144267, !nonnull !12, !noundef !12 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.qp, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ck, %bb.ch
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.ch ], [ %i.rj, %bb.ck ]
  %.pn.i.i.i.i = phi i64 [ %.sroa.6.0.ph.i.i, %bb.ch ], [ %i.rk, %bb.ck ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.qr ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.qt, align 1, !noalias !144270 ; 2 uses
  %i.qu = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i
  %i.qv = bitcast <16 x i1> %i.qu to i16          ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.qv, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i28.i.i

.lr.ph.i.i28.i.i:                                 ; preds = %bb.ci, %bb.cj
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.ri, %bb.cj ], [ %i.qv, %bb.ci ] ; 3 uses
  %i.qw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.qx = zext nneg i16 %i.qw to i64
  %i.qy = add i64 %.sroa.01.0.i.i.i.i.i, %i.qx
  %i.qz = and i64 %i.qy, %i.qr
  %i.ra = sub nsw i64 0, %i.qz
  %i.rb = getelementptr inbounds [16 x i8], ptr %i.qs, i64 %i.ra ; 2 uses
  %i.rc = getelementptr inbounds i8, ptr %i.rb, i64 -16
  %.val3.i.i.i.i.i455 = load i64, ptr %i.rc, align 8, !noalias !144273, !noundef !12
  %i.rd = icmp eq i64 %.sroa.6.0.ph.i.i, %.val3.i.i.i.i.i455
  br i1 %i.rd, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17hd8f2cc9f599d46f4E.exit.i.i", label %bb.cj, !prof !17

._crit_edge.i.i.i.i:                              ; preds = %bb.cj, %bb.ci
  %i.re = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.rf = bitcast <16 x i1> %i.re to i16
  %i.rg = icmp eq i16 %i.rf, 0
  br i1 %i.rg, label %bb.ck, label %select.unfold.i.i, !prof !10

bb.cj:                                            ; preds = %.lr.ph.i.i28.i.i
  %i.rh = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.ri = and i16 %i.rh, %.sroa.06.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ri, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i28.i.i

bb.ck:                                            ; preds = %._crit_edge.i.i.i.i
  %i.rj = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.rk = add i64 %.sroa.01.0.i.i.i.i.i, %i.rj
  br label %bb.ci

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17hd8f2cc9f599d46f4E.exit.i.i": ; preds = %.lr.ph.i.i28.i.i
  %i.rl = getelementptr inbounds i8, ptr %i.rb, i64 -8
  %.val26.i.i = load ptr, ptr %i.rl, align 8, !noalias !144241, !nonnull !12, !noundef !12 ; 3 uses
  %i.rm = atomicrmw add ptr %.val26.i.i, i64 1 monotonic, align 8, !noalias !144241
  %i.rn = icmp slt i64 %i.rm, 0
  br i1 %i.rn, label %bb.cl, label %"_ZN79_$LT$prometheus..gauge..GenericGauge$LT$P$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1e38363fab92d934E.exit.i.i"

bb.cl:                                            ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17hd8f2cc9f599d46f4E.exit.i.i"
  call void @llvm.trap()
  unreachable

select.unfold.i.i:                                ; preds = %._crit_edge.i.i.i.i, %.noexc459
  %i.ro = atomicrmw sub ptr %i.qc, i64 16 release, align 8, !noalias !144241
  %i.rp = and i64 %i.ro, -14
  %i.rq = icmp eq i64 %i.rp, 18
end_hunk_2
begin_hunk_3_@_ZN4core5slice4sort6stable9quicksort9quicksort17hfa154a1aa37b8573E:bb.a
  %lcmp.mod345.not = icmp eq i64 %xtraiter344, 0
  br i1 %lcmp.mod345.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4cbca0fdd1b13f6bE.exit, label %.epil.preheader337

.epil.preheader337:                               ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4cbca0fdd1b13f6bE.exit.unr-lcssa, %.lr.ph16.i53
  %.sroa.04.014.i54.epil.init = phi i64 [ 0, %.lr.ph16.i53 ], [ %i.hg, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4cbca0fdd1b13f6bE.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod346 = trunc i64 %i.ha to i1
  call void @llvm.assume(i1 %lcmp.mod346)
  %i.hl = xor i64 %.sroa.04.014.i54.epil.init, -1
  %i.hm = getelementptr [48 x i8], ptr %i.gc, i64 %i.hl
  %i.hn = getelementptr [48 x i8], ptr %i.hb, i64 %.sroa.04.014.i54.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hn, ptr noundef nonnull align 8 dereferenceable(48) %i.hm, i64 48, i1 false), !alias.scope !336695
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4cbca0fdd1b13f6bE.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h4cbca0fdd1b13f6bE.exit: ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4cbca0fdd1b13f6bE.exit.unr-lcssa, %.epil.preheader337
  %i.ho = icmp ugt i64 %.sroa.11.1.lcssa.i50, %.sroa.15.099248
  br i1 %i.ho, label %bb.ai, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1e4a1747944061beE.exit", !prof !10

.outer._crit_edge.thread:                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hfc700bbd7e9938a4E.exit

bb.ai:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4cbca0fdd1b13f6bE.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.11.1.lcssa.i50, i64 noundef %.sroa.15.099248, i64 noundef %.sroa.15.099248, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5321) #85, !noalias !336702
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1e4a1747944061beE.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4cbca0fdd1b13f6bE.exit
  %i.hp = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i50 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hq = icmp ult i64 %i.ha, 33
  br i1 %i.hq, label %.outer._crit_edge, label %.lr.ph

bb.aj:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1464, ptr %i.a, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.hu, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5320) #85
  unreachable

bb.ak:                                            ; preds = %bb.ab
  %i.hv = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph106) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfa154a1aa37b8573E(ptr noalias noundef nonnull align 8 %i.hv, i64 noundef %i.fn, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hw = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.hw, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17h2f53d6c45a79b02eE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #35 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h65064a5a4df7d095E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 56
  %.val6 = load i64, ptr %i.b, align 8, !noundef !12 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val7 = load i64, ptr %i.c, align 8, !noundef !12
  %i.d = icmp ult i64 %.val7, %.val6              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.d, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_ZN4core5slice4sort6shared17find_existing_run17hca78c864ef52d2c2E.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_ZN4core5slice4sort6shared17find_existing_run17hca78c864ef52d2c2E.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i64 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.h, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i14
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %.val4 = load i64, ptr %i.f, align 8, !noundef !12 ; 2 uses
  %i.g = icmp ult i64 %.val5, %.val4
  br i1 %i.g, label %_ZN4core5slice4sort6shared17find_existing_run17hca78c864ef52d2c2E.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw i64 %.sroa.01.0.i14, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hca78c864ef52d2c2E.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i64 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.l, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.1.i17
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %.val = load i64, ptr %i.j, align 8, !noundef !12 ; 2 uses
  %i.k = icmp ult i64 %.val3, %.val
  br i1 %i.k, label %bb.d, label %_ZN4core5slice4sort6shared17find_existing_run17hca78c864ef52d2c2E.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.l = add nuw i64 %.sroa.01.1.i17, 1           ; 2 uses
  %exitcond25.not = icmp eq i64 %i.l, %1
  br i1 %exitcond25.not, label %_ZN4core5slice4sort6shared17find_existing_run17hca78c864ef52d2c2E.exit.thread, label %.lr.ph18

_ZN4core5slice4sort6shared17find_existing_run17hca78c864ef52d2c2E.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.m = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.n, label %_ZN4core5slice4sort6shared17find_existing_run17hca78c864ef52d2c2E.exit.thread, label %bb.e

_ZN4core5slice4sort6shared17find_existing_run17hca78c864ef52d2c2E.exit.thread: ; preds = %bb.c, %bb.d, %_ZN4core5slice4sort6shared17find_existing_run17hca78c864ef52d2c2E.exit
  br i1 %i.d, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h65064a5a4df7d095E.exit"

bb.e:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hca78c864ef52d2c2E.exit
  %i.o = or i64 %1, 1
  %i.p = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 1
  %i.s = xor i32 %i.r, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h6708576e12990640E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, i32 noundef %i.s, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h65064a5a4df7d095E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h65064a5a4df7d095E.exit": ; preds = %.lr.ph.i.i, %bb.a, %_ZN4core5slice4sort6shared17find_existing_run17hca78c864ef52d2c2E.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hca78c864ef52d2c2E.exit.thread
  %i.t = lshr i64 %1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336708)
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.v = xor i64 %.sroa.0.014.i.i, -1
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.014.i.i ; 3 uses
  %i.x = getelementptr [32 x i8], ptr %i.u, i64 %i.v ; 3 uses
  %i.y = load <2 x i64>, ptr %i.w, align 8, !alias.scope !336710, !noalias !336708
  %i.z = load <2 x i64>, ptr %i.x, align 8, !alias.scope !336716, !noalias !336705
  store <2 x i64> %i.z, ptr %i.w, align 8, !alias.scope !336710, !noalias !336708
  store <2 x i64> %i.y, ptr %i.x, align 8, !alias.scope !336716, !noalias !336705
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ac = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !336719, !noalias !336708
  %i.ad = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !336722, !noalias !336705
  store <2 x i64> %i.ad, ptr %i.aa, align 8, !alias.scope !336719, !noalias !336708
  store <2 x i64> %i.ac, ptr %i.ab, align 8, !alias.scope !336722, !noalias !336705
  %i.ae = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.t
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h65064a5a4df7d095E.exit", label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17h4fed2dfdef34484fE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #35 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h788b8f177b132367E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336728)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 808
  %.val2.i.i = load i32, ptr %i.b, align 8, !alias.scope !336730, !noalias !336733, !noundef !12 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.val2.i2.i = load i32, ptr %i.c, align 8, !alias.scope !336735, !noalias !336738, !noundef !12 ; 2 uses
  %i.d = icmp eq i32 %.val2.i.i, %.val2.i2.i
  br i1 %i.d, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit", label %.split

.split:                                           ; preds = %bb.b
  %i.e = icmp ult i32 %.val2.i.i, %.val2.i2.i
  br i1 %i.e, label %.preheader, label %.preheader33

.preheader:                                       ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit", %.split
  %.not43 = icmp eq i64 %1, 2
  br i1 %.not43, label %_ZN4core5slice4sort6shared17find_existing_run17h3202182ad7269cf7E.exit, label %.lr.ph39

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit": ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i4.i = load i64, ptr %i.g, align 8, !alias.scope !336735, !noalias !336738
  %.val.i3.i = load i64, ptr %0, align 8, !range !861, !alias.scope !336735, !noalias !336738, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !336730, !noalias !336733
  %.val.i.i = load i64, ptr %i.f, align 8, !range !861, !alias.scope !336730, !noalias !336733, !noundef !12
  %i.i = trunc nuw i64 %.val.i.i to i1
  %i.j = trunc nuw i64 %.val.i3.i to i1
  %i.k = icmp ult i64 %.val1.i.i, %.val1.i4.i
  %not..i.i.i = xor i1 %i.j, true
  %spec.select.i.i.i = select i1 %not..i.i.i, i1 true, i1 %i.k
  %.sroa.0.0.i.i.i.i = select i1 %i.i, i1 %spec.select.i.i.i, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit", %.split
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_ZN4core5slice4sort6shared17find_existing_run17h3202182ad7269cf7E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33, %bb.c
  %.val2.i2.i4 = phi i32 [ %.val2.i.i3, %bb.c ], [ %.val2.i.i, %.preheader33 ] ; 2 uses
  %.sroa.01.0.i35 = phi i64 [ %i.x, %bb.c ], [ 2, %.preheader33 ] ; 5 uses
  %i.l = getelementptr inbounds nuw [408 x i8], ptr %0, i64 %.sroa.01.0.i35 ; 3 uses
  %i.m = add nsw i64 %.sroa.01.0.i35, -1          ; 2 uses
  %i.n = icmp ult i64 %i.m, %1
  tail call void @llvm.assume(i1 %i.n)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336743)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 400
  %.val2.i.i3 = load i32, ptr %i.o, align 8, !alias.scope !336745, !noalias !336748, !noundef !12 ; 3 uses
  %i.p = icmp eq i32 %.val2.i.i3, %.val2.i2.i4
  br i1 %i.p, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit13", label %.split27

.split27:                                         ; preds = %.lr.ph
  %i.q = icmp ult i32 %.val2.i.i3, %.val2.i2.i4
  br i1 %i.q, label %_ZN4core5slice4sort6shared17find_existing_run17h3202182ad7269cf7E.exit, label %bb.c

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit13": ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [408 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i4.i6 = load i64, ptr %i.s, align 8, !alias.scope !336750, !noalias !336753
  %.val.i3.i7 = load i64, ptr %i.r, align 8, !range !861, !alias.scope !336750, !noalias !336753, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i.i8 = load i64, ptr %i.t, align 8, !alias.scope !336745, !noalias !336748
  %.val.i.i9 = load i64, ptr %i.l, align 8, !range !861, !alias.scope !336745, !noalias !336748, !noundef !12
  %i.u = trunc nuw i64 %.val.i.i9 to i1
  %i.v = trunc nuw i64 %.val.i3.i7 to i1
  %i.w = icmp ult i64 %.val1.i.i8, %.val1.i4.i6
  %not..i.i.i10 = xor i1 %i.v, true
  %spec.select.i.i.i11 = select i1 %not..i.i.i10, i1 true, i1 %i.w
  %.sroa.0.0.i.i.i.i12 = select i1 %i.u, i1 %spec.select.i.i.i11, i1 false
  br i1 %.sroa.0.0.i.i.i.i12, label %_ZN4core5slice4sort6shared17find_existing_run17h3202182ad7269cf7E.exit, label %bb.c

bb.c:                                             ; preds = %.split27, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit13"
  %i.x = add nuw i64 %.sroa.01.0.i35, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h3202182ad7269cf7E.exit, label %.lr.ph

.lr.ph39:                                         ; preds = %.preheader, %bb.d
  %.val2.i2.i15 = phi i32 [ %.val2.i.i14, %bb.d ], [ %.val2.i.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i38 = phi i64 [ %i.ak, %bb.d ], [ 2, %.preheader ] ; 5 uses
  %i.y = getelementptr inbounds nuw [408 x i8], ptr %0, i64 %.sroa.01.1.i38 ; 3 uses
  %i.z = add nsw i64 %.sroa.01.1.i38, -1          ; 2 uses
  %i.aa = icmp ult i64 %i.z, %1
  tail call void @llvm.assume(i1 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336758)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 400
  %.val2.i.i14 = load i32, ptr %i.ab, align 8, !alias.scope !336760, !noalias !336763, !noundef !12 ; 3 uses
  %i.ac = icmp eq i32 %.val2.i.i14, %.val2.i2.i15
  br i1 %i.ac, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit24", label %.split28

.split28:                                         ; preds = %.lr.ph39
  %i.ad = icmp ult i32 %.val2.i.i14, %.val2.i2.i15
  br i1 %i.ad, label %bb.d, label %_ZN4core5slice4sort6shared17find_existing_run17h3202182ad7269cf7E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit24": ; preds = %.lr.ph39
  %i.ae = getelementptr inbounds nuw [408 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val1.i4.i17 = load i64, ptr %i.af, align 8, !alias.scope !336765, !noalias !336768
  %.val.i3.i18 = load i64, ptr %i.ae, align 8, !range !861, !alias.scope !336765, !noalias !336768, !noundef !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val1.i.i19 = load i64, ptr %i.ag, align 8, !alias.scope !336760, !noalias !336763
  %.val.i.i20 = load i64, ptr %i.y, align 8, !range !861, !alias.scope !336760, !noalias !336763, !noundef !12
  %i.ah = trunc nuw i64 %.val.i.i20 to i1
  %i.ai = trunc nuw i64 %.val.i3.i18 to i1
  %i.aj = icmp ult i64 %.val1.i.i19, %.val1.i4.i17
  %not..i.i.i21 = xor i1 %i.ai, true
  %spec.select.i.i.i22 = select i1 %not..i.i.i21, i1 true, i1 %i.aj
  %.sroa.0.0.i.i.i.i23 = select i1 %i.ah, i1 %spec.select.i.i.i22, i1 false
  br i1 %.sroa.0.0.i.i.i.i23, label %bb.d, label %_ZN4core5slice4sort6shared17find_existing_run17h3202182ad7269cf7E.exit

bb.d:                                             ; preds = %.split28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit24"
  %i.ak = add nuw i64 %.sroa.01.1.i38, 1          ; 2 uses
  %exitcond47.not = icmp eq i64 %i.ak, %1
  br i1 %exitcond47.not, label %_ZN4core5slice4sort6shared17find_existing_run17h3202182ad7269cf7E.exit, label %.lr.ph39

_ZN4core5slice4sort6shared17find_existing_run17h3202182ad7269cf7E.exit: ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit13", %bb.c, %.split27, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit24", %bb.d, %.split28, %.preheader33, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ false, %.preheader33 ], [ true, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit24" ], [ true, %.split28 ], [ true, %bb.d ], [ false, %.split27 ], [ false, %bb.c ], [ false, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit13" ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader33 ], [ %.sroa.01.1.i38, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit24" ], [ %1, %bb.d ], [ %.sroa.01.1.i38, %.split28 ], [ %.sroa.01.0.i35, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hfb39904e923ecc6fE.exit13" ], [ %1, %bb.c ], [ %.sroa.01.0.i35, %.split27 ] ; 2 uses
  %i.al = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h3202182ad7269cf7E.exit
  br i1 %.sroa.3.0.i, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h788b8f177b132367E.exit"

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h3202182ad7269cf7E.exit
  %i.an = or i64 %1, 1
  %i.ao = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.an, i1 true)
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 1
  %i.ar = xor i32 %i.aq, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h8b8fd85909ff9467E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(408) null, i32 noundef %i.ar, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h788b8f177b132367E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h788b8f177b132367E.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17hff5a99af3b2644c7E.exit.i.i, %bb.a, %bb.e, %bb.f
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.as = lshr i64 %1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336773)
  %i.at = getelementptr inbounds nuw [408 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17hff5a99af3b2644c7E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bg, %_ZN4core10intrinsics25typed_swap_nonoverlapping17hff5a99af3b2644c7E.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.au = xor i64 %.sroa.0.014.i.i, -1
  %i.av = getelementptr inbounds nuw [408 x i8], ptr %0, i64 %.sroa.0.014.i.i ; 3 uses
  %i.aw = getelementptr [408 x i8], ptr %i.at, i64 %i.au ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bd, %bb.g ] ; 5 uses
  %i.ax = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336778)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !336780, !noalias !336783
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !336784, !noalias !336785
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.ay, align 8, !alias.scope !336780, !noalias !336783
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.az, align 8, !alias.scope !336784, !noalias !336785
  %i.ba = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 2 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ax ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336788)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.bb, align 8, !alias.scope !336790, !noalias !336791
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.bc, align 8, !alias.scope !336792, !noalias !336793
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.1, ptr %i.bb, align 8, !alias.scope !336790, !noalias !336791
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, ptr %i.bc, align 8, !alias.scope !336792, !noalias !336793
  %i.bd = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ba ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ba ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336796)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.2 = load i64, ptr %i.be, align 8, !alias.scope !336798, !noalias !336799
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.2 = load i64, ptr %i.bf, align 8, !alias.scope !336800, !noalias !336801
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.2, ptr %i.be, align 8, !alias.scope !336798, !noalias !336799
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.2, ptr %i.bf, align 8, !alias.scope !336800, !noalias !336801
  %exitcond.not.i.i.i.i.i.i.2 = icmp eq i64 %i.bd, 51
  br i1 %exitcond.not.i.i.i.i.i.i.2, label %_ZN4core10intrinsics25typed_swap_nonoverlapping17hff5a99af3b2644c7E.exit.i.i, label %bb.g

_ZN4core10intrinsics25typed_swap_nonoverlapping17hff5a99af3b2644c7E.exit.i.i: ; preds = %bb.g
  %i.bg = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bg, %i.as
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h788b8f177b132367E.exit", label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17h566d73c3dc3c4a87E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #35 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h788b8f177b132367E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336805)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 812
  %.val.i.i = load i32, ptr %i.b, align 4, !alias.scope !336807, !noalias !336810, !noundef !12 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.val2.i.i = load i64, ptr %i.c, align 8, !alias.scope !336807, !noalias !336810 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 808
  %.val3.i.i = load i32, ptr %i.d, align 8, !alias.scope !336807, !noalias !336810, !noundef !12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 404
  %.val.i2.i = load i32, ptr %i.e, align 4, !alias.scope !336812, !noalias !336815, !noundef !12 ; 2 uses
  %.val1.i3.i = load i64, ptr %0, align 8, !range !861, !alias.scope !336812, !noalias !336815, !noundef !12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i4.i = load i64, ptr %i.f, align 8, !alias.scope !336812, !noalias !336815
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.val3.i5.i = load i32, ptr %i.g, align 8, !alias.scope !336812, !noalias !336815, !noundef !12
  %i.h = icmp eq i32 %.val.i.i, %.val.i2.i
  br i1 %i.h, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit"

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.val1.i.i = load i64, ptr %i.i, align 8, !range !861, !alias.scope !336807, !noalias !336810, !noundef !12
  %i.j = trunc nuw i64 %.val1.i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %.val1.i3.i to i1
  br i1 %i.k, label %bb.f, label %.critedge.preheader

.critedge.preheader:                              ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit", %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i, %bb.d
  %.not54 = icmp eq i64 %1, 2
  br i1 %.not54, label %_ZN4core5slice4sort6shared17find_existing_run17h3c99035ece05e4a3E.exit, label %.lr.ph49

bb.e:                                             ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %.val1.i3.i to i8
  br label %"_ZN67_$LT$milli..search..Precedence$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h1d6d725d68b244ddE.exit.i.i.i.i"

bb.f:                                             ; preds = %bb.d
  %i.m = tail call i8 @llvm.ucmp.i8.i64(i64 %.val2.i.i, i64 %.val2.i4.i)
  br label %"_ZN67_$LT$milli..search..Precedence$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h1d6d725d68b244ddE.exit.i.i.i.i"

"_ZN67_$LT$milli..search..Precedence$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h1d6d725d68b244ddE.exit.i.i.i.i": ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.m, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %cond.i.i.i.i = icmp eq i8 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %cond.i.i.i.i, label %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i, label %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i

_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i: ; preds = %"_ZN67_$LT$milli..search..Precedence$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h1d6d725d68b244ddE.exit.i.i.i.i"
  %i.n = icmp slt i8 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.n, label %.critedge.preheader, label %.preheader

_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i: ; preds = %"_ZN67_$LT$milli..search..Precedence$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h1d6d725d68b244ddE.exit.i.i.i.i"
  %i.o = icmp ult i32 %.val3.i.i, %.val3.i5.i
  br i1 %i.o, label %.critedge.preheader, label %.preheader

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit": ; preds = %bb.b
  %i.p = icmp ult i32 %.val.i.i, %.val.i2.i
  br i1 %i.p, label %.critedge.preheader, label %.preheader

.preheader:                                       ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit", %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_ZN4core5slice4sort6shared17find_existing_run17h3c99035ece05e4a3E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.k
  %.val3.i5.i9 = phi i32 [ %.val3.i.i5, %bb.k ], [ %.val3.i.i, %.preheader ]
  %.val2.i4.i8 = phi i64 [ %.val2.i.i4, %bb.k ], [ %.val2.i.i, %.preheader ]
  %.val.i2.i6 = phi i32 [ %.val.i.i3, %bb.k ], [ %.val.i.i, %.preheader ] ; 2 uses
  %.sroa.01.0.i42 = phi i64 [ %i.af, %bb.k ], [ 2, %.preheader ] ; 7 uses
  %i.q = getelementptr inbounds nuw [408 x i8], ptr %0, i64 %.sroa.01.0.i42 ; 4 uses
  %i.r = add nsw i64 %.sroa.01.0.i42, -1          ; 2 uses
  %i.s = icmp ult i64 %i.r, %1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw [408 x i8], ptr %0, i64 %i.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336820)
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 404
  %.val.i.i3 = load i32, ptr %i.u, align 4, !alias.scope !336822, !noalias !336825, !noundef !12 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val2.i.i4 = load i64, ptr %i.v, align 8, !alias.scope !336822, !noalias !336825 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 400
  %.val3.i.i5 = load i32, ptr %i.w, align 8, !alias.scope !336822, !noalias !336825, !noundef !12 ; 2 uses
  %.val1.i3.i7 = load i64, ptr %i.t, align 8, !range !861, !alias.scope !336827, !noalias !336830, !noundef !12 ; 2 uses
  %i.x = icmp eq i32 %.val.i.i3, %.val.i2.i6
  br i1 %i.x, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit17"

bb.g:                                             ; preds = %.lr.ph
  %.val1.i.i11 = load i64, ptr %i.q, align 8, !range !861, !alias.scope !336822, !noalias !336825, !noundef !12
  %i.y = trunc nuw i64 %.val1.i.i11 to i1
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = trunc nuw i64 %.val1.i3.i7 to i1
  br i1 %i.z, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17h3c99035ece05e4a3E.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = trunc nuw nsw i64 %.val1.i3.i7 to i8
  br label %"_ZN67_$LT$milli..search..Precedence$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h1d6d725d68b244ddE.exit.i.i.i.i12"

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call i8 @llvm.ucmp.i8.i64(i64 %.val2.i.i4, i64 %.val2.i4.i8)
  br label %"_ZN67_$LT$milli..search..Precedence$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h1d6d725d68b244ddE.exit.i.i.i.i12"

"_ZN67_$LT$milli..search..Precedence$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h1d6d725d68b244ddE.exit.i.i.i.i12": ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i.i13 = phi i8 [ %i.ab, %bb.j ], [ %i.aa, %bb.i ] ; 2 uses
  %cond.i.i.i.i14 = icmp eq i8 %.sroa.0.0.i.i.i.i.i13, 0
  br i1 %cond.i.i.i.i14, label %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i16, label %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i15

_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i15: ; preds = %"_ZN67_$LT$milli..search..Precedence$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h1d6d725d68b244ddE.exit.i.i.i.i12"
  %i.ac = icmp slt i8 %.sroa.0.0.i.i.i.i.i13, 0
  br i1 %i.ac, label %_ZN4core5slice4sort6shared17find_existing_run17h3c99035ece05e4a3E.exit, label %bb.k

_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i16: ; preds = %"_ZN67_$LT$milli..search..Precedence$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h1d6d725d68b244ddE.exit.i.i.i.i12"
  %i.ad = icmp ult i32 %.val3.i.i5, %.val3.i5.i9
  br i1 %i.ad, label %_ZN4core5slice4sort6shared17find_existing_run17h3c99035ece05e4a3E.exit, label %bb.k

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit17": ; preds = %.lr.ph
  %i.ae = icmp ult i32 %.val.i.i3, %.val.i2.i6
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h3c99035ece05e4a3E.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i15, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i16, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit17"
  %i.af = add nuw i64 %.sroa.01.0.i42, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h3c99035ece05e4a3E.exit, label %.lr.ph

.lr.ph49:                                         ; preds = %.critedge.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32.thread"
  %.val3.i5.i24 = phi i32 [ %.val3.i.i20, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32.thread" ], [ %.val3.i.i, %.critedge.preheader ]
  %.val2.i4.i23 = phi i64 [ %.val2.i.i19, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32.thread" ], [ %.val2.i.i, %.critedge.preheader ]
  %.val.i2.i21 = phi i32 [ %.val.i.i18, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32.thread" ], [ %.val.i.i, %.critedge.preheader ] ; 2 uses
  %.sroa.01.1.i48 = phi i64 [ %i.av, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32.thread" ], [ 2, %.critedge.preheader ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [408 x i8], ptr %0, i64 %.sroa.01.1.i48 ; 4 uses
  %i.ah = add nsw i64 %.sroa.01.1.i48, -1         ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw [408 x i8], ptr %0, i64 %i.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336835)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 404
  %.val.i.i18 = load i32, ptr %i.ak, align 4, !alias.scope !336837, !noalias !336840, !noundef !12 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val2.i.i19 = load i64, ptr %i.al, align 8, !alias.scope !336837, !noalias !336840 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 400
  %.val3.i.i20 = load i32, ptr %i.am, align 8, !alias.scope !336837, !noalias !336840, !noundef !12 ; 2 uses
  %.val1.i3.i22 = load i64, ptr %i.aj, align 8, !range !861, !alias.scope !336842, !noalias !336845, !noundef !12 ; 2 uses
  %i.an = icmp eq i32 %.val.i.i18, %.val.i2.i21
  br i1 %i.an, label %bb.l, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32"

bb.l:                                             ; preds = %.lr.ph49
  %.val1.i.i26 = load i64, ptr %i.ag, align 8, !range !861, !alias.scope !336837, !noalias !336840, !noundef !12
  %i.ao = trunc nuw i64 %.val1.i.i26 to i1
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = trunc nuw i64 %.val1.i3.i22 to i1
  br i1 %i.ap, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32.thread"

bb.n:                                             ; preds = %bb.l
  %i.aq = trunc nuw nsw i64 %.val1.i3.i22 to i8
  br label %"_ZN67_$LT$milli..search..Precedence$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h1d6d725d68b244ddE.exit.i.i.i.i27"

bb.o:                                             ; preds = %bb.m
  %i.ar = tail call i8 @llvm.ucmp.i8.i64(i64 %.val2.i.i19, i64 %.val2.i4.i23)
  br label %"_ZN67_$LT$milli..search..Precedence$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h1d6d725d68b244ddE.exit.i.i.i.i27"

"_ZN67_$LT$milli..search..Precedence$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h1d6d725d68b244ddE.exit.i.i.i.i27": ; preds = %bb.o, %bb.n
  %.sroa.0.0.i.i.i.i.i28 = phi i8 [ %i.ar, %bb.o ], [ %i.aq, %bb.n ] ; 2 uses
  %cond.i.i.i.i29 = icmp eq i8 %.sroa.0.0.i.i.i.i.i28, 0
  br i1 %cond.i.i.i.i29, label %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i31, label %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i30

_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i30: ; preds = %"_ZN67_$LT$milli..search..Precedence$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h1d6d725d68b244ddE.exit.i.i.i.i27"
  %i.as = icmp slt i8 %.sroa.0.0.i.i.i.i.i28, 0
  br i1 %i.as, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32.thread", label %_ZN4core5slice4sort6shared17find_existing_run17h3c99035ece05e4a3E.exit

_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i31: ; preds = %"_ZN67_$LT$milli..search..Precedence$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h1d6d725d68b244ddE.exit.i.i.i.i27"
  %i.at = icmp ult i32 %.val3.i.i20, %.val3.i5.i24
  br i1 %i.at, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32.thread", label %_ZN4core5slice4sort6shared17find_existing_run17h3c99035ece05e4a3E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32": ; preds = %.lr.ph49
  %i.au = icmp ult i32 %.val.i.i18, %.val.i2.i21
  br i1 %i.au, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32.thread", label %_ZN4core5slice4sort6shared17find_existing_run17h3c99035ece05e4a3E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32.thread": ; preds = %bb.m, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i30, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i31, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32"
  %i.av = add nuw i64 %.sroa.01.1.i48, 1          ; 2 uses
  %exitcond58.not = icmp eq i64 %i.av, %1
  br i1 %exitcond58.not, label %_ZN4core5slice4sort6shared17find_existing_run17h3c99035ece05e4a3E.exit, label %.lr.ph49

_ZN4core5slice4sort6shared17find_existing_run17h3c99035ece05e4a3E.exit: ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit17", %bb.k, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i16, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i15, %bb.h, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32.thread", %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i31, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i30, %.preheader, %.critedge.preheader
  %.sroa.3.0.i = phi i1 [ true, %.critedge.preheader ], [ true, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32" ], [ false, %.preheader ], [ true, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i30 ], [ true, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i31 ], [ true, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32.thread" ], [ false, %bb.h ], [ false, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i15 ], [ false, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i16 ], [ false, %bb.k ], [ false, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit17" ]
  %.sroa.0.0.i = phi i64 [ 2, %.critedge.preheader ], [ %.sroa.01.1.i48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32" ], [ 2, %.preheader ], [ %1, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit32.thread" ], [ %.sroa.01.1.i48, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i31 ], [ %.sroa.01.1.i48, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i30 ], [ %.sroa.01.0.i42, %bb.h ], [ %.sroa.01.0.i42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h2067afe97ae3a866E.exit17" ], [ %1, %bb.k ], [ %.sroa.01.0.i42, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.thread.i.i16 ], [ %.sroa.01.0.i42, %_ZN4core3cmp10PartialOrd13__chaining_lt17h6d881d25758d56cbE.exit.i.i15 ] ; 2 uses
  %i.aw = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h3c99035ece05e4a3E.exit
  br i1 %.sroa.3.0.i, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h788b8f177b132367E.exit"

bb.q:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h3c99035ece05e4a3E.exit
  %i.ay = or i64 %1, 1
  %i.az = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true)
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 1
  %i.bc = xor i32 %i.bb, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h6c200b492cc92e34E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(408) null, i32 noundef %i.bc, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h788b8f177b132367E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h788b8f177b132367E.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17hff5a99af3b2644c7E.exit.i.i, %bb.a, %bb.p, %bb.q
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.p
  %i.bd = lshr i64 %1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336850)
  %i.be = getelementptr inbounds nuw [408 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17hff5a99af3b2644c7E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.br, %_ZN4core10intrinsics25typed_swap_nonoverlapping17hff5a99af3b2644c7E.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bf = xor i64 %.sroa.0.014.i.i, -1
  %i.bg = getelementptr inbounds nuw [408 x i8], ptr %0, i64 %.sroa.0.014.i.i ; 3 uses
  %i.bh = getelementptr [408 x i8], ptr %i.be, i64 %i.bf ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bo, %bb.r ] ; 5 uses
  %i.bi = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336855)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !336857, !noalias !336860
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !336861, !noalias !336862
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.bj, align 8, !alias.scope !336857, !noalias !336860
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.bk, align 8, !alias.scope !336861, !noalias !336862
  %i.bl = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 2 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bi ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336865)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.bm, align 8, !alias.scope !336867, !noalias !336868
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.bn, align 8, !alias.scope !336869, !noalias !336870
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.1, ptr %i.bm, align 8, !alias.scope !336867, !noalias !336868
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, ptr %i.bn, align 8, !alias.scope !336869, !noalias !336870
  %i.bo = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336873)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.2 = load i64, ptr %i.bp, align 8, !alias.scope !336875, !noalias !336876
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.2 = load i64, ptr %i.bq, align 8, !alias.scope !336877, !noalias !336878
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.2, ptr %i.bp, align 8, !alias.scope !336875, !noalias !336876
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.2, ptr %i.bq, align 8, !alias.scope !336877, !noalias !336878
  %exitcond.not.i.i.i.i.i.i.2 = icmp eq i64 %i.bo, 51
  br i1 %exitcond.not.i.i.i.i.i.i.2, label %_ZN4core10intrinsics25typed_swap_nonoverlapping17hff5a99af3b2644c7E.exit.i.i, label %bb.r

_ZN4core10intrinsics25typed_swap_nonoverlapping17hff5a99af3b2644c7E.exit.i.i: ; preds = %bb.r
  %i.br = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.br, %i.bd
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h788b8f177b132367E.exit", label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17h6745edd4a67350f4E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #35 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1312023aad0efbceE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336882)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 728
  %.val.i.i = load i32, ptr %i.b, align 8, !alias.scope !336884, !noalias !336887, !noundef !12 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.val.i2.i = load i32, ptr %i.c, align 8, !alias.scope !336889, !noalias !336892, !noundef !12 ; 2 uses
  %i.d = icmp eq i32 %.val.i.i, %.val.i2.i
  br i1 %i.d, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit", label %.split

.split:                                           ; preds = %bb.b
  %i.e = icmp ult i32 %.val.i.i, %.val.i2.i
  br i1 %i.e, label %.preheader, label %.preheader33

.preheader:                                       ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit", %.split
  %.not43 = icmp eq i64 %1, 2
  br i1 %.not43, label %_ZN4core5slice4sort6shared17find_existing_run17hb29ded02b36568deE.exit, label %.lr.ph39

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit": ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i4.i = load i64, ptr %i.g, align 8, !alias.scope !336889, !noalias !336892
  %.val1.i3.i = load i64, ptr %0, align 8, !range !861, !alias.scope !336889, !noalias !336892, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.val2.i.i = load i64, ptr %i.h, align 8, !alias.scope !336884, !noalias !336887
  %.val1.i.i = load i64, ptr %i.f, align 8, !range !861, !alias.scope !336884, !noalias !336887, !noundef !12
  %i.i = trunc nuw i64 %.val1.i.i to i1
  %i.j = trunc nuw i64 %.val1.i3.i to i1
  %i.k = icmp ult i64 %.val2.i.i, %.val2.i4.i
  %not..i.i.i = xor i1 %i.j, true
  %spec.select.i.i.i = select i1 %not..i.i.i, i1 true, i1 %i.k
  %.sroa.0.0.i.i.i.i = select i1 %i.i, i1 %spec.select.i.i.i, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit", %.split
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_ZN4core5slice4sort6shared17find_existing_run17hb29ded02b36568deE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33, %bb.c
  %.val.i2.i4 = phi i32 [ %.val.i.i3, %bb.c ], [ %.val.i.i, %.preheader33 ] ; 2 uses
  %.sroa.01.0.i35 = phi i64 [ %i.x, %bb.c ], [ 2, %.preheader33 ] ; 5 uses
  %i.l = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %.sroa.01.0.i35 ; 3 uses
  %i.m = add nsw i64 %.sroa.01.0.i35, -1          ; 2 uses
  %i.n = icmp ult i64 %i.m, %1
  tail call void @llvm.assume(i1 %i.n)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336897)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %.val.i.i3 = load i32, ptr %i.o, align 8, !alias.scope !336899, !noalias !336902, !noundef !12 ; 3 uses
  %i.p = icmp eq i32 %.val.i.i3, %.val.i2.i4
  br i1 %i.p, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit13", label %.split27

.split27:                                         ; preds = %.lr.ph
  %i.q = icmp ult i32 %.val.i.i3, %.val.i2.i4
  br i1 %i.q, label %_ZN4core5slice4sort6shared17find_existing_run17hb29ded02b36568deE.exit, label %bb.c

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit13": ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val2.i4.i6 = load i64, ptr %i.s, align 8, !alias.scope !336904, !noalias !336907
  %.val1.i3.i7 = load i64, ptr %i.r, align 8, !range !861, !alias.scope !336904, !noalias !336907, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val2.i.i8 = load i64, ptr %i.t, align 8, !alias.scope !336899, !noalias !336902
  %.val1.i.i9 = load i64, ptr %i.l, align 8, !range !861, !alias.scope !336899, !noalias !336902, !noundef !12
  %i.u = trunc nuw i64 %.val1.i.i9 to i1
  %i.v = trunc nuw i64 %.val1.i3.i7 to i1
  %i.w = icmp ult i64 %.val2.i.i8, %.val2.i4.i6
  %not..i.i.i10 = xor i1 %i.v, true
  %spec.select.i.i.i11 = select i1 %not..i.i.i10, i1 true, i1 %i.w
  %.sroa.0.0.i.i.i.i12 = select i1 %i.u, i1 %spec.select.i.i.i11, i1 false
  br i1 %.sroa.0.0.i.i.i.i12, label %_ZN4core5slice4sort6shared17find_existing_run17hb29ded02b36568deE.exit, label %bb.c

bb.c:                                             ; preds = %.split27, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit13"
  %i.x = add nuw i64 %.sroa.01.0.i35, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hb29ded02b36568deE.exit, label %.lr.ph

.lr.ph39:                                         ; preds = %.preheader, %bb.d
  %.val.i2.i15 = phi i32 [ %.val.i.i14, %bb.d ], [ %.val.i.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i38 = phi i64 [ %i.ak, %bb.d ], [ 2, %.preheader ] ; 5 uses
  %i.y = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %.sroa.01.1.i38 ; 3 uses
  %i.z = add nsw i64 %.sroa.01.1.i38, -1          ; 2 uses
  %i.aa = icmp ult i64 %i.z, %1
  tail call void @llvm.assume(i1 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336912)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 360
  %.val.i.i14 = load i32, ptr %i.ab, align 8, !alias.scope !336914, !noalias !336917, !noundef !12 ; 3 uses
  %i.ac = icmp eq i32 %.val.i.i14, %.val.i2.i15
  br i1 %i.ac, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit24", label %.split28

.split28:                                         ; preds = %.lr.ph39
  %i.ad = icmp ult i32 %.val.i.i14, %.val.i2.i15
  br i1 %i.ad, label %bb.d, label %_ZN4core5slice4sort6shared17find_existing_run17hb29ded02b36568deE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit24": ; preds = %.lr.ph39
  %i.ae = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val2.i4.i17 = load i64, ptr %i.af, align 8, !alias.scope !336919, !noalias !336922
  %.val1.i3.i18 = load i64, ptr %i.ae, align 8, !range !861, !alias.scope !336919, !noalias !336922, !noundef !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val2.i.i19 = load i64, ptr %i.ag, align 8, !alias.scope !336914, !noalias !336917
  %.val1.i.i20 = load i64, ptr %i.y, align 8, !range !861, !alias.scope !336914, !noalias !336917, !noundef !12
  %i.ah = trunc nuw i64 %.val1.i.i20 to i1
  %i.ai = trunc nuw i64 %.val1.i3.i18 to i1
  %i.aj = icmp ult i64 %.val2.i.i19, %.val2.i4.i17
  %not..i.i.i21 = xor i1 %i.ai, true
  %spec.select.i.i.i22 = select i1 %not..i.i.i21, i1 true, i1 %i.aj
  %.sroa.0.0.i.i.i.i23 = select i1 %i.ah, i1 %spec.select.i.i.i22, i1 false
  br i1 %.sroa.0.0.i.i.i.i23, label %bb.d, label %_ZN4core5slice4sort6shared17find_existing_run17hb29ded02b36568deE.exit

bb.d:                                             ; preds = %.split28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit24"
  %i.ak = add nuw i64 %.sroa.01.1.i38, 1          ; 2 uses
  %exitcond47.not = icmp eq i64 %i.ak, %1
  br i1 %exitcond47.not, label %_ZN4core5slice4sort6shared17find_existing_run17hb29ded02b36568deE.exit, label %.lr.ph39

_ZN4core5slice4sort6shared17find_existing_run17hb29ded02b36568deE.exit: ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit13", %bb.c, %.split27, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit24", %bb.d, %.split28, %.preheader33, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ false, %.preheader33 ], [ true, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit24" ], [ true, %.split28 ], [ true, %bb.d ], [ false, %.split27 ], [ false, %bb.c ], [ false, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit13" ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader33 ], [ %.sroa.01.1.i38, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit24" ], [ %1, %bb.d ], [ %.sroa.01.1.i38, %.split28 ], [ %.sroa.01.0.i35, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc639b520a3c52a95E.exit13" ], [ %1, %bb.c ], [ %.sroa.01.0.i35, %.split27 ] ; 2 uses
  %i.al = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hb29ded02b36568deE.exit
  br i1 %.sroa.3.0.i, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1312023aad0efbceE.exit"

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hb29ded02b36568deE.exit
  %i.an = or i64 %1, 1
  %i.ao = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.an, i1 true)
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 1
  %i.ar = xor i32 %i.aq, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17hb10a8e18c037d0e1E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(368) null, i32 noundef %i.ar, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1312023aad0efbceE.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1312023aad0efbceE.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h5e4076c5a0c8feb0E.exit.i.i, %bb.a, %bb.e, %bb.f
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.as = lshr i64 %1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336927)
  %i.at = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h5e4076c5a0c8feb0E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bd, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h5e4076c5a0c8feb0E.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.au = xor i64 %.sroa.0.014.i.i, -1
  %i.av = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %.sroa.0.014.i.i ; 2 uses
  %i.aw = getelementptr [368 x i8], ptr %i.at, i64 %i.au ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ba, %bb.g ] ; 4 uses
  %i.ax = or disjoint i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336932)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !336934, !noalias !336937
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !336938, !noalias !336939
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.ay, align 8, !alias.scope !336934, !noalias !336937
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.az, align 8, !alias.scope !336938, !noalias !336939
  %i.ba = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 2 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ax ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336942)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.bb, align 8, !alias.scope !336944, !noalias !336945
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.bc, align 8, !alias.scope !336946, !noalias !336947
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.1, ptr %i.bb, align 8, !alias.scope !336944, !noalias !336945
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, ptr %i.bc, align 8, !alias.scope !336946, !noalias !336947
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ba, 46
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN4core10intrinsics25typed_swap_nonoverlapping17h5e4076c5a0c8feb0E.exit.i.i, label %bb.g

_ZN4core10intrinsics25typed_swap_nonoverlapping17h5e4076c5a0c8feb0E.exit.i.i: ; preds = %bb.g
  %i.bd = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.as
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1312023aad0efbceE.exit", label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17h6f5323db840e7f67E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #35 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h094a782b14226645E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 48
  %.val10 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 56
  %.val11 = load i64, ptr %i.c, align 8, !noundef !12 ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val13 = load i64, ptr %i.e, align 8, !noundef !12 ; 2 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val11, i64 %.val13)
  %i.f = sub i64 %.val11, %.val13
  %i.g = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10, ptr nonnull readonly align 1 %.val12, i64 %..i.i.i.i.i), !alias.scope !336948 ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = icmp eq i32 %i.g, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.i, i64 %i.f, i64 %i.h
  %i.j = icmp slt i64 %spec.store.select.i.i.i.i.i, 0 ; 2 uses
  %.not32 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.j, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.b
  br i1 %.not32, label %_ZN4core5slice4sort6shared17find_existing_run17h7266ccbb4980c3c1E.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not32, label %_ZN4core5slice4sort6shared17find_existing_run17h7266ccbb4980c3c1E.exit, label %.lr.ph28

.lr.ph:                                           ; preds = %.preheader22, %bb.c
  %.val9 = phi i64 [ %.val7, %bb.c ], [ %.val11, %.preheader22 ] ; 2 uses
  %.val8 = phi ptr [ %.val6, %bb.c ], [ %.val10, %.preheader22 ]
  %.sroa.01.0.i24 = phi i64 [ %i.s, %bb.c ], [ 2, %.preheader22 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i24 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val6 = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %.val7 = load i64, ptr %i.m, align 8, !noundef !12 ; 3 uses
  %..i.i.i.i.i14 = tail call i64 @llvm.umin.i64(i64 %.val7, i64 %.val9)
  %i.n = sub i64 %.val7, %.val9
  %i.o = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val6, ptr nonnull readonly align 1 %.val8, i64 %..i.i.i.i.i14), !alias.scope !336952 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %spec.store.select.i.i.i.i.i15 = select i1 %i.q, i64 %i.n, i64 %i.p
  %i.r = icmp slt i64 %spec.store.select.i.i.i.i.i15, 0
  br i1 %i.r, label %_ZN4core5slice4sort6shared17find_existing_run17h7266ccbb4980c3c1E.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i24, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h7266ccbb4980c3c1E.exit.thread, label %.lr.ph

.lr.ph28:                                         ; preds = %.preheader, %bb.d
  %.val5 = phi i64 [ %.val3, %bb.d ], [ %.val11, %.preheader ] ; 2 uses
  %.val4 = phi ptr [ %.val, %bb.d ], [ %.val10, %.preheader ]
  %.sroa.01.1.i27 = phi i64 [ %i.ab, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.1.i27 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val = load ptr, ptr %i.u, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %.val3 = load i64, ptr %i.v, align 8, !noundef !12 ; 3 uses
  %..i.i.i.i.i16 = tail call i64 @llvm.umin.i64(i64 %.val3, i64 %.val5)
  %i.w = sub i64 %.val3, %.val5
  %i.x = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val4, i64 %..i.i.i.i.i16), !alias.scope !336956 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %spec.store.select.i.i.i.i.i17 = select i1 %i.z, i64 %i.w, i64 %i.y
  %i.aa = icmp slt i64 %spec.store.select.i.i.i.i.i17, 0
  br i1 %i.aa, label %bb.d, label %_ZN4core5slice4sort6shared17find_existing_run17h7266ccbb4980c3c1E.exit

bb.d:                                             ; preds = %.lr.ph28
  %i.ab = add nuw i64 %.sroa.01.1.i27, 1          ; 2 uses
  %exitcond35.not = icmp eq i64 %i.ab, %1
  br i1 %exitcond35.not, label %_ZN4core5slice4sort6shared17find_existing_run17h7266ccbb4980c3c1E.exit.thread, label %.lr.ph28

_ZN4core5slice4sort6shared17find_existing_run17h7266ccbb4980c3c1E.exit: ; preds = %.lr.ph, %.lr.ph28, %.preheader22, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader22 ], [ 2, %.preheader ], [ %.sroa.01.1.i27, %.lr.ph28 ], [ %.sroa.01.0.i24, %.lr.ph ] ; 2 uses
  %i.ac = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.ad, label %_ZN4core5slice4sort6shared17find_existing_run17h7266ccbb4980c3c1E.exit.thread, label %bb.e

_ZN4core5slice4sort6shared17find_existing_run17h7266ccbb4980c3c1E.exit.thread: ; preds = %bb.c, %bb.d, %_ZN4core5slice4sort6shared17find_existing_run17h7266ccbb4980c3c1E.exit
  br i1 %i.j, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h094a782b14226645E.exit"

bb.e:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h7266ccbb4980c3c1E.exit
  %i.ae = or i64 %1, 1
  %i.af = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 1
  %i.ai = xor i32 %i.ah, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17hb037b1227c4189f7E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, i32 noundef %i.ai, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h094a782b14226645E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h094a782b14226645E.exit": ; preds = %.lr.ph.i.i, %bb.a, %_ZN4core5slice4sort6shared17find_existing_run17h7266ccbb4980c3c1E.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h7266ccbb4980c3c1E.exit.thread
end_hunk_3
begin_hunk_4_@"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17h76e8c65460bc6b9cE":bb.a

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h82cd51089ea063a3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5412)
          to label %bb.g unwind label %bb.d, !noalias !339209

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$17h146f4372de785f50E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a) #86
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339217)
  %i.n = load ptr, ptr %3, align 8, !alias.scope !339220, !nonnull !12, !align !4496, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !339220, !nonnull !12, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !339220, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !339220, !noundef !12
  invoke void %i.p(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.s, i64 noundef %i.u)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h91d7ed2ed06dba6aE.exit" unwind label %bb.i, !inline_history !118683

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !339206, !noalias !339209, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.w, i64 %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  %i.y = add nuw nsw i64 %i.c, 1
  store i64 %i.y, ptr %i.b, align 8, !alias.scope !339206, !noalias !339209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17he1ecfef1777a7b2bE.exit"

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17he1ecfef1777a7b2bE.exit": ; preds = %bb.h, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h91d7ed2ed06dba6aE.exit", %bb.g
  ret i1 %i.e

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h91d7ed2ed06dba6aE.exit": ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339224)
  %i.z = load ptr, ptr %2, align 8, !alias.scope !339227, !noundef !12 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17he1ecfef1777a7b2bE.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h91d7ed2ed06dba6aE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339237)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !339240, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !339240, !noundef !12
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !339240, !noundef !12
  tail call void %i.ac(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.af, i64 noundef %i.ah), !inline_history !338922
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17he1ecfef1777a7b2bE.exit"

.body:                                            ; preds = %bb.i, %bb.j, %bb.d
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.ai, %bb.j ], [ %i.ai, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body7

bb.i:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339244)
  %i.aj = load ptr, ptr %2, align 8, !alias.scope !339247, !noundef !12 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339257)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !339260, !nonnull !12, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !339260, !noundef !12
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !339260, !noundef !12
  invoke void %i.am(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %.body unwind label %bb.k, !inline_history !105945

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$8try_grow17h3a0ef1ea75d76510E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = icmp ugt i64 %1, 32768                   ; 2 uses
  br i1 %i.c, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h6c03e4c7c2a51820E.exit34", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !align !18613, !noundef !12 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !12 ; 3 uses
  %.idx = shl nuw nsw i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f3c1bd737e15acaE.exit.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i16, ptr %i.j, align 8              ; 2 uses
  %i.l = zext i16 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.0.055 = phi ptr [ %i.e, %.lr.ph ], [ %i.m, %.critedge ] ; 3 uses
  %.sroa.7.054 = phi i64 [ 0, %.lr.ph ], [ %i.n, %.critedge ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.055, i64 4 ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.7.054, 1
  %i.o = load i16, ptr %.sroa.0.055, align 2, !noundef !12
  %.not19.not = icmp eq i16 %i.o, -1
  br i1 %.not19.not, label %.critedge, label %bb.f

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f3c1bd737e15acaE.exit.thread": ; preds = %bb.f, %.critedge, %bb.b
  %.sroa.01.0 = phi i64 [ 0, %bb.b ], [ 0, %.critedge ], [ %.sroa.7.054, %bb.f ] ; 5 uses
  %i.p = shl nuw nsw i64 %1, 2                    ; 2 uses
  %i.q = icmp eq i64 %1, 0
  br i1 %i.q, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hb585c4170e335fc2E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f3c1bd737e15acaE.exit.thread"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !339261
  %i.r = tail call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, 17) 2) #79, !noalias !339261 ; 7 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdb1f30c0b50a00adE.exit.i.i"

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5414) #85, !noalias !339269
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdb1f30c0b50a00adE.exit.i.i": ; preds = %bb.d
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdb1f30c0b50a00adE.exit.i.i"
  %i.t = add nsw i64 %1, -1                       ; 2 uses
  %min.iters.check = icmp ult i64 %1, 9
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.t, -8                       ; 4 uses
  %i.u = shl i64 %n.vec, 2
  %i.v = getelementptr i8, ptr %i.r, i64 %i.u     ; 2 uses
  %i.w = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.x
  %i.y = getelementptr i8, ptr %i.r, i64 %i.x
  %next.gep85 = getelementptr i8, ptr %i.y, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2, !noalias !339270
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep85, align 2, !noalias !339270
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !339273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader88

.lr.ph.i.i.preheader88:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.09.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.03.08.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i, %middle.block, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdb1f30c0b50a00adE.exit.i.i"
  %.sroa.0.0.lcssa16.i.i = phi ptr [ %i.r, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdb1f30c0b50a00adE.exit.i.i" ], [ %i.v, %middle.block ], [ %i.ad, %.lr.ph.i.i ] ; 2 uses
  store i16 -1, ptr %.sroa.0.0.lcssa16.i.i, align 2, !noalias !339270
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa16.i.i, i64 2
  store i16 0, ptr %i.aa, align 2, !noalias !339270
  %.pre = load ptr, ptr %i.d, align 8
  %.pre69 = load i64, ptr %i.f, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hb585c4170e335fc2E.exit"

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader88, %.lr.ph.i.i
  %.sroa.0.09.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.sroa.0.09.i.i.ph, %.lr.ph.i.i.preheader88 ] ; 3 uses
  %.sroa.03.08.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ %.sroa.03.08.i.i.ph, %.lr.ph.i.i.preheader88 ]
  %i.ab = add nuw nsw i64 %.sroa.03.08.i.i, 1     ; 2 uses
  store i16 -1, ptr %.sroa.0.09.i.i, align 2, !noalias !339270
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 2
  store i16 0, ptr %i.ac, align 2, !noalias !339270
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ab, %1
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !339274

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hb585c4170e335fc2E.exit": ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f3c1bd737e15acaE.exit.thread", %._crit_edge.thread.i.i
  %.sroa.10.0.i.i81 = phi ptr [ %i.r, %._crit_edge.thread.i.i ], [ inttoptr (i64 2 to ptr), %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f3c1bd737e15acaE.exit.thread" ] ; 5 uses
  %i.ae = phi i64 [ %.pre69, %._crit_edge.thread.i.i ], [ %i.g, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f3c1bd737e15acaE.exit.thread" ] ; 9 uses
  %i.af = phi ptr [ %.pre, %._crit_edge.thread.i.i ], [ %i.e, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f3c1bd737e15acaE.exit.thread" ] ; 6 uses
  store ptr %.sroa.10.0.i.i81, ptr %i.d, align 8
  store i64 %1, ptr %i.f, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = trunc nuw i64 %1 to i16
  %i.ai = add i16 %i.ah, -1                       ; 3 uses
  store i16 %i.ai, ptr %i.ag, align 8
  %i.aj = icmp ugt i64 %.sroa.01.0, %i.ae
  br i1 %i.aj, label %bb.h, label %bb.g, !prof !10

bb.f:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.055, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !noundef !12
  %i.am = and i16 %i.k, %i.al
  %i.an = zext i16 %i.am to i64
  %i.ao = sub nsw i64 %.sroa.7.054, %i.an
  %i.ap = and i64 %i.ao, %i.l
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f3c1bd737e15acaE.exit.thread", label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.f
  %i.ar = icmp eq ptr %i.m, %i.h
  br i1 %i.ar, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f3c1bd737e15acaE.exit.thread", label %bb.c

bb.g:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hb585c4170e335fc2E.exit"
  %.idx68 = shl nuw nsw i64 %.sroa.01.0, 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx68 ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.au = icmp samesign eq i64 %.sroa.01.0, %i.ae
  br i1 %i.au, label %.preheader, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %bb.g
  %.sroa.013.159 = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  br label %.lr.ph62

bb.h:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hb585c4170e335fc2E.exit"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.01.0, i64 noundef %i.ae, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5416) #85
          to label %bb.y unwind label %bb.x

.preheader:                                       ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h40a513a77ddb32b8E.exit", %bb.g
  %i.av = icmp eq i64 %.sroa.01.0, 0
  br i1 %i.av, label %._crit_edge, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %.preheader
  %.sroa.014.164 = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  br label %.lr.ph67

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h40a513a77ddb32b8E.exit"
  %.sroa.013.161 = phi ptr [ %.sroa.013.1, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h40a513a77ddb32b8E.exit" ], [ %.sroa.013.159, %.lr.ph62.preheader ] ; 3 uses
  %.sroa.013.060 = phi ptr [ %.sroa.013.161, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h40a513a77ddb32b8E.exit" ], [ %i.as, %.lr.ph62.preheader ] ; 2 uses
  %i.aw = load i16, ptr %.sroa.013.060, align 2, !noundef !12 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.060, i64 2
  %i.ay = load i16, ptr %i.ax, align 2, !noundef !12 ; 2 uses
  %.not.i = icmp eq i16 %i.aw, -1
  br i1 %.not.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h40a513a77ddb32b8E.exit", label %bb.i

bb.i:                                             ; preds = %.lr.ph62
  %i.az = and i16 %i.ay, %i.ai
  %i.ba = zext i16 %i.az to i64
  br label %bb.j

bb.j:                                             ; preds = %.backedge87, %bb.i
  %.sroa.01.0.i = phi i64 [ %i.ba, %bb.i ], [ %.sroa.01.0.i.be, %.backedge87 ] ; 4 uses
  %i.bb = icmp ult i64 %.sroa.01.0.i, %1
  br i1 %i.bb, label %bb.k, label %.backedge87

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i81, i64 %.sroa.01.0.i
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !339275, !noundef !12
  %.not5.i = icmp eq i16 %i.bd, -1
  br i1 %.not5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = add nuw nsw i64 %.sroa.01.0.i, 1
  br label %.backedge87

.backedge87:                                      ; preds = %bb.l, %bb.j
  %.sroa.01.0.i.be = phi i64 [ %i.be, %bb.l ], [ 0, %bb.j ]
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i81, i64 %.sroa.01.0.i ; 2 uses
  store i16 %i.aw, ptr %i.bf, align 2, !noalias !339275
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store i16 %i.ay, ptr %i.bg, align 2, !noalias !339275
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h40a513a77ddb32b8E.exit"

"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h40a513a77ddb32b8E.exit": ; preds = %.lr.ph62, %bb.m
  %i.bh = icmp eq ptr %.sroa.013.161, %i.at       ; 2 uses
  %.sroa.013.1.idx = select i1 %i.bh, i64 0, i64 4
  %.sroa.013.1 = getelementptr inbounds nuw i8, ptr %.sroa.013.161, i64 %.sroa.013.1.idx
  br i1 %i.bh, label %.preheader, label %.lr.ph62

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h40a513a77ddb32b8E.exit30"
  %.sroa.014.166 = phi ptr [ %.sroa.014.1, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h40a513a77ddb32b8E.exit30" ], [ %.sroa.014.164, %.lr.ph67.preheader ] ; 3 uses
  %.sroa.014.065 = phi ptr [ %.sroa.014.166, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h40a513a77ddb32b8E.exit30" ], [ %i.af, %.lr.ph67.preheader ] ; 2 uses
  %i.bi = load i16, ptr %.sroa.014.065, align 2, !noundef !12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.014.065, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !noundef !12 ; 2 uses
  %.not.i26 = icmp eq i16 %i.bi, -1
  br i1 %.not.i26, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h40a513a77ddb32b8E.exit30", label %bb.n

bb.n:                                             ; preds = %.lr.ph67
  %i.bl = and i16 %i.bk, %i.ai
  %i.bm = zext i16 %i.bl to i64
  br label %bb.o

bb.o:                                             ; preds = %.backedge, %bb.n
  %.sroa.01.0.i27 = phi i64 [ %i.bm, %bb.n ], [ %.sroa.01.0.i27.be, %.backedge ] ; 4 uses
  %i.bn = icmp ult i64 %.sroa.01.0.i27, %1
  br i1 %i.bn, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i81, i64 %.sroa.01.0.i27
  %i.bp = load i16, ptr %i.bo, align 2, !noalias !339278, !noundef !12
  %.not5.i29 = icmp eq i16 %i.bp, -1
  br i1 %.not5.i29, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = add nuw nsw i64 %.sroa.01.0.i27, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.q, %bb.o
  %.sroa.01.0.i27.be = phi i64 [ %i.bq, %bb.q ], [ 0, %bb.o ]
  br label %bb.o

bb.r:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i81, i64 %.sroa.01.0.i27 ; 2 uses
  store i16 %i.bi, ptr %i.br, align 2, !noalias !339278
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i16 %i.bk, ptr %i.bs, align 2, !noalias !339278
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h40a513a77ddb32b8E.exit30"

"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h40a513a77ddb32b8E.exit30": ; preds = %.lr.ph67, %bb.r
  %i.bt = icmp eq ptr %.sroa.014.166, %i.as       ; 2 uses
  %.sroa.014.1.idx = select i1 %i.bt, i64 0, i64 4
  %.sroa.014.1 = getelementptr inbounds nuw i8, ptr %.sroa.014.166, i64 %.sroa.014.1.idx
  br i1 %i.bt, label %._crit_edge, label %.lr.ph67

._crit_edge:                                      ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h40a513a77ddb32b8E.exit30", %.preheader
  %i.bu = lshr i64 %1, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !12 ; 5 uses
  %i.by = icmp ult i64 %i.bx, 88686269585142076
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bu, %i.bx
  %i.ca = sub nsw i64 %1, %i.bz                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339284)
  %i.cb = load i64, ptr %i.bv, align 8, !range !64, !alias.scope !339287, !noalias !339288, !noundef !12 ; 3 uses
  %i.cc = sub nsw i64 %i.cb, %i.bx
  %i.cd = icmp ugt i64 %i.ca, %i.cc
  br i1 %i.cd, label %bb.s, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17h1aeefa52205c2166E.exit"

bb.s:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339290)
  %i.ce = add nsw i64 %i.ca, %i.bx                ; 4 uses
  %i.cf = icmp ult i64 %i.ce, %i.bx
  br i1 %i.cf, label %bb.w, label %bb.t, !prof !10

bb.t:                                             ; preds = %bb.s
  %i.cg = mul nuw nsw i64 %i.ce, 104
  %or.cond.i.i.i.i31 = icmp ugt i64 %i.ce, 88686269585142075
  br i1 %or.cond.i.i.i.i31, label %bb.w, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i32, !prof !167

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i32: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !339293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !339293
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ci = icmp eq i64 %i.cb, 0
  br i1 %i.ci, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h83c870e2766a5150E.exit.i.i.i", label %bb.u

bb.u:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i32
  %.val30.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !339294, !noalias !339288, !nonnull !12, !noundef !12
  %i.cj = mul nuw i64 %i.cb, 104
  store ptr %.val30.i.i.i, ptr %i.a, align 8, !alias.scope !339295, !noalias !339293
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.cj, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !339295, !noalias !339293
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h83c870e2766a5150E.exit.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h83c870e2766a5150E.exit.i.i.i": ; preds = %bb.u, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i32
  %.sink.i.i.i.i = phi i64 [ 8, %bb.u ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i32 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i.i.i, ptr %i.ck, align 8, !alias.scope !339295, !noalias !339293
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hcfd94540240ff740E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef %i.cg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !339293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !339293
  %i.cl = load i64, ptr %i.b, align 8, !range !861, !noalias !339293, !noundef !12
  %i.cm = trunc nuw i64 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5milli6update3new7indexer5index17h0dd05fd62bb48864E:bb.a
bb.i:                                             ; preds = %bb.h
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bq, i64 544
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..channel..WriterBbqueueReceiver$GT$17hc47c01844c4e45ceE"(ptr noalias noundef align 8 dereferenceable(80) %i.ei) #86
          to label %.body124.thread unwind label %bb.j, !noalias !357710

.body124.thread:                                  ; preds = %bb.i
  call fastcc void @"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$bbqueue..bbbuffer..BBBuffer$GT$$GT$17h4cd71d46984f8845E"(ptr noalias noundef align 8 dereferenceable(24) %i.de) #86
  br label %bb.mv

bb.j:                                             ; preds = %bb.i
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !357710
  unreachable

"_ZN4core3ptr133drop_in_place$LT$$LP$milli..update..new..channel..ExtractorBbqueueSender$C$milli..update..new..channel..WriterBbqueueReceiver$RP$$GT$17hca83239ebe9e459bE.exit.i": ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bq, i64 544
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..channel..WriterBbqueueReceiver$GT$17hc47c01844c4e45ceE"(ptr noalias noundef align 8 dereferenceable(80) %i.ek)
          to label %.thread unwind label %bb.b

.thread:                                          ; preds = %"_ZN4core3ptr133drop_in_place$LT$$LP$milli..update..new..channel..ExtractorBbqueueSender$C$milli..update..new..channel..WriterBbqueueReceiver$RP$$GT$17hca83239ebe9e459bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !357700
  br label %bb.l

bb.k:                                             ; preds = %_ZN10rayon_core8registry8Registry9in_worker17h2066dbe9bd09719eE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(544) %i.bq, i64 544, i1 false), !noalias !357711
  %.sroa.4220.0..sroa_idx221 = getelementptr inbounds nuw i8, ptr %i.bq, i64 544
  %.sroa.4220.0.copyload222 = load i64, ptr %.sroa.4220.0..sroa_idx221, align 8, !noalias !357711 ; 2 uses
  %.sroa.6223.0..sroa_idx224 = getelementptr inbounds nuw i8, ptr %i.bq, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6223, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6223.0..sroa_idx224, i64 72, i1 false), !noalias !357711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !357700
  %i.el = icmp eq i64 %.sroa.4220.0.copyload222, -9223372036854775808
  br i1 %i.el, label %bb.l, label %bb.m, !prof !20351

bb.l:                                             ; preds = %.thread, %bb.k
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5368, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5931) #85
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.cy, ptr noundef nonnull align 8 dereferenceable(544) %.sroa.0, i64 544, i1 false)
  %.sroa.6227.544..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6227.544..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6223, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6223)
  store i64 %.sroa.4220.0.copyload222, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  invoke void @_ZN5milli14fields_ids_map8metadata15MetadataBuilder10from_index17h46a646a6f3a5dfa5E(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.o unwind label %bb.n

"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h65470d9f0cd96e94E.exit217": ; preds = %bb.mj, %bb.s, %bb.n
  %.sroa.048.2 = phi i8 [ %.sroa.048.3, %bb.n ], [ 0, %bb.s ], [ 0, %bb.mj ] ; 2 uses
  %.sroa.046.2 = phi i8 [ 1, %bb.n ], [ %.sroa.046.4, %bb.s ], [ %.sroa.046.4, %bb.mj ] ; 2 uses
  %.sroa.042.0 = phi i8 [ %.sroa.042.1, %bb.n ], [ %.sroa.042.2, %bb.s ], [ %.sroa.042.2, %bb.mj ]
  %.pn110 = phi { ptr, i32 } [ %i.en, %bb.n ], [ %.pn108, %bb.s ], [ %.pn108, %bb.mj ] ; 2 uses
  %i.em = trunc nuw i8 %.sroa.042.0 to i1
  br i1 %i.em, label %bb.mt, label %.body124

bb.n:                                             ; preds = %bb.mf, %bb.q, %bb.m
  %.sroa.048.3 = phi i8 [ 0, %bb.mf ], [ 0, %bb.q ], [ 1, %bb.m ]
  %.sroa.042.1 = phi i8 [ %.sroa.036.10, %bb.mf ], [ 1, %bb.q ], [ 1, %bb.m ]
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h65470d9f0cd96e94E.exit217"

bb.o:                                             ; preds = %bb.m
  %i.eo = load i64, ptr %i.cw, align 8, !range !32074, !noundef !12 ; 2 uses
  %.not = icmp eq i64 %i.eo, 97
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(312) %i.ep, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.255.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6, i64 312, i1 false)
  store i64 %i.eo, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.mh

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.cv, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ct, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false)
  invoke void @_ZN5milli14fields_ids_map8metadata22FieldIdMapWithMetadata3new17ha90ecb79b1012ce2E(ptr noalias noundef nonnull sret([392 x i8]) align 8 captures(address) dereferenceable(392) %i.cu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ct, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(312) %i.cv)
          to label %bb.r unwind label %bb.n

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.eq, ptr noundef nonnull align 8 dereferenceable(392) %i.cu, i64 392, i1 false)
  store i64 0, ptr %i.cs, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  store i8 0, ptr %i.er, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  %i.es = invoke noundef i64 @_ZN10rayon_core19current_num_threads17h8fb4355fc2e587afE()
          to label %bb.u unwind label %bb.t       ; 2 uses

bb.s:                                             ; preds = %.split, %bb.mi, %bb.y, %bb.t
  %.sroa.046.4 = phi i8 [ %.sroa.040.1, %bb.t ], [ 1, %bb.mi ], [ 1, %bb.y ], [ 1, %.split ] ; 2 uses
  %.sroa.042.2 = phi i8 [ %.sroa.042.3, %bb.t ], [ %.sroa.042.4251, %bb.mi ], [ 1, %bb.y ], [ 0, %.split ] ; 2 uses
  %.sroa.040.0 = phi i8 [ %.sroa.040.1, %bb.t ], [ %.sroa.040.2252, %bb.mi ], [ %.sroa.040.6.ph, %bb.y ], [ %.sroa.040.8, %.split ]
  %.pn108 = phi { ptr, i32 } [ %i.eu, %bb.t ], [ %.pn106253, %bb.mi ], [ %.pn102.ph, %bb.y ], [ %.pn100, %.split ] ; 2 uses
  %i.et = trunc nuw i8 %.sroa.040.0 to i1
  br i1 %i.et, label %bb.mj, label %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h65470d9f0cd96e94E.exit217"

bb.t:                                             ; preds = %bb.x, %bb.v, %bb.me, %bb.r
  %.sroa.042.3 = phi i8 [ %.sroa.036.10, %bb.me ], [ 1, %bb.x ], [ 1, %bb.r ], [ 1, %bb.v ]
  %.sroa.040.1 = phi i8 [ %.sroa.040.19, %bb.me ], [ 1, %bb.x ], [ 1, %bb.r ], [ 1, %bb.v ] ; 2 uses
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !357712
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.bp, i8 0, i64 504, i1 false), !noalias !357712
  %i.ev = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.es, i1 false) ; 2 uses
  %.not.i = icmp eq i64 %i.ev, 0
  br i1 %.not.i, label %bb.v, label %bb.w, !prof !65211

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4023) #85
          to label %.noexc127 unwind label %bb.t

.noexc127:                                        ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ew = shl nuw nsw i64 %i.ev, 3
  %.idx.i = sub nuw nsw i64 512, %i.ew
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i
  %i.ey = icmp eq i64 %i.es, 0
  br i1 %i.ey, label %.loopexit344, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %_ZN4core4iter6traits8iterator8Iterator7collect17h9b90eba357bceac2E.exit.i
  %.sroa.0.014.i = phi ptr [ %i.ez, %_ZN4core4iter6traits8iterator8Iterator7collect17h9b90eba357bceac2E.exit.i ], [ %i.bp, %bb.w ] ; 2 uses
  %.sroa.7.013.i = phi i64 [ %i.fa, %_ZN4core4iter6traits8iterator8Iterator7collect17h9b90eba357bceac2E.exit.i ], [ 0, %bb.w ] ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 8 ; 2 uses
  %i.fa = add nuw nsw i64 %.sroa.7.013.i, 1
  %i.fb = shl nuw i64 1, %.sroa.7.013.i           ; 2 uses
  %i.fc = shl i64 96, %.sroa.7.013.i              ; 2 uses
  %exitcond.i = icmp eq i64 %.sroa.7.013.i, 57
  br i1 %exitcond.i, label %bb.x, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, !prof !167

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !357715
  %i.fd = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.fc, i64 noundef range(i64 1, 17) 8) #79, !noalias !357715 ; 11 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.fb, 7
  %i.ff = icmp samesign ult i64 %.sroa.7.013.i, 3
  br i1 %i.ff, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil.preheader", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader.new"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader.new": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader"
  %unroll_iter = and i64 %i.fb, -8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i"

bb.x:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %i.fc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5254) #85
          to label %.noexc128 unwind label %bb.t

.noexc128:                                        ; preds = %bb.x
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader.new"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader.new" ], [ %i.fn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i" ] ; 9 uses
  %niter = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader.new" ], [ %niter.next.7, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i" ]
  %i.fg = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !357728
  %i.fh = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.fh, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !357728
  %i.fi = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.fi, i64 280
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !357728
  %i.fj = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.fj, i64 376
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !357728
  %i.fk = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.fk, i64 472
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !357728
  %i.fl = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.fl, i64 568
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !357728
  %i.fm = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.fm, i64 664
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !357728
  %i.fn = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i, 8
  %i.fo = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.fo, i64 760
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !357728
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9b90eba357bceac2E.exit.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil.preheader": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.preheader"
  %lcmp.mod885 = icmp samesign ult i64 %.sroa.7.013.i, 3
  call void @llvm.assume(i1 %lcmp.mod885)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil.preheader"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.fp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil.preheader" ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil.preheader" ]
  %i.fp = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %i.fq = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.fq, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !357728
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9b90eba357bceac2E.exit.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil", !llvm.loop !357745

_ZN4core4iter6traits8iterator8Iterator7collect17h9b90eba357bceac2E.exit.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i.epil", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ce315fe888c4bc9E.exit.i.i.i.i.i.i.i.i.i"
  store ptr %i.fd, ptr %.sroa.0.014.i, align 8, !noalias !357712
  %i.fr = icmp eq ptr %i.ez, %i.ex
  br i1 %i.fr, label %.loopexit344, label %.lr.ph.i

.loopexit344:                                     ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h9b90eba357bceac2E.exit.i, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.cr, ptr noundef nonnull align 8 dereferenceable(504) %i.bp, i64 504, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !357712
  %.sroa.4238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 504
  store i64 0, ptr %.sroa.4238.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  %i.fs = invoke noundef i64 @_ZN10rayon_core19current_num_threads17h8fb4355fc2e587afE()
          to label %bb.z unwind label %.thread244 ; 2 uses

bb.y:                                             ; preds = %bb.lx, %bb.ah, %bb.lv, %.body.i203
  %.sroa.040.6.ph = phi i8 [ 1, %.body.i203 ], [ 1, %bb.lv ], [ 1, %bb.ah ], [ %.sroa.040.8, %bb.lx ] ; 2 uses
  %.sroa.038.4.ph = phi i8 [ %.sroa.038.15308, %.body.i203 ], [ %.sroa.038.15308, %bb.lv ], [ 1, %bb.ah ], [ %.sroa.038.6, %bb.lx ]
  %.pn102.ph = phi { ptr, i32 } [ %i.aid, %.body.i203 ], [ %i.aid, %bb.lv ], [ %i.ik, %bb.ah ], [ %.pn100, %bb.lx ] ; 2 uses
  call fastcc void @"_ZN4core3ptr162drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h831a3c5a4f54f613E"(ptr noalias noundef align 8 dereferenceable(512) %i.cp) #86
  %i.ft = trunc nuw i8 %.sroa.038.4.ph to i1
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17h0c2020d2d89db4d8E"(ptr noalias noundef align 8 dereferenceable(512) %i.cq) #86
  br i1 %i.ft, label %bb.mi, label %bb.s

.thread244:                                       ; preds = %.loopexit344, %bb.aa, %bb.ac
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.mi

bb.z:                                             ; preds = %.loopexit344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !357746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.bo, i8 0, i64 504, i1 false), !noalias !357746
  %i.fv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fs, i1 false) ; 2 uses
  %.not.i129 = icmp eq i64 %i.fv, 0
  br i1 %.not.i129, label %bb.aa, label %bb.ab, !prof !65211

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4023) #85
          to label %.noexc140 unwind label %.thread244

.noexc140:                                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.fw = shl nuw nsw i64 %i.fv, 3
  %.idx.i130 = sub nuw nsw i64 512, %i.fw
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i130
  %i.fy = icmp eq i64 %i.fs, 0
  br i1 %i.fy, label %.loopexit343, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %bb.ab, %_ZN4core4iter6traits8iterator8Iterator7collect17h596ab05db15f2092E.exit.i
  %.sroa.0.014.i132 = phi ptr [ %i.fz, %_ZN4core4iter6traits8iterator8Iterator7collect17h596ab05db15f2092E.exit.i ], [ %i.bo, %bb.ab ] ; 2 uses
  %.sroa.7.013.i133 = phi i64 [ %i.ga, %_ZN4core4iter6traits8iterator8Iterator7collect17h596ab05db15f2092E.exit.i ], [ 0, %bb.ab ] ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i132, i64 8 ; 2 uses
  %i.ga = add nuw nsw i64 %.sroa.7.013.i133, 1
  %i.gb = shl nuw i64 1, %.sroa.7.013.i133        ; 2 uses
  %i.gc = shl i64 32, %.sroa.7.013.i133           ; 2 uses
  %exitcond.i134 = icmp eq i64 %.sroa.7.013.i133, 58
  br i1 %exitcond.i134, label %bb.ac, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i135, !prof !167

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i135: ; preds = %.lr.ph.i131
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !357749
  %i.gd = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gc, i64 noundef range(i64 1, 17) 8) #79, !noalias !357749 ; 11 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.ac, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i135
  %xtraiter886 = and i64 %i.gb, 7
  %i.gf = icmp samesign ult i64 %.sroa.7.013.i133, 3
  br i1 %i.gf, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil.preheader", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader.new"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader.new": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader"
  %unroll_iter890 = and i64 %i.gb, -8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i"

bb.ac:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i135, %.lr.ph.i131
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i139 = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i135 ], [ 0, %.lr.ph.i131 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i139, i64 %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5254) #85
          to label %.noexc141 unwind label %.thread244

.noexc141:                                        ; preds = %bb.ac
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader.new"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136 = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader.new" ], [ %i.gn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i" ] ; 9 uses
  %niter891 = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader.new" ], [ %niter891.next.7, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i" ]
  %i.gg = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137 = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137, align 8, !noalias !357762
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.1 = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.1, align 8, !noalias !357762
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.2 = getelementptr inbounds nuw i8, ptr %i.gi, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.2, align 8, !noalias !357762
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.3 = getelementptr inbounds nuw i8, ptr %i.gj, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.3, align 8, !noalias !357762
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.4 = getelementptr inbounds nuw i8, ptr %i.gk, i64 152
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.4, align 8, !noalias !357762
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.5 = getelementptr inbounds nuw i8, ptr %i.gl, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.5, align 8, !noalias !357762
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.6 = getelementptr inbounds nuw i8, ptr %i.gm, i64 216
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.6, align 8, !noalias !357762
  %i.gn = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136, 8
  %i.go = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.7 = getelementptr inbounds nuw i8, ptr %i.go, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.7, align 8, !noalias !357762
  %niter891.next.7 = add i64 %niter891, 8         ; 2 uses
  %niter891.ncmp.7 = icmp eq i64 %niter891.next.7, %unroll_iter890
  br i1 %niter891.ncmp.7, label %_ZN4core4iter6traits8iterator8Iterator7collect17h596ab05db15f2092E.exit.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil.preheader": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.preheader"
  %lcmp.mod889 = icmp samesign ult i64 %.sroa.7.013.i133, 3
  call void @llvm.assume(i1 %lcmp.mod889)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil.preheader"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136.epil = phi i64 [ %i.gp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil.preheader" ] ; 2 uses
  %epil.iter887 = phi i64 [ %epil.iter887.next, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil.preheader" ]
  %i.gp = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136.epil, 1
  %i.gq = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i136.epil
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.epil = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.epil, align 8, !noalias !357762
  %epil.iter887.next = add i64 %epil.iter887, 1   ; 2 uses
  %epil.iter887.cmp.not = icmp eq i64 %epil.iter887.next, %xtraiter886
  br i1 %epil.iter887.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h596ab05db15f2092E.exit.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil", !llvm.loop !357779

_ZN4core4iter6traits8iterator8Iterator7collect17h596ab05db15f2092E.exit.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i.epil", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc95c7db04a5c7252E.exit.i.i.i.i.i.i.i.i.i"
  store ptr %i.gd, ptr %.sroa.0.014.i132, align 8, !noalias !357746
  %i.gr = icmp eq ptr %i.fz, %i.fx
  br i1 %i.gr, label %.loopexit343, label %.lr.ph.i131

.loopexit343:                                     ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h596ab05db15f2092E.exit.i, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.cq, ptr noundef nonnull align 8 dereferenceable(504) %i.bo, i64 504, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !357746
  %.sroa.4240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 504
  store i64 0, ptr %.sroa.4240.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.gs = invoke noundef i64 @_ZN10rayon_core19current_num_threads17h8fb4355fc2e587afE()
          to label %bb.ad unwind label %.thread601 ; 2 uses

.split:                                           ; preds = %bb.al
  call fastcc void @"_ZN4core3ptr162drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h831a3c5a4f54f613E"(ptr noalias noundef align 8 dereferenceable(512) %i.cp) #86
  %i.gt = trunc nuw i8 %.sroa.038.6 to i1
  br i1 %i.gt, label %bb.mi, label %bb.s

.thread601:                                       ; preds = %bb.ag, %bb.ae, %.loopexit343
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17h0c2020d2d89db4d8E"(ptr noalias noundef align 8 dereferenceable(512) %i.cq) #86
  br label %bb.mi

bb.ad:                                            ; preds = %.loopexit343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !357780
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.bn, i8 0, i64 504, i1 false), !noalias !357780
  %i.gv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gs, i1 false) ; 2 uses
  %.not.i142 = icmp eq i64 %i.gv, 0
  br i1 %.not.i142, label %bb.ae, label %bb.af, !prof !65211

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4023) #85
          to label %.noexc153 unwind label %.thread601

.noexc153:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.gw = shl nuw nsw i64 %i.gv, 3
  %.idx.i143 = sub nuw nsw i64 512, %i.gw
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i143
  %i.gy = icmp eq i64 %i.gs, 0
  br i1 %i.gy, label %.loopexit342, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.af, %_ZN4core4iter6traits8iterator8Iterator7collect17h2cd7aab007624e1eE.exit.i
  %.sroa.0.014.i145 = phi ptr [ %i.gz, %_ZN4core4iter6traits8iterator8Iterator7collect17h2cd7aab007624e1eE.exit.i ], [ %i.bn, %bb.af ] ; 2 uses
  %.sroa.7.013.i146 = phi i64 [ %i.ha, %_ZN4core4iter6traits8iterator8Iterator7collect17h2cd7aab007624e1eE.exit.i ], [ 0, %bb.af ] ; 6 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i145, i64 8 ; 2 uses
  %i.ha = add nuw nsw i64 %.sroa.7.013.i146, 1
  %i.hb = shl nuw i64 1, %.sroa.7.013.i146        ; 2 uses
  %i.hc = shl i64 32, %.sroa.7.013.i146           ; 2 uses
  %exitcond.i147 = icmp eq i64 %.sroa.7.013.i146, 58
  br i1 %exitcond.i147, label %bb.ag, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i148, !prof !167

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i148: ; preds = %.lr.ph.i144
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !357783
  %i.hd = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.hc, i64 noundef range(i64 1, 17) 8) #79, !noalias !357783 ; 11 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.ag, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.preheader"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h93be259b14e71eccE.exit.i.i.i.i.i.i.i.i.i.preheader": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i148
end_hunk_5
begin_hunk_6_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbdfd7804dcd57055E":bb.a
  %.not.i.1.i.i = icmp eq i8 %i.np, 108
  br i1 %.not.i.1.i.i, label %bb.fo, label %bb.fq, !prof !32969

bb.fo:                                            ; preds = %bb.fn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483060)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.nq, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.nr = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !noalias !483062, !noundef !12
  %i.nt = add i64 %i.au, 4
  store i64 %i.nt, ptr %i.ao, align 8, !alias.scope !483063, !noalias !483055
  %.not.i.2.i.i = icmp eq i8 %i.ns, 108
  br i1 %.not.i.2.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h903dce47c164f647E.exit.i.i", label %bb.fq, !prof !32969

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i": ; preds = %bb.fo, %bb.fm, %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !483064
  store i64 5, ptr %i.c, align 8, !noalias !483064
  %i.nu = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h93737f5b85b0bf66E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !483065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !483064
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fp, %bb.fn, %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !483064
  store i64 9, ptr %i.b, align 8, !noalias !483064
  %i.nv = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h93737f5b85b0bf66E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !483065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !483064
  br label %bb.fr

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h903dce47c164f647E.exit.i.i": ; preds = %bb.fp
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !483066, !noalias !483069
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h9c9c64bb2fcc499aE.exit"

bb.fr:                                            ; preds = %bb.fq, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.nu, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i" ], [ %i.nv, %bb.fq ]
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.nw, align 8, !alias.scope !483044, !noalias !483069
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !483044, !noalias !483069
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h9c9c64bb2fcc499aE.exit"

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h9c9c64bb2fcc499aE.exit": ; preds = %bb.fi, %bb.fj, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h903dce47c164f647E.exit.i.i", %bb.fr
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbe49cc3739791b39E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483085)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !483088, !noalias !483091, !noundef !12 ; 6 uses
  %.promoted.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !483094, !noalias !483095 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i.i.i, label %.loopexit38.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !483088, !noalias !483091, !nonnull !12, !align !12036, !noundef !12 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.m = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.c ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483096)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !483097, !noundef !12 ; 4 uses
  switch i8 %i.o, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 45, label %bb.d
  ], !prof !431737

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !483098, !noalias !483095
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, %i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit38.i.i.i, label %bb.b

.loopexit38.i.i.i:                                ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !483101
  store i64 5, ptr %i.e, align 8, !noalias !483101
  %i.q = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h689064b206fbc668E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !483102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !483101
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !483102, !noalias !483103
  store i64 1, ptr %0, align 16, !alias.scope !483102, !noalias !483103
  br label %"_ZN10serde_core2de5impls62_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u128$GT$11deserialize17h1b3d9dc84c178af9E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !483101
  store i64 14, ptr %i.f, align 8, !noalias !483101
  %i.s = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h689064b206fbc668E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !483102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !483101
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8, !alias.scope !483102, !noalias !483103
  store i64 1, ptr %0, align 16, !alias.scope !483102, !noalias !483103
  br label %"_ZN10serde_core2de5impls62_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u128$GT$11deserialize17h1b3d9dc84c178af9E.exit"

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !483101
  store i64 0, ptr %i.d, align 8, !noalias !483101
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !483101
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !483101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483107)
  %i.u = icmp ult i64 %i.m, %i.i
  br i1 %i.u, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hff10f7879ed89231E.exit.i.i.i.i", label %.thread.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hff10f7879ed89231E.exit.i.i.i.i": ; preds = %bb.e
  %i.v = add nuw i64 %i.m, 1                      ; 5 uses
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !483109, !noalias !483114
  %i.w = icmp eq i8 %i.o, 48
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hff10f7879ed89231E.exit.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483117)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h9e458b4d76da882dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !483101

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i.i.i.i: ; preds = %bb.f
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !483120, !noalias !483121 ; 2 uses
  %i.x = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !483120, !noalias !483121, !nonnull !12, !noundef !12 ; 4 uses
  %i.y = icmp sgt i64 %.pre.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre.i.i.i.i.i
  store i8 48, ptr %i.z, align 1, !noalias !483122
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !483120, !noalias !483121
  %i.aa = icmp ult i64 %i.v, %i.i
  br i1 %i.aa, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit.i.i.i.i", label %.thread.i.i.i

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hff10f7879ed89231E.exit.i.i.i.i"
  %i.ab = add i8 %i.o, -49
  %or.cond1.i.i.i.i = icmp ult i8 %i.ab, 9
  br i1 %or.cond1.i.i.i.i, label %bb.i, label %.thread.i.i.i.i, !prof !32969

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit.i.i.i.i": ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !483123, !noundef !12
  %i.ae = add i8 %i.ad, -48
  %or.cond.i.i.i.i = icmp ult i8 %i.ae, 10
  br i1 %or.cond.i.i.i.i, label %bb.h, label %.thread.i.i.i, !prof !77100

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !483130
  store i64 13, ptr %i.b, align 8, !noalias !483130
  %i.af = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h689064b206fbc668E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !483102

.noexc8.i.i.i:                                    ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !483130
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$15scan_integer12817h6eb051505dcc4f87E.exit.i.i.i"

.thread.i.i.i.i:                                  ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !483130
  store i64 13, ptr %i.a, align 8, !noalias !483130
  %i.ag = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h93737f5b85b0bf66E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !483102

.noexc9.i.i.i:                                    ; preds = %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !483130
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$15scan_integer12817h6eb051505dcc4f87E.exit.i.i.i"

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483131)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h9e458b4d76da882dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit8.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !483101

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit8.i.i.i.i: ; preds = %bb.i
  %.pre.i7.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !483134, !noalias !483121 ; 2 uses
  %i.ah = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !483134, !noalias !483121, !nonnull !12, !noundef !12 ; 3 uses
  %i.ai = icmp sgt i64 %.pre.i7.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.pre.i7.i.i.i.i
  store i8 %i.o, ptr %i.aj, align 1, !noalias !483135
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !483107, !noalias !483121
  %i.ak = icmp ult i64 %i.v, %i.i
  br i1 %i.ak, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit10.i.preheader.i.i.i", label %.thread.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit10.i.preheader.i.i.i": ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit8.i.i.i.i
  %i.al = sub i64 %i.i, %i.m                      ; 2 uses
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit10.i.i.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit10.i.i.i.i": ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit14.i.i.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit10.i.preheader.i.i.i"
  %i.am = phi ptr [ %i.av, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit14.i.i.i.i ], [ %i.ah, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit10.i.preheader.i.i.i" ]
  %i.an = phi i64 [ %storemerge.i.i.i.i, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit14.i.i.i.i ], [ 1, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit10.i.preheader.i.i.i" ] ; 5 uses
  %i.ao = phi i64 [ %i.as, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit14.i.i.i.i ], [ %i.v, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit10.i.preheader.i.i.i" ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !483136, !noundef !12 ; 2 uses
  %i.ar = add i8 %i.aq, -48
  %or.cond2.i.i.i.i = icmp ult i8 %i.ar, 10
  br i1 %or.cond2.i.i.i.i, label %bb.j, label %.loopexit37.i.i.i

bb.j:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit10.i.i.i.i"
  %i.as = add nuw i64 %i.ao, 1                    ; 2 uses
  store i64 %i.as, ptr %i.g, align 8, !alias.scope !483143, !noalias !483146
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483147)
  %i.at = load i64, ptr %i.d, align 8, !range !64, !alias.scope !483150, !noalias !483121, !noundef !12
  %i.au = icmp eq i64 %i.at, %i.an
  br i1 %i.au, label %bb.k, label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit14.i.i.i.i, !prof !10

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h9e458b4d76da882dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.an, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc11.i.i.i unwind label %.loopexit36.i.i.i, !noalias !483101

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.pre.i13.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !483153, !noalias !483121
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !483153, !noalias !483121
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit14.i.i.i.i

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit14.i.i.i.i: ; preds = %.noexc11.i.i.i, %bb.j
  %i.av = phi ptr [ %i.am, %bb.j ], [ %.pre.i.i.i.i, %.noexc11.i.i.i ] ; 2 uses
  %i.aw = phi i64 [ %i.an, %bb.j ], [ %.pre.i13.i.i.i.i, %.noexc11.i.i.i ] ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  store i8 %i.aq, ptr %i.ay, align 1, !noalias !483154
  %storemerge.i.i.i.i = add nuw nsw i64 %i.an, 1  ; 3 uses
  store i64 %storemerge.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !483107, !noalias !483121
  %exitcond.not.i.i.i = icmp eq i64 %storemerge.i.i.i.i, %i.al
  br i1 %exitcond.not.i.i.i, label %.loopexit37.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit10.i.i.i.i"

.loopexit36.i.i.i:                                ; preds = %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.i.i.i, %bb.i, %.thread.i.i.i.i, %bb.h, %bb.f
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit36.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit36.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483158)
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !483161, !noalias !483101 ; 2 uses
  %i.az = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.az, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val1.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !483161, !noalias !483101, !nonnull !12, !noundef !12
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !483162
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i.i.i"

.loopexit37.i.i.i:                                ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit14.i.i.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit10.i.i.i.i"
  %i.ba = phi i64 [ %i.an, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit10.i.i.i.i" ], [ %i.al, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit14.i.i.i.i ] ; 6 uses
  %i.bb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !483101, !nonnull !12, !noundef !12 ; 11 uses
  %cond.i.i.i = icmp eq i64 %i.ba, 1
  br i1 %cond.i.i.i, label %.thread.i.i.i, label %bb.n

.thread.i.i.i:                                    ; preds = %.loopexit37.i.i.i, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit8.i.i.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit.i.i.i.i", %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i.i.i.i
  %i.bc = phi ptr [ %i.bb, %.loopexit37.i.i.i ], [ %i.x, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i.i.i.i ], [ %i.ah, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit8.i.i.i.i ], [ %i.x, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h71fa95b93fa9449bE.exit.i.i.i.i" ] ; 5 uses
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !483163, !noalias !483166, !noundef !12
  switch i8 %i.bd, label %.lr.ph.preheader.i.i.i.i [
    i8 43, label %.loopexit.i.i.i
    i8 45, label %.loopexit.i.i.i
  ]

bb.n:                                             ; preds = %.loopexit37.i.i.i
  %.pr.i.i.i.i = load i8, ptr %i.bb, align 1, !alias.scope !483163, !noalias !483166
  %cond.i.i.i.i = icmp eq i8 %.pr.i.i.i.i, 43
  br i1 %cond.i.i.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 2 uses
  %i.bf = add i64 %i.ba, -1                       ; 2 uses
  %i.bg = icmp ult i64 %i.ba, 34
  br i1 %i.bg, label %.lr.ph.preheader.i.i.i.i, label %.preheader53.i.i.i.i

.preheader53.i.i.i.i:                             ; preds = %bb.q, %bb.o
  %.sroa.16.0.ph.i.i.i.i = phi i64 [ %i.ba, %bb.q ], [ %i.bf, %bb.o ] ; 2 uses
  %.sroa.01.0.ph.i.i.i.i = phi ptr [ %i.bb, %bb.q ], [ %i.be, %bb.o ]
  %.not.i.i.i.i49 = icmp eq i64 %.sroa.16.0.ph.i.i.i.i, 0
  br i1 %.not.i.i.i.i49, label %.loopexit33.i.i.i, label %.lr.ph

bb.p:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i52, i64 1
  %i.bi = add i64 %.sroa.16.0.i.i.i.i51, -1       ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i, label %.loopexit33.i.i.i, label %.lr.ph

bb.q:                                             ; preds = %bb.n
  %i.bj = icmp ult i64 %i.ba, 33
  br i1 %i.bj, label %.lr.ph.preheader.i.i.i.i, label %.preheader53.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.q, %bb.o, %.thread.i.i.i
  %i.bk = phi ptr [ %i.bc, %.thread.i.i.i ], [ %i.bb, %bb.q ], [ %i.bb, %bb.o ] ; 2 uses
  %.sroa.01.1.ph78.i.i.i.i = phi ptr [ %i.bc, %.thread.i.i.i ], [ %i.bb, %bb.q ], [ %i.be, %bb.o ]
  %.sroa.16.1.ph77.i.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ %i.ba, %bb.q ], [ %i.bf, %bb.o ]
  br label %.lr.ph.i12.i.i.i

.lr.ph:                                           ; preds = %.preheader53.i.i.i.i, %bb.p
  %.sroa.01.0.i.i.i.i52 = phi ptr [ %i.bh, %bb.p ], [ %.sroa.01.0.ph.i.i.i.i, %.preheader53.i.i.i.i ] ; 2 uses
  %.sroa.16.0.i.i.i.i51 = phi i64 [ %i.bi, %bb.p ], [ %.sroa.16.0.ph.i.i.i.i, %.preheader53.i.i.i.i ]
  %.sroa.017.0.i.i.i.i50 = phi i128 [ %i.bt, %bb.p ], [ 0, %.preheader53.i.i.i.i ]
  %i.bl = load i8, ptr %.sroa.01.0.i.i.i.i52, align 1, !alias.scope !483163, !noalias !483166, !noundef !12
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -48                  ; 2 uses
  %i.bo = icmp ult i32 %i.bn, 10
  br i1 %i.bo, label %bb.r, label %.loopexit.i.i.i

bb.r:                                             ; preds = %.lr.ph
  %i.bp = tail call { i128, i1 } @llvm.umul.with.overflow.i128(i128 %.sroa.017.0.i.i.i.i50, i128 10) ; 2 uses
  %i.bq = extractvalue { i128, i1 } %i.bp, 0      ; 2 uses
  %i.br = extractvalue { i128, i1 } %i.bp, 1
  %i.bs = zext nneg i32 %i.bn to i128
  %i.bt = add i128 %i.bq, %i.bs                   ; 3 uses
  %.not50.i.i.i.i = icmp ult i128 %i.bt, %i.bq
  %or.cond.i.i.i = select i1 %i.br, i1 true, i1 %.not50.i.i.i.i
  br i1 %or.cond.i.i.i, label %.loopexit.i.i.i, label %bb.p

.lr.ph.i12.i.i.i:                                 ; preds = %bb.s, %.lr.ph.preheader.i.i.i.i
  %.sroa.01.162.i.i.i.i = phi ptr [ %i.ca, %bb.s ], [ %.sroa.01.1.ph78.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.16.161.i.i.i.i = phi i64 [ %i.bz, %bb.s ], [ %.sroa.16.1.ph77.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.017.160.i.i.i.i = phi i128 [ %i.cc, %bb.s ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.bu = load i8, ptr %.sroa.01.162.i.i.i.i, align 1, !alias.scope !483163, !noalias !483166, !noundef !12
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -48                  ; 2 uses
  %i.bx = icmp ult i32 %i.bw, 10
  br i1 %i.bx, label %bb.s, label %.loopexit.i.i.i

bb.s:                                             ; preds = %.lr.ph.i12.i.i.i
  %i.by = mul i128 %.sroa.017.160.i.i.i.i, 10
  %i.bz = add nsw i64 %.sroa.16.161.i.i.i.i, -1   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.01.162.i.i.i.i, i64 1
  %i.cb = zext nneg i32 %i.bw to i128
  %i.cc = add i128 %i.by, %i.cb                   ; 2 uses
  %.not51.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not51.i.i.i.i, label %.loopexit33.i.i.i, label %.lr.ph.i12.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.r, %.lr.ph, %.lr.ph.i12.i.i.i, %.thread.i.i.i, %.thread.i.i.i
  %.val1.i.i1846.i.i.i = phi ptr [ %i.bc, %.thread.i.i.i ], [ %i.bk, %.lr.ph.i12.i.i.i ], [ %i.bc, %.thread.i.i.i ], [ %i.bb, %.lr.ph ], [ %i.bb, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !483101
  store i64 14, ptr %i.c, align 8, !noalias !483101
  %i.cd = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h93737f5b85b0bf66E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.u unwind label %.loopexit.split-lp.i.i.i, !noalias !483102

.loopexit33.i.i.i:                                ; preds = %bb.p, %bb.s, %.preheader53.i.i.i.i
  %i.ce = phi ptr [ %i.bb, %.preheader53.i.i.i.i ], [ %i.bk, %bb.s ], [ %i.bb, %bb.p ]
  %.sroa.1125.0.i.i.i = phi i128 [ 0, %.preheader53.i.i.i.i ], [ %i.cc, %bb.s ], [ %i.bt, %bb.p ]
  store i64 0, ptr %0, align 16, !alias.scope !483102, !noalias !483103
  %.sroa.4.0..sroa_idx22.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.1125.0.i.i.i, ptr %.sroa.4.0..sroa_idx22.i.i.i, align 16, !alias.scope !483102, !noalias !483103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483171)
  %.val.i.i14.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !483174, !noalias !483101 ; 2 uses
  %i.cf = icmp eq i64 %.val.i.i14.i.i.i, 0
  br i1 %i.cf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit16.i.i.i", label %bb.t

bb.t:                                             ; preds = %.loopexit33.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ce, i64 noundef %.val.i.i14.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !483175
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit16.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit16.i.i.i": ; preds = %bb.t, %.loopexit33.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !483101
  br label %"_ZN10serde_core2de5impls62_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u128$GT$11deserialize17h1b3d9dc84c178af9E.exit"

bb.u:                                             ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !483101
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$15scan_integer12817h6eb051505dcc4f87E.exit.i.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$15scan_integer12817h6eb051505dcc4f87E.exit.i.i.i": ; preds = %bb.u, %.noexc9.i.i.i, %.noexc8.i.i.i
  %.sink.i.i.i = phi ptr [ %i.cd, %bb.u ], [ %i.af, %.noexc8.i.i.i ], [ %i.ag, %.noexc9.i.i.i ]
  %.val1.i.i18.i.i.i = phi ptr [ %.val1.i.i1846.i.i.i, %bb.u ], [ %i.x, %.noexc8.i.i.i ], [ inttoptr (i64 1 to ptr), %.noexc9.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i.i, ptr %i.cg, align 8, !alias.scope !483102, !noalias !483103
  store i64 1, ptr %0, align 16, !alias.scope !483102, !noalias !483103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483179)
  %.val.i.i17.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !483182, !noalias !483101 ; 2 uses
  %i.ch = icmp eq i64 %.val.i.i17.i.i.i, 0
  br i1 %i.ch, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit19.i.i.i", label %bb.v

bb.v:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$15scan_integer12817h6eb051505dcc4f87E.exit.i.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i18.i.i.i, i64 noundef %.val.i.i17.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !483183
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit19.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit19.i.i.i": ; preds = %bb.v, %"_ZN10serde_json2de21Deserializer$LT$R$GT$15scan_integer12817h6eb051505dcc4f87E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !483101
  br label %"_ZN10serde_core2de5impls62_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u128$GT$11deserialize17h1b3d9dc84c178af9E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit.i.i.i": ; preds = %bb.m, %bb.l
  resume { ptr, i32 } %lpad.phi.i.i.i

"_ZN10serde_core2de5impls62_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u128$GT$11deserialize17h1b3d9dc84c178af9E.exit": ; preds = %.loopexit38.i.i.i, %bb.d, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit16.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit19.i.i.i"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbed860b8ad63d82aE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483193)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !483196, !noalias !483199, !noundef !12 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !483202, !noalias !483203 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !483196, !noalias !483199, !nonnull !12, !align !12036, !noundef !12
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.o = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
end_hunk_6
