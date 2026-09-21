Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 289
begin_hunk_0_@"_ZN113_$LT$brotli..enc..backward_references..H9$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h5550931a7ee766cdE":bb.a
bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3224
  store ptr @230, ptr %i.a, align 8, !noalias !3224
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8, !noalias !3224
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.k, align 8, !noalias !3224
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !noalias !3224
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.m, align 8, !noalias !3224
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @867) #46, !noalias !3224
  unreachable

_ZN6brotli3enc11static_dict23BROTLI_UNALIGNED_LOAD3217hd04eb045649540dbE.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %.sroa.010.0.copyload = load i32, ptr %i.n, align 1, !alias.scope !3225, !noalias !3226
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
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1495) #46, !noalias !3229
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
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1495) #46, !noalias !3257
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
  %2 = insertelement <2 x i16> poison, i16 %i.az, i64 0
  %3 = shufflevector <2 x i16> %2, <2 x i16> poison, <2 x i32> zeroinitializer
  %4 = udiv <2 x i16> %3, <i16 100, i16 10>       ; 2 uses
  %5 = bitcast <2 x i16> %4 to <4 x i8>
  %6 = extractelement <4 x i8> %5, i64 0
  %7 = shufflevector <2 x i16> %4, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %8 = insertelement <2 x i16> %7, i16 %i.az, i64 1
  %9 = urem <2 x i16> %8, splat (i16 10)          ; 2 uses
  %10 = bitcast <2 x i16> %9 to <4 x i8>
  %11 = extractelement <4 x i8> %10, i64 0
  %12 = bitcast <2 x i16> %9 to <4 x i8>
  %13 = extractelement <4 x i8> %12, i64 2
  %i.bc = add i8 %6, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3265
  store i8 %i.bc, ptr %i.d, align 1, !noalias !3265
  call void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3265
  %i.bd = or disjoint i8 %11, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3266
  store i8 %i.bd, ptr %i.c, align 1, !noalias !3266
  call void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3266
  %i.be = or disjoint i8 %13, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3267
  store i8 %i.be, ptr %i.b, align 1, !noalias !3267
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
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1495) #46, !noalias !3271
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
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1495) #46, !noalias !3274
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
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1495) #46, !noalias !3277
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
begin_hunk_1_@_ZN6brotli3enc19backward_references30BrotliCreateBackwardReferences17he5bf28e56e3e77a2E:bb.a
.lr.ph.i.i.i.i.i561.epil.preheader:               ; preds = %.loopexit130.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i561.preheader
  %.sroa.0.06.i.i.i.i.i562.epil.init = phi ptr [ %i.eay, %.lr.ph.i.i.i.i.i561.preheader ], [ %i.ebe, %.loopexit130.i.loopexit.unr-lcssa ]
  %lcmp.mod4532 = icmp ne i64 %xtraiter4528, 0
  tail call void @llvm.assume(i1 %lcmp.mod4532)
  br label %.lr.ph.i.i.i.i.i561.epil

.lr.ph.i.i.i.i.i561.epil:                         ; preds = %.lr.ph.i.i.i.i.i561.epil, %.lr.ph.i.i.i.i.i561.epil.preheader
  %.sroa.0.06.i.i.i.i.i562.epil = phi ptr [ %i.ebf, %.lr.ph.i.i.i.i.i561.epil ], [ %.sroa.0.06.i.i.i.i.i562.epil.init, %.lr.ph.i.i.i.i.i561.epil.preheader ] ; 6 uses
  %epil.iter4529 = phi i64 [ %epil.iter4529.next, %.lr.ph.i.i.i.i.i561.epil ], [ 0, %.lr.ph.i.i.i.i.i561.epil.preheader ]
  store i32 0, ptr %.sroa.0.06.i.i.i.i.i562.epil, align 4, !noalias !11337
  %.sroa.56.0..sroa.0.06.i.i.sroa_idx.i.i.i564.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562.epil, i64 4
  store float 1.700000e+38, ptr %.sroa.56.0..sroa.0.06.i.i.sroa_idx.i.i.i564.epil, align 4, !noalias !11337
  %.sroa.68.0..sroa.0.06.i.i.sroa_idx.i.i.i565.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562.epil, i64 8
  store i32 1, ptr %.sroa.68.0..sroa.0.06.i.i.sroa_idx.i.i.i565.epil, align 4, !noalias !11337
  %.sroa.710.0..sroa.0.06.i.i.sroa_idx.i.i.i566.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562.epil, i64 12
  store i32 0, ptr %.sroa.710.0..sroa.0.06.i.i.sroa_idx.i.i.i566.epil, align 4, !noalias !11337
  %.sroa.8.0..sroa.0.06.i.i.sroa_idx.i.i.i567.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562.epil, i64 16
  store i32 0, ptr %.sroa.8.0..sroa.0.06.i.i.sroa_idx.i.i.i567.epil, align 4, !noalias !11337
  %i.ebf = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562.epil, i64 20 ; 2 uses
  %epil.iter4529.next = add i64 %epil.iter4529, 1 ; 2 uses
  %epil.iter4529.cmp.not = icmp eq i64 %epil.iter4529.next, %xtraiter4528
  br i1 %epil.iter4529.cmp.not, label %.loopexit130.i, label %.lr.ph.i.i.i.i.i561.epil, !llvm.loop !10762

