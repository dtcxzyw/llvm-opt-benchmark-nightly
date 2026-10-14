Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN113_$LT$brotli..enc..backward_references..H9$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h5550931a7ee766cdE":bb.a
  %i.o = zext i32 %.sroa.010.0.copyload to i64
  %i.p = mul nuw nsw i64 %i.o, 506832829
  %i.q = lshr i64 %i.p, 17
  %i.r = and i64 %i.q, 32767                      ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9 = load i64, ptr %i.s, align 8, !noundef !21 ; 2 uses
  %i.t = icmp ugt i64 %.val9, %i.r
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6brotli3enc11static_dict23BROTLI_UNALIGNED_LOAD3217hd04eb045649540dbE.exit
  %.val8 = load ptr, ptr %0, align 8, !nonnull !21, !align !27, !noundef !21
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.val8, i64 %i.r ; 3 uses
  %i.v = load i16, ptr %i.u, align 2, !noundef !21
  %i.w = and i16 %i.v, 255
  %i.x = zext nneg i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7 = load i64, ptr %i.y, align 8, !noundef !21 ; 2 uses
  %i.z = shl nuw nsw i64 %i.r, 8
  %i.aa = or disjoint i64 %i.z, %i.x              ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %.val7
  br i1 %i.ab, label %bb.g, label %bb.h

bb.f:                                             ; preds = %_ZN6brotli3enc11static_dict23BROTLI_UNALIGNED_LOAD3217hd04eb045649540dbE.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.r, i64 noundef %.val9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #46
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.ac, align 8, !nonnull !21, !align !28, !noundef !21
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.aa
  %i.ae = trunc i64 %4 to i32
  store i32 %i.ae, ptr %i.ad, align 4
  %i.af = load i16, ptr %i.u, align 2, !noundef !21
  %i.ag = add i16 %i.af, 1
  store i16 %i.ag, ptr %i.u, align 2
  ret void

bb.h:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aa, i64 noundef %.val7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @268) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$10camel_case17h7da4b51f8d57cd7fE"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3229)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3229, !align !32, !noundef !21 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %"_ZN90_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..deref..Deref$GT$5deref17h32c30abd1d30564fE.exit", !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1492) #46, !noalias !3229
  unreachable

"_ZN90_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..deref..Deref$GT$5deref17h32c30abd1d30564fE.exit": ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  %i.c = load i8, ptr %i.b, align 2, !noundef !21
  %i.d = and i8 %i.c, 32
  %i.e = icmp ne i8 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noalias noundef ptr @"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$13encode_status17h11f64122635063c7E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3257)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !3257, !align !32, !noundef !21 ; 8 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.b, label %"_ZN90_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..deref..Deref$GT$5deref17h32c30abd1d30564fE.exit", !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1492) #46, !noalias !3257
  unreachable

"_ZN90_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..deref..Deref$GT$5deref17h32c30abd1d30564fE.exit": ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !align !29, !noundef !21 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZN90_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..deref..Deref$GT$5deref17h32c30abd1d30564fE.exit"
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8
  br label %bb.e

bb.d:                                             ; preds = %"_ZN90_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..deref..Deref$GT$5deref17h32c30abd1d30564fE.exit"
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.j = tail call { ptr, i64 } @_ZN4http6status10StatusCode16canonical_reason17hb48638da7e822555E(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.i) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 2 uses
  %.not11 = icmp eq ptr %i.k, null                ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %.sroa.56.0 = select i1 %.not11, i64 21, i64 %i.l
  %.sroa.05.0 = select i1 %.not11, ptr @269, ptr %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0 = phi i64 [ %i.h, %bb.c ], [ %.sroa.56.0, %bb.d ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ %.sroa.05.0, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3259)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !3260, !noalias !3261, !nonnull !21, !noundef !21 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.n, align 16, !noalias !3262
  %i.o = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !3260, !noalias !3261, !noundef !21
  %i.s = bitcast <16 x i1> %i.o to i16
  br label %.outer.i.i.i.i

