Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_ZN10actix_http6header3map9HeaderMap4iter17h86d524def649d7afE:bb.a
  %.sroa.02.0.ph.i.i.i.i = phi i64 [ %i.v, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0.ph.i.i.i.i = phi i64 [ %i.w, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ %i.g, %bb.a ] ; 2 uses
  %.not22.i.i.i.i = icmp eq i16 %i.i, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.outer.i.i.i.i
  %i.j = icmp eq i64 %.sroa.0.0.ph.i.i.i.i, 0
  br i1 %i.j, label %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit, label %.lr.ph.split.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.split.i.i.i.i, %.outer.i.i.i.i
  %.lcssa2630.i.i.i.i = phi ptr [ %.lcssa2631.i.i.i.i, %.outer.i.i.i.i ], [ %i.ab, %.lr.ph.split.i.i.i.i ]
  %.lcssa2528.i.i.i.i = phi ptr [ %.lcssa2529.i.i.i.i, %.outer.i.i.i.i ], [ %i.aa, %.lr.ph.split.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.i, %.outer.i.i.i.i ], [ %.cast.i.i.i.i, %.lr.ph.split.i.i.i.i ] ; 3 uses
  %i.k = add i16 %.lcssa.i.i.i.i, -1
  %i.l = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.m = zext nneg i16 %i.l to i64
  %i.n = and i16 %i.k, %.lcssa.i.i.i.i
  %i.o = sub nsw i64 0, %i.m
  %i.p = getelementptr inbounds [200 x i8], ptr %.lcssa2528.i.i.i.i, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.r = load i64, ptr %i.q, align 8, !noalias !1460, !noundef !4 ; 2 uses
  %i.s = icmp ugt i64 %i.r, 4
  br i1 %i.s, label %bb.b, label %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i"

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -160
  %i.u = load i64, ptr %i.t, align 8, !noalias !1460, !noundef !4
  br label %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i"

"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i": ; preds = %bb.b, %._crit_edge.i.i.i.i
  %.sink10.i.i.i.i.i.i.i.i.i = phi i64 [ %i.u, %bb.b ], [ %i.r, %._crit_edge.i.i.i.i ]
  %i.v = add i64 %.sink10.i.i.i.i.i.i.i.i.i, %.sroa.02.0.ph.i.i.i.i
  %i.w = add i64 %.sroa.0.0.ph.i.i.i.i, -1
  br label %.outer.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.i.i.i.i
  %i.x = phi ptr [ %i.ab, %.lr.ph.split.i.i.i.i ], [ %.lcssa2631.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.y = phi ptr [ %i.aa, %.lr.ph.split.i.i.i.i ], [ %.lcssa2529.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.val18.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !1471
  %i.z = icmp sgt <16 x i8> %.val18.i.i.i.i, splat (i8 -1)
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -3200 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.z to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.split.i.i.i.i, label %._crit_edge.i.i.i.i

_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit: ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr i8, ptr %i.a, i64 %i.c
  %i.ad = getelementptr i8, ptr %i.ac, i64 1
  store ptr %i.a, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ad, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.d, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.g, ptr %.sroa.8.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.02.0.ph.i.i.i.i, ptr %i.ag, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_ZN10actix_http6header3map9HeaderMap4keys17h30a40397204277a6E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 26), (32, 40)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1472, !noalias !1475, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1472, !noalias !1475, !noundef !4
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 1
  %.val3.i.i = load <16 x i8>, ptr %i.a, align 16, !noalias !1477
  %i.f = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1472, !noalias !1475, !noundef !4
  store ptr %i.a, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.f, ptr %.sroa.610.0..sroa_idx, align 8
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.i, ptr %.sroa.812.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10actix_http6header3map9HeaderMap5clear17h930e22e098f71a54E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1480, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17h482ed4de88fcdcebE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !1486, !nonnull !4, !noundef !4 ; 5 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.d, align 16, !noalias !1487
  %i.e = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = bitcast <16 x i1> %i.e to i16
  br label %bb.c

bb.c:                                             ; preds = %.noexc.i, %bb.b
  %.sroa.06.018.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.1.i.i, %.noexc.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.f, %bb.b ], [ %.sroa.6.1.i.i, %.noexc.i ] ; 2 uses
  %.sroa.87.016.i.i = phi i16 [ %i.g, %bb.b ], [ %i.p, %.noexc.i ] ; 2 uses
  %.sroa.108.015.i.i = phi i64 [ %i.b, %bb.b ], [ %i.s, %.noexc.i ]
  %.not13.i.i.i = icmp eq i16 %.sroa.87.016.i.i, 0
  br i1 %.not13.i.i.i, label %.lr.ph.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h4053606538784904E.exit.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %i.h = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %.sroa.06.018.i.i, %bb.c ]
  %.val11.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !1490
  %i.j = icmp sgt <16 x i8> %.val11.i.i.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -3200 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.j to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h4053606538784904E.exit.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h4053606538784904E.exit.i.i": ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.c ], [ %i.l, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.018.i.i, %bb.c ], [ %i.k, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.016.i.i, %bb.c ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.m = add i16 %.lcssa.i.i.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i.i.i
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [200 x i8], ptr %.sroa.06.1.i.i, i64 %i.q ; 6 uses
  %i.s = add i64 %.sroa.108.015.i.i, -1           ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1502, !noalias !1486, !noundef !4 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %"_ZN4core3ptr92drop_in_place$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$17h95989105fb88684dE.exit.i.i", label %bb.d

bb.d:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h4053606538784904E.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1515, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds i8, ptr %i.r, i64 -176
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 -192
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1516, !noalias !1486, !noundef !4
  %i.ab = getelementptr inbounds i8, ptr %i.r, i64 -184
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1516, !noalias !1486, !noundef !4
  invoke void %i.x(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.aa, i64 noundef %i.ac)
          to label %"_ZN4core3ptr92drop_in_place$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$17h95989105fb88684dE.exit.i.i" unwind label %bb.e, !noalias !1486, !inline_history !677

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds i8, ptr %i.r, i64 -168
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..SmallVec$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17h6ea4f9ddcde586a1E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.ae)
          to label %.body.i unwind label %bb.f, !noalias !1486

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !1486
  unreachable

"_ZN4core3ptr92drop_in_place$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$17h95989105fb88684dE.exit.i.i": ; preds = %bb.d, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h4053606538784904E.exit.i.i"
  %i.ag = getelementptr inbounds i8, ptr %i.r, i64 -168
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..SmallVec$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17h6ea4f9ddcde586a1E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.ag)
          to label %.noexc.i unwind label %bb.g, !noalias !1480

.noexc.i:                                         ; preds = %"_ZN4core3ptr92drop_in_place$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$17h95989105fb88684dE.exit.i.i"
  %i.ah = icmp eq i64 %i.s, 0
  br i1 %i.ah, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hf53e62ef9197ab22E.exit.i, label %bb.c

bb.g:                                             ; preds = %"_ZN4core3ptr92drop_in_place$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$17h95989105fb88684dE.exit.i.i"
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.ad, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !1480, !noundef !4 ; 5 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.body.i
  %i.am = add i64 %i.ak, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 -1, i64 %i.am, i1 false), !noalias !1480
  %i.an = icmp ult i64 %i.ak, 8
  %i.ao = add i64 %i.ak, 1
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = mul nuw i64 %i.ap, 7
  %spec.select.i.i.i.i = select i1 %i.an, i64 %i.ak, i64 %i.aq
  br label %bb.j

_ZN9hashbrown3raw13RawTableInner13drop_elements17hf53e62ef9197ab22E.exit.i: ; preds = %.noexc.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !1480, !noundef !4 ; 5 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %"_ZN4core3ptr319drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he2343d510d7ff8fbE.exit5.i", label %bb.i

bb.i:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17hf53e62ef9197ab22E.exit.i
  %i.au = add i64 %i.as, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 -1, i64 %i.au, i1 false), !noalias !1480
  %i.av = icmp ult i64 %i.as, 8
  %i.aw = add i64 %i.as, 1
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = mul nuw i64 %i.ax, 7
  %spec.select.i.i.i4.i = select i1 %i.av, i64 %i.as, i64 %i.ay
  br label %"_ZN4core3ptr319drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he2343d510d7ff8fbE.exit5.i"

"_ZN4core3ptr319drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he2343d510d7ff8fbE.exit5.i": ; preds = %bb.i, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hf53e62ef9197ab22E.exit.i
  %i.az = phi i64 [ %spec.select.i.i.i4.i, %bb.i ], [ 0, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hf53e62ef9197ab22E.exit.i ]
  store i64 0, ptr %i.a, align 8, !alias.scope !1480
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.az, ptr %i.ba, align 8, !alias.scope !1480
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17h482ed4de88fcdcebE.exit"

bb.j:                                             ; preds = %bb.h, %.body.i
  %i.bb = phi i64 [ %spec.select.i.i.i.i, %bb.h ], [ 0, %.body.i ]
  store i64 0, ptr %i.a, align 8, !alias.scope !1480
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !alias.scope !1480
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17h482ed4de88fcdcebE.exit": ; preds = %bb.a, %"_ZN4core3ptr319drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he2343d510d7ff8fbE.exit5.i"
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_ZN10actix_http6header3map9HeaderMap5drain17he3927bc3bbc111deE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1523, !noalias !1524, !nonnull !4, !noundef !4 ; 5 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.a, align 16, !noalias !1526
  %i.b = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1523, !noalias !1524, !noundef !4 ; 2 uses
  %i.f = bitcast <16 x i1> %i.b to i16
  br label %.outer.i.i.i.i

.outer.i.i.i.i:                                   ; preds = %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i", %bb.a
  %i.g = phi i16 [ %i.l, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ %i.f, %bb.a ] ; 2 uses
  %.lcssa2631.i.i.i.i = phi ptr [ %.lcssa2630.i.i.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ %i.c, %bb.a ] ; 2 uses
  %.lcssa2529.i.i.i.i = phi ptr [ %.lcssa2528.i.i.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.02.0.ph.i.i.i.i = phi i64 [ %i.t, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0.ph.i.i.i.i = phi i64 [ %i.u, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ %i.e, %bb.a ] ; 2 uses
  %.not22.i.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.outer.i.i.i.i
  %i.h = icmp eq i64 %.sroa.0.0.ph.i.i.i.i, 0
  br i1 %i.h, label %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit, label %.lr.ph.split.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.split.i.i.i.i, %.outer.i.i.i.i
  %.lcssa2630.i.i.i.i = phi ptr [ %.lcssa2631.i.i.i.i, %.outer.i.i.i.i ], [ %i.z, %.lr.ph.split.i.i.i.i ]
  %.lcssa2528.i.i.i.i = phi ptr [ %.lcssa2529.i.i.i.i, %.outer.i.i.i.i ], [ %i.y, %.lr.ph.split.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.g, %.outer.i.i.i.i ], [ %.cast.i.i.i.i, %.lr.ph.split.i.i.i.i ] ; 3 uses
  %i.i = add i16 %.lcssa.i.i.i.i, -1
  %i.j = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.k = zext nneg i16 %i.j to i64
  %i.l = and i16 %i.i, %.lcssa.i.i.i.i
  %i.m = sub nsw i64 0, %i.k
  %i.n = getelementptr inbounds [200 x i8], ptr %.lcssa2528.i.i.i.i, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1529, !noundef !4 ; 2 uses
  %i.q = icmp ugt i64 %i.p, 4
  br i1 %i.q, label %bb.b, label %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i"

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -160
  %i.s = load i64, ptr %i.r, align 8, !noalias !1529, !noundef !4
  br label %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i"

"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i": ; preds = %bb.b, %._crit_edge.i.i.i.i
  %.sink10.i.i.i.i.i.i.i.i.i = phi i64 [ %i.s, %bb.b ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.t = add i64 %.sink10.i.i.i.i.i.i.i.i.i, %.sroa.02.0.ph.i.i.i.i
  %i.u = add i64 %.sroa.0.0.ph.i.i.i.i, -1
  br label %.outer.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.i.i.i.i
  %i.v = phi ptr [ %i.z, %.lr.ph.split.i.i.i.i ], [ %.lcssa2631.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ %i.y, %.lr.ph.split.i.i.i.i ], [ %.lcssa2529.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.val18.i.i.i.i = load <16 x i8>, ptr %i.v, align 16, !noalias !1538
  %i.x = icmp sgt <16 x i8> %.val18.i.i.i.i, splat (i8 -1)
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -3200 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.x to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.split.i.i.i.i, label %._crit_edge.i.i.i.i

_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit: ; preds = %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1539, !noalias !1542, !noundef !4
  %i.ac = getelementptr i8, ptr %i.a, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 1
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.915.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) @163, i64 32, i1 false), !noalias !1542
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.a, ptr %i.ae, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.c, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ad, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store <16 x i1> %i.b, ptr %.sroa.612.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.e, ptr %.sroa.814.0..sroa_idx, align 8
  %.sroa.1016.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %1, ptr %.sroa.1016.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %.sroa.02.0.ph.i.i.i.i, ptr %i.ag, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10actix_http6header3map9HeaderMap6append17hefaa6be9ceaa6d9fE(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.032.sroa.4 = alloca [24 x i8], align 8   ; 4 uses
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !1551, !noalias !1554, !noundef !4
  %i.c = invoke fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hdd49c14628a14d60E(i64 %.val.i, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.b, !noalias !1556 ; 3 uses

bb.b:                                             ; preds = %bb.k, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !1563, !noalias !1556, !noundef !4 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread37, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1576, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1577, !noalias !1556, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1577, !noalias !1556, !noundef !4
  invoke void %i.h(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.k, i64 noundef %i.m)
          to label %.thread37 unwind label %bb.l, !noalias !1544, !inline_history !677

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  %i.n = lshr i64 %i.c, 57
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1584, !noalias !1585, !noundef !4 ; 3 uses
  %i.r = load ptr, ptr %0, align 8, !alias.scope !1584, !noalias !1585, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.az, %bb.i ]
  %.pn.i.i = phi i64 [ %i.c, %bb.d ], [ %i.ba, %bb.i ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.q      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !1587 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.x = load ptr, ptr %1, align 8, !alias.scope !1549, !noalias !1590, !noundef !4 ; 2 uses
  %i.y = icmp eq ptr %i.x, null                   ; 3 uses
  %not..i.i.i.i.i.i = xor i1 %i.y, true
  br label %bb.f

bb.f:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8dc296e83f0e0336E.exit.thread.i.i", %.lr.ph.i.i
  %.sroa.06.0.i34.i.i = phi i16 [ %i.w, %.lr.ph.i.i ], [ %i.ay, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8dc296e83f0e0336E.exit.thread.i.i" ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.01.0.i.i.i, %i.aa
  %i.ac = and i64 %i.ab, %i.q
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [200 x i8], ptr %i.r, i64 %i.ad ; 7 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -200
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !1593, !noundef !4
  %i.ah = icmp ne ptr %i.ag, null                 ; 2 uses
  %i.ai = xor i1 %i.y, %i.ah
  br i1 %i.ai, label %bb.g, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8dc296e83f0e0336E.exit.thread.i.i", !prof !1594

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
  %.sink.i556.sroa.gep72 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink.i556.sroa.gep73 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sink.i556.sroa.gep74 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sink.i556.sroa.gep75 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink.i556.sroa.gep76 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sink.i556.sroa.gep77 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sink.i556.sroa.gep79 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink.i556.sroa.gep80 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink.i556.sroa.gep81 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink.i556.sroa.gep82 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.i556.sroa.gep83 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sink.i556.sroa.gep84 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink.i556.sroa.gep86 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink.i556.sroa.gep87 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sink.i556.sroa.gep88 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink.i556.sroa.gep89 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink.i556.sroa.gep90 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sink.i556.sroa.gep91 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br i1 %i.ar, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !1121

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.as = icmp eq i64 %i.aq, 0                    ; 3 uses
  br i1 %i.as, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8254
  %i.at = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !8254 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = ptrtoint ptr %i.at to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !8260
  unreachable

bb.e:                                             ; preds = %.invoke2964, %.invoke, %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi i64 [ %i.av, %bb.c ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ]
  %i.ax = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  invoke void @_ZN6brotli3enc14block_splitter23CopyLiteralsToByteArray17h2efc995e39fc9311E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 1 %i.ax, i64 noundef %i.aq)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8264)
  %i.ay = udiv i64 %i.aq, 544
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 99) ; 8 uses
  %spec.store.select.i = add nuw nsw i64 %i.az, 1 ; 17 uses
  br i1 %i.as, label %_ZN6brotli3enc14block_splitter15SplitByteVector17hac378eb7d3d5ee71E.exit.thread, label %bb.h

_ZN6brotli3enc14block_splitter15SplitByteVector17hac378eb7d3d5ee71E.exit.thread: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %i.ba, align 8, !alias.scope !8264, !noalias !8261
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit"

bb.h:                                             ; preds = %bb.g
  %i.bb = icmp samesign ult i64 %i.aq, 128
  br i1 %i.bb, label %bb.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bc = mul nuw nsw i64 %spec.store.select.i, 1040 ; 5 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8266
  %i.bd = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 9) 8) #45, !noalias !8266 ; 17 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.invoke2964, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.not101.i = icmp samesign ult i64 %i.aq, 544
  br i1 %.not101.i, label %.loopexit115.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i.i"
  %i.bf = add nsw i64 %i.az, -1
  %xtraiter = and i64 %i.az, 7                    ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 7
  br i1 %i.bg, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.az, 120
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.preheader.new ], [ %i.bo, %.lr.ph.i.i.i.i ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !8274
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i, align 8, !noalias !8275
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bh, i8 0, i64 1032, i1 false), !noalias !8274
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1, align 8, !noalias !8275
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bi, i8 0, i64 1032, i1 false), !noalias !8274
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2, align 8, !noalias !8275
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bj, i8 0, i64 1032, i1 false), !noalias !8274
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3, align 8, !noalias !8275
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bk, i8 0, i64 1032, i1 false), !noalias !8274
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4, align 8, !noalias !8275
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bl, i8 0, i64 1032, i1 false), !noalias !8274
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5, align 8, !noalias !8275
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bm, i8 0, i64 1032, i1 false), !noalias !8274
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6, align 8, !noalias !8275
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bn, i8 0, i64 1032, i1 false), !noalias !8274
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7, align 8, !noalias !8275
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8320 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit115.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %.val106.i = load ptr, ptr %7, align 8, !alias.scope !8264, !noalias !8261, !nonnull !4, !align !132, !noundef !4 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.val107.i = load i64, ptr %i.bp, align 8, !alias.scope !8264, !noalias !8261, !noundef !4 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !8264, !noalias !8261, !noundef !4 ; 6 uses
  %i.bs = add i64 %i.br, 1                        ; 7 uses
  %i.bt = icmp ult i64 %.val107.i, %i.bs
  br i1 %i.bt, label %bb.gh, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit226.i"

.thread.i:                                        ; preds = %bb.m, %.split24.us.i.invoke.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit.i"

.loopexit115.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit115.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %.loopexit115.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.08.i.i.i.i.epil.init = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.bo, %.loopexit115.i.loopexit.unr-lcssa ]
  %lcmp.mod4696 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4696)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.i.epil = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.epil ], [ %.sroa.0.08.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.epil, i8 0, i64 1032, i1 false), !noalias !8274
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !8275
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit115.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !8278

.loopexit115.i:                                   ; preds = %.loopexit115.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i = phi ptr [ %i.bd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i.i" ], [ %i.bo, %.loopexit115.i.loopexit.unr-lcssa ], [ %i.bv, %.lr.ph.i.i.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !8274
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !8275
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8282)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %xtraiter4697 = and i64 %spec.store.select.i, 7 ; 2 uses
  %lcmp.mod4698.not = icmp eq i64 %xtraiter4697, 0
  br i1 %lcmp.mod4698.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.loopexit115.i, %.lr.ph.i.i.i.prol
  %.sroa.02.05.i.i.i.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.prol ], [ %i.bd, %.loopexit115.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.loopexit115.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.prol, i64 1040 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i.i.prol, i8 0, i64 1032, i1 false), !alias.scope !8284, !noalias !8287
  store float 3.402000e+38, ptr %i.by, align 8, !alias.scope !8288, !noalias !8287
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter4697
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !8291

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.loopexit115.i
  %.sroa.02.05.i.i.i.unr = phi ptr [ %i.bd, %.loopexit115.i ], [ %i.bx, %.lr.ph.i.i.i.prol ]
  %i.bz = icmp ult i64 %i.aq, 3808
  br i1 %i.bz, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.preheader.split.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.02.05.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i ], [ %.sroa.02.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 1040
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i.i, i8 0, i64 1032, i1 false), !alias.scope !8284, !noalias !8287
  store float 3.402000e+38, ptr %i.cb, align 8, !alias.scope !8288, !noalias !8287
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 2080
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ca, i8 0, i64 1032, i1 false), !alias.scope !8284, !noalias !8287
  store float 3.402000e+38, ptr %i.cd, align 8, !alias.scope !8288, !noalias !8287
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 3120
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cc, i8 0, i64 1032, i1 false), !alias.scope !8284, !noalias !8287
  store float 3.402000e+38, ptr %i.cf, align 8, !alias.scope !8288, !noalias !8287
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 4160
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ce, i8 0, i64 1032, i1 false), !alias.scope !8284, !noalias !8287
  store float 3.402000e+38, ptr %i.ch, align 8, !alias.scope !8288, !noalias !8287
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 5200
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cg, i8 0, i64 1032, i1 false), !alias.scope !8284, !noalias !8287
  store float 3.402000e+38, ptr %i.cj, align 8, !alias.scope !8288, !noalias !8287
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 6240
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ci, i8 0, i64 1032, i1 false), !alias.scope !8284, !noalias !8287
  store float 3.402000e+38, ptr %i.cl, align 8, !alias.scope !8288, !noalias !8287
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 7280
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ck, i8 0, i64 1032, i1 false), !alias.scope !8284, !noalias !8287
  store float 3.402000e+38, ptr %i.cn, align 8, !alias.scope !8288, !noalias !8287
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8320 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cm, i8 0, i64 1032, i1 false), !alias.scope !8284, !noalias !8287
  store float 3.402000e+38, ptr %i.cp, align 8, !alias.scope !8288, !noalias !8287
  %i.cq = icmp eq ptr %i.co, %i.bw
  br i1 %i.cq, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.preheader.split.i.i, label %.lr.ph.i.i.i

_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %i.cr = udiv i64 %i.aq, %spec.store.select.i
  %i.cs = add nsw i64 %i.aq, -71
  br label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.loopexit.i.i: ; preds = %.preheader.i.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.07.019.i.i, %i.az
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.preheader.split.split.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.loopexit.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.preheader.split.i.i
  %.sroa.0.020.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.loopexit.i.i ], [ 7, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.07.019.i.i = phi i64 [ %i.ct, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.loopexit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.preheader.split.i.i ] ; 5 uses
  %i.ct = add nuw nsw i64 %.sroa.07.019.i.i, 1
  %i.cu = mul i64 %.sroa.07.019.i.i, %i.aq
  %i.cv = udiv i64 %i.cu, %spec.store.select.i    ; 2 uses
  %i.cw = icmp eq i64 %.sroa.07.019.i.i, 0
  br i1 %i.cw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.cv, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.preheader.split.split.i.i ], [ %i.dd, %bb.k ] ; 2 uses
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.020.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i, %bb.k ]
  %i.cx = add i64 %.sroa.04.0.i.i, 70
  %.not.i.i = icmp ult i64 %i.cx, %i.aq
  %spec.select.i.i = select i1 %.not.i.i, i64 %.sroa.04.0.i.i, i64 %i.cs ; 4 uses
  %i.cy = icmp ugt i64 %spec.select.i.i, %i.aq
  br i1 %i.cy, label %.split24.us.i.invoke.i, label %bb.l, !prof !282

bb.k:                                             ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.preheader.split.split.i.i
  %i.cz = icmp eq i32 %.sroa.0.020.i.i, 0
  %i.da = mul i32 %.sroa.0.020.i.i, 16807
  %spec.store.select.i.i = select i1 %i.cz, i32 1, i32 %i.da ; 2 uses
  %i.db = zext i32 %spec.store.select.i.i to i64
  %i.dc = urem i64 %i.db, %i.cr
  %i.dd = add i64 %i.dc, %i.cv
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %.sroa.07.019.i.i ; 3 uses
  %i.df = sub nuw nsw i64 %i.aq, %spec.select.i.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %spec.select.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8295)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 1024 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !8297, !noalias !8300, !noundef !4
  %i.dj = add i64 %i.di, 70
  store i64 %i.dj, ptr %i.dh, align 8, !alias.scope !8301, !noalias !8300
  %i.dk = icmp ugt i64 %i.df, 69
  br i1 %i.dk, label %.preheader.i.i.i, label %.split24.us.i.invoke.i, !prof !2223

.split24.us.i.invoke.i:                           ; preds = %bb.l, %bb.j
  %.ph220 = phi i64 [ 0, %bb.l ], [ %spec.select.i.i, %bb.j ]
  %.ph221 = phi i64 [ 70, %bb.l ], [ %i.aq, %bb.j ]
  %.ph222 = phi i64 [ %i.df, %bb.l ], [ %i.aq, %bb.j ]
  %.ph223 = phi ptr [ @1290, %bb.l ], [ @920, %bb.j ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.ph220, i64 noundef %.ph221, i64 noundef %.ph222, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph223) #46
          to label %.split24.us.i.cont.i unwind label %.thread.i, !noalias !8274

.split24.us.i.cont.i:                             ; preds = %.split24.us.i.invoke.i
  unreachable