.loopexit130.i:                                   ; preds = %.loopexit130.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i561.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbde05e8d50bbef8dE.exit.i.i.i.i.i560"
  %.sroa.0.0.lcssa.i.i.i.i.i569 = phi ptr [ %i.eay, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbde05e8d50bbef8dE.exit.i.i.i.i.i560" ], [ %i.ebe, %.loopexit130.i.loopexit.unr-lcssa ], [ %i.ebf, %.lr.ph.i.i.i.i.i561.epil ] ; 5 uses
  store i32 0, ptr %.sroa.0.0.lcssa.i.i.i.i.i569, align 4, !noalias !11337
  %.sroa.56.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i570 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i569, i64 4
  store float 1.700000e+38, ptr %.sroa.56.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i570, align 4, !noalias !11337
  %.sroa.68.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i571 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i569, i64 8
  store i32 1, ptr %.sroa.68.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i571, align 4, !noalias !11337
  %.sroa.710.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i572 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i569, i64 12
  store i32 0, ptr %.sroa.710.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i572, align 4, !noalias !11337
  %.sroa.8.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i573 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i569, i64 16
  store i32 0, ptr %.sroa.8.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i573, align 4, !noalias !11337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11326
  %i.ebg = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.val117.i = load i32, ptr %i.ebg, align 8, !alias.scope !11319, !noalias !11325
  invoke fastcc void @"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$4init17h0cfdedd5a0ff8f74E"(ptr noalias noundef align 8 captures(address) dereferenceable(2864) %i.k, i32 %.val117.i, i64 noundef range(i64 0, 4294967296) %0)
          to label %bb.acb unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17h2681c27d940c173bE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i", !noalias !11330

bb.acb:                                           ; preds = %.loopexit130.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2864) %i.l, ptr noundef nonnull align 8 dereferenceable(2864) %i.k, i64 2864, i1 false), !noalias !11326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11326
  %i.ebh = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.ebi = sub i64 %1, %i.eau
  %i.ebj = getelementptr inbounds nuw i8, ptr %i.l, i64 2856
  %i.ebk = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.ebl = getelementptr inbounds nuw i8, ptr %i.l, i64 2860
  %i.ebm = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 5 uses
  %i.ebn = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 5 uses
  %i.ebo = getelementptr inbounds nuw i8, ptr %i.l, i64 2848
  %i.ebp = getelementptr inbounds nuw i8, ptr %i.eay, i64 8
  %.sroa.4.0..sroa_idx.i.i575 = getelementptr inbounds nuw i8, ptr %i.eay, i64 4
  %i.ebq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ebr = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ebs = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ebt = add nuw nsw i64 %0, 1                  ; 2 uses
  %i.ebu = icmp eq i64 %0, 0
  %unroll_iter4541 = and i64 %i.ebt, 8589934590
  %i.ebv = and i64 %0, 1
  %lcmp.mod4538.not.not = icmp eq i64 %i.ebv, 0
  %lcmp.mod4540 = trunc i64 %i.ebt to i1
  br label %.preheader.i577.preheader

bb.acc:                                           ; preds = %.loopexit.i585
  br i1 %.not119.i2263, label %.preheader.i577.preheader, label %.noexc.i576