.outer.i.i.i.i:                                   ; preds = %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i", %bb.e
  %i.t = phi i16 [ %i.y, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ %i.s, %bb.e ] ; 2 uses
  %.lcssa2631.i.i.i.i = phi ptr [ %.lcssa2630.i.i.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ %i.p, %bb.e ] ; 2 uses
  %.lcssa2529.i.i.i.i = phi ptr [ %.lcssa2528.i.i.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ %i.n, %bb.e ] ; 2 uses
  %.sroa.02.0.ph.i.i.i.i = phi i64 [ %i.ag, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ 0, %bb.e ] ; 2 uses
  %.sroa.0.0.ph.i.i.i.i = phi i64 [ %i.ah, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ %i.r, %bb.e ] ; 2 uses
  %.not22.i.i.i.i = icmp eq i16 %i.t, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.outer.i.i.i.i
  %i.u = icmp eq i64 %.sroa.0.0.ph.i.i.i.i, 0
  br i1 %i.u, label %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit, label %.lr.ph.split.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.split.i.i.i.i, %.outer.i.i.i.i
  %.lcssa2630.i.i.i.i = phi ptr [ %.lcssa2631.i.i.i.i, %.outer.i.i.i.i ], [ %i.am, %.lr.ph.split.i.i.i.i ]
  %.lcssa2528.i.i.i.i = phi ptr [ %.lcssa2529.i.i.i.i, %.outer.i.i.i.i ], [ %i.al, %.lr.ph.split.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.t, %.outer.i.i.i.i ], [ %.cast.i.i.i.i, %.lr.ph.split.i.i.i.i ] ; 3 uses
  %i.v = add i16 %.lcssa.i.i.i.i, -1
  %i.w = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.x = zext nneg i16 %i.w to i64
  %i.y = and i16 %i.v, %.lcssa.i.i.i.i
  %i.z = sub nsw i64 0, %i.x
  %i.aa = getelementptr inbounds [200 x i8], ptr %.lcssa2528.i.i.i.i, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !3263, !noundef !21 ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, 4
  br i1 %i.ad, label %bb.f, label %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i"

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -160
  %i.af = load i64, ptr %i.ae, align 8, !noalias !3263, !noundef !21
  br label %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i"

"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i": ; preds = %bb.f, %._crit_edge.i.i.i.i
  %.sink10.i.i.i.i.i.i.i.i.i = phi i64 [ %i.af, %bb.f ], [ %i.ac, %._crit_edge.i.i.i.i ]
  %i.ag = add i64 %.sink10.i.i.i.i.i.i.i.i.i, %.sroa.02.0.ph.i.i.i.i
  %i.ah = add i64 %.sroa.0.0.ph.i.i.i.i, -1
  br label %.outer.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.i.i.i.i
  %i.ai = phi ptr [ %i.am, %.lr.ph.split.i.i.i.i ], [ %.lcssa2631.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aj = phi ptr [ %i.al, %.lr.ph.split.i.i.i.i ], [ %.lcssa2529.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.val18.i.i.i.i = load <16 x i8>, ptr %i.ai, align 16, !noalias !3264
  %i.ak = icmp sgt <16 x i8> %.val18.i.i.i.i, splat (i8 -1)
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -3200 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ak to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.split.i.i.i.i, label %._crit_edge.i.i.i.i

_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit: ; preds = %.lr.ph.i.i.i.i
  %i.an = mul i64 %.sroa.02.0.ph.i.i.i.i, 30
  %i.ao = add i64 %.sroa.5.0, 256
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !21
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noundef !21
  %i.au = sub i64 %i.at, %i.ar
  %.not12 = icmp ugt i64 %i.ap, %i.au
  br i1 %.not12, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit
  %i.av = tail call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ap, i1 noundef zeroext true) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 59
  %i.ax = load i8, ptr %i.aw, align 1, !range !23, !noundef !21 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.az = load i16, ptr %i.ay, align 8, !range !40, !noundef !21 ; 2 uses
  %i.ba = icmp samesign ult i8 %i.ax, 3
  br i1 %i.ba, label %switch.lookup, label %_ZN10actix_http7helpers17write_status_line17h3a28769db8f12ee3E.exit

switch.lookup:                                    ; preds = %bb.h
  %i.bb = zext nneg i8 %i.ax to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$13encode_status17h11f64122635063c7E", i64 %i.bb
  %switch.load = load ptr, ptr %switch.gep, align 8
  tail call void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load, i64 noundef 9)
  br label %_ZN10actix_http7helpers17write_status_line17h3a28769db8f12ee3E.exit

_ZN10actix_http7helpers17write_status_line17h3a28769db8f12ee3E.exit: ; preds = %bb.h, %switch.lookup
  %i.bc = insertelement <2 x i16> poison, i16 %i.az, i64 0
  %i.bd = shufflevector <2 x i16> %i.bc, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.be = udiv <2 x i16> %i.bd, <i16 100, i16 10> ; 2 uses
  %i.bf = bitcast <2 x i16> %i.be to <4 x i8>
  %i.bg = extractelement <4 x i8> %i.bf, i64 0
  %2 = shufflevector <2 x i16> %i.be, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %3 = insertelement <2 x i16> %2, i16 %i.az, i64 1
  %4 = urem <2 x i16> %3, splat (i16 10)          ; 2 uses
  %5 = bitcast <2 x i16> %4 to <4 x i8>
  %6 = extractelement <4 x i8> %5, i64 0
  %7 = bitcast <2 x i16> %4 to <4 x i8>
  %8 = extractelement <4 x i8> %7, i64 2
  %i.bh = add i8 %i.bg, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3265
  store i8 %i.bh, ptr %i.d, align 1, !noalias !3265
  call void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3265
  %i.bi = or disjoint i8 %6, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3266
  store i8 %i.bi, ptr %i.c, align 1, !noalias !3266
  call void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3266
  %i.bj = or disjoint i8 %8, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3267
  store i8 %i.bj, ptr %i.b, align 1, !noalias !3267
  call void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3268
  store i8 32, ptr %i.a, align 1, !noalias !3268
  call void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3268
  call void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.5.0)
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define noundef range(i16 1, 0) i16 @"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$6status17hcae1f8d7f001af1aE"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3271)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3271, !align !32, !noundef !21 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %"_ZN90_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..deref..Deref$GT$5deref17h32c30abd1d30564fE.exit", !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1492) #46, !noalias !3271
  unreachable