.preheader.i.i.i:                                 ; preds = %bb.l, %.preheader.i.i.i
  %.sroa.02.0.idx7.i.i.i = phi i64 [ %.sroa.02.0.add.i.i.i.1, %.preheader.i.i.i ], [ 0, %bb.l ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.02.0.idx7.i.i.i
  %i.dl = load i8, ptr %.sroa.02.0.ptr.i.i.i, align 1, !alias.scope !8304, !noalias !8307, !noundef !4
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !alias.scope !8308, !noalias !8300, !noundef !4
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !alias.scope !8308, !noalias !8300
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.02.0.idx7.i.i.i
  %.sroa.02.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dr = load i8, ptr %.sroa.02.0.ptr.i.i.i.1, align 1, !alias.scope !8304, !noalias !8307, !noundef !4
  %i.ds = zext i8 %i.dr to i64
  %.sroa.02.0.add.i.i.i.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !alias.scope !8308, !noalias !8300, !noundef !4
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !alias.scope !8308, !noalias !8300
  %i.dw = icmp eq i64 %.sroa.02.0.add.i.i.i.1, 70
  br i1 %i.dw, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.loopexit.i.i, label %.preheader.i.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8312)
  %i.dx = udiv i64 %i.aq, 35
  %i.dy = add nuw nsw i64 %i.dx, 99
  %i.dz = add nuw nsw i64 %i.dy, %spec.store.select.i ; 2 uses
  %i.ea = urem i64 %i.dz, %spec.store.select.i
  %i.eb = sub nuw nsw i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ap, i64 1024
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ap, i64 1032
  %i.ee = add nsw i64 %i.aq, -69
  br label %_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit.i.i, %.lr.ph.i.i
  %.sroa.03.018.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.fo, %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit.i.i ] ; 2 uses
  %.sroa.0.017.i.i = phi i32 [ 7, %.lr.ph.i.i ], [ %spec.store.select.i.i.i, %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !8314
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ap, i8 0, i64 1024, i1 false), !noalias !8314
  store float 3.402000e+38, ptr %i.ed, align 8, !alias.scope !8315, !noalias !8314
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8321)
  %i.ef = mul i32 %.sroa.0.017.i.i, 16807
  %i.eg = icmp eq i32 %.sroa.0.017.i.i, 0
  %spec.store.select.i.i.i = select i1 %i.eg, i32 1, i32 %i.ef ; 2 uses
  %i.eh = zext i32 %spec.store.select.i.i.i to i64
  %i.ei = urem i64 %i.eh, %i.ee
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ei ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8326)
  store i64 70, ptr %i.ec, align 8, !alias.scope !8328, !noalias !8331
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit.i.i
  %.sroa.02.0.idx7.i.i.i.i = phi i64 [ 0, %_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit.i.i ], [ %.sroa.02.0.add.i.i.i.i.1, %.preheader.i.i.i.i ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.02.0.idx7.i.i.i.i
  %i.ek = load i8, ptr %.sroa.02.0.ptr.i.i.i.i, align 1, !alias.scope !8333, !noalias !8336, !noundef !4
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !alias.scope !8337, !noalias !8331, !noundef !4
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !alias.scope !8337, !noalias !8331
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.02.0.idx7.i.i.i.i
  %.sroa.02.0.ptr.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.eq = load i8, ptr %.sroa.02.0.ptr.i.i.i.i.1, align 1, !alias.scope !8333, !noalias !8336, !noundef !4
  %i.er = zext i8 %i.eq to i64
  %.sroa.02.0.add.i.i.i.i.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i.i, 2 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !alias.scope !8337, !noalias !8331, !noundef !4
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 4, !alias.scope !8337, !noalias !8331
  %i.ev = icmp eq i64 %.sroa.02.0.add.i.i.i.i.1, 70
  br i1 %i.ev, label %vector.ph, label %.preheader.i.i.i.i

vector.ph:                                        ; preds = %.preheader.i.i.i.i
  %i.ew = urem i64 %.sroa.03.018.i.i, %spec.store.select.i
  %i.ex = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %i.ew ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1024 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !8338, !noalias !8341, !noundef !4
  %i.fa = add i64 %i.ez, 70
  store i64 %i.fa, ptr %i.ey, align 8, !alias.scope !8344, !noalias !8347
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fb, align 8, !alias.scope !8312, !noalias !8347
  %wide.load3766 = load <4 x i32>, ptr %i.fc, align 8, !alias.scope !8312, !noalias !8347
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load3767 = load <4 x i32>, ptr %i.fd, align 8, !noalias !8314
  %wide.load3768 = load <4 x i32>, ptr %i.fe, align 8, !noalias !8314
  %i.ff = add <4 x i32> %wide.load3767, %wide.load
  %i.fg = add <4 x i32> %wide.load3768, %wide.load3766
  store <4 x i32> %i.ff, ptr %i.fb, align 8, !alias.scope !8312, !noalias !8347
  store <4 x i32> %i.fg, ptr %i.fc, align 8, !alias.scope !8312, !noalias !8347
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index.next ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.fh, align 8, !alias.scope !8312, !noalias !8347
  %wide.load3766.1 = load <4 x i32>, ptr %i.fi, align 8, !alias.scope !8312, !noalias !8347
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index.next ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load3767.1 = load <4 x i32>, ptr %i.fj, align 8, !noalias !8314
  %wide.load3768.1 = load <4 x i32>, ptr %i.fk, align 8, !noalias !8314
  %i.fl = add <4 x i32> %wide.load3767.1, %wide.load.1
  %i.fm = add <4 x i32> %wide.load3768.1, %wide.load3766.1
  store <4 x i32> %i.fl, ptr %i.fh, align 8, !alias.scope !8312, !noalias !8347
  store <4 x i32> %i.fm, ptr %i.fi, align 8, !alias.scope !8312, !noalias !8347
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.fn = icmp eq i64 %index.next.1, 256
  br i1 %i.fn, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit.i.i, label %vector.body, !llvm.loop !8348

_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit.i.i: ; preds = %vector.body
  %i.fo = add nuw i64 %.sroa.03.018.i.i, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8314
  %exitcond27.not.i.i = icmp eq i64 %i.fo, %i.eb
  br i1 %exitcond27.not.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, label %_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8349
  %i.fp = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !8349 ; 15 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i143.i

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc142.i unwind label %.thread.i, !noalias !8274

.noexc142.i:                                      ; preds = %bb.m
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i143.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.fr = add nuw nsw i64 %i.az, 8
  %i.fs = lshr i64 %i.fr, 3                       ; 19 uses
end_hunk_1
begin_hunk_2_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
  store i8 %i.alx, ptr %i.acb, align 1, !alias.scope !8607, !noalias !8609
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.sroa.029.4.2.i.i = phi float [ %i.alu, %bb.fj ], [ %.sroa.029.4.1.i.i, %bb.fi ] ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 12 ; 2 uses
  %i.alz = load float, ptr %i.aly, align 4, !alias.scope !8603, !noalias !8612, !noundef !4
  %i.ama = fadd float %.sroa.7.0.copyload.i.i, %i.alz ; 3 uses
  store float %i.ama, ptr %i.aly, align 4, !alias.scope !8603, !noalias !8612
  %i.amb = fcmp olt float %i.ama, %.sroa.029.4.2.i.i
  br i1 %i.amb, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.amc = trunc i64 %i.ack to i8
  %i.amd = or disjoint i8 %i.amc, 3
  store i8 %i.amd, ptr %i.acb, align 1, !alias.scope !8607, !noalias !8609
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.sroa.029.4.3.i.i = phi float [ %i.ama, %bb.fl ], [ %.sroa.029.4.2.i.i, %bb.fk ] ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 16 ; 2 uses
  %i.amf = load float, ptr %i.ame, align 4, !alias.scope !8603, !noalias !8612, !noundef !4
  %i.amg = fadd float %.sroa.8.0.copyload.i.i, %i.amf ; 3 uses
  store float %i.amg, ptr %i.ame, align 4, !alias.scope !8603, !noalias !8612
  %i.amh = fcmp olt float %i.amg, %.sroa.029.4.3.i.i
  br i1 %i.amh, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.ami = trunc i64 %i.ack to i8
  %i.amj = or disjoint i8 %i.ami, 4
  store i8 %i.amj, ptr %i.acb, align 1, !alias.scope !8607, !noalias !8609
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.sroa.029.4.4.i.i = phi float [ %i.amg, %bb.fn ], [ %.sroa.029.4.3.i.i, %bb.fm ] ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 20 ; 2 uses
  %i.aml = load float, ptr %i.amk, align 4, !alias.scope !8603, !noalias !8612, !noundef !4
  %i.amm = fadd float %.sroa.9.0.copyload.i.i, %i.aml ; 3 uses
  store float %i.amm, ptr %i.amk, align 4, !alias.scope !8603, !noalias !8612
  %i.amn = fcmp olt float %i.amm, %.sroa.029.4.4.i.i
  br i1 %i.amn, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.amo = trunc i64 %i.ack to i8
  %i.amp = or disjoint i8 %i.amo, 5
  store i8 %i.amp, ptr %i.acb, align 1, !alias.scope !8607, !noalias !8609
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.sroa.029.4.5.i.i = phi float [ %i.amm, %bb.fp ], [ %.sroa.029.4.4.i.i, %bb.fo ] ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 24 ; 2 uses
  %i.amr = load float, ptr %i.amq, align 4, !alias.scope !8603, !noalias !8612, !noundef !4
  %i.ams = fadd float %.sroa.10.0.copyload.i.i, %i.amr ; 3 uses
  store float %i.ams, ptr %i.amq, align 4, !alias.scope !8603, !noalias !8612
  %i.amt = fcmp olt float %i.ams, %.sroa.029.4.5.i.i
  br i1 %i.amt, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.amu = trunc i64 %i.ack to i8
  %i.amv = or disjoint i8 %i.amu, 6
  store i8 %i.amv, ptr %i.acb, align 1, !alias.scope !8607, !noalias !8609
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.sroa.029.4.6.i.i = phi float [ %i.ams, %bb.fr ], [ %.sroa.029.4.5.i.i, %bb.fq ] ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 28 ; 2 uses
  %i.amx = load float, ptr %i.amw, align 4, !alias.scope !8603, !noalias !8612, !noundef !4
  %i.amy = fadd float %.sroa.11.0.copyload.i.i, %i.amx ; 3 uses
  store float %i.amy, ptr %i.amw, align 4, !alias.scope !8603, !noalias !8612
  %i.amz = fcmp olt float %i.amy, %.sroa.029.4.6.i.i
  br i1 %i.amz, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.ana = trunc i64 %i.ack to i8
  %i.anb = or disjoint i8 %i.ana, 7
  store i8 %i.anb, ptr %i.acb, align 1, !alias.scope !8607, !noalias !8609
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.sroa.029.4.7.i.i = phi float [ %i.amy, %bb.ft ], [ %.sroa.029.4.6.i.i, %bb.fs ] ; 2 uses
  %i.anc = icmp eq ptr %i.aci, %i.yw
  br i1 %i.anc, label %._crit_edge416.i.i, label %.lr.ph415.i.i

bb.fv:                                            ; preds = %bb.fx, %.split.i178.i
  %i.and = phi i64 [ 1, %.split.i178.i ], [ %i.ann, %bb.fx ] ; 4 uses
  %.sroa.071.0400.i.i = phi i64 [ 0, %.split.i178.i ], [ %i.and, %bb.fx ] ; 4 uses
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.sroa.071.0400.i.i
  %i.anf = load float, ptr %i.ane, align 4, !alias.scope !8601, !noalias !8611, !noundef !4
  %exitcond481.not.i.i = icmp eq i64 %i.and, %i.gr
  br i1 %exitcond481.not.i.i, label %.invoke.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %gep.i.i = getelementptr [1040 x i8], ptr %invariant.gep.i.i, i64 %.sroa.071.0400.i.i
  %i.ang = load i32, ptr %gep.i.i, align 4, !alias.scope !8599, !noalias !8632, !noundef !4
  %i.anh = zext i32 %i.ang to i64
  %i.ani = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.anh)
          to label %.noexc198.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i", !noalias !8274

.noexc198.i:                                      ; preds = %bb.fw
  %i.anj = add nuw nsw i64 %.sroa.071.0400.i.i, %i.yu ; 3 uses
  %i.ank = icmp ult i64 %i.anj, %i.ft
  br i1 %i.ank, label %bb.fx, label %.invoke.i

bb.fx:                                            ; preds = %.noexc198.i
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.anj
  %i.anm = fsub float %i.anf, %i.ani
  store float %i.anm, ptr %i.anl, align 4, !alias.scope !8601, !noalias !8611
  %i.ann = add nuw nsw i64 %i.and, 1
  %exitcond482.not.i.i = icmp eq i64 %i.and, %.sroa.0.0423.i
  br i1 %exitcond482.not.i.i, label %.loopexit358.i.i, label %bb.fv

bb.fy:                                            ; preds = %bb.dt
  %i.ano = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %.sroa.069.0399.i.i
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 1024
  %i.anq = load i64, ptr %i.anp, align 8, !alias.scope !8633, !noalias !8632, !noundef !4
  %i.anr = and i64 %i.anq, 4294967295             ; 3 uses
  %i.ans = icmp samesign ult i64 %i.anr, 256
  br i1 %i.ans, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ant = uitofp nneg i64 %i.anr to float
  %i.anu = tail call float @llvm.log2.f32(float %i.ant)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.gb, %bb.fz
  %.sroa.016.0.i.i = phi float [ %i.any, %bb.gb ], [ %i.anu, %bb.fz ]
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.sroa.069.0399.i.i
  store float %.sroa.016.0.i.i, ptr %i.anv, align 4, !alias.scope !8601, !noalias !8611
  %i.anw = add nuw nsw i64 %i.yq, 1
  %exitcond479.not.i.i = icmp eq i64 %i.yq, %.sroa.0.0423.i
  br i1 %exitcond479.not.i.i, label %.split.i178.i, label %bb.dt

bb.gb:                                            ; preds = %bb.fy
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.anr
  %i.any = load float, ptr %i.anx, align 4, !noalias !8618, !noundef !4
  br label %bb.ga

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader4631, %bb.gc
  %i.anz = phi i64 [ %i.aob, %bb.gc ], [ %.ph4632, %.preheader.i.i.preheader4631 ] ; 4 uses
  %.sroa.066.0449.i.i = phi i64 [ %i.anz, %bb.gc ], [ %.sroa.066.0449.i.i.ph, %.preheader.i.i.preheader4631 ] ; 2 uses
  %exitcond487.not.i.i = icmp eq i64 %i.anz, %i.gv
  br i1 %exitcond487.not.i.i, label %.invoke.i, label %bb.gc

bb.gc:                                            ; preds = %.preheader.i.i
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.066.0449.i.i
  store i8 0, ptr %i.aoa, align 1, !alias.scope !8607, !noalias !8609
  %i.aob = add i64 %i.anz, 1
  %exitcond488.not.i.i = icmp eq i64 %i.anz, %i.aq
  br i1 %exitcond488.not.i.i, label %.loopexit.i, label %.preheader.i.i, !llvm.loop !8636

.loopexit.i:                                      ; preds = %bb.dx, %bb.gc, %bb.dq
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.dq ], [ 1, %bb.gc ], [ %.sroa.03.1.i.i, %bb.dx ] ; 32 uses
  %i.aoc = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.fp, i64 noundef %i.aq, i64 noundef %i.aq, ptr noalias noundef nonnull align 2 %i.gn, i64 noundef %spec.store.select.i, i64 noundef %.sroa.0.0423.i)
          to label %bb.gd unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i", !noalias !8274 ; 5 uses

bb.gd:                                            ; preds = %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8642)
  %.not.i.i204.i = icmp ugt i64 %i.aoc, %spec.store.select.i
  br i1 %.not.i.i204.i, label %.invoke1149.i, label %bb.ge, !prof !2175

bb.ge:                                            ; preds = %bb.gd
  %.idx.i.i205.i = mul i64 %i.aoc, 1040           ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i205.i
  %i.aoe = icmp eq i64 %i.aoc, 0
  br i1 %i.aoe, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i.preheader, label %.lr.ph.i.i206.i.preheader

.lr.ph.i.i206.i.preheader:                        ; preds = %bb.ge
  %i.aof = add i64 %.idx.i.i205.i, -1040          ; 2 uses
  %i.aog = udiv i64 %i.aof, 1040
  %i.aoh = add nuw nsw i64 %i.aog, 1
  %xtraiter4699 = and i64 %i.aoh, 7               ; 2 uses
  %lcmp.mod4700.not = icmp eq i64 %xtraiter4699, 0
  br i1 %lcmp.mod4700.not, label %.lr.ph.i.i206.i.prol.loopexit, label %.lr.ph.i.i206.i.prol

.lr.ph.i.i206.i.prol:                             ; preds = %.lr.ph.i.i206.i.preheader, %.lr.ph.i.i206.i.prol
  %.sroa.02.05.i.i207.i.prol = phi ptr [ %i.aoi, %.lr.ph.i.i206.i.prol ], [ %i.bd, %.lr.ph.i.i206.i.preheader ] ; 3 uses
  %prol.iter4701 = phi i64 [ %prol.iter4701.next, %.lr.ph.i.i206.i.prol ], [ 0, %.lr.ph.i.i206.i.preheader ]
  %i.aoi = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i.prol, i64 1040 ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i207.i.prol, i8 0, i64 1032, i1 false), !alias.scope !8644, !noalias !8647
  store float 3.402000e+38, ptr %i.aoj, align 8, !alias.scope !8648, !noalias !8647
  %prol.iter4701.next = add i64 %prol.iter4701, 1 ; 2 uses
  %prol.iter4701.cmp.not = icmp eq i64 %prol.iter4701.next, %xtraiter4699
  br i1 %prol.iter4701.cmp.not, label %.lr.ph.i.i206.i.prol.loopexit, label %.lr.ph.i.i206.i.prol, !llvm.loop !8651

.lr.ph.i.i206.i.prol.loopexit:                    ; preds = %.lr.ph.i.i206.i.prol, %.lr.ph.i.i206.i.preheader
  %.sroa.02.05.i.i207.i.unr = phi ptr [ %i.bd, %.lr.ph.i.i206.i.preheader ], [ %i.aoi, %.lr.ph.i.i206.i.prol ]
  %i.aok = icmp ult i64 %i.aof, 7280
  br i1 %i.aok, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i.preheader, label %.lr.ph.i.i206.i

.lr.ph.i.i206.i:                                  ; preds = %.lr.ph.i.i206.i.prol.loopexit, %.lr.ph.i.i206.i
  %.sroa.02.05.i.i207.i = phi ptr [ %i.aoz, %.lr.ph.i.i206.i ], [ %.sroa.02.05.i.i207.i.unr, %.lr.ph.i.i206.i.prol.loopexit ] ; 17 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 1040
  %i.aom = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i207.i, i8 0, i64 1032, i1 false), !alias.scope !8644, !noalias !8647
  store float 3.402000e+38, ptr %i.aom, align 8, !alias.scope !8648, !noalias !8647
  %i.aon = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 2080
  %i.aoo = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aol, i8 0, i64 1032, i1 false), !alias.scope !8644, !noalias !8647
  store float 3.402000e+38, ptr %i.aoo, align 8, !alias.scope !8648, !noalias !8647
  %i.aop = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 3120
  %i.aoq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aon, i8 0, i64 1032, i1 false), !alias.scope !8644, !noalias !8647
  store float 3.402000e+38, ptr %i.aoq, align 8, !alias.scope !8648, !noalias !8647
  %i.aor = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 4160
  %i.aos = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aop, i8 0, i64 1032, i1 false), !alias.scope !8644, !noalias !8647
  store float 3.402000e+38, ptr %i.aos, align 8, !alias.scope !8648, !noalias !8647
  %i.aot = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 5200
  %i.aou = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aor, i8 0, i64 1032, i1 false), !alias.scope !8644, !noalias !8647
  store float 3.402000e+38, ptr %i.aou, align 8, !alias.scope !8648, !noalias !8647
  %i.aov = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 6240
  %i.aow = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aot, i8 0, i64 1032, i1 false), !alias.scope !8644, !noalias !8647
  store float 3.402000e+38, ptr %i.aow, align 8, !alias.scope !8648, !noalias !8647
  %i.aox = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 7280
  %i.aoy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aov, i8 0, i64 1032, i1 false), !alias.scope !8644, !noalias !8647
  store float 3.402000e+38, ptr %i.aoy, align 8, !alias.scope !8648, !noalias !8647
  %i.aoz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 8320 ; 2 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aox, i8 0, i64 1032, i1 false), !alias.scope !8644, !noalias !8647
  store float 3.402000e+38, ptr %i.apa, align 8, !alias.scope !8648, !noalias !8647
  %i.apb = icmp eq ptr %i.aoz, %i.aod
  br i1 %i.apb, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i.preheader, label %.lr.ph.i.i206.i

_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i.preheader: ; preds = %.lr.ph.i.i206.i.prol.loopexit, %.lr.ph.i.i206.i, %bb.ge
  br label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i.preheader, %bb.gf
  %.sroa.01.010.i.i = phi i64 [ %i.apf, %bb.gf ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i.preheader ] ; 3 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.01.010.i.i
  %i.apd = load i8, ptr %i.apc, align 1, !alias.scope !8640, !noalias !8652, !noundef !4
  %i.ape = zext i8 %i.apd to i64                  ; 3 uses
  %.not102.i = icmp samesign ult i64 %i.az, %i.ape
  br i1 %.not102.i, label %.invoke.i, label %bb.gf

bb.gf:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i
  %i.apf = add nuw i64 %.sroa.01.010.i.i, 1       ; 2 uses
  %i.apg = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %i.ape ; 2 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.010.i.i
  %i.api = load i8, ptr %i.aph, align 1, !alias.scope !8653, !noalias !8656, !noundef !4
  %i.apj = zext i8 %i.api to i64
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.apg, i64 %i.apj ; 2 uses
  %i.apl = load i32, ptr %i.apk, align 4, !alias.scope !8657, !noalias !8647, !noundef !4
  %i.apm = add i32 %i.apl, 1
  store i32 %i.apm, ptr %i.apk, align 4, !alias.scope !8657, !noalias !8647
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apg, i64 1024 ; 2 uses
  %i.apo = load i64, ptr %i.apn, align 8, !alias.scope !8660, !noalias !8647, !noundef !4
  %i.app = add i64 %i.apo, 1
  store i64 %i.app, ptr %i.apn, align 8, !alias.scope !8663, !noalias !8647
  %exitcond17.not.i.i = icmp eq i64 %i.apf, %i.aq
  br i1 %exitcond17.not.i.i, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17hc3d8f202f86c0221E.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i

.invoke.i:                                        ; preds = %bb.dt, %.lr.ph434.split.i.i, %.lr.ph447.i.i, %.preheader.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i, %.noexc198.i, %bb.fv, %.lr.ph424.preheader.i.i, %.lr.ph424.i.i.1, %.lr.ph424.i.i.2, %.lr.ph424.i.i.3, %.lr.ph424.i.i.4, %.lr.ph424.i.i.5, %.lr.ph424.i.i.6, %.lr.ph430.i.i
  %i.apq = phi i64 [ %i.ape, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i ], [ %i.abp, %.lr.ph447.i.i ], [ %i.ais, %.lr.ph430.i.i ], [ %i.aq, %.lr.ph434.split.i.i ], [ %.sroa.066.0449.i.i, %.preheader.i.i ], [ %i.aas, %.lr.ph424.i.i.6 ], [ %.sroa.071.0400.i.i, %bb.fv ], [ %i.ze, %.lr.ph424.preheader.i.i ], [ %i.zj, %.lr.ph424.i.i.1 ], [ %i.zr, %.lr.ph424.i.i.2 ], [ %i.aaa, %.lr.ph424.i.i.3 ], [ %i.aag, %.lr.ph424.i.i.4 ], [ %i.aam, %.lr.ph424.i.i.5 ], [ %i.anj, %.noexc198.i ], [ %.sroa.069.0399.i.i, %bb.dt ]
  %i.apr = phi i64 [ %spec.store.select.i, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i ], [ %i.ge, %.lr.ph447.i.i ], [ %i.ge, %.lr.ph430.i.i ], [ %i.aq, %.lr.ph434.split.i.i ], [ %i.aq, %.preheader.i.i ], [ %i.fs, %.lr.ph424.preheader.i.i ], [ %spec.store.select.i, %bb.fv ], [ %i.fs, %.lr.ph424.i.i.6 ], [ %i.fs, %.lr.ph424.i.i.5 ], [ %i.fs, %.lr.ph424.i.i.4 ], [ %i.fs, %.lr.ph424.i.i.3 ], [ %i.fs, %.lr.ph424.i.i.2 ], [ %i.fs, %.lr.ph424.i.i.1 ], [ %i.ft, %.noexc198.i ], [ %spec.store.select.i, %bb.dt ]
  %i.aps = phi ptr [ @921, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i ], [ @878, %.lr.ph447.i.i ], [ @923, %.lr.ph430.i.i ], [ @879, %.lr.ph434.split.i.i ], [ @893, %.preheader.i.i ], [ @884, %.lr.ph424.preheader.i.i ], [ @889, %bb.fv ], [ @884, %.lr.ph424.i.i.6 ], [ @884, %.lr.ph424.i.i.5 ], [ @884, %.lr.ph424.i.i.4 ], [ @884, %.lr.ph424.i.i.3 ], [ @884, %.lr.ph424.i.i.2 ], [ @884, %.lr.ph424.i.i.1 ], [ @890, %.noexc198.i ], [ @891, %bb.dt ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.apq, i64 noundef %i.apr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aps) #46
          to label %.cont.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i", !noalias !8274

.cont.i:                                          ; preds = %.invoke.i
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i": ; preds = %bb.fw
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i": ; preds = %.loopexit.i
  %lpad.loopexit111.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i": ; preds = %.invoke.i, %.split440.us.i.invoke.i, %.invoke1149.i
  %lpad.loopexit.split-lp112.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i"
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i" ], [ %lpad.loopexit111.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i" ], [ %lpad.loopexit.split-lp112.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gn, i64 noundef %i.gm, i64 noundef 2) #45, !noalias !8274
  br label %bb.gg

bb.gg:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i", %.thread55.i
  %.pn62.i = phi { ptr, i32 } [ %i.gp, %.thread55.i ], [ %lpad.phi.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i" ]
  br i1 %i.gg, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i213.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i213.i": ; preds = %bb.gg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gl, i64 noundef %i.ge, i64 noundef 1) #45, !noalias !8274
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i213.i", %bb.gg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fz, i64 noundef %i.fy, i64 noundef 4) #45, !noalias !8274
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.thread.i", %.thread39.i
  %.pn.pn.pn44.i = phi { ptr, i32 } [ %i.gd, %.thread39.i ], [ %i.gk, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.thread.i" ], [ %.pn62.i, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fv, i64 noundef %i.fu, i64 noundef 4) #45, !noalias !8274
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fp, i64 noundef %i.aq, i64 noundef 1) #45, !noalias !8274
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit217.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit554.i.i", %bb.dp, %.body.i
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %i.yc, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit554.i.i" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i, %bb.dp ], [ %.pn230.pn.pn.pn.pn.pn.pn85936.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i" ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fp, i64 noundef %i.aq, i64 noundef 1) #45, !noalias !8274
  br label %.body

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit217.thread.i", %.thread.i
  %.pn.pn.pn.pn.pn38.i = phi { ptr, i32 } [ %i.bu, %.thread.i ], [ %.pn.pn.pn44.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i" ], [ %i.fx, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit217.thread.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.bc, i64 noundef 8) #45, !noalias !8274
  br label %.body

bb.gh:                                            ; preds = %bb.i
  %i.apt = icmp eq i64 %.val107.i, 0              ; 2 uses
  %spec.select.i = select i1 %i.apt, i64 %i.bs, i64 %.val107.i
  br label %bb.gi

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit226.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i225.i", %bb.gk, %bb.i
  %.val.i = phi ptr [ %i.aqa, %bb.gk ], [ %i.aqa, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i225.i" ], [ %.val106.i, %bb.i ]
  %.val63.i = phi i64 [ %.sroa.014.1.i, %bb.gk ], [ %.sroa.014.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i225.i" ], [ %.val107.i, %bb.i ] ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.val92.i = load ptr, ptr %i.apu, align 8, !alias.scope !8264, !noalias !8261, !nonnull !4, !align !131, !noundef !4 ; 3 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.val93.i = load i64, ptr %i.apv, align 8, !alias.scope !8264, !noalias !8261, !noundef !4 ; 5 uses
  %i.apw = icmp ult i64 %.val93.i, %i.bs
  br i1 %i.apw, label %bb.gl, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i"

bb.gi:                                            ; preds = %bb.gi, %bb.gh
  %.sroa.014.1.i = phi i64 [ %spec.select.i, %bb.gh ], [ %i.apy, %bb.gi ] ; 9 uses
  %i.apx = icmp ult i64 %.sroa.014.1.i, %i.bs
  %i.apy = shl i64 %.sroa.014.1.i, 1
  br i1 %i.apx, label %bb.gi, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.apz = icmp slt i64 %.sroa.014.1.i, 0
  br i1 %i.apz, label %.invoke2964, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i, !prof !1121

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i: ; preds = %bb.gj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8666
  %i.aqa = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.014.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !8666 ; 5 uses
  %i.aqb = icmp eq ptr %i.aqa, null
  br i1 %i.aqb, label %.invoke2964, label %bb.gk

bb.gk:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aqa, ptr nonnull readonly align 1 %.val106.i, i64 %.val107.i, i1 false), !alias.scope !8672, !noalias !8676
  store ptr %i.aqa, ptr %7, align 8, !alias.scope !8264, !noalias !8261
  store i64 %.sroa.014.1.i, ptr %i.bp, align 8, !alias.scope !8264, !noalias !8261
  br i1 %i.apt, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit226.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i225.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i225.i": ; preds = %bb.gk
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.val106.i, i64 noundef %.val107.i, i64 noundef 1) #45, !noalias !8274
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit226.i"

bb.gl:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit226.i"
  %i.aqc = icmp eq i64 %.val93.i, 0               ; 2 uses
  %spec.select100.i = select i1 %i.aqc, i64 %i.bs, i64 %.val93.i
  br label %bb.gm

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i233.i", %bb.gq, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit226.i"
  %.val108.i = phi ptr [ %i.aqq, %bb.gq ], [ %i.aqq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i233.i" ], [ %.val92.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit226.i" ]
  %.val109.i = phi i64 [ %.sroa.017.1.i, %bb.gq ], [ %.sroa.017.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i233.i" ], [ %.val93.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit226.i" ] ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %i.aqd, align 8, !alias.scope !8264, !noalias !8261
  %i.aqe = icmp ult i64 %i.br, %.val63.i
  br i1 %i.aqe, label %bb.gr, label %.invoke

bb.gm:                                            ; preds = %bb.gm, %bb.gl
  %.sroa.017.1.i = phi i64 [ %spec.select100.i, %bb.gl ], [ %i.aqg, %bb.gm ] ; 8 uses
  %i.aqf = icmp ult i64 %.sroa.017.1.i, %i.bs
  %i.aqg = shl i64 %.sroa.017.1.i, 1
  br i1 %i.aqf, label %bb.gm, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.aqh = shl i64 %.sroa.017.1.i, 2              ; 5 uses
  %i.aqi = icmp ugt i64 %.sroa.017.1.i, 4611686018427387903
  %i.aqj = icmp ugt i64 %i.aqh, 9223372036854775804
  %or.cond.i.i.i.i227.i = or i1 %i.aqi, %i.aqj
  br i1 %or.cond.i.i.i.i227.i, label %.invoke2964, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i228.i, !prof !1121

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i228.i: ; preds = %bb.gn
  %i.aqk = icmp eq i64 %i.aqh, 0
  br i1 %i.aqk, label %bb.gq, label %bb.go

bb.go:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i228.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8678
  %i.aql = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.aqh, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !8678 ; 2 uses
  %i.aqm = icmp eq ptr %i.aql, null
  br i1 %i.aqm, label %.invoke2964, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aqn = ptrtoint ptr %i.aql to i64
  br label %bb.gq

.invoke2964:                                      ; preds = %bb.gn, %bb.go, %bb.gj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %i.aqo = phi i64 [ 0, %bb.gj ], [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i ], [ 4, %bb.go ], [ 0, %bb.gn ]
  %i.aqp = phi i64 [ %.sroa.014.1.i, %bb.gj ], [ %i.bc, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.014.1.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i ], [ %i.aqh, %bb.go ], [ %i.aqh, %bb.gn ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.aqo, i64 %i.aqp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.cont2965 unwind label %bb.e

.cont2965:                                        ; preds = %.invoke2964
  unreachable

bb.gq:                                            ; preds = %bb.gp, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i228.i
  %.sroa.10.0.i.i229.i = phi i64 [ %i.aqn, %bb.gp ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i228.i ]
  %i.aqq = inttoptr i64 %.sroa.10.0.i.i229.i to ptr ; 5 uses
  %i.aqr = icmp samesign ult i64 %.sroa.017.1.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.aqr)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aqq) ]
  %i.aqs = shl nuw nsw i64 %.val93.i, 2           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aqq, ptr nonnull readonly align 4 %.val92.i, i64 %i.aqs, i1 false), !alias.scope !8683, !noalias !8687
  store ptr %i.aqq, ptr %i.apu, align 8, !alias.scope !8264, !noalias !8261
  store i64 %.sroa.017.1.i, ptr %i.apv, align 8, !alias.scope !8264, !noalias !8261
  br i1 %i.aqc, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i233.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i233.i": ; preds = %bb.gq
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.val92.i, i64 noundef %i.aqs, i64 noundef 4) #45, !noalias !8274
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i"

bb.gr:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i"
  %i.aqt = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.br
  store i8 0, ptr %i.aqt, align 1, !noalias !8274