.preheader.i577.preheader:                        ; preds = %bb.acb, %bb.acc
  %.not119.i2263 = phi i1 [ true, %bb.acb ], [ false, %bb.acc ] ; 2 uses
  %i.ebw = phi i64 [ %i.eav, %bb.acb ], [ %i.eiu, %bb.acc ] ; 2 uses
  br i1 %i.ebu, label %.preheader.i577.epil.preheader, label %.preheader.i577

.noexc.i576:                                      ; preds = %bb.acc
  %i.ebx = load ptr, ptr %i.ebm, align 8, !alias.scope !11338, !noalias !11339, !nonnull !21, !align !28, !noundef !21
  %i.eby = load i64, ptr %i.ebn, align 8, !alias.scope !11338, !noalias !11339, !noundef !21 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ebm, align 8, !alias.scope !11338, !noalias !11339
  store i64 0, ptr %i.ebn, align 8, !alias.scope !11338, !noalias !11339
  %i.ebz = icmp eq i64 %i.eby, 0
  br i1 %i.ebz, label %.noexc100.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %.noexc.i576
  %i.eca = shl nuw nsw i64 %i.eby, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.ebx, i64 noundef %i.eca, i64 noundef 4) #45, !noalias !11330
  br label %.noexc100.i

.noexc100.i:                                      ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %.noexc.i576
  %i.ecb = load ptr, ptr %i.l, align 8, !alias.scope !11338, !noalias !11339, !nonnull !21, !align !28, !noundef !21
  %i.ecc = load i64, ptr %i.ebk, align 8, !alias.scope !11338, !noalias !11339, !noundef !21 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.l, align 8, !alias.scope !11338, !noalias !11339
  store i64 0, ptr %i.ebk, align 8, !alias.scope !11338, !noalias !11339
  %i.ecd = icmp eq i64 %i.ecc, 0
  br i1 %i.ecd, label %bb.acd, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i147.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i147.i": ; preds = %.noexc100.i
  %i.ece = shl nuw nsw i64 %i.ecc, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.ecb, i64 noundef %i.ece, i64 noundef 4) #45, !noalias !11330
  br label %bb.acd

bb.acd:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i147.i", %.noexc100.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.eay, i64 noundef %i.eax, i64 noundef 4) #45, !noalias !11330
  %i.ecf = icmp eq i64 %.sroa.16.0.lcssa.i, 0
  br i1 %i.ecf, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd2e7857a0dcb1ed5E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i150.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i150.i": ; preds = %bb.acd
  %i.ecg = shl nuw nsw i64 %.sroa.16.0.lcssa.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.06.0.lcssa.i, i64 noundef %i.ecg, i64 noundef 8) #45, !noalias !11330
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd2e7857a0dcb1ed5E.exit.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd2e7857a0dcb1ed5E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i150.i", %bb.acd
  br i1 %.not.i559, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i151.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i151.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd2e7857a0dcb1ed5E.exit.i"
  %i.ech = shl nuw nsw i64 %0, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.eas, i64 noundef %i.ech, i64 noundef 4) #45, !noalias !11330
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i151.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd2e7857a0dcb1ed5E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !11340)
  %.val5.i.i = load i64, ptr %i.ebk, align 8, !alias.scope !11340, !noalias !11326, !noundef !21 ; 2 uses
  %i.eci = icmp eq i64 %.val5.i.i, 0
  br i1 %i.eci, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i152.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i152.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i"
  %.val4.i.i = load ptr, ptr %i.l, align 8, !alias.scope !11340, !noalias !11326, !nonnull !21, !noundef !21
  %i.ecj = shl nuw nsw i64 %.val5.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef %i.ecj, i64 noundef 4) #45, !noalias !11341
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i152.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i"
  %.val1.i.i = load i64, ptr %i.ebn, align 8, !alias.scope !11340, !noalias !11326, !noundef !21 ; 2 uses
  %i.eck = icmp eq i64 %.val1.i.i, 0
  br i1 %i.eck, label %_ZN6brotli3enc19backward_references2hq38BrotliCreateHqZopfliBackwardReferences17h3c09a23afcb8fdfbE.exit, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i8.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i8.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i.i"
  %.val.i153.i = load ptr, ptr %i.ebm, align 8, !alias.scope !11340, !noalias !11326, !nonnull !21, !noundef !21
  %i.ecl = shl nuw nsw i64 %.val1.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i153.i, i64 noundef %i.ecl, i64 noundef 4) #45, !noalias !11341
  br label %_ZN6brotli3enc19backward_references2hq38BrotliCreateHqZopfliBackwardReferences17h3c09a23afcb8fdfbE.exit