"_ZN90_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..deref..Deref$GT$5deref17h32c30abd1d30564fE.exit": ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load i16, ptr %i.b, align 8, !range !40, !noundef !21
  ret i16 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7chunked17h0aaeab399d6284f6E"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3274)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3274, !align !32, !noundef !21 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %"_ZN90_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..deref..Deref$GT$5deref17h32c30abd1d30564fE.exit", !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1492) #46, !noalias !3274
  unreachable

"_ZN90_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..deref..Deref$GT$5deref17h32c30abd1d30564fE.exit": ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  %i.c = load i8, ptr %i.b, align 2, !noundef !21
  %i.d = and i8 %i.c, 16
  %.not = icmp eq i8 %i.d, 0
  ret i1 %.not
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7headers17h601906e9b36cc9ccE"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3277)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3277, !align !32, !noundef !21 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %"_ZN90_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..deref..Deref$GT$5deref17h32c30abd1d30564fE.exit", !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1492) #46, !noalias !3277
  unreachable

"_ZN90_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..deref..Deref$GT$5deref17h32c30abd1d30564fE.exit": ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN118_$LT$actix_http..header..shared..http_date..HttpDate$u20$as$u20$actix_http..header..into_value..TryIntoHeaderValue$GT$14try_into_value17h51c25a146cd15475E"(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 13 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 10 uses
  %i.o = alloca [16 x i8], align 8                ; 3 uses
  store i64 %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %2, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !3312
  %i.q = tail call noundef dereferenceable_or_null(29) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, 9) 1) #45, !noalias !3312 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #46
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit": ; preds = %bb.a
  store ptr %i.q, ptr %i.n, align 8, !alias.scope !3313, !noalias !3314
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %i.s, align 8, !alias.scope !3313, !noalias !3314
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 29, ptr %i.t, align 8, !alias.scope !3313, !noalias !3314
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.u, align 8, !alias.scope !3313, !noalias !3314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.o, ptr %i.k, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN86_$LT$actix_http..header..shared..http_date..HttpDate$u20$as$u20$core..fmt..Display$GT$3fmt17hb08aa84dffd724d1E", ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @145, ptr %i.l, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.k, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 1, ptr %i.y, align 8
  %i.z = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17ha7f7a287cc9fb0ebE(ptr noalias noundef align 8 dereferenceable(8) %i.m, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.l)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.u, %.noexc, %bb.j, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1af92b429a653e71E.exit", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit"
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p, %bb.l, %bb.f, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.au, %bb.l ], [ %i.ab, %bb.f ], [ %i.aa, %bb.c ], [ %i.bg, %bb.p ], [ %i.bg, %bb.o ]
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h77fff824d0c05666E.exit" unwind label %bb.x

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1af92b429a653e71E.exit", label %bb.e, !prof !31

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.z, ptr %i.i, align 8
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @546, i64 noundef 43, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @545, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #46
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h85474bca0acdf2a3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #47
          to label %.body unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1af92b429a653e71E.exit": ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_ZN5bytes9bytes_mut8BytesMut5split17hdec65ef5b53cc0f1E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.i unwind label %bb.c

bb.i:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1af92b429a653e71E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !3315)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ad = load ptr, ptr %i.j, align 8, !alias.scope !3315, !noalias !3316, !nonnull !21, !noundef !21 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !3315, !noalias !3316, !noundef !21 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !3315, !noalias !3316, !noundef !21 ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = and i64 %i.ai, 1
  %.not.i5 = icmp eq i64 %i.aj, 0
  br i1 %.not.i5, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3317
  %.sroa.5.0..sroa_idx1425 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ad, ptr %.sroa.5.0..sroa_idx1425, align 8, !noalias !3318
  %.sroa.7.0..sroa_idx1626 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.af, ptr %.sroa.7.0..sroa_idx1626, align 8, !noalias !3318
  %.sroa.8.0..sroa_idx1827 = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.ah, ptr %.sroa.8.0..sroa_idx1827, align 8, !noalias !3318
  store ptr null, ptr %i.b, align 8, !noalias !3317
  br label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !3315, !noalias !3316, !noundef !21
  %i.am = lshr i64 %i.ai, 5                       ; 5 uses
  invoke void @_ZN5bytes9bytes_mut11rebuild_vec17h7930fac3c9cb4245E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull %i.ad, i64 noundef %i.af, i64 noundef %i.al, i64 noundef %i.am)
          to label %.noexc unwind label %bb.c
end_hunk_0