end_hunk_2
begin_hunk_3_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
  %i.asd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3837
  %i.ase = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3837
  %i.asf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3837
  %i.asg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3837
  %i.ash = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3837
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asa, i64 12
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asb, i64 28
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asc, i64 44
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asd, i64 60
  %i.asm = getelementptr inbounds nuw i8, ptr %i.ase, i64 76
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asf, i64 92
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asg, i64 108
  %i.asp = getelementptr inbounds nuw i8, ptr %i.ash, i64 124
  %i.asq = load i16, ptr %i.asi, align 4, !alias.scope !8696, !noundef !4
  %i.asr = load i16, ptr %i.asj, align 4, !alias.scope !8696, !noundef !4
  %i.ass = load i16, ptr %i.ask, align 4, !alias.scope !8696, !noundef !4
  %i.ast = load i16, ptr %i.asl, align 4, !alias.scope !8696, !noundef !4
  %i.asu = load i16, ptr %i.asm, align 4, !alias.scope !8696, !noundef !4
  %i.asv = load i16, ptr %i.asn, align 4, !alias.scope !8696, !noundef !4
  %i.asw = load i16, ptr %i.aso, align 4, !alias.scope !8696, !noundef !4
  %i.asx = load i16, ptr %i.asp, align 4, !alias.scope !8696, !noundef !4
  %i.asy = insertelement <8 x i16> poison, i16 %i.asq, i64 0
  %i.asz = insertelement <8 x i16> %i.asy, i16 %i.asr, i64 1
  %i.ata = insertelement <8 x i16> %i.asz, i16 %i.ass, i64 2
  %i.atb = insertelement <8 x i16> %i.ata, i16 %i.ast, i64 3
  %i.atc = insertelement <8 x i16> %i.atb, i16 %i.asu, i64 4
  %i.atd = insertelement <8 x i16> %i.atc, i16 %i.asv, i64 5
  %i.ate = insertelement <8 x i16> %i.atd, i16 %i.asw, i64 6
  %i.atf = insertelement <8 x i16> %i.ate, i16 %i.asx, i64 7
  %i.atg = getelementptr inbounds nuw [2 x i8], ptr %i.ark, i64 %index3837
  store <8 x i16> %i.atf, ptr %i.atg, align 2, !alias.scope !8699, !noalias !8696
  %index.next3838 = add nuw i64 %index3837, 8     ; 2 uses
  %i.ath = icmp eq i64 %index.next3838, %n.vec3835
  br i1 %i.ath, label %scalar.ph3832.preheader, label %vector.body3836, !llvm.loop !8701

.body437.thread:                                  ; preds = %.invoke2968, %.invoke2966
  %i.ati = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1043"

._crit_edge:                                      ; preds = %scalar.ph3832.prol.loopexit, %scalar.ph3832, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ark) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8705)
  %i.atj = udiv i64 %2, 530
  %i.atk = tail call i64 @llvm.umin.i64(i64 %i.atj, i64 49) ; 8 uses
  %spec.store.select.i44 = add nuw nsw i64 %i.atk, 1 ; 18 uses
  %i.atl = icmp eq i64 %2, 0                      ; 2 uses
  br i1 %i.atl, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit449.thread", label %bb.gv

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit449.thread": ; preds = %._crit_edge
  %i.atm = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 1, ptr %i.atm, align 8, !alias.scope !8705, !noalias !8702
  br label %bb.op

bb.gv:                                            ; preds = %._crit_edge
  %i.atn = icmp samesign ult i64 %2, 128
  br i1 %i.atn, label %bb.gw, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45: ; preds = %bb.gv
  %i.ato = mul nuw nsw i64 %spec.store.select.i44, 2832 ; 5 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8707
  %i.atp = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ato, i64 noundef range(i64 1, 9) 8) #45, !noalias !8707 ; 17 uses
  %i.atq = icmp eq ptr %i.atp, null
  br i1 %i.atq, label %.invoke2966, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i.i"

.invoke2966:                                      ; preds = %bb.og, %bb.oh, %bb.oc, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45
  %i.atr = phi i64 [ 0, %bb.oc ], [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45 ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i ], [ 4, %bb.oh ], [ 0, %bb.og ]
  %i.ats = phi i64 [ %.sroa.014.1.i435, %bb.oc ], [ %i.ato, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45 ], [ %.sroa.014.1.i435, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i ], [ %i.cjk, %bb.oh ], [ %i.cjk, %bb.og ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.atr, i64 %i.ats, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.cont2967 unwind label %.body437.thread

.cont2967:                                        ; preds = %.invoke2966
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45
  %.not92.i = icmp samesign ult i64 %2, 530
  br i1 %.not92.i, label %.loopexit109.i, label %.lr.ph.i.i.i.i46.preheader

.lr.ph.i.i.i.i46.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i.i"
  %i.att = add nsw i64 %i.atk, -1
  %xtraiter4727 = and i64 %i.atk, 7               ; 3 uses
  %i.atu = icmp ult i64 %i.att, 7
  br i1 %i.atu, label %.lr.ph.i.i.i.i46.epil.preheader, label %.lr.ph.i.i.i.i46.preheader.new

.lr.ph.i.i.i.i46.preheader.new:                   ; preds = %.lr.ph.i.i.i.i46.preheader
  %unroll_iter4732 = and i64 %i.atk, 56
  br label %.lr.ph.i.i.i.i46

.lr.ph.i.i.i.i46:                                 ; preds = %.lr.ph.i.i.i.i46, %.lr.ph.i.i.i.i46.preheader.new
  %.sroa.0.08.i.i.i.i47 = phi ptr [ %i.atp, %.lr.ph.i.i.i.i46.preheader.new ], [ %i.auc, %.lr.ph.i.i.i.i46 ] ; 17 uses
  %niter4733 = phi i64 [ 0, %.lr.ph.i.i.i.i46.preheader.new ], [ %niter4733.next.7, %.lr.ph.i.i.i.i46 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i47, i8 0, i64 2824, i1 false), !noalias !8715
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49, align 8, !noalias !8716
  %i.atv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atv, i8 0, i64 2824, i1 false), !noalias !8715
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.1, align 8, !noalias !8716
  %i.atw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atw, i8 0, i64 2824, i1 false), !noalias !8715
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.2, align 8, !noalias !8716
  %i.atx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atx, i8 0, i64 2824, i1 false), !noalias !8715
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.3, align 8, !noalias !8716
  %i.aty = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.aty, i8 0, i64 2824, i1 false), !noalias !8715
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.4, align 8, !noalias !8716
  %i.atz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atz, i8 0, i64 2824, i1 false), !noalias !8715
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.5, align 8, !noalias !8716
  %i.aua = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.aua, i8 0, i64 2824, i1 false), !noalias !8715
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.6, align 8, !noalias !8716
  %i.aub = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.aub, i8 0, i64 2824, i1 false), !noalias !8715
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.7, align 8, !noalias !8716
  %i.auc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 22656 ; 3 uses
  %niter4733.next.7 = add i64 %niter4733, 8       ; 2 uses
  %niter4733.ncmp.7 = icmp eq i64 %niter4733.next.7, %unroll_iter4732
  br i1 %niter4733.ncmp.7, label %.loopexit109.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i46

bb.gw:                                            ; preds = %bb.gv
  %.val106.i424 = load ptr, ptr %8, align 8, !alias.scope !8705, !noalias !8702, !nonnull !4, !align !132, !noundef !4 ; 3 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.val107.i425 = load i64, ptr %i.aud, align 8, !alias.scope !8705, !noalias !8702, !noundef !4 ; 6 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.auf = load i64, ptr %i.aue, align 8, !alias.scope !8705, !noalias !8702, !noundef !4 ; 6 uses
  %i.aug = add i64 %i.auf, 1                      ; 7 uses
  %i.auh = icmp ult i64 %.val107.i425, %i.aug
  br i1 %i.auh, label %bb.oa, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i"

.thread.i60:                                      ; preds = %bb.hc, %.split32.us.i.invoke.i, %.split29.us.i.invoke.i
  %i.aui = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit.i"

.loopexit109.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i.i.i46
  %lcmp.mod4729.not = icmp eq i64 %xtraiter4727, 0
  br i1 %lcmp.mod4729.not, label %.loopexit109.i, label %.lr.ph.i.i.i.i46.epil.preheader

.lr.ph.i.i.i.i46.epil.preheader:                  ; preds = %.loopexit109.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i46.preheader
  %.sroa.0.08.i.i.i.i47.epil.init = phi ptr [ %i.atp, %.lr.ph.i.i.i.i46.preheader ], [ %i.auc, %.loopexit109.i.loopexit.unr-lcssa ]
  %lcmp.mod4731 = icmp ne i64 %xtraiter4727, 0
  call void @llvm.assume(i1 %lcmp.mod4731)
  br label %.lr.ph.i.i.i.i46.epil

.lr.ph.i.i.i.i46.epil:                            ; preds = %.lr.ph.i.i.i.i46.epil, %.lr.ph.i.i.i.i46.epil.preheader
  %.sroa.0.08.i.i.i.i47.epil = phi ptr [ %i.auj, %.lr.ph.i.i.i.i46.epil ], [ %.sroa.0.08.i.i.i.i47.epil.init, %.lr.ph.i.i.i.i46.epil.preheader ] ; 3 uses
  %epil.iter4728 = phi i64 [ %epil.iter4728.next, %.lr.ph.i.i.i.i46.epil ], [ 0, %.lr.ph.i.i.i.i46.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i47.epil, i8 0, i64 2824, i1 false), !noalias !8715
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.epil, align 8, !noalias !8716
  %i.auj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47.epil, i64 2832 ; 2 uses
  %epil.iter4728.next = add i64 %epil.iter4728, 1 ; 2 uses
  %epil.iter4728.cmp.not = icmp eq i64 %epil.iter4728.next, %xtraiter4727
  br i1 %epil.iter4728.cmp.not, label %.loopexit109.i, label %.lr.ph.i.i.i.i46.epil, !llvm.loop !8719

.loopexit109.i:                                   ; preds = %.loopexit109.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i46.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i51 = phi ptr [ %i.atp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i.i" ], [ %i.auc, %.loopexit109.i.loopexit.unr-lcssa ], [ %i.auj, %.lr.ph.i.i.i.i46.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i51, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.0.lcssa15.i.i.i.i51, i8 0, i64 2824, i1 false), !noalias !8715
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i52, align 8, !noalias !8716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8723)
  %i.auk = getelementptr inbounds nuw i8, ptr %i.atp, i64 %i.ato
  %xtraiter4734 = and i64 %spec.store.select.i44, 7 ; 2 uses
  %lcmp.mod4735.not = icmp eq i64 %xtraiter4734, 0
  br i1 %lcmp.mod4735.not, label %.lr.ph.i.i.i53.prol.loopexit, label %.lr.ph.i.i.i53.prol

.lr.ph.i.i.i53.prol:                              ; preds = %.loopexit109.i, %.lr.ph.i.i.i53.prol
  %.sroa.02.05.i.i.i54.prol = phi ptr [ %i.aul, %.lr.ph.i.i.i53.prol ], [ %i.atp, %.loopexit109.i ] ; 3 uses
  %prol.iter4736 = phi i64 [ %prol.iter4736.next, %.lr.ph.i.i.i53.prol ], [ 0, %.loopexit109.i ]
  %i.aul = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54.prol, i64 2832 ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54.prol, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i.i54.prol, i8 0, i64 2824, i1 false), !alias.scope !8725, !noalias !8728
  store float 3.402000e+38, ptr %i.aum, align 8, !alias.scope !8729, !noalias !8728
  %prol.iter4736.next = add i64 %prol.iter4736, 1 ; 2 uses
  %prol.iter4736.cmp.not = icmp eq i64 %prol.iter4736.next, %xtraiter4734
  br i1 %prol.iter4736.cmp.not, label %.lr.ph.i.i.i53.prol.loopexit, label %.lr.ph.i.i.i53.prol, !llvm.loop !8732

.lr.ph.i.i.i53.prol.loopexit:                     ; preds = %.lr.ph.i.i.i53.prol, %.loopexit109.i
  %.sroa.02.05.i.i.i54.unr = phi ptr [ %i.atp, %.loopexit109.i ], [ %i.aul, %.lr.ph.i.i.i53.prol ]
  %i.aun = icmp samesign ult i64 %2, 3710
  br i1 %i.aun, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.preheader.split.i.i, label %.lr.ph.i.i.i53

.lr.ph.i.i.i53:                                   ; preds = %.lr.ph.i.i.i53.prol.loopexit, %.lr.ph.i.i.i53
  %.sroa.02.05.i.i.i54 = phi ptr [ %i.avc, %.lr.ph.i.i.i53 ], [ %.sroa.02.05.i.i.i54.unr, %.lr.ph.i.i.i53.prol.loopexit ] ; 17 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 2832
  %i.aup = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i.i54, i8 0, i64 2824, i1 false), !alias.scope !8725, !noalias !8728
  store float 3.402000e+38, ptr %i.aup, align 8, !alias.scope !8729, !noalias !8728
  %i.auq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 5664
  %i.aur = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.auo, i8 0, i64 2824, i1 false), !alias.scope !8725, !noalias !8728
  store float 3.402000e+38, ptr %i.aur, align 8, !alias.scope !8729, !noalias !8728
  %i.aus = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 8496
  %i.aut = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.auq, i8 0, i64 2824, i1 false), !alias.scope !8725, !noalias !8728
  store float 3.402000e+38, ptr %i.aut, align 8, !alias.scope !8729, !noalias !8728
  %i.auu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 11328
  %i.auv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.aus, i8 0, i64 2824, i1 false), !alias.scope !8725, !noalias !8728
  store float 3.402000e+38, ptr %i.auv, align 8, !alias.scope !8729, !noalias !8728
  %i.auw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 14160
  %i.aux = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.auu, i8 0, i64 2824, i1 false), !alias.scope !8725, !noalias !8728
  store float 3.402000e+38, ptr %i.aux, align 8, !alias.scope !8729, !noalias !8728
  %i.auy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 16992
  %i.auz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.auw, i8 0, i64 2824, i1 false), !alias.scope !8725, !noalias !8728
  store float 3.402000e+38, ptr %i.auz, align 8, !alias.scope !8729, !noalias !8728
  %i.ava = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 19824
  %i.avb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.auy, i8 0, i64 2824, i1 false), !alias.scope !8725, !noalias !8728
  store float 3.402000e+38, ptr %i.avb, align 8, !alias.scope !8729, !noalias !8728
  %i.avc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 22656 ; 2 uses
  %i.avd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ava, i8 0, i64 2824, i1 false), !alias.scope !8725, !noalias !8728
  store float 3.402000e+38, ptr %i.avd, align 8, !alias.scope !8729, !noalias !8728
  %i.ave = icmp eq ptr %i.avc, %i.auk
  br i1 %i.ave, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.preheader.split.i.i, label %.lr.ph.i.i.i53

_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i53, %.lr.ph.i.i.i53.prol.loopexit
  %i.avf = udiv i64 %2, %spec.store.select.i44
  %i.avg = add nsw i64 %2, -41
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.loopexit.i.i: ; preds = %bb.ha
  %exitcond.not.i.i67 = icmp eq i64 %.sroa.07.024.i.i, %i.atk
  br i1 %exitcond.not.i.i67, label %.lr.ph.i.i68, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.preheader.split.split.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.loopexit.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.preheader.split.i.i
  %.sroa.0.025.i.i = phi i32 [ %.sroa.0.1.i.i57, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.loopexit.i.i ], [ 7, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.07.024.i.i = phi i64 [ %i.avh, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.loopexit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.preheader.split.i.i ] ; 5 uses
  %i.avh = add nuw nsw i64 %.sroa.07.024.i.i, 1
  %i.avi = mul i64 %.sroa.07.024.i.i, %2
  %i.avj = udiv i64 %i.avi, %spec.store.select.i44 ; 2 uses
  %i.avk = icmp eq i64 %.sroa.07.024.i.i, 0
  br i1 %i.avk, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gy, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i56 = phi i64 [ %i.avj, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.preheader.split.split.i.i ], [ %i.avr, %bb.gy ] ; 2 uses
  %.sroa.0.1.i.i57 = phi i32 [ %.sroa.0.025.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i55, %bb.gy ]
  %i.avl = add i64 %.sroa.04.0.i.i56, 40
  %.not.i.i58 = icmp ult i64 %i.avl, %2
  %spec.select.i.i59 = select i1 %.not.i.i58, i64 %.sroa.04.0.i.i56, i64 %i.avg ; 4 uses
  %i.avm = icmp ugt i64 %spec.select.i.i59, %2
  br i1 %i.avm, label %.split29.us.i.invoke.i, label %bb.gz, !prof !282

bb.gy:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.preheader.split.split.i.i
  %i.avn = icmp eq i32 %.sroa.0.025.i.i, 0
  %i.avo = mul i32 %.sroa.0.025.i.i, 16807
  %spec.store.select.i.i55 = select i1 %i.avn, i32 1, i32 %i.avo ; 2 uses
  %i.avp = zext i32 %spec.store.select.i.i55 to i64
  %i.avq = urem i64 %i.avp, %i.avf
  %i.avr = add i64 %i.avq, %i.avj
  br label %bb.gx

bb.gz:                                            ; preds = %bb.gx
  %i.avs = getelementptr inbounds nuw [2832 x i8], ptr %i.atp, i64 %.sroa.07.024.i.i ; 3 uses
  %i.avt = sub nuw nsw i64 %2, %spec.select.i.i59 ; 2 uses
  %i.avu = getelementptr inbounds nuw [2 x i8], ptr %i.ark, i64 %spec.select.i.i59 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8736)
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avs, i64 2816 ; 2 uses
  %i.avw = load i64, ptr %i.avv, align 8, !alias.scope !8738, !noalias !8741, !noundef !4
  %i.avx = add i64 %i.avw, 40
  store i64 %i.avx, ptr %i.avv, align 8, !alias.scope !8742, !noalias !8741
  %i.avy = icmp samesign ugt i64 %i.avt, 39
  br i1 %i.avy, label %.preheader.i.i.i63, label %.split29.us.i.invoke.i, !prof !2223

.split29.us.i.invoke.i:                           ; preds = %bb.gz, %bb.gx
  %.ph180 = phi i64 [ 0, %bb.gz ], [ %spec.select.i.i59, %bb.gx ]
  %.ph181 = phi i64 [ 40, %bb.gz ], [ %2, %bb.gx ]
  %.ph182 = phi i64 [ %i.avt, %bb.gz ], [ %2, %bb.gx ]
  %.ph183 = phi ptr [ @1290, %bb.gz ], [ @920, %bb.gx ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.ph180, i64 noundef %.ph181, i64 noundef %.ph182, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph183) #46
          to label %.split29.us.i.cont.i unwind label %.thread.i60, !noalias !8715

.split29.us.i.cont.i:                             ; preds = %.split29.us.i.invoke.i
  unreachable

.preheader.i.i.i63:                               ; preds = %bb.gz, %bb.ha
  %.sroa.02.0.idx7.i.i.i64 = phi i64 [ %.sroa.02.0.add.i.i.i66.1, %bb.ha ], [ 0, %bb.gz ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i65 = getelementptr inbounds nuw i8, ptr %i.avu, i64 %.sroa.02.0.idx7.i.i.i64
  %i.avz = load i16, ptr %.sroa.02.0.ptr.i.i.i65, align 2, !alias.scope !8745, !noalias !8748, !noundef !4 ; 2 uses
  %i.awa = zext i16 %i.avz to i64                 ; 2 uses
  %i.awb = icmp ult i16 %i.avz, 704
  br i1 %i.awb, label %.preheader.i.i.i63.1, label %.split32.us.i.invoke.i

.preheader.i.i.i63.1:                             ; preds = %.preheader.i.i.i63
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %i.avs, i64 %i.awa ; 2 uses
  %i.awd = load i32, ptr %i.awc, align 4, !alias.scope !8749, !noalias !8741, !noundef !4
  %i.awe = add i32 %i.awd, 1
  store i32 %i.awe, ptr %i.awc, align 4, !alias.scope !8749, !noalias !8741
  %i.awf = getelementptr inbounds nuw i8, ptr %i.avu, i64 %.sroa.02.0.idx7.i.i.i64
  %.sroa.02.0.ptr.i.i.i65.1 = getelementptr inbounds nuw i8, ptr %i.awf, i64 2
  %i.awg = load i16, ptr %.sroa.02.0.ptr.i.i.i65.1, align 2, !alias.scope !8745, !noalias !8748, !noundef !4 ; 2 uses
  %i.awh = zext i16 %i.awg to i64                 ; 2 uses
  %i.awi = icmp ult i16 %i.awg, 704
  br i1 %i.awi, label %bb.ha, label %.split32.us.i.invoke.i

bb.ha:                                            ; preds = %.preheader.i.i.i63.1
  %.sroa.02.0.add.i.i.i66.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i64, 4 ; 2 uses
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %i.avs, i64 %i.awh ; 2 uses
  %i.awk = load i32, ptr %i.awj, align 4, !alias.scope !8749, !noalias !8741, !noundef !4
  %i.awl = add i32 %i.awk, 1
  store i32 %i.awl, ptr %i.awj, align 4, !alias.scope !8749, !noalias !8741
  %i.awm = icmp eq i64 %.sroa.02.0.add.i.i.i66.1, 80
  br i1 %i.awm, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.loopexit.i.i, label %.preheader.i.i.i63

.split32.us.i.invoke.i:                           ; preds = %.preheader.i.i.i63, %.preheader.i.i.i63.1, %.preheader.i.i.i.i70, %.preheader.i.i.i.i70.1
  %i.awn = phi i64 [ %i.axk, %.preheader.i.i.i.i70.1 ], [ %i.axd, %.preheader.i.i.i.i70 ], [ %i.awa, %.preheader.i.i.i63 ], [ %i.awh, %.preheader.i.i.i63.1 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.awn, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1289) #46
          to label %.split32.us.i.cont.i unwind label %.thread.i60, !noalias !8715

.split32.us.i.cont.i:                             ; preds = %.split32.us.i.invoke.i
  unreachable

.lr.ph.i.i68:                                     ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8753)
  %i.awo = udiv i64 %i.ard, 40
  %i.awp = add nuw nsw i64 %i.awo, 99
  %i.awq = add nuw nsw i64 %i.awp, %spec.store.select.i44 ; 2 uses
  %i.awr = urem i64 %i.awq, %spec.store.select.i44
  %i.aws = sub nuw nsw i64 %i.awq, %i.awr
  %i.awt = getelementptr inbounds nuw i8, ptr %i.ab, i64 2816 ; 2 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.ab, i64 2824
  %i.awv = add nsw i64 %2, -39
  br label %_ZN6brotli3enc9histogram14HistogramClear17h845cc06d3e3e7a36E.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17h845cc06d3e3e7a36E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbae568b48856083eE.exit.i.i, %.lr.ph.i.i68
  %.sroa.03.022.i.i = phi i64 [ 0, %.lr.ph.i.i68 ], [ %i.aww, %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbae568b48856083eE.exit.i.i ] ; 2 uses
  %.sroa.0.021.i.i = phi i32 [ 7, %.lr.ph.i.i68 ], [ %spec.store.select.i.i.i69, %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbae568b48856083eE.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !8755
  %i.aww = add nuw i64 %.sroa.03.022.i.i, 1       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2816) %i.ab, i8 0, i64 2816, i1 false), !noalias !8755
  store float 3.402000e+38, ptr %i.awu, align 8, !alias.scope !8756, !noalias !8755
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8762)
  %i.awx = mul i32 %.sroa.0.021.i.i, 16807
  %i.awy = icmp eq i32 %.sroa.0.021.i.i, 0
  %spec.store.select.i.i.i69 = select i1 %i.awy, i32 1, i32 %i.awx ; 2 uses
  %i.awz = zext i32 %spec.store.select.i.i.i69 to i64
  %i.axa = urem i64 %i.awz, %i.awv
  %i.axb = getelementptr inbounds nuw [2 x i8], ptr %i.ark, i64 %i.axa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8767)
  store i64 40, ptr %i.awt, align 8, !alias.scope !8769, !noalias !8772
  br label %.preheader.i.i.i.i70

.preheader.i.i.i.i70:                             ; preds = %bb.hb, %_ZN6brotli3enc9histogram14HistogramClear17h845cc06d3e3e7a36E.exit.i.i
  %.sroa.02.0.idx7.i.i.i.i71 = phi i64 [ 0, %_ZN6brotli3enc9histogram14HistogramClear17h845cc06d3e3e7a36E.exit.i.i ], [ %.sroa.02.0.add.i.i.i.i73.1, %bb.hb ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %i.axb, i64 %.sroa.02.0.idx7.i.i.i.i71
  %i.axc = load i16, ptr %.sroa.02.0.ptr.i.i.i.i72, align 2, !alias.scope !8774, !noalias !8777, !noundef !4 ; 2 uses
  %i.axd = zext i16 %i.axc to i64                 ; 2 uses
  %i.axe = icmp ult i16 %i.axc, 704
  br i1 %i.axe, label %.preheader.i.i.i.i70.1, label %.split32.us.i.invoke.i

.preheader.i.i.i.i70.1:                           ; preds = %.preheader.i.i.i.i70
  %i.axf = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.axd ; 2 uses
  %i.axg = load i32, ptr %i.axf, align 4, !alias.scope !8778, !noalias !8772, !noundef !4
  %i.axh = add i32 %i.axg, 1
  store i32 %i.axh, ptr %i.axf, align 4, !alias.scope !8778, !noalias !8772
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axb, i64 %.sroa.02.0.idx7.i.i.i.i71
  %.sroa.02.0.ptr.i.i.i.i72.1 = getelementptr inbounds nuw i8, ptr %i.axi, i64 2
  %i.axj = load i16, ptr %.sroa.02.0.ptr.i.i.i.i72.1, align 2, !alias.scope !8774, !noalias !8777, !noundef !4 ; 2 uses
  %i.axk = zext i16 %i.axj to i64                 ; 2 uses
  %i.axl = icmp ult i16 %i.axj, 704
  br i1 %i.axl, label %bb.hb, label %.split32.us.i.invoke.i

bb.hb:                                            ; preds = %.preheader.i.i.i.i70.1
  %.sroa.02.0.add.i.i.i.i73.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i.i71, 4 ; 2 uses
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.axk ; 2 uses
  %i.axn = load i32, ptr %i.axm, align 4, !alias.scope !8778, !noalias !8772, !noundef !4
  %i.axo = add i32 %i.axn, 1
  store i32 %i.axo, ptr %i.axm, align 4, !alias.scope !8778, !noalias !8772
  %i.axp = icmp eq i64 %.sroa.02.0.add.i.i.i.i73.1, 80
  br i1 %i.axp, label %vector.ph3842, label %.preheader.i.i.i.i70

vector.ph3842:                                    ; preds = %bb.hb
  %i.axq = urem i64 %.sroa.03.022.i.i, %spec.store.select.i44
  %i.axr = getelementptr inbounds nuw [2832 x i8], ptr %i.atp, i64 %i.axq ; 3 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 2816 ; 2 uses
  %i.axt = load i64, ptr %i.axs, align 8, !alias.scope !8779, !noalias !8782, !noundef !4
  %i.axu = load i64, ptr %i.awt, align 8, !alias.scope !8785, !noalias !8755, !noundef !4
  %i.axv = add i64 %i.axu, %i.axt
  store i64 %i.axv, ptr %i.axs, align 8, !alias.scope !8788, !noalias !8791
  br label %vector.body3843

vector.body3843:                                  ; preds = %vector.body3843, %vector.ph3842
  %index3844 = phi i64 [ 0, %vector.ph3842 ], [ %index.next3849.1, %vector.body3843 ] ; 4 uses
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr %i.axr, i64 %index3844 ; 3 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 16 ; 2 uses
  %wide.load3845 = load <4 x i32>, ptr %i.axw, align 8, !alias.scope !8753, !noalias !8791
  %wide.load3846 = load <4 x i32>, ptr %i.axx, align 8, !alias.scope !8753, !noalias !8791
  %i.axy = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index3844 ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 16
  %wide.load3847 = load <4 x i32>, ptr %i.axy, align 8, !noalias !8755
  %wide.load3848 = load <4 x i32>, ptr %i.axz, align 8, !noalias !8755
  %i.aya = add <4 x i32> %wide.load3847, %wide.load3845
  %i.ayb = add <4 x i32> %wide.load3848, %wide.load3846
  store <4 x i32> %i.aya, ptr %i.axw, align 8, !alias.scope !8753, !noalias !8791
  store <4 x i32> %i.ayb, ptr %i.axx, align 8, !alias.scope !8753, !noalias !8791
  %index.next3849 = or disjoint i64 %index3844, 8 ; 2 uses
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %i.axr, i64 %index.next3849 ; 3 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 16 ; 2 uses
  %wide.load3845.1 = load <4 x i32>, ptr %i.ayc, align 8, !alias.scope !8753, !noalias !8791
  %wide.load3846.1 = load <4 x i32>, ptr %i.ayd, align 8, !alias.scope !8753, !noalias !8791
  %i.aye = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index.next3849 ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 16
  %wide.load3847.1 = load <4 x i32>, ptr %i.aye, align 8, !noalias !8755
  %wide.load3848.1 = load <4 x i32>, ptr %i.ayf, align 8, !noalias !8755
  %i.ayg = add <4 x i32> %wide.load3847.1, %wide.load3845.1
  %i.ayh = add <4 x i32> %wide.load3848.1, %wide.load3846.1
  store <4 x i32> %i.ayg, ptr %i.ayc, align 8, !alias.scope !8753, !noalias !8791
  store <4 x i32> %i.ayh, ptr %i.ayd, align 8, !alias.scope !8753, !noalias !8791
end_hunk_3
begin_hunk_4_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
  store i8 %i.cez, ptr %i.bvd, align 1, !alias.scope !9060, !noalias !9062
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.nb
  %.sroa.029.4.2.i.i142 = phi float [ %i.cew, %bb.nc ], [ %.sroa.029.4.1.i.i141, %bb.nb ] ; 2 uses
  %i.cfa = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i119, i64 12 ; 2 uses
  %i.cfb = load float, ptr %i.cfa, align 4, !alias.scope !9056, !noalias !9065, !noundef !4
  %i.cfc = fadd float %.sroa.7.0.copyload.i.i131, %i.cfb ; 3 uses
  store float %i.cfc, ptr %i.cfa, align 4, !alias.scope !9056, !noalias !9065
  %i.cfd = fcmp olt float %i.cfc, %.sroa.029.4.2.i.i142
  br i1 %i.cfd, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  %i.cfe = trunc i64 %i.bvm to i8
  %i.cff = or disjoint i8 %i.cfe, 3
  store i8 %i.cff, ptr %i.bvd, align 1, !alias.scope !9060, !noalias !9062
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %.sroa.029.4.3.i.i143 = phi float [ %i.cfc, %bb.ne ], [ %.sroa.029.4.2.i.i142, %bb.nd ] ; 2 uses
  %i.cfg = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i119, i64 16 ; 2 uses
  %i.cfh = load float, ptr %i.cfg, align 4, !alias.scope !9056, !noalias !9065, !noundef !4
  %i.cfi = fadd float %.sroa.8.0.copyload.i.i133, %i.cfh ; 3 uses
  store float %i.cfi, ptr %i.cfg, align 4, !alias.scope !9056, !noalias !9065
  %i.cfj = fcmp olt float %i.cfi, %.sroa.029.4.3.i.i143
  br i1 %i.cfj, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  %i.cfk = trunc i64 %i.bvm to i8
  %i.cfl = or disjoint i8 %i.cfk, 4
  store i8 %i.cfl, ptr %i.bvd, align 1, !alias.scope !9060, !noalias !9062
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %bb.nf
  %.sroa.029.4.4.i.i144 = phi float [ %i.cfi, %bb.ng ], [ %.sroa.029.4.3.i.i143, %bb.nf ] ; 2 uses
  %i.cfm = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i119, i64 20 ; 2 uses
  %i.cfn = load float, ptr %i.cfm, align 4, !alias.scope !9056, !noalias !9065, !noundef !4
  %i.cfo = fadd float %.sroa.9.0.copyload.i.i135, %i.cfn ; 3 uses
  store float %i.cfo, ptr %i.cfm, align 4, !alias.scope !9056, !noalias !9065
  %i.cfp = fcmp olt float %i.cfo, %.sroa.029.4.4.i.i144
  br i1 %i.cfp, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  %i.cfq = trunc i64 %i.bvm to i8
  %i.cfr = or disjoint i8 %i.cfq, 5
  store i8 %i.cfr, ptr %i.bvd, align 1, !alias.scope !9060, !noalias !9062
  br label %bb.nj

bb.nj:                                            ; preds = %bb.ni, %bb.nh
  %.sroa.029.4.5.i.i145 = phi float [ %i.cfo, %bb.ni ], [ %.sroa.029.4.4.i.i144, %bb.nh ] ; 2 uses
  %i.cfs = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i119, i64 24 ; 2 uses
  %i.cft = load float, ptr %i.cfs, align 4, !alias.scope !9056, !noalias !9065, !noundef !4
  %i.cfu = fadd float %.sroa.10.0.copyload.i.i137, %i.cft ; 3 uses
  store float %i.cfu, ptr %i.cfs, align 4, !alias.scope !9056, !noalias !9065
  %i.cfv = fcmp olt float %i.cfu, %.sroa.029.4.5.i.i145
  br i1 %i.cfv, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.cfw = trunc i64 %i.bvm to i8
  %i.cfx = or disjoint i8 %i.cfw, 6
  store i8 %i.cfx, ptr %i.bvd, align 1, !alias.scope !9060, !noalias !9062
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  %.sroa.029.4.6.i.i146 = phi float [ %i.cfu, %bb.nk ], [ %.sroa.029.4.5.i.i145, %bb.nj ] ; 2 uses
  %i.cfy = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i119, i64 28 ; 2 uses
  %i.cfz = load float, ptr %i.cfy, align 4, !alias.scope !9056, !noalias !9065, !noundef !4
  %i.cga = fadd float %.sroa.11.0.copyload.i.i139, %i.cfz ; 3 uses
  store float %i.cga, ptr %i.cfy, align 4, !alias.scope !9056, !noalias !9065
  %i.cgb = fcmp olt float %i.cga, %.sroa.029.4.6.i.i146
  br i1 %i.cgb, label %bb.nm, label %bb.nn

bb.nm:                                            ; preds = %bb.nl
  %i.cgc = trunc i64 %i.bvm to i8
  %i.cgd = or disjoint i8 %i.cgc, 7
  store i8 %i.cgd, ptr %i.bvd, align 1, !alias.scope !9060, !noalias !9062
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nm, %bb.nl
  %.sroa.029.4.7.i.i147 = phi float [ %i.cga, %bb.nm ], [ %.sroa.029.4.6.i.i146, %bb.nl ] ; 2 uses
  %i.cge = icmp eq ptr %i.bvk, %i.bry
  br i1 %i.cge, label %._crit_edge416.i.i148, label %.lr.ph415.i.i117

bb.no:                                            ; preds = %bb.nq, %.split.i180.i
  %i.cgf = phi i64 [ 1, %.split.i180.i ], [ %i.cgp, %bb.nq ] ; 4 uses
  %.sroa.071.0400.i.i87 = phi i64 [ 0, %.split.i180.i ], [ %i.cgf, %bb.nq ] ; 4 uses
  %i.cgg = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %.sroa.071.0400.i.i87
  %i.cgh = load float, ptr %i.cgg, align 4, !alias.scope !9054, !noalias !9064, !noundef !4
  %exitcond482.not.i.i88 = icmp eq i64 %i.cgf, %i.azl
  br i1 %exitcond482.not.i.i88, label %.invoke.i98, label %bb.np

bb.np:                                            ; preds = %bb.no
  %gep.i.i89 = getelementptr [2832 x i8], ptr %invariant.gep.i.i86, i64 %.sroa.071.0400.i.i87
  %i.cgi = load i32, ptr %gep.i.i89, align 4, !alias.scope !9052, !noalias !9085, !noundef !4
  %i.cgj = zext i32 %i.cgi to i64
  %i.cgk = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.cgj)
          to label %.noexc200.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i90", !noalias !8715