.unr-lcssa4535:                                   ; preds = %.preheader.i577
  br i1 %lcmp.mod4538.not.not, label %.preheader.i577.epil.preheader, label %bb.ace

.preheader.i577.epil.preheader:                   ; preds = %.unr-lcssa4535, %.preheader.i577.preheader
  %.sroa.054.0296.i.epil.init = phi i64 [ 0, %.preheader.i577.preheader ], [ %i.eiy, %.unr-lcssa4535 ]
  call void @llvm.assume(i1 %lcmp.mod4540)
  %i.ecm = getelementptr inbounds nuw [20 x i8], ptr %i.eay, i64 %.sroa.054.0296.i.epil.init ; 4 uses
  store i64 9151254648282152960, ptr %i.ecm, align 4, !noalias !11330
  %.sroa.4.0..sroa_idx.i578.epil = getelementptr inbounds nuw i8, ptr %i.ecm, i64 8
  store i32 1, ptr %.sroa.4.0..sroa_idx.i578.epil, align 4, !noalias !11330
  %.sroa.5.0..sroa_idx.i579.epil = getelementptr inbounds nuw i8, ptr %i.ecm, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx.i579.epil, align 4, !noalias !11330
  %.sroa.653.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.ecm, i64 16
  store i32 0, ptr %.sroa.653.0..sroa_idx.i.epil, align 4, !noalias !11330
  br label %bb.ace

bb.ace:                                           ; preds = %.unr-lcssa4535, %.preheader.i577.epil.preheader
  br i1 %.not119.i2263, label %bb.acf, label %bb.acg

bb.acf:                                           ; preds = %bb.ace
  invoke fastcc void @"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$22set_from_literal_costs17hba1cebbfc31022b8E"(ptr noalias noundef align 8 dereferenceable(2864) %i.l, i64 noundef range(i64 0, 4294967296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef range(i64 0, 4294967296) %4)
          to label %bb.acq unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17h2681c27d940c173bE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.i", !noalias !11330

bb.acg:                                           ; preds = %bb.ace
  %i.ecn = sub i64 %i.ebw, %i.eav
  call void @llvm.experimental.noalias.scope.decl(metadata !11342)
  call void @llvm.experimental.noalias.scope.decl(metadata !11343)
  call void @llvm.experimental.noalias.scope.decl(metadata !11344)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11345
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false), !noalias !11345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11345
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2816) %i.g, i8 0, i64 2816, i1 false), !noalias !11345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11345
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(560) %i.f, i8 0, i64 560, i1 false), !noalias !11345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11345
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !noalias !11345
  %.not72.i.i = icmp eq i64 %i.ebw, %i.eav
  br i1 %.not72.i.i, label %._crit_edge64.i.i, label %.lr.ph63.i.i

._crit_edge64.i.i:                                ; preds = %._crit_edge.i.i, %bb.acg
  invoke void @_ZN6brotli3enc19backward_references2hq7SetCost17hc2dee2044af4d67bE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.h, i64 noundef 256, i64 noundef 256, i1 noundef zeroext true, ptr noalias noundef nonnull align 4 %i.e, i64 noundef 256)
          to label %.noexc155.i unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17h2681c27d940c173bE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.i", !noalias !11330

.noexc155.i:                                      ; preds = %._crit_edge64.i.i
  invoke void @_ZN6brotli3enc19backward_references2hq7SetCost17hc2dee2044af4d67bE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.g, i64 noundef 704, i64 noundef 704, i1 noundef zeroext false, ptr noalias noundef nonnull align 4 %i.ebh, i64 noundef 704)
          to label %.noexc156.i unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17h2681c27d940c173bE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.i", !noalias !11330

.noexc156.i:                                      ; preds = %.noexc155.i
  %i.eco = load i32, ptr %i.ebj, align 8, !alias.scope !11342, !noalias !11346, !noundef !21
  %i.ecp = zext i32 %i.eco to i64
  %.val43.i.i = load ptr, ptr %i.l, align 8, !alias.scope !11342, !noalias !11346, !nonnull !21, !align !28, !noundef !21
  %.val44.i.i = load i64, ptr %i.ebk, align 8, !alias.scope !11342, !noalias !11346, !noundef !21
  invoke void @_ZN6brotli3enc19backward_references2hq7SetCost17hc2dee2044af4d67bE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.f, i64 noundef 140, i64 noundef %i.ecp, i1 noundef zeroext false, ptr noalias noundef nonnull align 4 %.val43.i.i, i64 noundef %.val44.i.i)
          to label %vector.body2269 unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17h2681c27d940c173bE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.i", !noalias !11330

vector.body2269:                                  ; preds = %.noexc156.i, %vector.body2269
  %index2270 = phi i64 [ %index.next2274, %vector.body2269 ], [ 0, %.noexc156.i ] ; 3 uses
  %vec.phi = phi <4 x float> [ %i.ecs, %vector.body2269 ], [ splat (float 1.700000e+38), %.noexc156.i ] ; 2 uses
  %vec.phi2271 = phi <4 x float> [ %i.ect, %vector.body2269 ], [ splat (float 1.700000e+38), %.noexc156.i ] ; 2 uses
  %i.ecq = getelementptr inbounds nuw [4 x i8], ptr %i.ebh, i64 %index2270 ; 2 uses
  %i.ecr = getelementptr inbounds nuw i8, ptr %i.ecq, i64 16
  %wide.load2272 = load <4 x float>, ptr %i.ecq, align 8, !alias.scope !11342, !noalias !11346
  %wide.load2273 = load <4 x float>, ptr %i.ecr, align 8, !alias.scope !11342, !noalias !11346
  %14 = freeze <4 x float> %wide.load2272         ; 2 uses
  %15 = freeze <4 x float> %wide.load2273         ; 2 uses
  %i.ecs = call <4 x float> @llvm.minnum.v4f32(<4 x float> %vec.phi, <4 x float> %14) ; 2 uses
  %i.ect = call <4 x float> @llvm.minnum.v4f32(<4 x float> %vec.phi2271, <4 x float> %15) ; 2 uses
  %index.next2274 = add nuw i64 %index2270, 8     ; 2 uses
  %i.ecu = fcmp uno <4 x float> %14, %15
  %i.ecv = bitcast <4 x i1> %i.ecu to i4
  %i.ecw = icmp ne i4 %i.ecv, 0                   ; 4 uses
  %i.ecx = icmp eq i64 %index.next2274, 704
  %i.ecy = or i1 %i.ecw, %i.ecx
  br i1 %i.ecy, label %middle.block2275, label %vector.body2269, !llvm.loop !10772

middle.block2275:                                 ; preds = %vector.body2269
  %i.ecz = select i1 %i.ecw, <4 x float> %vec.phi, <4 x float> %i.ecs
  %i.eda = select i1 %i.ecw, <4 x float> %vec.phi2271, <4 x float> %i.ect
  %rdx.minmax = call <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ecz, <4 x float> %i.eda)
  %i.edb = call float @llvm.vector.reduce.fmin.v4f32(<4 x float> %rdx.minmax) ; 2 uses
  br i1 %i.ecw, label %.noexc157.i, label %.loopexit2276

.lr.ph63.i.i:                                     ; preds = %bb.acg, %._crit_edge.i.i
  %.sroa.0.061.i.i = phi i64 [ %i.eez, %._crit_edge.i.i ], [ %i.ebi, %bb.acg ] ; 2 uses
  %.sroa.04.060.i.i = phi i64 [ %i.efa, %._crit_edge.i.i ], [ 0, %bb.acg ] ; 3 uses
  %exitcond95.not.i.i = icmp eq i64 %.sroa.04.060.i.i, %11
  br i1 %exitcond95.not.i.i, label %.invoke.i, label %bb.ack

.loopexit2276:                                    ; preds = %.noexc157.i, %middle.block2275
  %.lcssa2174 = phi float [ %i.edb, %middle.block2275 ], [ %i.edw, %.noexc157.i ]
  store float %.lcssa2174, ptr %i.ebl, align 4, !alias.scope !11342, !noalias !11346
  %.val.i154.i = load ptr, ptr %i.ebm, align 8, !alias.scope !11342, !noalias !11346, !nonnull !21, !align !28, !noundef !21 ; 2 uses
  %.val42.i.i = load i64, ptr %i.ebn, align 8, !alias.scope !11342, !noalias !11346, !noundef !21 ; 4 uses
  %i.edc = load i64, ptr %i.ebo, align 8, !alias.scope !11342, !noalias !11346, !noundef !21 ; 2 uses
  %.not.i.i582 = icmp eq i64 %.val42.i.i, 0
  br i1 %.not.i.i582, label %.invoke.i, label %bb.ach