.noexc200.i:                                      ; preds = %bb.np
  %i.cgl = add nuw nsw i64 %.sroa.071.0400.i.i87, %i.brw ; 3 uses
  %i.cgm = icmp ult i64 %i.cgl, %i.ayn
  br i1 %i.cgm, label %bb.nq, label %.invoke.i98

bb.nq:                                            ; preds = %.noexc200.i
  %i.cgn = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %i.cgl
  %i.cgo = fsub float %i.cgh, %i.cgk
  store float %i.cgo, ptr %i.cgn, align 4, !alias.scope !9054, !noalias !9064
  %i.cgp = add nuw nsw i64 %i.cgf, 1
  %exitcond483.not.i.i = icmp eq i64 %i.cgf, %.sroa.0.0441.i
  br i1 %exitcond483.not.i.i, label %.loopexit358.i.i101, label %bb.no

bb.nr:                                            ; preds = %bb.lm
  %i.cgq = getelementptr inbounds nuw [2832 x i8], ptr %i.atp, i64 %.sroa.069.0399.i.i83
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.cgq, i64 2816
  %i.cgs = load i64, ptr %i.cgr, align 8, !alias.scope !9086, !noalias !9085, !noundef !4
  %i.cgt = and i64 %i.cgs, 4294967295             ; 3 uses
  %i.cgu = icmp samesign ult i64 %i.cgt, 256
  br i1 %i.cgu, label %bb.nu, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.cgv = uitofp nneg i64 %i.cgt to float
  %i.cgw = tail call float @llvm.log2.f32(float %i.cgv)
  br label %bb.nt

bb.nt:                                            ; preds = %bb.nu, %bb.ns
  %.sroa.016.0.i.i84 = phi float [ %i.cha, %bb.nu ], [ %i.cgw, %bb.ns ]
  %i.cgx = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %.sroa.069.0399.i.i83
  store float %.sroa.016.0.i.i84, ptr %i.cgx, align 4, !alias.scope !9054, !noalias !9064
  %i.cgy = add nuw nsw i64 %i.brs, 1
  %exitcond480.not.i.i = icmp eq i64 %i.brs, %.sroa.0.0441.i
  br i1 %exitcond480.not.i.i, label %.split.i180.i, label %bb.lm

bb.nu:                                            ; preds = %bb.nr
  %i.cgz = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.cgt
  %i.cha = load float, ptr %i.cgz, align 4, !noalias !9071, !noundef !4
  br label %bb.nt

.preheader.i.i416:                                ; preds = %.preheader.i.i416.preheader4417, %bb.nv
  %i.chb = phi i64 [ %i.chd, %bb.nv ], [ %.ph4418, %.preheader.i.i416.preheader4417 ] ; 4 uses
  %.sroa.066.0449.i.i417 = phi i64 [ %i.chb, %bb.nv ], [ %.sroa.066.0449.i.i417.ph, %.preheader.i.i416.preheader4417 ] ; 2 uses
  %exitcond488.not.i.i418 = icmp eq i64 %i.chb, %i.azp
  br i1 %exitcond488.not.i.i418, label %.invoke.i98, label %bb.nv

bb.nv:                                            ; preds = %.preheader.i.i416
  %i.chc = getelementptr inbounds nuw i8, ptr %i.ayj, i64 %.sroa.066.0449.i.i417
  store i8 0, ptr %i.chc, align 1, !alias.scope !9060, !noalias !9062
  %i.chd = add nuw nsw i64 %i.chb, 1
  %exitcond489.not.i.i = icmp eq i64 %i.chb, %2
  br i1 %exitcond489.not.i.i, label %.loopexit.i204, label %.preheader.i.i416, !llvm.loop !9089

.loopexit.i204:                                   ; preds = %bb.lq, %bb.nv, %bb.li
  %.sroa.0.0.i.i205 = phi i64 [ 0, %bb.li ], [ 1, %bb.nv ], [ %.sroa.03.1.i.i202, %bb.lq ] ; 32 uses
  %i.che = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.ayj, i64 noundef %2, i64 noundef %2, ptr noalias noundef nonnull align 2 %i.azh, i64 noundef %spec.store.select.i44, i64 noundef %.sroa.0.0441.i)
          to label %bb.nw unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i206", !noalias !8715 ; 5 uses

bb.nw:                                            ; preds = %.loopexit.i204
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9095)
  %.not.i.i206.i = icmp ugt i64 %i.che, %spec.store.select.i44
  br i1 %.not.i.i206.i, label %.invoke1203.i, label %bb.nx, !prof !2175

bb.nx:                                            ; preds = %bb.nw
  %.idx.i.i207.i = mul i64 %i.che, 2832           ; 2 uses
  %i.chf = getelementptr inbounds nuw i8, ptr %i.atp, i64 %.idx.i.i207.i
  %i.chg = icmp eq i64 %i.che, 0
  br i1 %i.chg, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader, label %.lr.ph.i.i208.i.preheader

.lr.ph.i.i208.i.preheader:                        ; preds = %bb.nx
  %i.chh = add i64 %.idx.i.i207.i, -2832          ; 2 uses
  %i.chi = udiv i64 %i.chh, 2832
  %i.chj = add nuw nsw i64 %i.chi, 1
  %xtraiter4737 = and i64 %i.chj, 7               ; 2 uses
  %lcmp.mod4738.not = icmp eq i64 %xtraiter4737, 0
  br i1 %lcmp.mod4738.not, label %.lr.ph.i.i208.i.prol.loopexit, label %.lr.ph.i.i208.i.prol

.lr.ph.i.i208.i.prol:                             ; preds = %.lr.ph.i.i208.i.preheader, %.lr.ph.i.i208.i.prol
  %.sroa.02.05.i.i209.i.prol = phi ptr [ %i.chk, %.lr.ph.i.i208.i.prol ], [ %i.atp, %.lr.ph.i.i208.i.preheader ] ; 3 uses
  %prol.iter4739 = phi i64 [ %prol.iter4739.next, %.lr.ph.i.i208.i.prol ], [ 0, %.lr.ph.i.i208.i.preheader ]
  %i.chk = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i.prol, i64 2832 ; 2 uses
  %i.chl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i.prol, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i209.i.prol, i8 0, i64 2824, i1 false), !alias.scope !9097, !noalias !9100
  store float 3.402000e+38, ptr %i.chl, align 8, !alias.scope !9101, !noalias !9100
  %prol.iter4739.next = add i64 %prol.iter4739, 1 ; 2 uses
  %prol.iter4739.cmp.not = icmp eq i64 %prol.iter4739.next, %xtraiter4737
  br i1 %prol.iter4739.cmp.not, label %.lr.ph.i.i208.i.prol.loopexit, label %.lr.ph.i.i208.i.prol, !llvm.loop !9104

.lr.ph.i.i208.i.prol.loopexit:                    ; preds = %.lr.ph.i.i208.i.prol, %.lr.ph.i.i208.i.preheader
  %.sroa.02.05.i.i209.i.unr = phi ptr [ %i.atp, %.lr.ph.i.i208.i.preheader ], [ %i.chk, %.lr.ph.i.i208.i.prol ]
  %i.chm = icmp ult i64 %i.chh, 19824
  br i1 %i.chm, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader, label %.lr.ph.i.i208.i

.lr.ph.i.i208.i:                                  ; preds = %.lr.ph.i.i208.i.prol.loopexit, %.lr.ph.i.i208.i
  %.sroa.02.05.i.i209.i = phi ptr [ %i.cib, %.lr.ph.i.i208.i ], [ %.sroa.02.05.i.i209.i.unr, %.lr.ph.i.i208.i.prol.loopexit ] ; 17 uses
  %i.chn = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 2832
  %i.cho = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i209.i, i8 0, i64 2824, i1 false), !alias.scope !9097, !noalias !9100
  store float 3.402000e+38, ptr %i.cho, align 8, !alias.scope !9101, !noalias !9100
  %i.chp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 5664
  %i.chq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chn, i8 0, i64 2824, i1 false), !alias.scope !9097, !noalias !9100
  store float 3.402000e+38, ptr %i.chq, align 8, !alias.scope !9101, !noalias !9100
  %i.chr = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 8496
  %i.chs = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chp, i8 0, i64 2824, i1 false), !alias.scope !9097, !noalias !9100
  store float 3.402000e+38, ptr %i.chs, align 8, !alias.scope !9101, !noalias !9100
  %i.cht = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 11328
  %i.chu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chr, i8 0, i64 2824, i1 false), !alias.scope !9097, !noalias !9100
  store float 3.402000e+38, ptr %i.chu, align 8, !alias.scope !9101, !noalias !9100
  %i.chv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 14160
  %i.chw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.cht, i8 0, i64 2824, i1 false), !alias.scope !9097, !noalias !9100
  store float 3.402000e+38, ptr %i.chw, align 8, !alias.scope !9101, !noalias !9100
  %i.chx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 16992
  %i.chy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chv, i8 0, i64 2824, i1 false), !alias.scope !9097, !noalias !9100
  store float 3.402000e+38, ptr %i.chy, align 8, !alias.scope !9101, !noalias !9100
  %i.chz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 19824
  %i.cia = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chx, i8 0, i64 2824, i1 false), !alias.scope !9097, !noalias !9100
  store float 3.402000e+38, ptr %i.cia, align 8, !alias.scope !9101, !noalias !9100
  %i.cib = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 22656 ; 2 uses
  %i.cic = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chz, i8 0, i64 2824, i1 false), !alias.scope !9097, !noalias !9100
  store float 3.402000e+38, ptr %i.cic, align 8, !alias.scope !9101, !noalias !9100
  %i.cid = icmp eq ptr %i.cib, %i.chf
  br i1 %i.cid, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader, label %.lr.ph.i.i208.i

_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader: ; preds = %.lr.ph.i.i208.i.prol.loopexit, %.lr.ph.i.i208.i, %bb.nx
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader, %_ZN6brotli3enc9histogram16HistogramAddItem17hfc6fbf5ad428868aE.exit.i.i
  %.sroa.01.013.i.i = phi i64 [ %i.cie, %_ZN6brotli3enc9histogram16HistogramAddItem17hfc6fbf5ad428868aE.exit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader ] ; 3 uses
  %i.cie = add nuw i64 %.sroa.01.013.i.i, 1       ; 2 uses
  %i.cif = getelementptr inbounds nuw i8, ptr %i.ayj, i64 %.sroa.01.013.i.i
  %i.cig = load i8, ptr %i.cif, align 1, !alias.scope !9093, !noalias !9105, !noundef !4
  %i.cih = zext i8 %i.cig to i64                  ; 3 uses
  %.not93.i = icmp samesign ult i64 %i.atk, %i.cih
  br i1 %.not93.i, label %.invoke.i98, label %bb.ny

bb.ny:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i
  %i.cii = getelementptr inbounds nuw [2 x i8], ptr %i.ark, i64 %.sroa.01.013.i.i
  %i.cij = load i16, ptr %i.cii, align 2, !alias.scope !9106, !noalias !9109, !noundef !4 ; 2 uses
  %i.cik = zext i16 %i.cij to i64                 ; 2 uses
  %i.cil = icmp ult i16 %i.cij, 704
  br i1 %i.cil, label %_ZN6brotli3enc9histogram16HistogramAddItem17hfc6fbf5ad428868aE.exit.i.i, label %.invoke.i98

_ZN6brotli3enc9histogram16HistogramAddItem17hfc6fbf5ad428868aE.exit.i.i: ; preds = %bb.ny
  %i.cim = getelementptr inbounds nuw [2832 x i8], ptr %i.atp, i64 %i.cih ; 2 uses
  %i.cin = getelementptr inbounds nuw [4 x i8], ptr %i.cim, i64 %i.cik ; 2 uses
  %i.cio = load i32, ptr %i.cin, align 4, !alias.scope !9110, !noalias !9100, !noundef !4
  %i.cip = add i32 %i.cio, 1
  store i32 %i.cip, ptr %i.cin, align 4, !alias.scope !9110, !noalias !9100
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cim, i64 2816 ; 2 uses
  %i.cir = load i64, ptr %i.ciq, align 8, !alias.scope !9113, !noalias !9100, !noundef !4
  %i.cis = add i64 %i.cir, 1
  store i64 %i.cis, ptr %i.ciq, align 8, !alias.scope !9116, !noalias !9100
  %exitcond24.not.i.i = icmp eq i64 %i.cie, %2
  br i1 %exitcond24.not.i.i, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h29ebbaa8acffa01fE.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i

.invoke.i98:                                      ; preds = %bb.lm, %.lr.ph434.split.i.i112, %.lr.ph447.i.i194, %.preheader.i.i416, %bb.ny, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i, %.noexc200.i, %bb.no, %.lr.ph424.preheader.i.i152, %.lr.ph424.i.i154.1, %.lr.ph424.i.i154.2, %.lr.ph424.i.i154.3, %.lr.ph424.i.i154.4, %.lr.ph424.i.i154.5, %.lr.ph424.i.i154.6, %.lr.ph430.i.i165
  %i.cit = phi i64 [ %i.cik, %bb.ny ], [ %i.bur, %.lr.ph447.i.i194 ], [ %i.cbu, %.lr.ph430.i.i165 ], [ %2, %.lr.ph434.split.i.i112 ], [ %.sroa.066.0449.i.i417, %.preheader.i.i416 ], [ %i.btu, %.lr.ph424.i.i154.6 ], [ %.sroa.071.0400.i.i87, %bb.no ], [ %i.bsg, %.lr.ph424.preheader.i.i152 ], [ %i.bsl, %.lr.ph424.i.i154.1 ], [ %i.bst, %.lr.ph424.i.i154.2 ], [ %i.btc, %.lr.ph424.i.i154.3 ], [ %i.bti, %.lr.ph424.i.i154.4 ], [ %i.bto, %.lr.ph424.i.i154.5 ], [ %i.cgl, %.noexc200.i ], [ %i.cih, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i ], [ %.sroa.069.0399.i.i83, %bb.lm ]
  %i.ciu = phi i64 [ 704, %bb.ny ], [ %i.ayy, %.lr.ph447.i.i194 ], [ %i.ayy, %.lr.ph430.i.i165 ], [ %2, %.lr.ph434.split.i.i112 ], [ %2, %.preheader.i.i416 ], [ %i.aym, %.lr.ph424.preheader.i.i152 ], [ %spec.store.select.i44, %bb.no ], [ %i.aym, %.lr.ph424.i.i154.6 ], [ %i.aym, %.lr.ph424.i.i154.5 ], [ %i.aym, %.lr.ph424.i.i154.4 ], [ %i.aym, %.lr.ph424.i.i154.3 ], [ %i.aym, %.lr.ph424.i.i154.2 ], [ %i.aym, %.lr.ph424.i.i154.1 ], [ %i.ayn, %.noexc200.i ], [ %spec.store.select.i44, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i ], [ %spec.store.select.i44, %bb.lm ]
  %i.civ = phi ptr [ @1288, %bb.ny ], [ @878, %.lr.ph447.i.i194 ], [ @923, %.lr.ph430.i.i165 ], [ @879, %.lr.ph434.split.i.i112 ], [ @893, %.preheader.i.i416 ], [ @884, %.lr.ph424.preheader.i.i152 ], [ @889, %bb.no ], [ @884, %.lr.ph424.i.i154.6 ], [ @884, %.lr.ph424.i.i154.5 ], [ @884, %.lr.ph424.i.i154.4 ], [ @884, %.lr.ph424.i.i154.3 ], [ @884, %.lr.ph424.i.i154.2 ], [ @884, %.lr.ph424.i.i154.1 ], [ @890, %.noexc200.i ], [ @921, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i ], [ @891, %bb.lm ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cit, i64 noundef %i.ciu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.civ) #46
          to label %.cont.i100 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i99", !noalias !8715

.cont.i100:                                       ; preds = %.invoke.i98
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i90": ; preds = %bb.np
  %lpad.loopexit.i91 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i92"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i206": ; preds = %.loopexit.i204
  %lpad.loopexit105.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i92"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i99": ; preds = %.invoke.i98, %.split440.us.i.invoke.i122, %.invoke1203.i
  %lpad.loopexit.split-lp106.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i92"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i92": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i99", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i206", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i90"
  %lpad.phi.i93 = phi { ptr, i32 } [ %lpad.loopexit.i91, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i90" ], [ %lpad.loopexit105.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i206" ], [ %lpad.loopexit.split-lp106.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i99" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.azh, i64 noundef %i.azg, i64 noundef 2) #45, !noalias !8715
  br label %bb.nz

bb.nz:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i92", %.thread55.i419
  %.pn62.i94 = phi { ptr, i32 } [ %i.azj, %.thread55.i419 ], [ %lpad.phi.i93, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i92" ]
  br i1 %i.aza, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i95", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i": ; preds = %bb.nz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.azf) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.azf, i64 noundef %i.ayy, i64 noundef 1) #45, !noalias !8715
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i95"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i95": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i", %bb.nz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayt, i64 noundef %i.ays, i64 noundef 4) #45, !noalias !8715
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i96"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i96": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i95", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.thread.i420", %.thread39.i422
  %.pn.pn.pn44.i97 = phi { ptr, i32 } [ %i.ayx, %.thread39.i422 ], [ %i.aze, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.thread.i420" ], [ %.pn62.i94, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i95" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayp, i64 noundef %i.ayo, i64 noundef 4) #45, !noalias !8715
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayj, i64 noundef %2, i64 noundef 1) #45, !noalias !8715
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i", %bb.lh, %.body.i409
  %.pn.pn.pn.pn.i270 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i410, %.body.i409 ], [ %i.bre, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i269, %bb.lh ], [ %.pn230.pn.pn.pn.pn.pn.pn85963.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i" ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayj, i64 noundef %2, i64 noundef 1) #45, !noalias !8715
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1043"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i96", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.thread.i", %.thread.i60
  %.pn.pn.pn.pn.pn38.i61 = phi { ptr, i32 } [ %i.aui, %.thread.i60 ], [ %.pn.pn.pn44.i97, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i96" ], [ %i.ayr, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.thread.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.atp, i64 noundef %i.ato, i64 noundef 8) #45, !noalias !8715
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1043"

bb.oa:                                            ; preds = %bb.gw
  %i.ciw = icmp eq i64 %.val107.i425, 0           ; 2 uses
  %spec.select.i434 = select i1 %i.ciw, i64 %i.aug, i64 %.val107.i425
  br label %bb.ob

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i", %bb.od, %bb.gw
  %.val.i426 = phi ptr [ %i.cjd, %bb.od ], [ %i.cjd, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i" ], [ %.val106.i424, %bb.gw ]
  %.val63.i427 = phi i64 [ %.sroa.014.1.i435, %bb.od ], [ %.sroa.014.1.i435, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i" ], [ %.val107.i425, %bb.gw ] ; 2 uses
  %i.cix = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.val92.i428 = load ptr, ptr %i.cix, align 8, !alias.scope !8705, !noalias !8702, !nonnull !4, !align !131, !noundef !4 ; 3 uses
  %i.ciy = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.val93.i429 = load i64, ptr %i.ciy, align 8, !alias.scope !8705, !noalias !8702, !noundef !4 ; 5 uses
  %i.ciz = icmp ult i64 %.val93.i429, %i.aug
  br i1 %i.ciz, label %bb.oe, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i430"

bb.ob:                                            ; preds = %bb.ob, %bb.oa
  %.sroa.014.1.i435 = phi i64 [ %spec.select.i434, %bb.oa ], [ %i.cjb, %bb.ob ] ; 9 uses
  %i.cja = icmp ult i64 %.sroa.014.1.i435, %i.aug
  %i.cjb = shl i64 %.sroa.014.1.i435, 1
  br i1 %i.cja, label %bb.ob, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.cjc = icmp slt i64 %.sroa.014.1.i435, 0
  br i1 %i.cjc, label %.invoke2966, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i, !prof !1121

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i: ; preds = %bb.oc
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9119
  %i.cjd = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.014.1.i435, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !9119 ; 5 uses
  %i.cje = icmp eq ptr %i.cjd, null
  br i1 %i.cje, label %.invoke2966, label %bb.od

bb.od:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cjd, ptr nonnull readonly align 1 %.val106.i424, i64 %.val107.i425, i1 false), !alias.scope !9125, !noalias !9129
  store ptr %i.cjd, ptr %8, align 8, !alias.scope !8705, !noalias !8702
  store i64 %.sroa.014.1.i435, ptr %i.aud, align 8, !alias.scope !8705, !noalias !8702
  br i1 %i.ciw, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i": ; preds = %bb.od
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.val106.i424, i64 noundef %.val107.i425, i64 noundef 1) #45, !noalias !8715
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i"

bb.oe:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i"
  %i.cjf = icmp eq i64 %.val93.i429, 0            ; 2 uses
  %spec.select91.i = select i1 %i.cjf, i64 %i.aug, i64 %.val93.i429
  br label %bb.of

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i430": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i", %bb.oj, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i"
  %.val108.i431 = phi ptr [ %i.cjr, %bb.oj ], [ %i.cjr, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i" ], [ %.val92.i428, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i" ]
  %.val109.i432 = phi i64 [ %.sroa.017.1.i433, %bb.oj ], [ %.sroa.017.1.i433, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i" ], [ %.val93.i429, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i" ] ; 2 uses
  %i.cjg = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 1, ptr %i.cjg, align 8, !alias.scope !8705, !noalias !8702
  %i.cjh = icmp ult i64 %i.auf, %.val63.i427
  br i1 %i.cjh, label %bb.ok, label %.invoke2968

bb.of:                                            ; preds = %bb.of, %bb.oe
  %.sroa.017.1.i433 = phi i64 [ %spec.select91.i, %bb.oe ], [ %i.cjj, %bb.of ] ; 8 uses
  %i.cji = icmp ult i64 %.sroa.017.1.i433, %i.aug
  %i.cjj = shl i64 %.sroa.017.1.i433, 1
  br i1 %i.cji, label %bb.of, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.cjk = shl i64 %.sroa.017.1.i433, 2           ; 5 uses
  %i.cjl = icmp ugt i64 %.sroa.017.1.i433, 4611686018427387903
  %i.cjm = icmp ugt i64 %i.cjk, 9223372036854775804
  %or.cond.i.i.i.i230.i = or i1 %i.cjl, %i.cjm
  br i1 %or.cond.i.i.i.i230.i, label %.invoke2966, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i, !prof !1121

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i: ; preds = %bb.og
  %i.cjn = icmp eq i64 %i.cjk, 0
  br i1 %i.cjn, label %bb.oj, label %bb.oh

bb.oh:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9131
  %i.cjo = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.cjk, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9131 ; 2 uses
  %i.cjp = icmp eq ptr %i.cjo, null
  br i1 %i.cjp, label %.invoke2966, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.cjq = ptrtoint ptr %i.cjo to i64
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i
  %.sroa.10.0.i.i232.i = phi i64 [ %i.cjq, %bb.oi ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i ]
  %i.cjr = inttoptr i64 %.sroa.10.0.i.i232.i to ptr ; 5 uses
  %i.cjs = icmp samesign ult i64 %.sroa.017.1.i433, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cjs)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cjr) ]
  %i.cjt = shl nuw nsw i64 %.val93.i429, 2        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cjr, ptr nonnull readonly align 4 %.val92.i428, i64 %i.cjt, i1 false), !alias.scope !9136, !noalias !9140
  store ptr %i.cjr, ptr %i.cix, align 8, !alias.scope !8705, !noalias !8702
  store i64 %.sroa.017.1.i433, ptr %i.ciy, align 8, !alias.scope !8705, !noalias !8702
  br i1 %i.cjf, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i430", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i": ; preds = %bb.oj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.val92.i428, i64 noundef %i.cjt, i64 noundef 4) #45, !noalias !8715
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i430"

bb.ok:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i430"
  %i.cju = getelementptr inbounds nuw i8, ptr %.val.i426, i64 %i.auf
  store i8 0, ptr %i.cju, align 1, !noalias !8715
  %i.cjv = icmp ult i64 %i.auf, %.val109.i432
  br i1 %i.cjv, label %_ZN6brotli3enc14block_splitter15SplitByteVector17h36bb1564eee2b25dE.exit.thread93, label %.invoke2968

.invoke2968:                                      ; preds = %bb.ok, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i430"
  %i.cjw = phi i64 [ %.val63.i427, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i430" ], [ %.val109.i432, %bb.ok ]
end_hunk_4
begin_hunk_5_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
  %i.ckc = add nuw nsw i64 %i.ckb, 1
  %i.ckd = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.ckc, ptr %i.ckd, align 8, !alias.scope !8901, !noalias !8902
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.bed, i64 noundef %i.bcw, i64 noundef 4) #45, !noalias !8840
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.10.0.i.i411.i.i208, i64 noundef %i.azy, i64 noundef 4) #45, !noalias !8840
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.bai, i64 noundef %i.azy, i64 noundef 4) #45, !noalias !8840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !8840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !8840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !8840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8840
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.ayj, i64 noundef %2, i64 noundef 1) #45, !noalias !8715
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i446

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i446: ; preds = %_ZN6brotli3enc14block_splitter15SplitByteVector17h36bb1564eee2b25dE.exit, %_ZN6brotli3enc14block_splitter15SplitByteVector17h36bb1564eee2b25dE.exit.thread93
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 2 %i.ark, i64 noundef %i.ard, i64 noundef 2) #45
  br i1 %i.arg, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit449", label %bb.ol