bb.ach:                                           ; preds = %.loopexit2276
  store float 0.000000e+00, ptr %.val.i154.i, align 4, !noalias !11347
  %.not74.i.i = icmp eq i64 %i.edc, 0
  br i1 %.not74.i.i, label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17set_from_commands17h5c31e3a902e2956dE.exit.i", label %.lr.ph70.i.i

.lr.ph70.i.i:                                     ; preds = %bb.ach, %bb.acj
  %i.edd = phi float [ %i.edp, %bb.acj ], [ 0.000000e+00, %bb.ach ] ; 2 uses
  %i.ede = phi i64 [ %i.eds, %bb.acj ], [ 1, %bb.ach ] ; 5 uses
  %.sroa.015.068.i.i = phi float [ %i.edr, %bb.acj ], [ 0.000000e+00, %bb.ach ]
  %.sroa.025.067.i.i = phi i64 [ %i.ede, %bb.acj ], [ 0, %bb.ach ]
  %i.edf = add i64 %.sroa.025.067.i.i, %1
  %i.edg = and i64 %i.edf, %4                     ; 3 uses
  %i.edh = icmp ult i64 %i.edg, %3
  br i1 %i.edh, label %bb.aci, label %.invoke.i

bb.aci:                                           ; preds = %.lr.ph70.i.i
  %exitcond98.not.i.i = icmp eq i64 %i.ede, %.val42.i.i
  br i1 %exitcond98.not.i.i, label %.invoke.i, label %bb.acj

bb.acj:                                           ; preds = %bb.aci
  %i.edi = getelementptr inbounds nuw i8, ptr %2, i64 %i.edg
  %i.edj = load i8, ptr %i.edi, align 1, !alias.scope !11348, !noalias !11349, !noundef !21
  %i.edk = zext i8 %i.edj to i64
  %i.edl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.edk
  %i.edm = load float, ptr %i.edl, align 4, !noalias !11345, !noundef !21
  %i.edn = fadd float %.sroa.015.068.i.i, %i.edm  ; 2 uses
  %i.edo = getelementptr inbounds nuw [4 x i8], ptr %.val.i154.i, i64 %i.ede
  %i.edp = fadd float %i.edd, %i.edn              ; 3 uses
  store float %i.edp, ptr %i.edo, align 4, !noalias !11347
  %i.edq = fsub float %i.edp, %i.edd
  %i.edr = fsub float %i.edn, %i.edq
  %i.eds = add i64 %i.ede, 1
  %exitcond99.not.i.i = icmp eq i64 %i.ede, %i.edc
  br i1 %exitcond99.not.i.i, label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17set_from_commands17h5c31e3a902e2956dE.exit.i", label %.lr.ph70.i.i

.noexc157.i:                                      ; preds = %middle.block2275, %.noexc157.i
  %.sroa.02.066.i.i = phi float [ %i.edw, %.noexc157.i ], [ %i.edb, %middle.block2275 ]
  %.sroa.023.065.i.i = phi i64 [ %i.edt, %.noexc157.i ], [ %index2270, %middle.block2275 ] ; 2 uses
  %i.edt = add nuw nsw i64 %.sroa.023.065.i.i, 1  ; 2 uses
  %i.edu = getelementptr inbounds nuw [4 x i8], ptr %i.ebh, i64 %.sroa.023.065.i.i
  %i.edv = load float, ptr %i.edu, align 4, !alias.scope !11342, !noalias !11346, !noundef !21
  %i.edw = call float @llvm.minnum.f32(float %.sroa.02.066.i.i, float %i.edv) ; 2 uses
  %exitcond97.not.i.i = icmp eq i64 %i.edt, 704
  br i1 %exitcond97.not.i.i, label %.loopexit2276, label %.noexc157.i, !llvm.loop !10773