bb.ol:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i446
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9142
  %i.cke = tail call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.ard, i64 noundef range(i64 1, -9223372036854775807) 2) #45, !noalias !9142 ; 2 uses
  %i.ckf = icmp eq ptr %i.cke, null
  br i1 %i.ckf, label %bb.on, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.ckg = ptrtoint ptr %i.cke to i64
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit449"

bb.on:                                            ; preds = %bb.ol
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.ard, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !9147
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit449": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i446, %bb.om
  %.sroa.10.0.i.i447 = phi i64 [ %i.ckg, %bb.om ], [ 2, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i446 ]
  %i.ckh = inttoptr i64 %.sroa.10.0.i.i447 to ptr ; 16 uses
  br label %.lr.ph954

.lr.ph954:                                        ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit449", %bb.wl
  %.sroa.01.0953 = phi i64 [ %.sroa.01.1, %bb.wl ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit449" ] ; 6 uses
  %.sroa.011.0952 = phi i64 [ %i.cki, %bb.wl ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit449" ] ; 3 uses
  %i.cki = add nuw i64 %.sroa.011.0952, 1         ; 2 uses
  %exitcond1751.not = icmp eq i64 %.sroa.011.0952, %1
  br i1 %exitcond1751.not, label %.invoke2970, label %bb.wj

bb.oo:                                            ; preds = %.invoke2972, %.invoke2970
  %i.ckj = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

._crit_edge955:                                   ; preds = %bb.wl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ckh) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9151)
  %i.ckk = udiv i64 %.sroa.01.1, 544
  %i.ckl = tail call i64 @llvm.umin.i64(i64 %i.ckk, i64 49) ; 8 uses
  %spec.store.select.i450 = add nuw nsw i64 %i.ckl, 1 ; 18 uses
  %i.ckm = icmp eq i64 %.sroa.01.1, 0
  br i1 %i.ckm, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit449.thread", %._crit_edge955
  %i.ckn = phi ptr [ inttoptr (i64 2 to ptr), %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit449.thread" ], [ %i.ckh, %._crit_edge955 ]
  %i.cko = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 1, ptr %i.cko, align 8, !alias.scope !9151, !noalias !9148
  br label %_ZN6brotli3enc14block_splitter15SplitByteVector17hcc188e07e47f5c98E.exit

bb.oq:                                            ; preds = %._crit_edge955
  %i.ckp = icmp ult i64 %.sroa.01.1, 128
  br i1 %i.ckp, label %bb.or, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i451

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i451: ; preds = %bb.oq
  %i.ckq = mul nuw nsw i64 %spec.store.select.i450, 2192 ; 5 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9153
  %i.ckr = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ckq, i64 noundef range(i64 1, 9) 8) #45, !noalias !9153 ; 17 uses
  %i.cks = icmp eq ptr %i.ckr, null
  br i1 %i.cks, label %.invoke2972, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i451
  %.not92.i452 = icmp ult i64 %.sroa.01.1, 544
  br i1 %.not92.i452, label %.loopexit109.i457, label %.lr.ph.i.i.i.i453.preheader

.lr.ph.i.i.i.i453.preheader:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i.i"
  %i.ckt = add nsw i64 %i.ckl, -1
  %xtraiter4762 = and i64 %i.ckl, 7               ; 3 uses
  %i.cku = icmp ult i64 %i.ckt, 7
  br i1 %i.cku, label %.lr.ph.i.i.i.i453.epil.preheader, label %.lr.ph.i.i.i.i453.preheader.new

.lr.ph.i.i.i.i453.preheader.new:                  ; preds = %.lr.ph.i.i.i.i453.preheader
  %unroll_iter4767 = and i64 %i.ckl, 56
  br label %.lr.ph.i.i.i.i453

.lr.ph.i.i.i.i453:                                ; preds = %.lr.ph.i.i.i.i453, %.lr.ph.i.i.i.i453.preheader.new
  %.sroa.0.08.i.i.i.i454 = phi ptr [ %i.ckr, %.lr.ph.i.i.i.i453.preheader.new ], [ %i.clc, %.lr.ph.i.i.i.i453 ] ; 17 uses
  %niter4768 = phi i64 [ 0, %.lr.ph.i.i.i.i453.preheader.new ], [ %niter4768.next.7, %.lr.ph.i.i.i.i453 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i454, i8 0, i64 2184, i1 false), !noalias !9161
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i, align 8, !noalias !9162
  %i.ckv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckv, i8 0, i64 2184, i1 false), !noalias !9161
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.1, align 8, !noalias !9162
  %i.ckw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckw, i8 0, i64 2184, i1 false), !noalias !9161
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.2, align 8, !noalias !9162
  %i.ckx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckx, i8 0, i64 2184, i1 false), !noalias !9161
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.3, align 8, !noalias !9162
  %i.cky = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cky, i8 0, i64 2184, i1 false), !noalias !9161
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.4, align 8, !noalias !9162
  %i.ckz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckz, i8 0, i64 2184, i1 false), !noalias !9161
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.5, align 8, !noalias !9162
  %i.cla = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cla, i8 0, i64 2184, i1 false), !noalias !9161
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.6, align 8, !noalias !9162
  %i.clb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.clb, i8 0, i64 2184, i1 false), !noalias !9161
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.7, align 8, !noalias !9162
  %i.clc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454, i64 17536 ; 3 uses
  %niter4768.next.7 = add i64 %niter4768, 8       ; 2 uses
  %niter4768.ncmp.7 = icmp eq i64 %niter4768.next.7, %unroll_iter4767
  br i1 %niter4768.ncmp.7, label %.loopexit109.i457.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i453

bb.or:                                            ; preds = %bb.oq
  %.val106.i1011 = load ptr, ptr %9, align 8, !alias.scope !9151, !noalias !9148, !nonnull !4, !align !132, !noundef !4 ; 3 uses
  %i.cld = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.val107.i1012 = load i64, ptr %i.cld, align 8, !alias.scope !9151, !noalias !9148, !noundef !4 ; 6 uses
  %i.cle = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.clf = load i64, ptr %i.cle, align 8, !alias.scope !9151, !noalias !9148, !noundef !4 ; 7 uses
  %i.clg = add i64 %i.clf, 1                      ; 7 uses
  %i.clh = icmp ult i64 %.val107.i1012, %i.clg
  br i1 %i.clh, label %bb.vy, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i1013"

.thread.i469:                                     ; preds = %bb.oy, %.split32.us.i.invoke.i476, %.split29.us.i.invoke.i468
  %i.cli = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit.i"

.loopexit109.i457.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i.i453
  %lcmp.mod4764.not = icmp eq i64 %xtraiter4762, 0
  br i1 %lcmp.mod4764.not, label %.loopexit109.i457, label %.lr.ph.i.i.i.i453.epil.preheader

.lr.ph.i.i.i.i453.epil.preheader:                 ; preds = %.loopexit109.i457.loopexit.unr-lcssa, %.lr.ph.i.i.i.i453.preheader
  %.sroa.0.08.i.i.i.i454.epil.init = phi ptr [ %i.ckr, %.lr.ph.i.i.i.i453.preheader ], [ %i.clc, %.loopexit109.i457.loopexit.unr-lcssa ]
  %lcmp.mod4766 = icmp ne i64 %xtraiter4762, 0
  call void @llvm.assume(i1 %lcmp.mod4766)
  br label %.lr.ph.i.i.i.i453.epil

.lr.ph.i.i.i.i453.epil:                           ; preds = %.lr.ph.i.i.i.i453.epil, %.lr.ph.i.i.i.i453.epil.preheader
  %.sroa.0.08.i.i.i.i454.epil = phi ptr [ %i.clj, %.lr.ph.i.i.i.i453.epil ], [ %.sroa.0.08.i.i.i.i454.epil.init, %.lr.ph.i.i.i.i453.epil.preheader ] ; 3 uses
  %epil.iter4763 = phi i64 [ %epil.iter4763.next, %.lr.ph.i.i.i.i453.epil ], [ 0, %.lr.ph.i.i.i.i453.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i454.epil, i8 0, i64 2184, i1 false), !noalias !9161
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !9162
  %i.clj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i454.epil, i64 2192 ; 2 uses
  %epil.iter4763.next = add i64 %epil.iter4763, 1 ; 2 uses
  %epil.iter4763.cmp.not = icmp eq i64 %epil.iter4763.next, %xtraiter4762
  br i1 %epil.iter4763.cmp.not, label %.loopexit109.i457, label %.lr.ph.i.i.i.i453.epil, !llvm.loop !9165

.loopexit109.i457:                                ; preds = %.loopexit109.i457.loopexit.unr-lcssa, %.lr.ph.i.i.i.i453.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i458 = phi ptr [ %i.ckr, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i.i" ], [ %i.clc, %.loopexit109.i457.loopexit.unr-lcssa ], [ %i.clj, %.lr.ph.i.i.i.i453.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i.i458, i8 0, i64 2184, i1 false), !noalias !9161
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i458, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !9162
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9169)
  %i.clk = getelementptr inbounds nuw i8, ptr %i.ckr, i64 %i.ckq
  %xtraiter4769 = and i64 %spec.store.select.i450, 7 ; 2 uses
  %lcmp.mod4770.not = icmp eq i64 %xtraiter4769, 0
  br i1 %lcmp.mod4770.not, label %.lr.ph.i.i.i459.prol.loopexit, label %.lr.ph.i.i.i459.prol

.lr.ph.i.i.i459.prol:                             ; preds = %.loopexit109.i457, %.lr.ph.i.i.i459.prol
  %.sroa.02.05.i.i.i460.prol = phi ptr [ %i.cll, %.lr.ph.i.i.i459.prol ], [ %i.ckr, %.loopexit109.i457 ] ; 3 uses
  %prol.iter4771 = phi i64 [ %prol.iter4771.next, %.lr.ph.i.i.i459.prol ], [ 0, %.loopexit109.i457 ]
  %i.cll = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460.prol, i64 2192 ; 2 uses
  %i.clm = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460.prol, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i.i460.prol, i8 0, i64 2184, i1 false), !alias.scope !9171, !noalias !9174
  store float 3.402000e+38, ptr %i.clm, align 8, !alias.scope !9175, !noalias !9174
  %prol.iter4771.next = add i64 %prol.iter4771, 1 ; 2 uses
  %prol.iter4771.cmp.not = icmp eq i64 %prol.iter4771.next, %xtraiter4769
  br i1 %prol.iter4771.cmp.not, label %.lr.ph.i.i.i459.prol.loopexit, label %.lr.ph.i.i.i459.prol, !llvm.loop !9178

.lr.ph.i.i.i459.prol.loopexit:                    ; preds = %.lr.ph.i.i.i459.prol, %.loopexit109.i457
  %.sroa.02.05.i.i.i460.unr = phi ptr [ %i.ckr, %.loopexit109.i457 ], [ %i.cll, %.lr.ph.i.i.i459.prol ]
  %i.cln = icmp ult i64 %.sroa.01.1, 3808
  br i1 %i.cln, label %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.preheader.split.i.i, label %.lr.ph.i.i.i459

.lr.ph.i.i.i459:                                  ; preds = %.lr.ph.i.i.i459.prol.loopexit, %.lr.ph.i.i.i459
  %.sroa.02.05.i.i.i460 = phi ptr [ %i.cmc, %.lr.ph.i.i.i459 ], [ %.sroa.02.05.i.i.i460.unr, %.lr.ph.i.i.i459.prol.loopexit ] ; 17 uses
  %i.clo = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 2192
  %i.clp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i.i460, i8 0, i64 2184, i1 false), !alias.scope !9171, !noalias !9174
  store float 3.402000e+38, ptr %i.clp, align 8, !alias.scope !9175, !noalias !9174
  %i.clq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 4384
  %i.clr = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 4376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.clo, i8 0, i64 2184, i1 false), !alias.scope !9171, !noalias !9174
  store float 3.402000e+38, ptr %i.clr, align 8, !alias.scope !9175, !noalias !9174
  %i.cls = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 6576
  %i.clt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 6568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.clq, i8 0, i64 2184, i1 false), !alias.scope !9171, !noalias !9174
  store float 3.402000e+38, ptr %i.clt, align 8, !alias.scope !9175, !noalias !9174
  %i.clu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 8768
  %i.clv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 8760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cls, i8 0, i64 2184, i1 false), !alias.scope !9171, !noalias !9174
  store float 3.402000e+38, ptr %i.clv, align 8, !alias.scope !9175, !noalias !9174
  %i.clw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 10960
  %i.clx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 10952
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.clu, i8 0, i64 2184, i1 false), !alias.scope !9171, !noalias !9174
  store float 3.402000e+38, ptr %i.clx, align 8, !alias.scope !9175, !noalias !9174
  %i.cly = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 13152
  %i.clz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 13144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.clw, i8 0, i64 2184, i1 false), !alias.scope !9171, !noalias !9174
  store float 3.402000e+38, ptr %i.clz, align 8, !alias.scope !9175, !noalias !9174
  %i.cma = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 15344
  %i.cmb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 15336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cly, i8 0, i64 2184, i1 false), !alias.scope !9171, !noalias !9174
  store float 3.402000e+38, ptr %i.cmb, align 8, !alias.scope !9175, !noalias !9174
  %i.cmc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 17536 ; 2 uses
  %i.cmd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i460, i64 17528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cma, i8 0, i64 2184, i1 false), !alias.scope !9171, !noalias !9174
  store float 3.402000e+38, ptr %i.cmd, align 8, !alias.scope !9175, !noalias !9174
  %i.cme = icmp eq ptr %i.cmc, %i.clk
  br i1 %i.cme, label %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.preheader.split.i.i, label %.lr.ph.i.i.i459

_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i459, %.lr.ph.i.i.i459.prol.loopexit
  %i.cmf = udiv i64 %.sroa.01.1, %spec.store.select.i450
  %i.cmg = add i64 %.sroa.01.1, -41
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.loopexit.i.i: ; preds = %bb.ov
  %exitcond.not.i.i479 = icmp eq i64 %.sroa.07.024.i.i462, %i.ckl
  br i1 %exitcond.not.i.i479, label %.lr.ph.i.i480, label %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.preheader.split.split.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.loopexit.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.preheader.split.i.i
  %.sroa.0.025.i.i461 = phi i32 [ %.sroa.0.1.i.i465, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.loopexit.i.i ], [ 7, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.07.024.i.i462 = phi i64 [ %i.cmh, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.loopexit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.preheader.split.i.i ] ; 5 uses
  %i.cmh = add nuw nsw i64 %.sroa.07.024.i.i462, 1
  %i.cmi = mul i64 %.sroa.07.024.i.i462, %.sroa.01.1
  %i.cmj = udiv i64 %i.cmi, %spec.store.select.i450 ; 2 uses
  %i.cmk = icmp eq i64 %.sroa.07.024.i.i462, 0
  br i1 %i.cmk, label %bb.os, label %bb.ot

bb.os:                                            ; preds = %bb.ot, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i464 = phi i64 [ %i.cmj, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.preheader.split.split.i.i ], [ %i.cmr, %bb.ot ] ; 2 uses
  %.sroa.0.1.i.i465 = phi i32 [ %.sroa.0.025.i.i461, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i463, %bb.ot ]
  %i.cml = add i64 %.sroa.04.0.i.i464, 40
  %.not.i.i466 = icmp ult i64 %i.cml, %.sroa.01.1
  %spec.select.i.i467 = select i1 %.not.i.i466, i64 %.sroa.04.0.i.i464, i64 %i.cmg ; 4 uses
  %i.cmm = icmp ugt i64 %spec.select.i.i467, %2
  br i1 %i.cmm, label %.split29.us.i.invoke.i468, label %bb.ou, !prof !282

bb.ot:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.preheader.split.split.i.i
  %i.cmn = icmp eq i32 %.sroa.0.025.i.i461, 0
  %i.cmo = mul i32 %.sroa.0.025.i.i461, 16807
  %spec.store.select.i.i463 = select i1 %i.cmn, i32 1, i32 %i.cmo ; 2 uses
  %i.cmp = zext i32 %spec.store.select.i.i463 to i64
  %i.cmq = urem i64 %i.cmp, %i.cmf
  %i.cmr = add i64 %i.cmq, %i.cmj
  br label %bb.os

bb.ou:                                            ; preds = %bb.os
  %i.cms = getelementptr inbounds nuw [2192 x i8], ptr %i.ckr, i64 %.sroa.07.024.i.i462 ; 3 uses
  %i.cmt = sub nuw nsw i64 %2, %spec.select.i.i467 ; 2 uses
  %i.cmu = getelementptr inbounds nuw [2 x i8], ptr %i.ckh, i64 %spec.select.i.i467 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9182)
  %i.cmv = getelementptr inbounds nuw i8, ptr %i.cms, i64 2176 ; 2 uses
  %i.cmw = load i64, ptr %i.cmv, align 8, !alias.scope !9184, !noalias !9187, !noundef !4
  %i.cmx = add i64 %i.cmw, 40
  store i64 %i.cmx, ptr %i.cmv, align 8, !alias.scope !9188, !noalias !9187
  %i.cmy = icmp samesign ugt i64 %i.cmt, 39
  br i1 %i.cmy, label %.preheader.i.i.i473, label %.split29.us.i.invoke.i468, !prof !2223

.split29.us.i.invoke.i468:                        ; preds = %bb.ou, %bb.os, %bb.ow, %_ZN6brotli3enc9histogram14HistogramClear17h73b414b40f3c8b11E.exit.i.i
  %i.cmz = phi i64 [ 0, %bb.ow ], [ %i.cof, %_ZN6brotli3enc9histogram14HistogramClear17h73b414b40f3c8b11E.exit.i.i ], [ 0, %bb.ou ], [ %spec.select.i.i467, %bb.os ]
  %i.cna = phi i64 [ 40, %bb.ow ], [ %2, %_ZN6brotli3enc9histogram14HistogramClear17h73b414b40f3c8b11E.exit.i.i ], [ 40, %bb.ou ], [ %2, %bb.os ]
  %i.cnb = phi i64 [ %i.coh, %bb.ow ], [ %2, %_ZN6brotli3enc9histogram14HistogramClear17h73b414b40f3c8b11E.exit.i.i ], [ %i.cmt, %bb.ou ], [ %2, %bb.os ]
  %i.cnc = phi ptr [ @1290, %bb.ow ], [ @894, %_ZN6brotli3enc9histogram14HistogramClear17h73b414b40f3c8b11E.exit.i.i ], [ @1290, %bb.ou ], [ @920, %bb.os ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.cmz, i64 noundef %i.cna, i64 noundef %i.cnb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cnc) #46
          to label %.split29.us.i.cont.i472 unwind label %.thread.i469, !noalias !9161

.split29.us.i.cont.i472:                          ; preds = %.split29.us.i.invoke.i468
  unreachable

.preheader.i.i.i473:                              ; preds = %bb.ou, %bb.ov
  %.sroa.02.0.idx7.i.i.i474 = phi i64 [ %.sroa.02.0.add.i.i.i478.1, %bb.ov ], [ 0, %bb.ou ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i475 = getelementptr inbounds nuw i8, ptr %i.cmu, i64 %.sroa.02.0.idx7.i.i.i474
  %i.cnd = load i16, ptr %.sroa.02.0.ptr.i.i.i475, align 2, !alias.scope !9191, !noalias !9194, !noundef !4 ; 2 uses
  %i.cne = zext i16 %i.cnd to i64                 ; 2 uses
  %i.cnf = icmp ult i16 %i.cnd, 544
  br i1 %i.cnf, label %.preheader.i.i.i473.1, label %.split32.us.i.invoke.i476

.preheader.i.i.i473.1:                            ; preds = %.preheader.i.i.i473
  %i.cng = getelementptr inbounds nuw [4 x i8], ptr %i.cms, i64 %i.cne ; 2 uses
  %i.cnh = load i32, ptr %i.cng, align 4, !alias.scope !9195, !noalias !9187, !noundef !4
  %i.cni = add i32 %i.cnh, 1
  store i32 %i.cni, ptr %i.cng, align 4, !alias.scope !9195, !noalias !9187
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.cmu, i64 %.sroa.02.0.idx7.i.i.i474
  %.sroa.02.0.ptr.i.i.i475.1 = getelementptr inbounds nuw i8, ptr %i.cnj, i64 2
  %i.cnk = load i16, ptr %.sroa.02.0.ptr.i.i.i475.1, align 2, !alias.scope !9191, !noalias !9194, !noundef !4 ; 2 uses
  %i.cnl = zext i16 %i.cnk to i64                 ; 2 uses
  %i.cnm = icmp ult i16 %i.cnk, 544
  br i1 %i.cnm, label %bb.ov, label %.split32.us.i.invoke.i476

bb.ov:                                            ; preds = %.preheader.i.i.i473.1
  %.sroa.02.0.add.i.i.i478.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i474, 4 ; 2 uses
  %i.cnn = getelementptr inbounds nuw [4 x i8], ptr %i.cms, i64 %i.cnl ; 2 uses
  %i.cno = load i32, ptr %i.cnn, align 4, !alias.scope !9195, !noalias !9187, !noundef !4
  %i.cnp = add i32 %i.cno, 1
  store i32 %i.cnp, ptr %i.cnn, align 4, !alias.scope !9195, !noalias !9187
  %i.cnq = icmp eq i64 %.sroa.02.0.add.i.i.i478.1, 80
  br i1 %i.cnq, label %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.loopexit.i.i, label %.preheader.i.i.i473

.split32.us.i.invoke.i476:                        ; preds = %.preheader.i.i.i473, %.preheader.i.i.i473.1, %.preheader.i.i.i.i484, %.preheader.i.i.i.i484.1
  %i.cnr = phi i64 [ %i.cos, %.preheader.i.i.i.i484.1 ], [ %i.col, %.preheader.i.i.i.i484 ], [ %i.cne, %.preheader.i.i.i473 ], [ %i.cnl, %.preheader.i.i.i473.1 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cnr, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1289) #46
          to label %.split32.us.i.cont.i477 unwind label %.thread.i469, !noalias !9161

.split32.us.i.cont.i477:                          ; preds = %.split32.us.i.invoke.i476
  unreachable

.lr.ph.i.i480:                                    ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9199)
  %i.cns = shl i64 %.sroa.01.1, 1                 ; 2 uses
  %i.cnt = udiv i64 %i.cns, 40
  %i.cnu = add nuw nsw i64 %i.cnt, 99
  %i.cnv = add nuw nsw i64 %i.cnu, %spec.store.select.i450 ; 2 uses
  %i.cnw = urem i64 %i.cnv, %spec.store.select.i450
  %i.cnx = sub nuw nsw i64 %i.cnv, %i.cnw
  %i.cny = getelementptr inbounds nuw i8, ptr %i.n, i64 2184
  %i.cnz = getelementptr inbounds nuw i8, ptr %i.n, i64 2176 ; 2 uses
  %i.coa = add i64 %.sroa.01.1, -39
  br label %_ZN6brotli3enc9histogram14HistogramClear17h73b414b40f3c8b11E.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17h73b414b40f3c8b11E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h516f5b75452acef8E.exit.i.i, %.lr.ph.i.i480
  %.sroa.03.022.i.i481 = phi i64 [ 0, %.lr.ph.i.i480 ], [ %i.cob, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h516f5b75452acef8E.exit.i.i ] ; 2 uses
  %.sroa.0.021.i.i482 = phi i32 [ 7, %.lr.ph.i.i480 ], [ %spec.store.select.i.i.i483, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h516f5b75452acef8E.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9201
  %i.cob = add nuw i64 %.sroa.03.022.i.i481, 1    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2176) %i.n, i8 0, i64 2176, i1 false), !noalias !9201
  store float 3.402000e+38, ptr %i.cny, align 8, !alias.scope !9202, !noalias !9201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9208)
  %i.coc = mul i32 %.sroa.0.021.i.i482, 16807
  %i.cod = icmp eq i32 %.sroa.0.021.i.i482, 0
  %spec.store.select.i.i.i483 = select i1 %i.cod, i32 1, i32 %i.coc ; 2 uses
  %i.coe = zext i32 %spec.store.select.i.i.i483 to i64
  %i.cof = urem i64 %i.coe, %i.coa                ; 4 uses
  %i.cog = icmp samesign ugt i64 %i.cof, %2
  br i1 %i.cog, label %.split29.us.i.invoke.i468, label %bb.ow, !prof !282

bb.ow:                                            ; preds = %_ZN6brotli3enc9histogram14HistogramClear17h73b414b40f3c8b11E.exit.i.i
  %i.coh = sub nuw nsw i64 %2, %i.cof             ; 2 uses
  %i.coi = getelementptr inbounds nuw [2 x i8], ptr %i.ckh, i64 %i.cof ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9213)
  store i64 40, ptr %i.cnz, align 8, !alias.scope !9215, !noalias !9218
  %i.coj = icmp samesign ugt i64 %i.coh, 39
  br i1 %i.coj, label %.preheader.i.i.i.i484, label %.split29.us.i.invoke.i468, !prof !2223