bb.ack:                                           ; preds = %.lr.ph63.i.i
  %i.edx = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %.sroa.04.060.i.i ; 4 uses
  %i.edy = load i32, ptr %i.edx, align 4, !alias.scope !11350, !noalias !11351, !noundef !21 ; 2 uses
  %i.edz = zext i32 %i.edy to i64                 ; 2 uses
  %i.eea = getelementptr inbounds nuw i8, ptr %i.edx, i64 4
  %i.eeb = load i32, ptr %i.eea, align 4, !alias.scope !11350, !noalias !11351, !noundef !21
  %i.eec = and i32 %i.eeb, 33554431
  %i.eed = zext nneg i32 %i.eec to i64
  %i.eee = getelementptr inbounds nuw i8, ptr %i.edx, i64 14
  %i.eef = load i16, ptr %i.eee, align 2, !alias.scope !11350, !noalias !11351, !noundef !21
  %i.eeg = and i16 %i.eef, 1023                   ; 2 uses
  %i.eeh = zext nneg i16 %i.eeg to i64            ; 2 uses
  %i.eei = getelementptr inbounds nuw i8, ptr %i.edx, i64 12
  %i.eej = load i16, ptr %i.eei, align 4, !alias.scope !11350, !noalias !11351, !noundef !21 ; 3 uses
  %i.eek = zext i16 %i.eej to i64                 ; 2 uses
  %i.eel = icmp ult i16 %i.eej, 704
  br i1 %i.eel, label %bb.acl, label %.invoke.i

bb.acl:                                           ; preds = %bb.ack
  %i.eem = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.eek ; 2 uses
  %i.een = load i32, ptr %i.eem, align 4, !noalias !11345, !noundef !21
  %i.eeo = add i32 %i.een, 1
  store i32 %i.eeo, ptr %i.eem, align 4, !noalias !11345
  %i.eep = icmp samesign ugt i16 %i.eej, 127
  br i1 %i.eep, label %bb.acn, label %bb.acm

bb.acm:                                           ; preds = %bb.aco, %bb.acl
  %.not73.i.i = icmp eq i32 %i.edy, 0
  br i1 %.not73.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i580

bb.acn:                                           ; preds = %bb.acl
  %i.eeq = icmp samesign ult i16 %i.eeg, 140
  br i1 %i.eeq, label %bb.aco, label %.invoke.i

bb.aco:                                           ; preds = %bb.acn
  %i.eer = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eeh ; 2 uses
  %i.ees = load i32, ptr %i.eer, align 4, !noalias !11345, !noundef !21
  %i.eet = add i32 %i.ees, 1
  store i32 %i.eet, ptr %i.eer, align 4, !noalias !11345
  br label %bb.acm

.lr.ph.i.i580:                                    ; preds = %bb.acm, %bb.acp
  %i.eeu = phi i64 [ %i.efh, %bb.acp ], [ 1, %bb.acm ] ; 3 uses
  %.sroa.021.059.i.i = phi i64 [ %i.eeu, %bb.acp ], [ 0, %bb.acm ]
  %i.eev = add i64 %.sroa.021.059.i.i, %.sroa.0.061.i.i
  %i.eew = and i64 %i.eev, %4                     ; 3 uses
  %i.eex = icmp ult i64 %i.eew, %3
  br i1 %i.eex, label %bb.acp, label %.invoke.i

._crit_edge.i.i:                                  ; preds = %bb.acp, %bb.acm
  %i.eey = add i64 %.sroa.0.061.i.i, %i.edz
  %i.eez = add i64 %i.eey, %i.eed
  %i.efa = add nuw i64 %.sroa.04.060.i.i, 1       ; 2 uses
  %exitcond96.not.i.i = icmp eq i64 %i.efa, %i.ecn
  br i1 %exitcond96.not.i.i, label %._crit_edge64.i.i, label %.lr.ph63.i.i

bb.acp:                                           ; preds = %.lr.ph.i.i580
  %i.efb = getelementptr inbounds nuw i8, ptr %2, i64 %i.eew
  %i.efc = load i8, ptr %i.efb, align 1, !alias.scope !11348, !noalias !11349, !noundef !21
  %i.efd = zext i8 %i.efc to i64
  %i.efe = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.efd ; 2 uses
  %i.eff = load i32, ptr %i.efe, align 4, !noalias !11345, !noundef !21
  %i.efg = add i32 %i.eff, 1
  store i32 %i.efg, ptr %i.efe, align 4, !noalias !11345
  %i.efh = add nuw nsw i64 %i.eeu, 1
  %exitcond.not.i.i581 = icmp eq i64 %i.eeu, %i.edz
  br i1 %exitcond.not.i.i581, label %._crit_edge.i.i, label %.lr.ph.i.i580