.preheader.i.i.i.i484:                            ; preds = %bb.ow, %bb.ox
  %.sroa.02.0.idx7.i.i.i.i485 = phi i64 [ %.sroa.02.0.add.i.i.i.i487.1, %bb.ox ], [ 0, %bb.ow ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i486 = getelementptr inbounds nuw i8, ptr %i.coi, i64 %.sroa.02.0.idx7.i.i.i.i485
  %i.cok = load i16, ptr %.sroa.02.0.ptr.i.i.i.i486, align 2, !alias.scope !9220, !noalias !9223, !noundef !4 ; 2 uses
  %i.col = zext i16 %i.cok to i64                 ; 2 uses
  %i.com = icmp ult i16 %i.cok, 544
  br i1 %i.com, label %.preheader.i.i.i.i484.1, label %.split32.us.i.invoke.i476

.preheader.i.i.i.i484.1:                          ; preds = %.preheader.i.i.i.i484
  %i.con = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.col ; 2 uses
  %i.coo = load i32, ptr %i.con, align 4, !alias.scope !9224, !noalias !9218, !noundef !4
  %i.cop = add i32 %i.coo, 1
  store i32 %i.cop, ptr %i.con, align 4, !alias.scope !9224, !noalias !9218
  %i.coq = getelementptr inbounds nuw i8, ptr %i.coi, i64 %.sroa.02.0.idx7.i.i.i.i485
  %.sroa.02.0.ptr.i.i.i.i486.1 = getelementptr inbounds nuw i8, ptr %i.coq, i64 2
  %i.cor = load i16, ptr %.sroa.02.0.ptr.i.i.i.i486.1, align 2, !alias.scope !9220, !noalias !9223, !noundef !4 ; 2 uses
  %i.cos = zext i16 %i.cor to i64                 ; 2 uses
  %i.cot = icmp ult i16 %i.cor, 544
  br i1 %i.cot, label %bb.ox, label %.split32.us.i.invoke.i476

bb.ox:                                            ; preds = %.preheader.i.i.i.i484.1
  %.sroa.02.0.add.i.i.i.i487.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i.i485, 4 ; 2 uses
  %i.cou = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.cos ; 2 uses
  %i.cov = load i32, ptr %i.cou, align 4, !alias.scope !9224, !noalias !9218, !noundef !4
  %i.cow = add i32 %i.cov, 1
  store i32 %i.cow, ptr %i.cou, align 4, !alias.scope !9224, !noalias !9218
  %i.cox = icmp eq i64 %.sroa.02.0.add.i.i.i.i487.1, 80
  br i1 %i.cox, label %vector.ph3927, label %.preheader.i.i.i.i484

vector.ph3927:                                    ; preds = %bb.ox
  %i.coy = urem i64 %.sroa.03.022.i.i481, %spec.store.select.i450
  %i.coz = getelementptr inbounds nuw [2192 x i8], ptr %i.ckr, i64 %i.coy ; 3 uses
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.coz, i64 2176 ; 2 uses
  %i.cpb = load i64, ptr %i.cpa, align 8, !alias.scope !9225, !noalias !9228, !noundef !4
  %i.cpc = load i64, ptr %i.cnz, align 8, !alias.scope !9231, !noalias !9201, !noundef !4
  %i.cpd = add i64 %i.cpc, %i.cpb
  store i64 %i.cpd, ptr %i.cpa, align 8, !alias.scope !9234, !noalias !9237
  br label %vector.body3928

vector.body3928:                                  ; preds = %vector.body3928, %vector.ph3927
  %index3929 = phi i64 [ 0, %vector.ph3927 ], [ %index.next3934.1, %vector.body3928 ] ; 4 uses
  %i.cpe = getelementptr inbounds nuw [4 x i8], ptr %i.coz, i64 %index3929 ; 3 uses
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.cpe, i64 16 ; 2 uses
  %wide.load3930 = load <4 x i32>, ptr %i.cpe, align 8, !alias.scope !9199, !noalias !9237
  %wide.load3931 = load <4 x i32>, ptr %i.cpf, align 8, !alias.scope !9199, !noalias !9237
  %i.cpg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index3929 ; 2 uses
  %i.cph = getelementptr inbounds nuw i8, ptr %i.cpg, i64 16
  %wide.load3932 = load <4 x i32>, ptr %i.cpg, align 8, !noalias !9201
  %wide.load3933 = load <4 x i32>, ptr %i.cph, align 8, !noalias !9201
  %i.cpi = add <4 x i32> %wide.load3932, %wide.load3930
  %i.cpj = add <4 x i32> %wide.load3933, %wide.load3931
  store <4 x i32> %i.cpi, ptr %i.cpe, align 8, !alias.scope !9199, !noalias !9237
  store <4 x i32> %i.cpj, ptr %i.cpf, align 8, !alias.scope !9199, !noalias !9237
  %index.next3934 = or disjoint i64 %index3929, 8 ; 2 uses
  %i.cpk = getelementptr inbounds nuw [4 x i8], ptr %i.coz, i64 %index.next3934 ; 3 uses
  %i.cpl = getelementptr inbounds nuw i8, ptr %i.cpk, i64 16 ; 2 uses
  %wide.load3930.1 = load <4 x i32>, ptr %i.cpk, align 8, !alias.scope !9199, !noalias !9237
  %wide.load3931.1 = load <4 x i32>, ptr %i.cpl, align 8, !alias.scope !9199, !noalias !9237
  %i.cpm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index.next3934 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
  store i8 %i.dwm, ptr %i.dmq, align 1, !alias.scope !9506, !noalias !9508
  br label %bb.va

bb.va:                                            ; preds = %bb.uz, %bb.uy
  %.sroa.029.4.2.i.i575 = phi float [ %i.dwj, %bb.uz ], [ %.sroa.029.4.1.i.i574, %bb.uy ] ; 2 uses
  %i.dwn = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i552, i64 12 ; 2 uses
  %i.dwo = load float, ptr %i.dwn, align 4, !alias.scope !9502, !noalias !9511, !noundef !4
  %i.dwp = fadd float %.sroa.7.0.copyload.i.i564, %i.dwo ; 3 uses
  store float %i.dwp, ptr %i.dwn, align 4, !alias.scope !9502, !noalias !9511
  %i.dwq = fcmp olt float %i.dwp, %.sroa.029.4.2.i.i575
  br i1 %i.dwq, label %bb.vb, label %bb.vc

bb.vb:                                            ; preds = %bb.va
  %i.dwr = trunc i64 %i.dmz to i8
  %i.dws = or disjoint i8 %i.dwr, 3
  store i8 %i.dws, ptr %i.dmq, align 1, !alias.scope !9506, !noalias !9508
  br label %bb.vc

bb.vc:                                            ; preds = %bb.vb, %bb.va
  %.sroa.029.4.3.i.i576 = phi float [ %i.dwp, %bb.vb ], [ %.sroa.029.4.2.i.i575, %bb.va ] ; 2 uses
  %i.dwt = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i552, i64 16 ; 2 uses
  %i.dwu = load float, ptr %i.dwt, align 4, !alias.scope !9502, !noalias !9511, !noundef !4
  %i.dwv = fadd float %.sroa.8.0.copyload.i.i566, %i.dwu ; 3 uses
  store float %i.dwv, ptr %i.dwt, align 4, !alias.scope !9502, !noalias !9511
  %i.dww = fcmp olt float %i.dwv, %.sroa.029.4.3.i.i576
  br i1 %i.dww, label %bb.vd, label %bb.ve

bb.vd:                                            ; preds = %bb.vc
  %i.dwx = trunc i64 %i.dmz to i8
  %i.dwy = or disjoint i8 %i.dwx, 4
  store i8 %i.dwy, ptr %i.dmq, align 1, !alias.scope !9506, !noalias !9508
  br label %bb.ve

bb.ve:                                            ; preds = %bb.vd, %bb.vc
  %.sroa.029.4.4.i.i577 = phi float [ %i.dwv, %bb.vd ], [ %.sroa.029.4.3.i.i576, %bb.vc ] ; 2 uses
  %i.dwz = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i552, i64 20 ; 2 uses
  %i.dxa = load float, ptr %i.dwz, align 4, !alias.scope !9502, !noalias !9511, !noundef !4
  %i.dxb = fadd float %.sroa.9.0.copyload.i.i568, %i.dxa ; 3 uses
  store float %i.dxb, ptr %i.dwz, align 4, !alias.scope !9502, !noalias !9511
  %i.dxc = fcmp olt float %i.dxb, %.sroa.029.4.4.i.i577
  br i1 %i.dxc, label %bb.vf, label %bb.vg

bb.vf:                                            ; preds = %bb.ve
  %i.dxd = trunc i64 %i.dmz to i8
  %i.dxe = or disjoint i8 %i.dxd, 5
  store i8 %i.dxe, ptr %i.dmq, align 1, !alias.scope !9506, !noalias !9508
  br label %bb.vg

bb.vg:                                            ; preds = %bb.vf, %bb.ve
  %.sroa.029.4.5.i.i578 = phi float [ %i.dxb, %bb.vf ], [ %.sroa.029.4.4.i.i577, %bb.ve ] ; 2 uses
  %i.dxf = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i552, i64 24 ; 2 uses
  %i.dxg = load float, ptr %i.dxf, align 4, !alias.scope !9502, !noalias !9511, !noundef !4
  %i.dxh = fadd float %.sroa.10.0.copyload.i.i570, %i.dxg ; 3 uses
  store float %i.dxh, ptr %i.dxf, align 4, !alias.scope !9502, !noalias !9511
  %i.dxi = fcmp olt float %i.dxh, %.sroa.029.4.5.i.i578
  br i1 %i.dxi, label %bb.vh, label %bb.vi

bb.vh:                                            ; preds = %bb.vg
  %i.dxj = trunc i64 %i.dmz to i8
  %i.dxk = or disjoint i8 %i.dxj, 6
  store i8 %i.dxk, ptr %i.dmq, align 1, !alias.scope !9506, !noalias !9508
  br label %bb.vi

bb.vi:                                            ; preds = %bb.vh, %bb.vg
  %.sroa.029.4.6.i.i579 = phi float [ %i.dxh, %bb.vh ], [ %.sroa.029.4.5.i.i578, %bb.vg ] ; 2 uses
  %i.dxl = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i552, i64 28 ; 2 uses
  %i.dxm = load float, ptr %i.dxl, align 4, !alias.scope !9502, !noalias !9511, !noundef !4
  %i.dxn = fadd float %.sroa.11.0.copyload.i.i572, %i.dxm ; 3 uses
  store float %i.dxn, ptr %i.dxl, align 4, !alias.scope !9502, !noalias !9511
  %i.dxo = fcmp olt float %i.dxn, %.sroa.029.4.6.i.i579
  br i1 %i.dxo, label %bb.vj, label %bb.vk

bb.vj:                                            ; preds = %bb.vi
  %i.dxp = trunc i64 %i.dmz to i8
  %i.dxq = or disjoint i8 %i.dxp, 7
  store i8 %i.dxq, ptr %i.dmq, align 1, !alias.scope !9506, !noalias !9508
  br label %bb.vk

bb.vk:                                            ; preds = %bb.vj, %bb.vi
  %.sroa.029.4.7.i.i580 = phi float [ %i.dxn, %bb.vj ], [ %.sroa.029.4.6.i.i579, %bb.vi ] ; 2 uses
  %i.dxr = icmp eq ptr %i.dmx, %i.djl
  br i1 %i.dxr, label %._crit_edge416.i.i581, label %.lr.ph415.i.i550

bb.vl:                                            ; preds = %bb.vn, %.split.i180.i511
  %i.dxs = phi i64 [ 1, %.split.i180.i511 ], [ %i.dyc, %bb.vn ] ; 4 uses
  %.sroa.071.0400.i.i514 = phi i64 [ 0, %.split.i180.i511 ], [ %i.dxs, %bb.vn ] ; 4 uses
  %i.dxt = getelementptr inbounds nuw [4 x i8], ptr %i.cpy, i64 %.sroa.071.0400.i.i514
  %i.dxu = load float, ptr %i.dxt, align 4, !alias.scope !9500, !noalias !9510, !noundef !4
  %exitcond482.not.i.i515 = icmp eq i64 %i.dxs, %i.cqu
  br i1 %exitcond482.not.i.i515, label %.invoke.i527, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %gep.i.i516 = getelementptr [2192 x i8], ptr %invariant.gep.i.i513, i64 %.sroa.071.0400.i.i514
  %i.dxv = load i32, ptr %gep.i.i516, align 4, !alias.scope !9498, !noalias !9531, !noundef !4
  %i.dxw = zext i32 %i.dxv to i64
  %i.dxx = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.dxw)
          to label %.noexc200.i526 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i517", !noalias !9161

.noexc200.i526:                                   ; preds = %bb.vm
  %i.dxy = add nuw nsw i64 %.sroa.071.0400.i.i514, %i.djj ; 3 uses
  %i.dxz = icmp ult i64 %i.dxy, %i.cpw
  br i1 %i.dxz, label %bb.vn, label %.invoke.i527

bb.vn:                                            ; preds = %.noexc200.i526
  %i.dya = getelementptr inbounds nuw [4 x i8], ptr %i.cpy, i64 %i.dxy
  %i.dyb = fsub float %i.dxu, %i.dxx
  store float %i.dyb, ptr %i.dya, align 4, !alias.scope !9500, !noalias !9510
  %i.dyc = add nuw nsw i64 %i.dxs, 1
  %exitcond483.not.i.i531 = icmp eq i64 %i.dxs, %.sroa.0.0441.i503
  br i1 %exitcond483.not.i.i531, label %.loopexit358.i.i532, label %bb.vl

bb.vo:                                            ; preds = %bb.tj
  %i.dyd = getelementptr inbounds nuw [2192 x i8], ptr %i.ckr, i64 %.sroa.069.0399.i.i507
  %i.dye = getelementptr inbounds nuw i8, ptr %i.dyd, i64 2176
  %i.dyf = load i64, ptr %i.dye, align 8, !alias.scope !9532, !noalias !9531, !noundef !4
  %i.dyg = and i64 %i.dyf, 4294967295             ; 3 uses
  %i.dyh = icmp samesign ult i64 %i.dyg, 256
  br i1 %i.dyh, label %bb.vr, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  %i.dyi = uitofp nneg i64 %i.dyg to float
  %i.dyj = tail call float @llvm.log2.f32(float %i.dyi)
  br label %bb.vq

bb.vq:                                            ; preds = %bb.vr, %bb.vp
  %.sroa.016.0.i.i509 = phi float [ %i.dyn, %bb.vr ], [ %i.dyj, %bb.vp ]
  %i.dyk = getelementptr inbounds nuw [4 x i8], ptr %i.cpy, i64 %.sroa.069.0399.i.i507
  store float %.sroa.016.0.i.i509, ptr %i.dyk, align 4, !alias.scope !9500, !noalias !9510
  %i.dyl = add nuw nsw i64 %i.djf, 1
  %exitcond480.not.i.i510 = icmp eq i64 %i.djf, %.sroa.0.0441.i503
  br i1 %exitcond480.not.i.i510, label %.split.i180.i511, label %bb.tj

bb.vr:                                            ; preds = %bb.vo
  %i.dym = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.dyg
  %i.dyn = load float, ptr %i.dym, align 4, !noalias !9517, !noundef !4
  br label %bb.vq

.preheader.i.i994:                                ; preds = %.preheader.i.i994.preheader4182, %bb.vs
  %i.dyo = phi i64 [ %i.dyq, %bb.vs ], [ %.ph4183, %.preheader.i.i994.preheader4182 ] ; 4 uses
  %.sroa.066.0449.i.i995 = phi i64 [ %i.dyo, %bb.vs ], [ %.sroa.066.0449.i.i995.ph, %.preheader.i.i994.preheader4182 ] ; 2 uses
  %exitcond488.not.i.i996 = icmp eq i64 %i.dyo, %i.cqy
  br i1 %exitcond488.not.i.i996, label %.invoke.i527, label %bb.vs

bb.vs:                                            ; preds = %.preheader.i.i994
  %i.dyp = getelementptr inbounds nuw i8, ptr %i.cps, i64 %.sroa.066.0449.i.i995
  store i8 0, ptr %i.dyp, align 1, !alias.scope !9506, !noalias !9508
  %i.dyq = add i64 %i.dyo, 1
  %exitcond489.not.i.i997 = icmp eq i64 %i.dyo, %.sroa.01.1
  br i1 %exitcond489.not.i.i997, label %.loopexit.i637, label %.preheader.i.i994, !llvm.loop !9535

.loopexit.i637:                                   ; preds = %bb.tn, %bb.vs, %bb.tf
  %.sroa.0.0.i.i638 = phi i64 [ 0, %bb.tf ], [ 1, %bb.vs ], [ %.sroa.03.1.i.i635, %bb.tn ] ; 32 uses
  %i.dyr = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.cps, i64 noundef %.sroa.01.1, i64 noundef %.sroa.01.1, ptr noalias noundef nonnull align 2 %i.cqq, i64 noundef %spec.store.select.i450, i64 noundef %.sroa.0.0441.i503)
          to label %bb.vt unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i639", !noalias !9161 ; 5 uses

bb.vt:                                            ; preds = %.loopexit.i637
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9541)
  %.not.i.i206.i641 = icmp ugt i64 %i.dyr, %spec.store.select.i450
  br i1 %.not.i.i206.i641, label %.invoke1203.i988, label %bb.vu, !prof !2175

bb.vu:                                            ; preds = %bb.vt
  %.idx.i.i207.i642 = mul i64 %i.dyr, 2192        ; 2 uses
  %i.dys = getelementptr inbounds nuw i8, ptr %i.ckr, i64 %.idx.i.i207.i642
  %i.dyt = icmp eq i64 %i.dyr, 0
  br i1 %i.dyt, label %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i.preheader, label %.lr.ph.i.i208.i643.preheader

.lr.ph.i.i208.i643.preheader:                     ; preds = %bb.vu
  %i.dyu = add i64 %.idx.i.i207.i642, -2192       ; 2 uses
  %i.dyv = udiv i64 %i.dyu, 2192
  %i.dyw = add nuw nsw i64 %i.dyv, 1
  %xtraiter4772 = and i64 %i.dyw, 7               ; 2 uses
  %lcmp.mod4773.not = icmp eq i64 %xtraiter4772, 0
  br i1 %lcmp.mod4773.not, label %.lr.ph.i.i208.i643.prol.loopexit, label %.lr.ph.i.i208.i643.prol

.lr.ph.i.i208.i643.prol:                          ; preds = %.lr.ph.i.i208.i643.preheader, %.lr.ph.i.i208.i643.prol
  %.sroa.02.05.i.i209.i644.prol = phi ptr [ %i.dyx, %.lr.ph.i.i208.i643.prol ], [ %i.ckr, %.lr.ph.i.i208.i643.preheader ] ; 3 uses
  %prol.iter4774 = phi i64 [ %prol.iter4774.next, %.lr.ph.i.i208.i643.prol ], [ 0, %.lr.ph.i.i208.i643.preheader ]
  %i.dyx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644.prol, i64 2192 ; 2 uses
  %i.dyy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644.prol, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i209.i644.prol, i8 0, i64 2184, i1 false), !alias.scope !9543, !noalias !9546
  store float 3.402000e+38, ptr %i.dyy, align 8, !alias.scope !9547, !noalias !9546
  %prol.iter4774.next = add i64 %prol.iter4774, 1 ; 2 uses
  %prol.iter4774.cmp.not = icmp eq i64 %prol.iter4774.next, %xtraiter4772
  br i1 %prol.iter4774.cmp.not, label %.lr.ph.i.i208.i643.prol.loopexit, label %.lr.ph.i.i208.i643.prol, !llvm.loop !9550

.lr.ph.i.i208.i643.prol.loopexit:                 ; preds = %.lr.ph.i.i208.i643.prol, %.lr.ph.i.i208.i643.preheader
  %.sroa.02.05.i.i209.i644.unr = phi ptr [ %i.ckr, %.lr.ph.i.i208.i643.preheader ], [ %i.dyx, %.lr.ph.i.i208.i643.prol ]
  %i.dyz = icmp ult i64 %i.dyu, 15344
  br i1 %i.dyz, label %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i.preheader, label %.lr.ph.i.i208.i643

.lr.ph.i.i208.i643:                               ; preds = %.lr.ph.i.i208.i643.prol.loopexit, %.lr.ph.i.i208.i643
  %.sroa.02.05.i.i209.i644 = phi ptr [ %i.dzo, %.lr.ph.i.i208.i643 ], [ %.sroa.02.05.i.i209.i644.unr, %.lr.ph.i.i208.i643.prol.loopexit ] ; 17 uses
  %i.dza = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 2192
  %i.dzb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i209.i644, i8 0, i64 2184, i1 false), !alias.scope !9543, !noalias !9546
  store float 3.402000e+38, ptr %i.dzb, align 8, !alias.scope !9547, !noalias !9546
  %i.dzc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 4384
  %i.dzd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 4376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dza, i8 0, i64 2184, i1 false), !alias.scope !9543, !noalias !9546
  store float 3.402000e+38, ptr %i.dzd, align 8, !alias.scope !9547, !noalias !9546
  %i.dze = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 6576
  %i.dzf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 6568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dzc, i8 0, i64 2184, i1 false), !alias.scope !9543, !noalias !9546
  store float 3.402000e+38, ptr %i.dzf, align 8, !alias.scope !9547, !noalias !9546
  %i.dzg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 8768
  %i.dzh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 8760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dze, i8 0, i64 2184, i1 false), !alias.scope !9543, !noalias !9546
  store float 3.402000e+38, ptr %i.dzh, align 8, !alias.scope !9547, !noalias !9546
  %i.dzi = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 10960
  %i.dzj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 10952
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dzg, i8 0, i64 2184, i1 false), !alias.scope !9543, !noalias !9546
  store float 3.402000e+38, ptr %i.dzj, align 8, !alias.scope !9547, !noalias !9546
  %i.dzk = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 13152
  %i.dzl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 13144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dzi, i8 0, i64 2184, i1 false), !alias.scope !9543, !noalias !9546
  store float 3.402000e+38, ptr %i.dzl, align 8, !alias.scope !9547, !noalias !9546
  %i.dzm = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 15344
  %i.dzn = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 15336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dzk, i8 0, i64 2184, i1 false), !alias.scope !9543, !noalias !9546
  store float 3.402000e+38, ptr %i.dzn, align 8, !alias.scope !9547, !noalias !9546
  %i.dzo = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 17536 ; 2 uses
  %i.dzp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i644, i64 17528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dzm, i8 0, i64 2184, i1 false), !alias.scope !9543, !noalias !9546
  store float 3.402000e+38, ptr %i.dzp, align 8, !alias.scope !9547, !noalias !9546
  %i.dzq = icmp eq ptr %i.dzo, %i.dys
  br i1 %i.dzq, label %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i.preheader, label %.lr.ph.i.i208.i643

_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i.preheader: ; preds = %.lr.ph.i.i208.i643.prol.loopexit, %.lr.ph.i.i208.i643, %bb.vu
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i.preheader, %_ZN6brotli3enc9histogram16HistogramAddItem17hbb8b064ba7e3cd90E.exit.i.i
  %.sroa.01.013.i.i645 = phi i64 [ %i.dzr, %_ZN6brotli3enc9histogram16HistogramAddItem17hbb8b064ba7e3cd90E.exit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i.preheader ] ; 4 uses
  %i.dzr = add nuw nsw i64 %.sroa.01.013.i.i645, 1 ; 2 uses
  %i.dzs = getelementptr inbounds nuw i8, ptr %i.cps, i64 %.sroa.01.013.i.i645
  %i.dzt = load i8, ptr %i.dzs, align 1, !alias.scope !9539, !noalias !9551, !noundef !4
  %i.dzu = zext i8 %i.dzt to i64                  ; 3 uses
  %.not93.i646 = icmp samesign ult i64 %i.ckl, %i.dzu
  br i1 %.not93.i646, label %.invoke.i527, label %bb.vv

bb.vv:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i
  %exitcond23.not.i.i647 = icmp eq i64 %.sroa.01.013.i.i645, %2
  br i1 %exitcond23.not.i.i647, label %.invoke.i527, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %i.dzv = getelementptr inbounds nuw [2 x i8], ptr %i.ckh, i64 %.sroa.01.013.i.i645
  %i.dzw = load i16, ptr %i.dzv, align 2, !alias.scope !9552, !noalias !9555, !noundef !4 ; 2 uses
  %i.dzx = zext i16 %i.dzw to i64                 ; 2 uses
  %i.dzy = icmp ult i16 %i.dzw, 544
  br i1 %i.dzy, label %_ZN6brotli3enc9histogram16HistogramAddItem17hbb8b064ba7e3cd90E.exit.i.i, label %.invoke.i527

_ZN6brotli3enc9histogram16HistogramAddItem17hbb8b064ba7e3cd90E.exit.i.i: ; preds = %bb.vw
  %i.dzz = getelementptr inbounds nuw [2192 x i8], ptr %i.ckr, i64 %i.dzu ; 2 uses
  %i.eaa = getelementptr inbounds nuw [4 x i8], ptr %i.dzz, i64 %i.dzx ; 2 uses
  %i.eab = load i32, ptr %i.eaa, align 4, !alias.scope !9556, !noalias !9546, !noundef !4
  %i.eac = add i32 %i.eab, 1
  store i32 %i.eac, ptr %i.eaa, align 4, !alias.scope !9556, !noalias !9546
  %i.ead = getelementptr inbounds nuw i8, ptr %i.dzz, i64 2176 ; 2 uses
  %i.eae = load i64, ptr %i.ead, align 8, !alias.scope !9559, !noalias !9546, !noundef !4
  %i.eaf = add i64 %i.eae, 1
  store i64 %i.eaf, ptr %i.ead, align 8, !alias.scope !9562, !noalias !9546
  %exitcond24.not.i.i648 = icmp eq i64 %i.dzr, %.sroa.01.1
  br i1 %exitcond24.not.i.i648, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h5bcd1054eb4fbc47E.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i

.invoke.i527:                                     ; preds = %bb.tj, %.lr.ph434.split.i.i545, %.lr.ph447.i.i627, %.preheader.i.i994, %bb.vw, %bb.vv, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i, %.noexc200.i526, %bb.vl, %.lr.ph424.preheader.i.i585, %.lr.ph424.i.i587.1, %.lr.ph424.i.i587.2, %.lr.ph424.i.i587.3, %.lr.ph424.i.i587.4, %.lr.ph424.i.i587.5, %.lr.ph424.i.i587.6, %.lr.ph430.i.i598
  %i.eag = phi i64 [ %i.dzu, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i ], [ %i.dme, %.lr.ph447.i.i627 ], [ %i.dth, %.lr.ph430.i.i598 ], [ %.sroa.01.1, %.lr.ph434.split.i.i545 ], [ %.sroa.066.0449.i.i995, %.preheader.i.i994 ], [ %i.dlh, %.lr.ph424.i.i587.6 ], [ %.sroa.071.0400.i.i514, %bb.vl ], [ %i.djt, %.lr.ph424.preheader.i.i585 ], [ %i.djy, %.lr.ph424.i.i587.1 ], [ %i.dkg, %.lr.ph424.i.i587.2 ], [ %i.dkp, %.lr.ph424.i.i587.3 ], [ %i.dkv, %.lr.ph424.i.i587.4 ], [ %i.dlb, %.lr.ph424.i.i587.5 ], [ %i.dxy, %.noexc200.i526 ], [ %2, %bb.vv ], [ %i.dzx, %bb.vw ], [ %.sroa.069.0399.i.i507, %bb.tj ]
  %i.eah = phi i64 [ %spec.store.select.i450, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i ], [ %i.cqh, %.lr.ph447.i.i627 ], [ %i.cqh, %.lr.ph430.i.i598 ], [ %.sroa.01.1, %.lr.ph434.split.i.i545 ], [ %.sroa.01.1, %.preheader.i.i994 ], [ %i.cpv, %.lr.ph424.preheader.i.i585 ], [ %spec.store.select.i450, %bb.vl ], [ %i.cpv, %.lr.ph424.i.i587.6 ], [ %i.cpv, %.lr.ph424.i.i587.5 ], [ %i.cpv, %.lr.ph424.i.i587.4 ], [ %i.cpv, %.lr.ph424.i.i587.3 ], [ %i.cpv, %.lr.ph424.i.i587.2 ], [ %i.cpv, %.lr.ph424.i.i587.1 ], [ %i.cpw, %.noexc200.i526 ], [ %2, %bb.vv ], [ 544, %bb.vw ], [ %spec.store.select.i450, %bb.tj ]
  %i.eai = phi ptr [ @921, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i ], [ @878, %.lr.ph447.i.i627 ], [ @923, %.lr.ph430.i.i598 ], [ @879, %.lr.ph434.split.i.i545 ], [ @893, %.preheader.i.i994 ], [ @884, %.lr.ph424.preheader.i.i585 ], [ @889, %bb.vl ], [ @884, %.lr.ph424.i.i587.6 ], [ @884, %.lr.ph424.i.i587.5 ], [ @884, %.lr.ph424.i.i587.4 ], [ @884, %.lr.ph424.i.i587.3 ], [ @884, %.lr.ph424.i.i587.2 ], [ @884, %.lr.ph424.i.i587.1 ], [ @890, %.noexc200.i526 ], [ @922, %bb.vv ], [ @1288, %bb.vw ], [ @891, %bb.tj ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.eag, i64 noundef %i.eah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eai) #46
          to label %.cont.i530 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i528", !noalias !9161

.cont.i530:                                       ; preds = %.invoke.i527
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i517": ; preds = %bb.vm
  %lpad.loopexit.i518 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i519"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i639": ; preds = %.loopexit.i637
  %lpad.loopexit105.i640 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i519"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i528": ; preds = %.invoke.i527, %.split440.us.i.invoke.i555, %.invoke1203.i988
  %lpad.loopexit.split-lp106.i529 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i519"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i519": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i528", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i639", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i517"
  %lpad.phi.i520 = phi { ptr, i32 } [ %lpad.loopexit.i518, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i517" ], [ %lpad.loopexit105.i640, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i639" ], [ %lpad.loopexit.split-lp106.i529, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i528" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cqq, i64 noundef %i.cqp, i64 noundef 2) #45, !noalias !9161
  br label %bb.vx

bb.vx:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i519", %.thread55.i998
  %.pn62.i521 = phi { ptr, i32 } [ %i.cqs, %.thread55.i998 ], [ %lpad.phi.i520, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i519" ]
  br i1 %i.cqj, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i523", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i522"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i522": ; preds = %bb.vx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cqo) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cqo, i64 noundef %i.cqh, i64 noundef 1) #45, !noalias !9161
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i523"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i523": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i522", %bb.vx
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cqc, i64 noundef %i.cqb, i64 noundef 4) #45, !noalias !9161
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i524"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i524": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i523", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.thread.i1001", %.thread39.i1005
  %.pn.pn.pn44.i525 = phi { ptr, i32 } [ %i.cqg, %.thread39.i1005 ], [ %i.cqn, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.thread.i1001" ], [ %.pn62.i521, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i523" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cpy, i64 noundef %i.cpx, i64 noundef 4) #45, !noalias !9161
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cps, i64 noundef %.sroa.01.1, i64 noundef 1) #45, !noalias !9161
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.i722": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i720", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i981", %bb.td, %.body.i984
  %.pn.pn.pn.pn.i723 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i985, %.body.i984 ], [ %i.din, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i981" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i718, %bb.td ], [ %.pn230.pn.pn.pn.pn.pn.pn85963.i.i721, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i720" ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cps, i64 noundef %.sroa.01.1, i64 noundef 1) #45, !noalias !9161
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i524", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.thread.i1007", %.thread.i469
  %.pn.pn.pn.pn.pn38.i470 = phi { ptr, i32 } [ %i.cli, %.thread.i469 ], [ %.pn.pn.pn44.i525, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i524" ], [ %i.cqa, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.thread.i1007" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ckr, i64 noundef %i.ckq, i64 noundef 8) #45, !noalias !9161
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

bb.vy:                                            ; preds = %bb.or
  %i.eaj = icmp eq i64 %.val107.i1012, 0          ; 2 uses
  %spec.select.i1028 = select i1 %i.eaj, i64 %i.clg, i64 %.val107.i1012
  br label %bb.vz

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i1013": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i1031", %bb.wb, %bb.or
  %.val.i1014 = phi ptr [ %i.eaq, %bb.wb ], [ %i.eaq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i1031" ], [ %.val106.i1011, %bb.or ]
  %.val63.i1015 = phi i64 [ %.sroa.014.1.i1029, %bb.wb ], [ %.sroa.014.1.i1029, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i1031" ], [ %.val107.i1012, %bb.or ] ; 2 uses
  %i.eak = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.val92.i1016 = load ptr, ptr %i.eak, align 8, !alias.scope !9151, !noalias !9148, !nonnull !4, !align !131, !noundef !4 ; 3 uses
  %i.eal = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %.val93.i1017 = load i64, ptr %i.eal, align 8, !alias.scope !9151, !noalias !9148, !noundef !4 ; 5 uses
  %i.eam = icmp ult i64 %.val93.i1017, %i.clg
  br i1 %i.eam, label %bb.wc, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i1018"

bb.vz:                                            ; preds = %bb.vz, %bb.vy
  %.sroa.014.1.i1029 = phi i64 [ %spec.select.i1028, %bb.vy ], [ %i.eao, %bb.vz ] ; 9 uses
  %i.ean = icmp ult i64 %.sroa.014.1.i1029, %i.clg
  %i.eao = shl i64 %.sroa.014.1.i1029, 1
  br i1 %i.ean, label %bb.vz, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  %i.eap = icmp slt i64 %.sroa.014.1.i1029, 0
  br i1 %i.eap, label %.invoke2972, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1030, !prof !1121

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1030: ; preds = %bb.wa
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9565
  %i.eaq = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.014.1.i1029, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !9565 ; 5 uses
  %i.ear = icmp eq ptr %i.eaq, null
  br i1 %i.ear, label %.invoke2972, label %bb.wb

bb.wb:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1030
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eaq, ptr nonnull readonly align 1 %.val106.i1011, i64 %.val107.i1012, i1 false), !alias.scope !9571, !noalias !9575
  store ptr %i.eaq, ptr %9, align 8, !alias.scope !9151, !noalias !9148
  store i64 %.sroa.014.1.i1029, ptr %i.cld, align 8, !alias.scope !9151, !noalias !9148
  br i1 %i.eaj, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i1013", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i1031"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i1031": ; preds = %bb.wb
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.val106.i1011, i64 noundef %.val107.i1012, i64 noundef 1) #45, !noalias !9161
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i1013"