"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17set_from_commands17h5c31e3a902e2956dE.exit.i": ; preds = %bb.acj, %bb.ach
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11345
  br label %bb.acq

bb.acq:                                           ; preds = %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17set_from_commands17h5c31e3a902e2956dE.exit.i", %bb.acf
  store i64 %i.eav, ptr %12, align 8, !alias.scope !11323, !noalias !11335
  store i64 %i.eat, ptr %13, align 8, !alias.scope !11324, !noalias !11332
  store i64 %i.eau, ptr %9, align 8, !alias.scope !11321, !noalias !11333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !noalias !11334
  call void @llvm.experimental.noalias.scope.decl(metadata !11352)
  call void @llvm.experimental.noalias.scope.decl(metadata !11353)
  call void @llvm.experimental.noalias.scope.decl(metadata !11354)
  call void @llvm.experimental.noalias.scope.decl(metadata !11355)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11356
  store i32 0, ptr %i.ebp, align 4, !alias.scope !11355, !noalias !11357
  store i32 0, ptr %i.eay, align 4, !alias.scope !11355, !noalias !11357
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx.i.i575, align 4, !alias.scope !11355, !noalias !11357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i8 0, i64 264, i1 false), !noalias !11326
  br i1 %i.ear, label %.lr.ph86.i.i, label %.lr.ph89.i.i.preheader

.lr.ph89.i.i.preheader:                           ; preds = %.loopexit.i.i589, %bb.acq
  br label %.lr.ph89.i.i

.lr.ph86.i.i:                                     ; preds = %bb.acq
  %.val.i173.i = load ptr, ptr %i.ebm, align 8, !alias.scope !11352, !noalias !11358 ; 3 uses
  %.val39.i.i = load i64, ptr %i.ebn, align 8, !alias.scope !11352, !noalias !11358 ; 2 uses
  br label %bb.acw

.lr.ph89.i.i:                                     ; preds = %.lr.ph89.i.i.preheader, %bb.acs
  %.sroa.0.0.i87.i.i = phi i64 [ %i.efq, %bb.acs ], [ %0, %.lr.ph89.i.i.preheader ] ; 4 uses
  %i.efi = getelementptr inbounds nuw [20 x i8], ptr %i.eay, i64 %.sroa.0.0.i87.i.i ; 4 uses
  %i.efj = getelementptr inbounds nuw i8, ptr %i.efi, i64 16
  %i.efk = load i32, ptr %i.efj, align 4, !alias.scope !11359, !noalias !11357, !noundef !21
  %i.efl = and i32 %i.efk, 134217727
  %i.efm = icmp eq i32 %i.efl, 0
  br i1 %i.efm, label %bb.acr, label %bb.act

bb.acr:                                           ; preds = %.lr.ph89.i.i
  %i.efn = getelementptr inbounds nuw i8, ptr %i.efi, i64 8
  %i.efo = load i32, ptr %i.efn, align 4, !alias.scope !11359, !noalias !11357, !noundef !21
  %i.efp = icmp eq i32 %i.efo, 1
  br i1 %i.efp, label %bb.acs, label %bb.act

bb.acs:                                           ; preds = %bb.acr
  %i.efq = add nsw i64 %.sroa.0.0.i87.i.i, -1     ; 3 uses
  %.not123.i = icmp ugt i64 %i.efq, %0
  br i1 %.not123.i, label %.invoke.i, label %.lr.ph89.i.i

bb.act:                                           ; preds = %bb.acr, %.lr.ph89.i.i
  store i32 1, ptr %i.efi, align 4, !alias.scope !11359, !noalias !11357
  %.sroa.4.0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.efi, i64 4
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.i.i583, align 4, !alias.scope !11359, !noalias !11357
  %i.efr = icmp eq i64 %.sroa.0.0.i87.i.i, 0
  br i1 %i.efr, label %.loopexit.i585, label %.lr.ph95.i.i

.lr.ph95.i.i:                                     ; preds = %bb.act, %bb.acv
  %.sroa.0.1.i93.i.i = phi i64 [ %i.egb, %bb.acv ], [ %.sroa.0.0.i87.i.i, %bb.act ] ; 4 uses
end_hunk_1