bb.wc:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i1013"
  %i.eas = icmp eq i64 %.val93.i1017, 0           ; 2 uses
  %spec.select91.i1021 = select i1 %i.eas, i64 %i.clg, i64 %.val93.i1017
  br label %bb.wd

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i1018": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i1026", %bb.wh, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i1013"
  %.val108.i1019 = phi ptr [ %i.ebg, %bb.wh ], [ %i.ebg, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i1026" ], [ %.val92.i1016, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i1013" ]
  %.val109.i1020 = phi i64 [ %.sroa.017.1.i1022, %bb.wh ], [ %.sroa.017.1.i1022, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i1026" ], [ %.val93.i1017, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i1013" ] ; 2 uses
  %i.eat = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 1, ptr %i.eat, align 8, !alias.scope !9151, !noalias !9148
  %i.eau = icmp ult i64 %i.clf, %.val63.i1015
  br i1 %i.eau, label %bb.wi, label %.invoke2970

bb.wd:                                            ; preds = %bb.wd, %bb.wc
  %.sroa.017.1.i1022 = phi i64 [ %spec.select91.i1021, %bb.wc ], [ %i.eaw, %bb.wd ] ; 8 uses
  %i.eav = icmp ult i64 %.sroa.017.1.i1022, %i.clg
  %i.eaw = shl i64 %.sroa.017.1.i1022, 1
  br i1 %i.eav, label %bb.wd, label %bb.we

bb.we:                                            ; preds = %bb.wd
  %i.eax = shl i64 %.sroa.017.1.i1022, 2          ; 5 uses
  %i.eay = icmp ugt i64 %.sroa.017.1.i1022, 4611686018427387903
  %i.eaz = icmp ugt i64 %i.eax, 9223372036854775804
  %or.cond.i.i.i.i230.i1023 = or i1 %i.eay, %i.eaz
  br i1 %or.cond.i.i.i.i230.i1023, label %.invoke2972, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i1024, !prof !1121

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i1024: ; preds = %bb.we
  %i.eba = icmp eq i64 %i.eax, 0
  br i1 %i.eba, label %bb.wh, label %bb.wf

bb.wf:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i1024
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9577
  %i.ebb = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.eax, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9577 ; 2 uses
  %i.ebc = icmp eq ptr %i.ebb, null
  br i1 %i.ebc, label %.invoke2972, label %bb.wg

bb.wg:                                            ; preds = %bb.wf
  %i.ebd = ptrtoint ptr %i.ebb to i64
  br label %bb.wh

.invoke2972:                                      ; preds = %bb.we, %bb.wf, %bb.wa, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1030, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i451
  %i.ebe = phi i64 [ 0, %bb.wa ], [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i451 ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1030 ], [ 4, %bb.wf ], [ 0, %bb.we ]
  %i.ebf = phi i64 [ %.sroa.014.1.i1029, %bb.wa ], [ %i.ckq, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i451 ], [ %.sroa.014.1.i1029, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1030 ], [ %i.eax, %bb.wf ], [ %i.eax, %bb.we ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ebe, i64 %i.ebf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.cont2973 unwind label %bb.oo

.cont2973:                                        ; preds = %.invoke2972
  unreachable

bb.wh:                                            ; preds = %bb.wg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i1024
  %.sroa.10.0.i.i232.i1025 = phi i64 [ %i.ebd, %bb.wg ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i1024 ]
  %i.ebg = inttoptr i64 %.sroa.10.0.i.i232.i1025 to ptr ; 5 uses
  %i.ebh = icmp samesign ult i64 %.sroa.017.1.i1022, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ebh)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ebg) ]
  %i.ebi = shl nuw nsw i64 %.val93.i1017, 2       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ebg, ptr nonnull readonly align 4 %.val92.i1016, i64 %i.ebi, i1 false), !alias.scope !9582, !noalias !9586
  store ptr %i.ebg, ptr %i.eak, align 8, !alias.scope !9151, !noalias !9148
  store i64 %.sroa.017.1.i1022, ptr %i.eal, align 8, !alias.scope !9151, !noalias !9148
  br i1 %i.eas, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i1018", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i1026"
end_hunk_6
begin_hunk_7_@_ZN6brotli3enc9metablock24BrotliOptimizeHistograms17hcb5893b6cb61987bE:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val16 = load ptr, ptr %i.m, align 8, !nonnull !4, !align !350
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph24, %bb.g
  %.sroa.07.022 = phi i64 [ 0, %.lr.ph24 ], [ %i.p, %bb.g ] ; 3 uses
  %exitcond36.not = icmp eq i64 %.sroa.07.022, %.val15
  br i1 %exitcond36.not, label %bb.h, label %bb.g

._crit_edge29:                                    ; preds = %bb.e, %._crit_edge25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %.lr.ph28, %bb.e
  %.sroa.09.026 = phi i64 [ 0, %.lr.ph28 ], [ %i.n, %bb.e ] ; 3 uses
  %exitcond38.not = icmp eq i64 %.sroa.09.026, %.val17
  br i1 %exitcond38.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nuw i64 %.sroa.09.026, 1             ; 2 uses
  %i.o = getelementptr inbounds nuw [2192 x i8], ptr %.val16, i64 %.sroa.09.026
  call void @_ZN6brotli3enc14entropy_encode33BrotliOptimizeHuffmanCountsForRle17h088004105dd83f8cE(i64 noundef %0, ptr noalias noundef nonnull align 4 %i.o, i64 noundef 544, ptr noalias noundef nonnull align 1 %i.a, i64 noundef 704)
  %exitcond39.not = icmp eq i64 %i.n, %i.k
  br i1 %exitcond39.not, label %._crit_edge29, label %bb.d

bb.f:                                             ; preds = %bb.d
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val17, i64 noundef %.val17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1337) #46
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.p = add nuw i64 %.sroa.07.022, 1             ; 2 uses
  %i.q = getelementptr inbounds nuw [2832 x i8], ptr %.val14, i64 %.sroa.07.022
  call void @_ZN6brotli3enc14entropy_encode33BrotliOptimizeHuffmanCountsForRle17h088004105dd83f8cE(i64 noundef 704, ptr noalias noundef nonnull align 4 %i.q, i64 noundef 704, ptr noalias noundef nonnull align 1 %i.a, i64 noundef 704)
  %exitcond37.not = icmp eq i64 %i.p, %i.g
  br i1 %exitcond37.not, label %._crit_edge25, label %bb.c

bb.h:                                             ; preds = %bb.c
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val15, i64 noundef %.val15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1338) #46
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.05.021, 1             ; 2 uses
  %i.s = getelementptr inbounds nuw [1040 x i8], ptr %.val, i64 %.sroa.05.021
  call void @_ZN6brotli3enc14entropy_encode33BrotliOptimizeHuffmanCountsForRle17h088004105dd83f8cE(i64 noundef 256, ptr noalias noundef nonnull align 4 %i.s, i64 noundef 256, ptr noalias noundef nonnull align 1 %i.a, i64 noundef 704)
  %exitcond35.not = icmp eq i64 %i.r, %i.c
  br i1 %exitcond35.not, label %._crit_edge, label %bb.b

bb.j:                                             ; preds = %bb.b
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val13, i64 noundef %.val13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1339) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17hd56bb795b444b7dfE(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 4               ; 7 uses
  %i.b = alloca [52 x i8], align 4                ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 36 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 3 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.h, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.f, %bb.a ], [ %i.h, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 11 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val128 = load i64, ptr %i.n, align 8, !noundef !4
  %.not98 = icmp eq i64 %.val128, 0
  br i1 %.not98, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.p, label %bb.w

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val127 = load ptr, ptr %i.o, align 8, !nonnull !4, !align !131, !noundef !4
  %i.p = trunc i64 %i.j to i32
  store i32 %i.p, ptr %.val127, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val118 = load i64, ptr %i.q, align 8, !noundef !4
  %.not99 = icmp eq i64 %.val118, 0
  br i1 %.not99, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1344) #46
  unreachable

bb.h:                                             ; preds = %bb.f
  %.val117 = load ptr, ptr %1, align 8, !nonnull !4, !align !132, !noundef !4
  store i8 0, ptr %.val117, align 1
  %.not102 = icmp eq i64 %i.d, 0
  br i1 %.not102, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = add i64 %3, 1
  %umax175 = tail call i64 @llvm.umax.i64(i64 %i.d, i64 26)
  %i.u = add i64 %umax175, 1
  %i.v = sub i64 %i.u, %i.d
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #46
  unreachable

bb.j:                                             ; preds = %.lr.ph94, %bb.u
  %i.w = phi i64 [ 1, %.lr.ph94 ], [ %i.bu, %bb.u ] ; 6 uses
  %.sroa.026.092 = phi i64 [ 0, %.lr.ph94 ], [ %i.w, %bb.u ] ; 5 uses
  %exitcond173.not = icmp eq i64 %i.w, %i.t
  br i1 %exitcond173.not, label %bb.r, label %bb.q

._crit_edge95:                                    ; preds = %bb.u, %bb.h
  %i.x = load i64, ptr %i.k, align 8, !noundef !4
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.k, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4
  %i.ae = add i64 %i.ad, %i.d                     ; 6 uses
  store i64 %i.ae, ptr %i.ac, align 8
  %i.af = load i64, ptr %4, align 8, !noundef !4
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.k, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit

bb.k:                                             ; preds = %._crit_edge95
  %i.ah = icmp ugt i64 %i.ae, %3
  br i1 %i.ah, label %bb.o, label %bb.l, !prof !282

_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.m, %._crit_edge95
  store i64 0, ptr %i.e, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ai = sub nuw i64 %3, %i.ae                   ; 2 uses
  %i.aj = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12713)
  %.not.i = icmp ugt i64 %i.aj, %i.ai
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !2175

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.ae ; 3 uses
  %.idx.i = mul i64 %i.aj, 1040                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %i.am = icmp eq i64 %i.aj, 0
  br i1 %i.am, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.an = add i64 %.idx.i, -1040                  ; 2 uses
  %i.ao = udiv i64 %i.an, 1040
  %i.ap = add nuw nsw i64 %i.ao, 1
  %xtraiter383 = and i64 %i.ap, 7                 ; 2 uses
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod384.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.02.05.i.prol = phi ptr [ %i.aq, %.lr.ph.i.prol ], [ %i.ak, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter385 = phi i64 [ %prol.iter385.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.prol, i64 1040 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.prol, i8 0, i64 1032, i1 false), !alias.scope !12713
  store float 3.402000e+38, ptr %i.ar, align 8, !alias.scope !12716
  %prol.iter385.next = add i64 %prol.iter385, 1   ; 2 uses
  %prol.iter385.cmp.not = icmp eq i64 %prol.iter385.next, %xtraiter383
  br i1 %prol.iter385.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !12719

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.02.05.i.unr = phi ptr [ %i.ak, %.lr.ph.i.preheader ], [ %i.aq, %.lr.ph.i.prol ]
  %i.as = icmp ult i64 %i.an, 7280
  br i1 %i.as, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit, label %.lr.ph.i

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.aj, i64 noundef %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1287) #46, !noalias !12713
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.02.05.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %.sroa.02.05.i.unr, %.lr.ph.i.prol.loopexit ] ; 17 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 1040
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i, i8 0, i64 1032, i1 false), !alias.scope !12713
  store float 3.402000e+38, ptr %i.au, align 8, !alias.scope !12716
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 2080
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.at, i8 0, i64 1032, i1 false), !alias.scope !12713
  store float 3.402000e+38, ptr %i.aw, align 8, !alias.scope !12716
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 3120
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.av, i8 0, i64 1032, i1 false), !alias.scope !12713
  store float 3.402000e+38, ptr %i.ay, align 8, !alias.scope !12716
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 4160
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ax, i8 0, i64 1032, i1 false), !alias.scope !12713
  store float 3.402000e+38, ptr %i.ba, align 8, !alias.scope !12716
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 5200
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.az, i8 0, i64 1032, i1 false), !alias.scope !12713
  store float 3.402000e+38, ptr %i.bc, align 8, !alias.scope !12716
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 6240
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bb, i8 0, i64 1032, i1 false), !alias.scope !12713
  store float 3.402000e+38, ptr %i.be, align 8, !alias.scope !12716
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 7280
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bd, i8 0, i64 1032, i1 false), !alias.scope !12713
  store float 3.402000e+38, ptr %i.bg, align 8, !alias.scope !12716
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8320 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bf, i8 0, i64 1032, i1 false), !alias.scope !12713
  store float 3.402000e+38, ptr %i.bi, align 8, !alias.scope !12716
  %i.bj = icmp eq ptr %i.bh, %i.al
  br i1 %i.bj, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit, label %.lr.ph.i

bb.o:                                             ; preds = %bb.k
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ae, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1346) #46
  unreachable

bb.p:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit", %bb.e, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit
  br i1 %5, label %bb.bd, label %bb.bc

bb.q:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %.sroa.026.092
  %i.bl = load i64, ptr %i.r, align 8, !noundef !4
  %i.bm = tail call { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.bk, i64 noundef 256, i64 noundef %i.bl) ; 2 uses
  %i.bn = extractvalue { float, i64 } %i.bm, 0    ; 2 uses
  %i.bo = extractvalue { float, i64 } %i.bm, 1
  %i.bp = uitofp i64 %i.bo to float               ; 2 uses
  %i.bq = fcmp olt float %i.bn, %i.bp
  %.sroa.020.0 = select i1 %i.bq, float %i.bp, float %i.bn ; 2 uses
  %exitcond174.not = icmp eq i64 %i.w, 27
  br i1 %exitcond174.not, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.026.092, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1347) #46
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.026.092
  store float %.sroa.020.0, ptr %i.br, align 4
  %i.bs = add nuw nsw i64 %.sroa.026.092, %i.d    ; 2 uses
  %exitcond176.not = icmp eq i64 %i.w, %i.v
  br i1 %exitcond176.not, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.026.092, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1348) #46
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bs
  store float %.sroa.020.0, ptr %i.bt, align 4
  %i.bu = add nuw nsw i64 %i.w, 1
  %exitcond177.not = icmp eq i64 %i.w, %i.d
  br i1 %exitcond177.not, label %._crit_edge95, label %bb.j

bb.v:                                             ; preds = %bb.s
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bs, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1349) #46
  unreachable

bb.w:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.b, i8 0, i64 52, i1 false)
  %i.bv = shl i64 %i.d, 1                         ; 14 uses
  %i.bw = mul i64 %i.d, 2080                      ; 6 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.bv, 8868626958514207
  br i1 %or.cond.i.i.i.i.i, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !1121

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.w
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i", label %bb.x

bb.x:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12720
  %i.by = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bw, i64 noundef range(i64 1, 9) 8) #45, !noalias !12720 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.y, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i"

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.x ], [ 0, %bb.w ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !12728
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i": ; preds = %bb.x, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.by, %bb.x ] ; 12 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.bv, %bb.x ]
  %i.ca = icmp samesign ule i64 %i.bv, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.ca)
  %.not10 = icmp eq i64 %i.bv, 0                  ; 3 uses
  br i1 %.not10, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h26d955d537fa1ae2E.exit", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i"
  %i.cb = add nsw i64 %i.bv, -1                   ; 2 uses
  %i.cc = add nsw i64 %i.bv, -2
  %xtraiter = and i64 %i.cb, 7
  %i.cd = icmp ult i64 %i.cc, 7
  br i1 %i.cd, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.cb, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader
  %.sroa.0.08.i.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i ]
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.epil = phi ptr [ %i.ce, %.lr.ph.i.i.i.epil ], [ %.sroa.0.08.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.epil, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.epil, align 8, !noalias !12729
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !12732

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i.epil
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ce, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i, align 8, !noalias !12729
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h26d955d537fa1ae2E.exit"

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.08.i.i.i = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.cm, %.lr.ph.i.i.i ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i, align 8, !noalias !12729
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cf, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.1, align 8, !noalias !12729
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cg, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.2, align 8, !noalias !12729
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ch, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.3, align 8, !noalias !12729
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ci, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.4, align 8, !noalias !12729
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cj, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.5, align 8, !noalias !12729
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ck, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.6, align 8, !noalias !12729
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cl, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.7, align 8, !noalias !12729
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8320 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h26d955d537fa1ae2E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i", %._crit_edge.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %i.a, i8 0, i64 104, i1 false)
  %.not96 = icmp eq i64 %i.d, 0                   ; 4 uses
  br i1 %.not96, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h26d955d537fa1ae2E.exit"
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = mul i64 %i.d, 1040                      ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.cr
  %i.cs = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.bw
  %scevgep329 = getelementptr i8, ptr %i.cs, i64 -16
  %i.ct = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.cr
  %scevgep334 = getelementptr i8, ptr %i.ct, i64 -16
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.0.0 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.oy, %.loopexit ]
  %.sroa.7.0 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ri, %.loopexit ]
  %.sroa.028.175 = phi i64 [ 1, %.lr.ph ], [ %.sroa.028.1, %.loopexit ] ; 3 uses
  %.sroa.028.074 = phi i64 [ 0, %.lr.ph ], [ %.sroa.028.175, %.loopexit ] ; 12 uses
  %i.cu = load i64, ptr %i.cn, align 8, !noundef !4
  %i.cv = add i64 %i.cu, %.sroa.028.074           ; 3 uses
  %i.cw = icmp ult i64 %i.cv, %3
  br i1 %i.cw, label %bb.cf, label %.invoke300

._crit_edge:                                      ; preds = %.loopexit, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h26d955d537fa1ae2E.exit"
  %.sroa.0.1 = phi float [ 0.000000e+00, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h26d955d537fa1ae2E.exit" ], [ %i.oy, %.loopexit ] ; 2 uses
  %.sroa.7.1 = phi float [ 0.000000e+00, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h26d955d537fa1ae2E.exit" ], [ %i.ri, %.loopexit ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !4 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !noundef !4
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dd = load float, ptr %i.dc, align 8, !noundef !4 ; 2 uses
  %i.de = fcmp ogt float %.sroa.0.1, %i.dd
  %i.df = fcmp ogt float %.sroa.7.1, %i.dd
  %or.cond = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond, label %bb.aw, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge
  %i.dg = fadd float %.sroa.0.1, -2.000000e+01
end_hunk_7
begin_hunk_8_@_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17hd56bb795b444b7dfE:bb.a
  %i.fl = icmp ult i64 %i.fk, %.val120
  br i1 %i.fl, label %bb.ao, label %.invoke300

bb.ao:                                            ; preds = %bb.an
  %i.fm = icmp ult i64 %i.fj, %.val120
  br i1 %i.fm, label %bb.ap, label %.invoke300

bb.ap:                                            ; preds = %bb.ao
  %i.fn = getelementptr inbounds nuw i8, ptr %.val119, i64 %i.fk
  %i.fo = load i8, ptr %i.fn, align 1, !noundef !4
  %i.fp = getelementptr inbounds nuw i8, ptr %.val119, i64 %i.fj
  store i8 %i.fo, ptr %i.fp, align 1
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.fr = load i64, ptr %i.fq, align 8            ; 2 uses
  store i64 %i.fr, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.fq, align 8
  br i1 %.not96, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.ap
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fu = load i64, ptr %i.ft, align 8
  br label %bb.ar

._crit_edge87:                                    ; preds = %_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit, %bb.ap
  store i64 0, ptr %i.e, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.fv, align 8
  %i.fw = load <2 x i64>, ptr %i.g, align 8
  %i.fx = add <2 x i64> %i.fw, <i64 0, i64 1>
  %i.fy = shufflevector <2 x i64> %i.fx, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.fy, ptr %i.k, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge87, %._crit_edge81, %bb.ae, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit146
  br i1 %.not10, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.aq
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i, i64 noundef %i.bw, i64 noundef 8) #45
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit"

bb.ar:                                            ; preds = %.lr.ph86, %_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit
  %.sroa.032.184 = phi i64 [ 1, %.lr.ph86 ], [ %.sroa.032.1, %_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit ] ; 3 uses
  %.sroa.032.083 = phi i64 [ 0, %.lr.ph86 ], [ %.sroa.032.184, %_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit ] ; 6 uses
  %i.fz = add nuw nsw i64 %.sroa.032.083, %i.d    ; 7 uses
  %i.ga = icmp ult i64 %i.fz, %i.bv
  br i1 %i.ga, label %bb.as, label %.invoke300

bb.as:                                            ; preds = %bb.ar
  %i.gb = add nuw i64 %.sroa.032.083, %i.fr       ; 3 uses
  %i.gc = icmp ult i64 %i.gb, %3
  br i1 %i.gc, label %bb.at, label %.invoke

bb.at:                                            ; preds = %bb.as
  %i.gd = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.fz
  %i.ge = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.gb
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.ge, ptr noundef nonnull align 8 dereferenceable(1040) %i.gd, i64 1040, i1 false)
  %i.gf = icmp samesign ult i64 %.sroa.032.083, 26
  br i1 %i.gf, label %bb.au, label %.invoke

bb.au:                                            ; preds = %bb.at
  %i.gg = icmp ult i64 %i.fz, 26
  br i1 %i.gg, label %bb.av, label %.invoke

bb.av:                                            ; preds = %bb.au
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %.sroa.032.083 ; 2 uses
  %i.gi = load float, ptr %i.gh, align 4, !noundef !4
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fz
  store float %i.gi, ptr %i.gj, align 4
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fz
  %i.gl = load float, ptr %i.gk, align 4, !noundef !4
  store float %i.gl, ptr %i.gh, align 4
  %i.gm = add nuw i64 %i.fu, %.sroa.032.083       ; 3 uses
  %i.gn = icmp ult i64 %i.gm, %3
  br i1 %i.gn, label %_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit, label %.invoke

_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit: ; preds = %bb.av
  %i.go = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.gm ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.go, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %i.gp, align 8, !alias.scope !12736
  %i.gq = icmp ult i64 %.sroa.032.184, %i.d       ; 2 uses
  %i.gr = zext i1 %i.gq to i64
  %.sroa.032.1 = add nuw i64 %.sroa.032.184, %i.gr
  br i1 %i.gq, label %bb.ar, label %._crit_edge87

bb.aw:                                            ; preds = %bb.aa
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val126 = load i64, ptr %i.gs, align 8, !noundef !4 ; 2 uses
  %i.gt = load i64, ptr %i.k, align 8, !noundef !4 ; 3 uses
  %i.gu = icmp ult i64 %i.gt, %.val126
  br i1 %i.gu, label %bb.ax, label %.invoke300

bb.ax:                                            ; preds = %bb.aw
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val125 = load ptr, ptr %i.gv, align 8, !nonnull !4, !align !131, !noundef !4
  %i.gw = load i64, ptr %i.e, align 8, !noundef !4
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.val125, i64 %i.gt
  %i.gy = trunc i64 %i.gw to i32
  store i32 %i.gy, ptr %i.gx, align 4
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val114 = load i64, ptr %i.gz, align 8, !noundef !4 ; 2 uses
  %i.ha = load i64, ptr %i.k, align 8, !noundef !4 ; 3 uses
  %i.hb = icmp ult i64 %i.ha, %.val114
  br i1 %i.hb, label %bb.ay, label %.invoke300

bb.ay:                                            ; preds = %bb.ax
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !132, !noundef !4
  %i.hc = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ha
  %i.hd = trunc i64 %i.cy to i8
  store i8 %i.hd, ptr %i.hc, align 1
  %i.he = load i64, ptr %0, align 8, !noundef !4
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.he, ptr %i.hf, align 8
  %i.hg = mul i64 %i.cy, %i.d
  store i64 %i.hg, ptr %0, align 8
  br i1 %.not96, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.ay
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 16 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.d, i64 26)
  %i.hi = add i64 %umax, 1
  %i.hj = sub i64 %i.hi, %i.d                     ; 14 uses
  %i.hk = add i64 %i.d, 1                         ; 15 uses
  %exitcond170.not = icmp eq i64 %i.hj, 1
  br i1 %exitcond170.not, label %.invoke300, label %bb.be

._crit_edge91:                                    ; preds = %bb.be, %bb.bg, %bb.bi, %bb.bk, %bb.bm, %bb.bo, %bb.bq, %bb.bs, %bb.bu, %bb.bw, %bb.by, %bb.ca, %bb.cc, %bb.ay
  %i.hl = load i64, ptr %i.k, align 8, !noundef !4
  %i.hm = add i64 %i.hl, 1
  store i64 %i.hm, ptr %i.k, align 8
  %i.hn = add nuw i64 %i.cy, 1
  store i64 %i.hn, ptr %i.cx, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !noundef !4
  %i.hq = add i64 %i.hp, %i.d                     ; 6 uses
  store i64 %i.hq, ptr %i.ho, align 8
  %i.hr = load i64, ptr %4, align 8, !noundef !4
  %i.hs = icmp ult i64 %i.hq, %i.hr
  br i1 %i.hs, label %bb.az, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit146

bb.az:                                            ; preds = %._crit_edge91
  %i.ht = icmp ugt i64 %i.hq, %3
  br i1 %i.ht, label %.invoke302, label %bb.ba, !prof !282

_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit146: ; preds = %.lr.ph.i143.prol.loopexit, %.lr.ph.i143, %bb.bb, %._crit_edge91
  store i64 0, ptr %i.e, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.hu, align 8
  %i.hv = load i64, ptr %i.g, align 8, !noundef !4
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.hv, ptr %i.hw, align 8
  br label %bb.aq

bb.ba:                                            ; preds = %bb.az
  %i.hx = sub nuw i64 %3, %i.hq                   ; 2 uses
  %i.hy = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %.not.i141 = icmp ugt i64 %i.hy, %i.hx
  br i1 %.not.i141, label %.invoke302, label %bb.bb, !prof !2175

bb.bb:                                            ; preds = %bb.ba
  %i.hz = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.hq ; 3 uses
  %.idx.i142 = mul i64 %i.hy, 1040                ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.idx.i142
  %i.ib = icmp eq i64 %i.hy, 0
  br i1 %i.ib, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit146, label %.lr.ph.i143.preheader

.lr.ph.i143.preheader:                            ; preds = %bb.bb
  %i.ic = add i64 %.idx.i142, -1040               ; 2 uses
  %i.id = udiv i64 %i.ic, 1040
  %i.ie = add nuw nsw i64 %i.id, 1
  %xtraiter381 = and i64 %i.ie, 7                 ; 2 uses
  %lcmp.mod382.not = icmp eq i64 %xtraiter381, 0
  br i1 %lcmp.mod382.not, label %.lr.ph.i143.prol.loopexit, label %.lr.ph.i143.prol

.lr.ph.i143.prol:                                 ; preds = %.lr.ph.i143.preheader, %.lr.ph.i143.prol
  %.sroa.02.05.i144.prol = phi ptr [ %i.if, %.lr.ph.i143.prol ], [ %i.hz, %.lr.ph.i143.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i143.prol ], [ 0, %.lr.ph.i143.preheader ]
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144.prol, i64 1040 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i144.prol, i8 0, i64 1032, i1 false), !alias.scope !12739
  store float 3.402000e+38, ptr %i.ig, align 8, !alias.scope !12742
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter381
  br i1 %prol.iter.cmp.not, label %.lr.ph.i143.prol.loopexit, label %.lr.ph.i143.prol, !llvm.loop !12745

.lr.ph.i143.prol.loopexit:                        ; preds = %.lr.ph.i143.prol, %.lr.ph.i143.preheader
  %.sroa.02.05.i144.unr = phi ptr [ %i.hz, %.lr.ph.i143.preheader ], [ %i.if, %.lr.ph.i143.prol ]
  %i.ih = icmp ult i64 %i.ic, 7280
  br i1 %i.ih, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit146, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %.lr.ph.i143.prol.loopexit, %.lr.ph.i143
  %.sroa.02.05.i144 = phi ptr [ %i.iw, %.lr.ph.i143 ], [ %.sroa.02.05.i144.unr, %.lr.ph.i143.prol.loopexit ] ; 17 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 1040
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i144, i8 0, i64 1032, i1 false), !alias.scope !12739
  store float 3.402000e+38, ptr %i.ij, align 8, !alias.scope !12742
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 2080
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ii, i8 0, i64 1032, i1 false), !alias.scope !12739
  store float 3.402000e+38, ptr %i.il, align 8, !alias.scope !12742
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 3120
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ik, i8 0, i64 1032, i1 false), !alias.scope !12739
  store float 3.402000e+38, ptr %i.in, align 8, !alias.scope !12742
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 4160
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.im, i8 0, i64 1032, i1 false), !alias.scope !12739
  store float 3.402000e+38, ptr %i.ip, align 8, !alias.scope !12742
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 5200
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.io, i8 0, i64 1032, i1 false), !alias.scope !12739
  store float 3.402000e+38, ptr %i.ir, align 8, !alias.scope !12742
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 6240
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.iq, i8 0, i64 1032, i1 false), !alias.scope !12739
  store float 3.402000e+38, ptr %i.it, align 8, !alias.scope !12742
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 7280
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.is, i8 0, i64 1032, i1 false), !alias.scope !12739
  store float 3.402000e+38, ptr %i.iv, align 8, !alias.scope !12742
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 8320 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.iu, i8 0, i64 1032, i1 false), !alias.scope !12739
  store float 3.402000e+38, ptr %i.ix, align 8, !alias.scope !12742
  %i.iy = icmp eq ptr %i.iw, %i.ia
  br i1 %i.iy, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit146, label %.lr.ph.i143

.invoke302:                                       ; preds = %bb.az, %bb.ba
  %i.iz = phi i64 [ 0, %bb.ba ], [ %i.hq, %bb.az ]
  %i.ja = phi i64 [ %i.hy, %bb.ba ], [ %3, %bb.az ]
  %i.jb = phi i64 [ %i.hx, %bb.ba ], [ %3, %bb.az ]
  %i.jc = phi ptr [ @1287, %bb.ba ], [ @1366, %bb.az ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.iz, i64 noundef %i.ja, i64 noundef %i.jb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jc) #46
          to label %.cont303 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont303:                                         ; preds = %.invoke302
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.bc:                                            ; preds = %bb.bd, %bb.p
  ret void

bb.bd:                                            ; preds = %bb.p
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.je = load i64, ptr %i.jd, align 8, !noundef !4
  %i.jf = mul i64 %i.je, %i.d
  store i64 %i.jf, ptr %4, align 8
  %i.jg = load i64, ptr %i.k, align 8, !noundef !4
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.jg, ptr %i.jh, align 8
  br label %bb.bc

bb.be:                                            ; preds = %.lr.ph90
  %i.ji = load float, ptr %i.hh, align 8, !noundef !4
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.d
  store float %i.ji, ptr %i.jj, align 4
  %i.jk = load float, ptr %i.b, align 4, !noundef !4
  store float %i.jk, ptr %i.hh, align 8
  %exitcond172.not = icmp eq i64 %i.hk, 2
  br i1 %exitcond172.not, label %._crit_edge91, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %exitcond170.1.not = icmp eq i64 %i.hj, 2
  br i1 %exitcond170.1.not, label %.invoke300, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !noundef !4
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hk
  store float %i.jm, ptr %i.jn, align 4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.jp = load float, ptr %i.jo, align 4, !noundef !4
  store float %i.jp, ptr %i.jl, align 4
  %exitcond172.1.not = icmp eq i64 %i.hk, 3
  br i1 %exitcond172.1.not, label %._crit_edge91, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jq = add nuw nsw i64 %i.d, 2                 ; 2 uses
  %exitcond170.2.not = icmp eq i64 %i.hj, 3
  br i1 %exitcond170.2.not, label %.invoke300, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.js = load float, ptr %i.jr, align 8, !noundef !4
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.jq
  store float %i.js, ptr %i.jt, align 4
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jv = load float, ptr %i.ju, align 4, !noundef !4
  store float %i.jv, ptr %i.jr, align 8
  %exitcond172.2.not = icmp eq i64 %i.hk, 4
  br i1 %exitcond172.2.not, label %._crit_edge91, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jw = add nuw nsw i64 %i.d, 3                 ; 2 uses
  %exitcond170.3.not = icmp eq i64 %i.hj, 4
  br i1 %exitcond170.3.not, label %.invoke300, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.jy = load float, ptr %i.jx, align 4, !noundef !4
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.jw
  store float %i.jy, ptr %i.jz, align 4
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.kb = load float, ptr %i.ka, align 4, !noundef !4
  store float %i.kb, ptr %i.jx, align 4
  %exitcond172.3.not = icmp eq i64 %i.hk, 5
  br i1 %exitcond172.3.not, label %._crit_edge91, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kc = add nuw nsw i64 %i.d, 4                 ; 2 uses
  %exitcond170.4.not = icmp eq i64 %i.hj, 5
  br i1 %exitcond170.4.not, label %.invoke300, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ke = load float, ptr %i.kd, align 8, !noundef !4
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.kc
  store float %i.ke, ptr %i.kf, align 4
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.kh = load float, ptr %i.kg, align 4, !noundef !4
  store float %i.kh, ptr %i.kd, align 8
  %exitcond172.4.not = icmp eq i64 %i.hk, 6
  br i1 %exitcond172.4.not, label %._crit_edge91, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ki = add nuw nsw i64 %i.d, 5                 ; 2 uses
  %exitcond170.5.not = icmp eq i64 %i.hj, 6
  br i1 %exitcond170.5.not, label %.invoke300, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !noundef !4
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.ki
  store float %i.kk, ptr %i.kl, align 4
  %i.km = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.kn = load float, ptr %i.km, align 4, !noundef !4
  store float %i.kn, ptr %i.kj, align 4
  %exitcond172.5.not = icmp eq i64 %i.hk, 7
  br i1 %exitcond172.5.not, label %._crit_edge91, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ko = add nuw nsw i64 %i.d, 6                 ; 2 uses
  %exitcond170.6.not = icmp eq i64 %i.hj, 7
  br i1 %exitcond170.6.not, label %.invoke300, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.kq = load float, ptr %i.kp, align 8, !noundef !4
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.ko
  store float %i.kq, ptr %i.kr, align 4
  %i.ks = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.kt = load float, ptr %i.ks, align 4, !noundef !4
  store float %i.kt, ptr %i.kp, align 8
  %exitcond172.6.not = icmp eq i64 %i.hk, 8
  br i1 %exitcond172.6.not, label %._crit_edge91, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ku = add nuw nsw i64 %i.d, 7                 ; 2 uses
  %exitcond170.7.not = icmp eq i64 %i.hj, 8
  br i1 %exitcond170.7.not, label %.invoke300, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.kw = load float, ptr %i.kv, align 4, !noundef !4
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.ku
  store float %i.kw, ptr %i.kx, align 4
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.kz = load float, ptr %i.ky, align 4, !noundef !4
  store float %i.kz, ptr %i.kv, align 4
  %exitcond172.7.not = icmp eq i64 %i.hk, 9
  br i1 %exitcond172.7.not, label %._crit_edge91, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.la = add nuw nsw i64 %i.d, 8                 ; 2 uses
  %exitcond170.8.not = icmp eq i64 %i.hj, 9
  br i1 %exitcond170.8.not, label %.invoke300, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.lc = load float, ptr %i.lb, align 8, !noundef !4
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.la
  store float %i.lc, ptr %i.ld, align 4
  %i.le = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.lf = load float, ptr %i.le, align 4, !noundef !4
  store float %i.lf, ptr %i.lb, align 8
  %exitcond172.8.not = icmp eq i64 %i.hk, 10
  br i1 %exitcond172.8.not, label %._crit_edge91, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lg = add nuw nsw i64 %i.d, 9                 ; 2 uses
  %exitcond170.9.not = icmp eq i64 %i.hj, 10
  br i1 %exitcond170.9.not, label %.invoke300, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.li = load float, ptr %i.lh, align 4, !noundef !4
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.lg
  store float %i.li, ptr %i.lj, align 4
  %i.lk = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ll = load float, ptr %i.lk, align 4, !noundef !4
  store float %i.ll, ptr %i.lh, align 4
  %exitcond172.9.not = icmp eq i64 %i.hk, 11
  br i1 %exitcond172.9.not, label %._crit_edge91, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lm = add nuw nsw i64 %i.d, 10                ; 2 uses
  %exitcond170.10.not = icmp eq i64 %i.hj, 11
  br i1 %exitcond170.10.not, label %.invoke300, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.lo = load float, ptr %i.ln, align 8, !noundef !4
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.lm
  store float %i.lo, ptr %i.lp, align 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.lr = load float, ptr %i.lq, align 4, !noundef !4
  store float %i.lr, ptr %i.ln, align 8
  %exitcond172.10.not = icmp eq i64 %i.hk, 12
  br i1 %exitcond172.10.not, label %._crit_edge91, label %bb.bz
end_hunk_8
begin_hunk_9_@_ZN6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternal17h9719acd4736b0fc5E:bb.a
  br i1 %i.cc, label %.thread.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i57"

.thread.i:                                        ; preds = %bb.t
  store ptr %i.cg, ptr %13, align 8, !alias.scope !12822, !noalias !12831
  store i64 %.sroa.06.1.i54, ptr %i.cb, align 8, !alias.scope !12822, !noalias !12831
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i58"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i57": ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull readonly align 1 %.val59.i51, i64 %.val60.i, i1 false), !alias.scope !12839, !noalias !12843
  store ptr %i.cg, ptr %13, align 8, !alias.scope !12822, !noalias !12831
  store i64 %.sroa.06.1.i54, ptr %i.cb, align 8, !alias.scope !12822, !noalias !12831
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.val59.i51, i64 noundef %.val60.i, i64 noundef 1) #45, !noalias !12829
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i58"

bb.u:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i58"
  %i.ci = icmp eq i64 %.val48.i, 0                ; 2 uses
  %spec.select7.i = select i1 %i.ci, i64 %i.ak, i64 %.val48.i
  br label %bb.w

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i64": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i70.i", %.thread14.i75, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i58"
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 %i.ak, ptr %i.cj, align 8, !alias.scope !12822, !noalias !12831
  %i.ck = mul nuw nsw i64 %.sroa.0.0.i.i50, %7    ; 5 uses
  store i64 %i.ck, ptr %i.aj, align 8, !alias.scope !12827, !noalias !12845
  %i.cl = mul nuw nsw i64 %i.ck, 1040             ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12846
  %i.cm = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cl, i64 noundef range(i64 1, 9) 8) #45, !noalias !12846 ; 7 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.v, label %.lr.ph.i.i.i.i65.preheader

.lr.ph.i.i.i.i65.preheader:                       ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i64"
  %i.co = add nsw i64 %i.ck, -1                   ; 2 uses
  %i.cp = add nsw i64 %i.ck, -2
  %xtraiter556 = and i64 %i.co, 7                 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 7
  br i1 %i.cq, label %.lr.ph.i.i.i.i65.epil.preheader, label %.lr.ph.i.i.i.i65.preheader.new

.lr.ph.i.i.i.i65.preheader.new:                   ; preds = %.lr.ph.i.i.i.i65.preheader
  %unroll_iter562 = and i64 %i.co, -8
  br label %.lr.ph.i.i.i.i65

bb.v:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i64"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !12854
  unreachable

._crit_edge.thread.i.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i.i.i.i65
  %lcmp.mod558.not = icmp eq i64 %xtraiter556, 0
  br i1 %lcmp.mod558.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i65.epil.preheader

.lr.ph.i.i.i.i65.epil.preheader:                  ; preds = %._crit_edge.thread.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i65.preheader
  %.sroa.0.08.i.i.i.i66.epil.init = phi ptr [ %i.cm, %.lr.ph.i.i.i.i65.preheader ], [ %i.db, %._crit_edge.thread.i.i.i.i.unr-lcssa ]
  %lcmp.mod561 = icmp ne i64 %xtraiter556, 0
  tail call void @llvm.assume(i1 %lcmp.mod561)
  br label %.lr.ph.i.i.i.i65.epil

.lr.ph.i.i.i.i65.epil:                            ; preds = %.lr.ph.i.i.i.i65.epil, %.lr.ph.i.i.i.i65.epil.preheader
  %.sroa.0.08.i.i.i.i66.epil = phi ptr [ %i.cr, %.lr.ph.i.i.i.i65.epil ], [ %.sroa.0.08.i.i.i.i66.epil.init, %.lr.ph.i.i.i.i65.epil.preheader ] ; 4 uses
  %epil.iter557 = phi i64 [ %epil.iter557.next, %.lr.ph.i.i.i.i65.epil ], [ 0, %.lr.ph.i.i.i.i65.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i66.epil, i8 0, i64 1032, i1 false), !noalias !12829
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.epil, align 8, !noalias !12855
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66.epil, i64 1040 ; 2 uses
  %epil.iter557.next = add i64 %epil.iter557, 1   ; 2 uses
  %epil.iter557.cmp.not = icmp eq i64 %epil.iter557.next, %xtraiter556
  br i1 %epil.iter557.cmp.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i65.epil, !llvm.loop !12858

._crit_edge.thread.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i65.epil, %._crit_edge.thread.i.i.i.i.unr-lcssa
  %.sroa.0.08.i.i.i.i66.lcssa = phi ptr [ %i.da, %._crit_edge.thread.i.i.i.i.unr-lcssa ], [ %.sroa.0.08.i.i.i.i66.epil, %.lr.ph.i.i.i.i65.epil ]
  %.lcssa551 = phi ptr [ %i.db, %._crit_edge.thread.i.i.i.i.unr-lcssa ], [ %i.cr, %.lr.ph.i.i.i.i65.epil ]
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i70 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66.lcssa, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.lcssa551, i8 0, i64 1032, i1 false), !noalias !12829
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i70, align 8, !noalias !12855
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 184 ; 2 uses
  %.val64.i = load i64, ptr %i.cs, align 8, !alias.scope !12825, !noalias !12859, !noundef !4 ; 2 uses
  %i.ct = icmp eq i64 %.val64.i, 0
  br i1 %i.ct, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

.lr.ph.i.i.i.i65:                                 ; preds = %.lr.ph.i.i.i.i65, %.lr.ph.i.i.i.i65.preheader.new
  %.sroa.0.08.i.i.i.i66 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i65.preheader.new ], [ %i.db, %.lr.ph.i.i.i.i65 ] ; 17 uses
  %niter563 = phi i64 [ 0, %.lr.ph.i.i.i.i65.preheader.new ], [ %niter563.next.7, %.lr.ph.i.i.i.i65 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i66, i8 0, i64 1032, i1 false), !noalias !12829
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68, align 8, !noalias !12855
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cu, i8 0, i64 1032, i1 false), !noalias !12829
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.1, align 8, !noalias !12855
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cv, i8 0, i64 1032, i1 false), !noalias !12829
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.2, align 8, !noalias !12855
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cw, i8 0, i64 1032, i1 false), !noalias !12829
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.3, align 8, !noalias !12855
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cx, i8 0, i64 1032, i1 false), !noalias !12829
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.4, align 8, !noalias !12855
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cy, i8 0, i64 1032, i1 false), !noalias !12829
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.5, align 8, !noalias !12855
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cz, i8 0, i64 1032, i1 false), !noalias !12829
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.6, align 8, !noalias !12855
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 7280 ; 2 uses
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.da, i8 0, i64 1032, i1 false), !noalias !12829
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.7, align 8, !noalias !12855
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 8320 ; 3 uses
  %niter563.next.7 = add i64 %niter563, 8         ; 2 uses
  %niter563.ncmp.7 = icmp eq i64 %niter563.next.7, %unroll_iter562
  br i1 %niter563.ncmp.7, label %._crit_edge.thread.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i65

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %._crit_edge.thread.i.i.i.i
  %.val63.i = load ptr, ptr %i.ai, align 8, !alias.scope !12825, !noalias !12859, !nonnull !4, !noundef !4
  %i.dc = mul nuw nsw i64 %.val64.i, 1040
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val63.i, i64 noundef %i.dc, i64 noundef 8) #45, !noalias !12829
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit.i"

bb.w:                                             ; preds = %bb.w, %bb.u
  %.sroa.09.1.i61 = phi i64 [ %spec.select7.i, %bb.u ], [ %i.dd, %bb.w ] ; 7 uses
  %.not29.i62 = icmp ugt i64 %.sroa.09.1.i61, %.sroa.08.0.lcssa
  %i.dd = shl nuw nsw i64 %.sroa.09.1.i61, 1
  br i1 %.not29.i62, label %bb.x, label %bb.w

bb.x:                                             ; preds = %bb.w
  %i.de = shl i64 %.sroa.09.1.i61, 2              ; 3 uses
  %i.df = icmp ugt i64 %.sroa.09.1.i61, 4611686018427387903
  %i.dg = icmp ugt i64 %i.de, 9223372036854775804
  %or.cond.i.i.i.i.i63 = or i1 %i.df, %i.dg
  br i1 %or.cond.i.i.i.i.i63, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i, !prof !1121

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i: ; preds = %bb.x
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12860
  %i.dh = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.de, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !12860 ; 4 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i, %bb.x
  %.sroa.4.0.ph.i.i69.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i ], [ 0, %bb.x ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i69.i, i64 %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !12865
  unreachable

bb.z:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i
  %i.dj = icmp samesign ult i64 %.sroa.09.1.i61, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dj)
  br i1 %i.ci, label %.thread14.i75, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i70.i"

.thread14.i75:                                    ; preds = %bb.z
  store ptr %i.dh, ptr %i.cd, align 8, !alias.scope !12822, !noalias !12831
  store i64 %.sroa.09.1.i61, ptr %i.ce, align 8, !alias.scope !12822, !noalias !12831
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i64"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i70.i": ; preds = %bb.z
  %i.dk = shl nuw nsw i64 %.val48.i, 2            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr nonnull readonly align 4 %.val47.i59, i64 %i.dk, i1 false), !alias.scope !12866, !noalias !12870
  store ptr %i.dh, ptr %i.cd, align 8, !alias.scope !12822, !noalias !12831
  store i64 %.sroa.09.1.i61, ptr %i.ce, align 8, !alias.scope !12822, !noalias !12831
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.val47.i59, i64 noundef %i.dk, i64 noundef 4) #45, !noalias !12829
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i64"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %._crit_edge.thread.i.i.i.i
  store ptr %i.cm, ptr %i.ai, align 8, !alias.scope !12825, !noalias !12859
  store i64 %i.ck, ptr %i.cs, align 8, !alias.scope !12825, !noalias !12859
  %.idx.i.i = mul nuw nsw i64 %7, 1040            ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i.i
  %i.dm = add nsw i64 %.idx.i.i, -1040            ; 2 uses
  %i.dn = udiv i64 %i.dm, 1040
  %i.do = add nuw nsw i64 %i.dn, 1
  %xtraiter564 = and i64 %i.do, 7                 ; 2 uses
  %lcmp.mod565.not = icmp eq i64 %xtraiter564, 0
  br i1 %lcmp.mod565.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit.i", %.lr.ph.i.i.prol
  %.sroa.02.05.i.i.prol = phi ptr [ %i.dp, %.lr.ph.i.i.prol ], [ %i.cm, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit.i" ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit.i" ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.prol, i64 1040 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i.prol, i8 0, i64 1032, i1 false), !alias.scope !12872, !noalias !12829
  store float 3.402000e+38, ptr %i.dq, align 8, !alias.scope !12875, !noalias !12829
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter564
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !12878

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit.i"
  %.sroa.02.05.i.i.unr = phi ptr [ %i.cm, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit.i" ], [ %i.dp, %.lr.ph.i.i.prol ]
  %i.dr = icmp ult i64 %i.dm, 7280
  br i1 %i.dr, label %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h21afd52017b8c5bfE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.02.05.i.i = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %.sroa.02.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 17 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 1040
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i, i8 0, i64 1032, i1 false), !alias.scope !12872, !noalias !12829
  store float 3.402000e+38, ptr %i.dt, align 8, !alias.scope !12875, !noalias !12829
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 2080
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ds, i8 0, i64 1032, i1 false), !alias.scope !12872, !noalias !12829
  store float 3.402000e+38, ptr %i.dv, align 8, !alias.scope !12875, !noalias !12829
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 3120
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.du, i8 0, i64 1032, i1 false), !alias.scope !12872, !noalias !12829
  store float 3.402000e+38, ptr %i.dx, align 8, !alias.scope !12875, !noalias !12829
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 4160
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.dw, i8 0, i64 1032, i1 false), !alias.scope !12872, !noalias !12829
  store float 3.402000e+38, ptr %i.dz, align 8, !alias.scope !12875, !noalias !12829
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 5200
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.dy, i8 0, i64 1032, i1 false), !alias.scope !12872, !noalias !12829
  store float 3.402000e+38, ptr %i.eb, align 8, !alias.scope !12875, !noalias !12829
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 6240
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ea, i8 0, i64 1032, i1 false), !alias.scope !12872, !noalias !12829
  store float 3.402000e+38, ptr %i.ed, align 8, !alias.scope !12875, !noalias !12829
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 7280
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ec, i8 0, i64 1032, i1 false), !alias.scope !12872, !noalias !12829
  store float 3.402000e+38, ptr %i.ef, align 8, !alias.scope !12875, !noalias !12829
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 8320 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ee, i8 0, i64 1032, i1 false), !alias.scope !12872, !noalias !12829
  store float 3.402000e+38, ptr %i.eh, align 8, !alias.scope !12875, !noalias !12829
  %i.ei = icmp eq ptr %i.eg, %i.dl
  br i1 %i.ei, label %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h21afd52017b8c5bfE.exit, label %.lr.ph.i.i

_ZN6brotli3enc9metablock24InitContextBlockSplitter17h21afd52017b8c5bfE.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.sroa.12.sroa.0, i8 0, i64 104, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h21afd52017b8c5bfE.exit, %_ZN6brotli3enc9metablock17InitBlockSplitter17h271ac000ae3363a5E.exit
  %.sroa.5.sroa.9.sroa.5.0 = phi i64 [ 0, %_ZN6brotli3enc9metablock17InitBlockSplitter17h271ac000ae3363a5E.exit ], [ 512, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h21afd52017b8c5bfE.exit ]
  %.sroa.5.sroa.10.0 = phi float [ 4.000000e+02, %_ZN6brotli3enc9metablock17InitBlockSplitter17h271ac000ae3363a5E.exit ], [ 0.000000e+00, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h21afd52017b8c5bfE.exit ]
  %.sroa.5.sroa.7.0 = phi i64 [ 0, %_ZN6brotli3enc9metablock17InitBlockSplitter17h271ac000ae3363a5E.exit ], [ %.zext.i, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h21afd52017b8c5bfE.exit ]
  %.sroa.5.sroa.6.0 = phi i64 [ 512, %_ZN6brotli3enc9metablock17InitBlockSplitter17h271ac000ae3363a5E.exit ], [ %7, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h21afd52017b8c5bfE.exit ]
  %.sroa.013.0 = phi i64 [ 0, %_ZN6brotli3enc9metablock17InitBlockSplitter17h271ac000ae3363a5E.exit ], [ 1, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h21afd52017b8c5bfE.exit ] ; 2 uses
  store i64 %.sroa.013.0, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0, i64 16, i1 false)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 256, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.5.sroa.6.0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.sroa.5.sroa.7.0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 512, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  store i64 0, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.sroa.5.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  store i64 %.sroa.5.sroa.9.sroa.5.0, ptr %.sroa.5.sroa.9.sroa.5.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.sroa.6.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6, i64 16, i1 false)
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store float %.sroa.5.sroa.10.0, ptr %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i32 0, ptr %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.sroa.12.sroa.0, i64 104, i1 false)
  %.sroa.5.sroa.12.sroa.4.0..sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store float 4.000000e+02, ptr %.sroa.5.sroa.12.sroa.4.0..sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.9.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.12.sroa.0)
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 192 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 248 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12884)
  %i.em = lshr i64 %12, 10                        ; 6 uses
  %i.en = add nuw nsw i64 %i.em, 1                ; 4 uses
  %.sroa.0.0.i.i76 = tail call noundef i64 @llvm.umin.i64(i64 %i.en, i64 257) ; 5 uses
  %.val58.i77 = load ptr, ptr %i.ej, align 8, !alias.scope !12879, !noalias !12886, !nonnull !4, !align !132, !noundef !4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 3 uses
  %.val59.i78 = load i64, ptr %i.eo, align 8, !alias.scope !12879, !noalias !12886, !noundef !4 ; 5 uses
  %.not.i79 = icmp ugt i64 %.val59.i78, %i.em
  br i1 %.not.i79, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i85", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ep = icmp eq i64 %.val59.i78, 0              ; 2 uses
  %spec.select.i80 = select i1 %i.ep, i64 %i.en, i64 %.val59.i78
  br label %bb.ac

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i85": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i84", %.thread14.i112, %bb.aa
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %.val46.i86 = load ptr, ptr %i.eq, align 8, !alias.scope !12879, !noalias !12886, !nonnull !4, !align !131, !noundef !4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %.val47.i87 = load i64, ptr %i.er, align 8, !alias.scope !12879, !noalias !12886, !noundef !4 ; 4 uses
  %.not28.i88 = icmp ugt i64 %.val47.i87, %i.em
  br i1 %.not28.i88, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i95", label %bb.ae

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.06.1.i81 = phi i64 [ %spec.select.i80, %bb.ab ], [ %i.es, %bb.ac ] ; 6 uses
  %.not26.i82 = icmp ugt i64 %.sroa.06.1.i81, %i.em
  %i.es = shl nuw nsw i64 %.sroa.06.1.i81, 1
  br i1 %.not26.i82, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83, label %bb.ac

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83: ; preds = %bb.ac
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12888
  %i.et = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.06.1.i81, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !12888 ; 4 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %.noexc.i113, label %bb.ad

.noexc.i113:                                      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.06.1.i81, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !12894
  unreachable

bb.ad:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83
  br i1 %i.ep, label %.thread14.i112, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i84"

.thread14.i112:                                   ; preds = %bb.ad
  store ptr %i.et, ptr %i.ej, align 8, !alias.scope !12879, !noalias !12886
  store i64 %.sroa.06.1.i81, ptr %i.eo, align 8, !alias.scope !12879, !noalias !12886
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i85"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i84": ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.et, ptr nonnull readonly align 1 %.val58.i77, i64 %.val59.i78, i1 false), !alias.scope !12895, !noalias !12899
  store ptr %i.et, ptr %i.ej, align 8, !alias.scope !12879, !noalias !12886
  store i64 %.sroa.06.1.i81, ptr %i.eo, align 8, !alias.scope !12879, !noalias !12886
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.val58.i77, i64 noundef %.val59.i78, i64 noundef 1) #45, !noalias !12894
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i85"

bb.ae:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i85"
  %i.ev = icmp eq i64 %.val47.i87, 0              ; 2 uses
  %spec.select15.i89 = select i1 %i.ev, i64 %i.en, i64 %.val47.i87
  br label %bb.ag

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i95": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i94", %bb.aj, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i85"
  %i.ew = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i64 %i.en, ptr %i.ew, align 8, !alias.scope !12879, !noalias !12886
  store i64 %.sroa.0.0.i.i76, ptr %i.el, align 8, !alias.scope !12884, !noalias !12901
  %i.ex = mul nuw nsw i64 %.sroa.0.0.i.i76, 2832  ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12902
  %i.ey = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ex, i64 noundef range(i64 1, 9) 8) #45, !noalias !12902 ; 7 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.af, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i.i"

bb.af:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i95"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !12910
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i95"
  %.not16.i96 = icmp eq i64 %i.em, 0
  br i1 %.not16.i96, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17ha9b306497dc813fbE.exit.i", label %.lr.ph.i.i.i.i97.preheader

.lr.ph.i.i.i.i97.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i.i"
  %i.fa = add nsw i64 %.sroa.0.0.i.i76, -1        ; 2 uses
  %i.fb = add nsw i64 %.sroa.0.0.i.i76, -2
  %xtraiter573 = and i64 %i.fa, 7                 ; 3 uses
  %i.fc = icmp ult i64 %i.fb, 7
  br i1 %i.fc, label %.lr.ph.i.i.i.i97.epil.preheader, label %.lr.ph.i.i.i.i97.preheader.new

.lr.ph.i.i.i.i97.preheader.new:                   ; preds = %.lr.ph.i.i.i.i97.preheader
  %unroll_iter578 = and i64 %i.fa, -8
  br label %.lr.ph.i.i.i.i97

.lr.ph.i.i.i.i97:                                 ; preds = %.lr.ph.i.i.i.i97, %.lr.ph.i.i.i.i97.preheader.new
  %.sroa.0.08.i.i.i.i98 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i97.preheader.new ], [ %i.fk, %.lr.ph.i.i.i.i97 ] ; 17 uses
  %niter579 = phi i64 [ 0, %.lr.ph.i.i.i.i97.preheader.new ], [ %niter579.next.7, %.lr.ph.i.i.i.i97 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i98, i8 0, i64 2824, i1 false), !noalias !12894
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100, align 8, !noalias !12911
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fd, i8 0, i64 2824, i1 false), !noalias !12894
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.1, align 8, !noalias !12911
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fe, i8 0, i64 2824, i1 false), !noalias !12894
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.2, align 8, !noalias !12911
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ff, i8 0, i64 2824, i1 false), !noalias !12894
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.3, align 8, !noalias !12911
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fg, i8 0, i64 2824, i1 false), !noalias !12894
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.4, align 8, !noalias !12911
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fh, i8 0, i64 2824, i1 false), !noalias !12894
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.5, align 8, !noalias !12911
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fi, i8 0, i64 2824, i1 false), !noalias !12894
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.6, align 8, !noalias !12911
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fj, i8 0, i64 2824, i1 false), !noalias !12894
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.7, align 8, !noalias !12911
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 22656 ; 3 uses
  %niter579.next.7 = add i64 %niter579, 8         ; 2 uses
  %niter579.ncmp.7 = icmp eq i64 %niter579.next.7, %unroll_iter578
  br i1 %niter579.ncmp.7, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17ha9b306497dc813fbE.exit.i.loopexit.unr-lcssa", label %.lr.ph.i.i.i.i97

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17ha9b306497dc813fbE.exit.i.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i.i.i97
  %lcmp.mod575.not = icmp eq i64 %xtraiter573, 0
  br i1 %lcmp.mod575.not, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17ha9b306497dc813fbE.exit.i", label %.lr.ph.i.i.i.i97.epil.preheader

.lr.ph.i.i.i.i97.epil.preheader:                  ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17ha9b306497dc813fbE.exit.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i97.preheader
  %.sroa.0.08.i.i.i.i98.epil.init = phi ptr [ %i.ey, %.lr.ph.i.i.i.i97.preheader ], [ %i.fk, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17ha9b306497dc813fbE.exit.i.loopexit.unr-lcssa" ]
  %lcmp.mod577 = icmp ne i64 %xtraiter573, 0
  tail call void @llvm.assume(i1 %lcmp.mod577)
  br label %.lr.ph.i.i.i.i97.epil

.lr.ph.i.i.i.i97.epil:                            ; preds = %.lr.ph.i.i.i.i97.epil, %.lr.ph.i.i.i.i97.epil.preheader
  %.sroa.0.08.i.i.i.i98.epil = phi ptr [ %i.fl, %.lr.ph.i.i.i.i97.epil ], [ %.sroa.0.08.i.i.i.i98.epil.init, %.lr.ph.i.i.i.i97.epil.preheader ] ; 3 uses
  %epil.iter574 = phi i64 [ %epil.iter574.next, %.lr.ph.i.i.i.i97.epil ], [ 0, %.lr.ph.i.i.i.i97.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i98.epil, i8 0, i64 2824, i1 false), !noalias !12894
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.epil, align 8, !noalias !12911
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98.epil, i64 2832 ; 2 uses
  %epil.iter574.next = add i64 %epil.iter574, 1   ; 2 uses
  %epil.iter574.cmp.not = icmp eq i64 %epil.iter574.next, %xtraiter573
  br i1 %epil.iter574.cmp.not, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17ha9b306497dc813fbE.exit.i", label %.lr.ph.i.i.i.i97.epil, !llvm.loop !12914

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17ha9b306497dc813fbE.exit.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17ha9b306497dc813fbE.exit.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i97.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i102 = phi ptr [ %i.ey, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i.i" ], [ %i.fk, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17ha9b306497dc813fbE.exit.i.loopexit.unr-lcssa" ], [ %i.fl, %.lr.ph.i.i.i.i97.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i103 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i102, i64 2824
end_hunk_9
