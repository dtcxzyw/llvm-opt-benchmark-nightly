Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.01?download=true
inline.NumInlined: 3173
inline.NumDeleted: 1166
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN4anki5decks4tree26add_collapsed_and_filtered17hfe8ee8eabc0f2751E:bb.a
  store i8 %i.ak, ptr %i.aj, align 1
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h400e35a2a9291cb1E.exit.thread"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h400e35a2a9291cb1E.exit.thread": ; preds = %._crit_edge.i.i, %bb.a, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h400e35a2a9291cb1E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !noundef !11 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ao, 104
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h400e35a2a9291cb1E.exit.thread", %.lr.ph
  %.sroa.02.010 = phi ptr [ %i.ar, %.lr.ph ], [ %i.am, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h400e35a2a9291cb1E.exit.thread" ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.02.010, i64 104 ; 2 uses
  call void @_ZN4anki5decks4tree26add_collapsed_and_filtered17hfe8ee8eabc0f2751E(ptr noalias noundef nonnull align 8 dereferenceable(104) %.sroa.02.010, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, i1 noundef zeroext %2)
  %i.as = icmp eq ptr %i.ar, %i.ap
  br i1 %i.as, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h400e35a2a9291cb1E.exit.thread"
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki5decks4tree30sum_counts_and_apply_limits_v317h18f4b4789edc273cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([20 x i8]) align 4 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef align 4 captures(none) dead_on_return dereferenceable(12) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [20 x i8], align 4                ; 8 uses
  %i.c = alloca [12 x i8], align 4                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [12 x i8], align 4                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i64, ptr %i.f, align 8, !noundef !11
  store i64 %i.g, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1077, !noalias !1078, !noundef !11
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = call noundef i64 @_ZN4core4hash11BuildHasher8hash_one17ha7801dd089d4ec1dE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %i.m = lshr i64 %i.l, 57
  %i.n = trunc nuw nsw i64 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1081, !noalias !1082, !noundef !11 ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !alias.scope !1081, !noalias !1082, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.n, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ah, %bb.e ]
  %.pn.i.i = phi i64 [ %i.l, %bb.b ], [ %i.ai, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.p      ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.r, align 1, !noalias !1083 ; 2 uses
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.t = bitcast <16 x i1> %i.s to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.t, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ag, %bb.d ], [ %i.t, %bb.c ] ; 3 uses
  %i.u = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = add i64 %.sroa.01.0.i.i.i, %i.v
  %i.x = and i64 %i.w, %i.p
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [24 x i8], ptr %i.q, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -24
  %i.ab = call noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hbd2a7232015fe09dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa), !noalias !1084
  br i1 %i.ab, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h426822eea4b774aeE.exit", label %bb.d, !prof !17

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %select.unfold, !prof !18

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.af = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ag = and i16 %i.af, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ah = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ai = add i64 %.sroa.01.0.i.i.i, %i.ah
  br label %bb.c

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h426822eea4b774aeE.exit": ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.z, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.aj, i64 12, i1 false)
  br label %bb.f

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  store i32 9999, ptr %i.e, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 9999, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 0, ptr %i.al, align 4
  br label %bb.f

bb.f:                                             ; preds = %select.unfold, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h426822eea4b774aeE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load i8, ptr %i.am, align 4, !range !33, !noundef !11
  %.not7 = icmp eq i8 %i.an, 2
  br i1 %.not7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  call void @_ZN4anki5decks6limits15RemainingLimits6cap_to17h8ef95628624a3a0fE(ptr noalias noundef nonnull align 4 dereferenceable(12) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !11 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !noundef !11 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.at = load i32, ptr %i.as, align 8, !noundef !11 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.av = load i32, ptr %i.au, align 4, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !11 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !11 ; 2 uses
  %.idx = mul nuw nsw i64 %i.bb, 104
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.01.018 = phi i32 [ %i.ax, %.lr.ph ], [ %i.bv, %bb.i ]
  %.sroa.03.017 = phi ptr [ %i.az, %.lr.ph ], [ %i.bi, %bb.i ] ; 3 uses
  %.sroa.0.016 = phi i32 [ %i.ap, %.lr.ph ], [ %i.bk, %bb.i ]
  %.sroa.5.015 = phi i32 [ %i.ar, %.lr.ph ], [ %i.bm, %bb.i ]
  %.sroa.7.014 = phi i32 [ %i.at, %.lr.ph ], [ %i.bo, %bb.i ]
  %.sroa.9.013 = phi i32 [ %i.av, %.lr.ph ], [ %i.bq, %bb.i ]
  %.sroa.11.012 = phi i32 [ %i.ax, %.lr.ph ], [ %i.bs, %bb.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.017, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  call void @_ZN4anki5decks4tree30sum_counts_and_apply_limits_v317h18f4b4789edc273cE(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(104) %.sroa.03.017, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i32, ptr %i.b, align 4, !noundef !11
  %i.bk = add i32 %i.bj, %.sroa.0.016             ; 2 uses
  %i.bl = load i32, ptr %i.be, align 4, !noundef !11
  %i.bm = add i32 %i.bl, %.sroa.5.015             ; 2 uses
  %i.bn = load i32, ptr %i.bf, align 4, !noundef !11
  %i.bo = add i32 %i.bn, %.sroa.7.014             ; 2 uses
  %i.bp = load i32, ptr %i.bg, align 4, !noundef !11
  %i.bq = add i32 %i.bp, %.sroa.9.013             ; 2 uses
  %i.br = load i32, ptr %i.bh, align 4, !noundef !11
  %i.bs = add i32 %i.br, %.sroa.11.012            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.03.017, i64 92
  %i.bu = load i32, ptr %i.bt, align 4, !noundef !11
  %i.bv = add i32 %i.bu, %.sroa.01.018            ; 2 uses
  %i.bw = icmp eq ptr %i.bi, %i.bc
  br i1 %i.bw, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.i, %bb.h
  %.sroa.11.0.lcssa = phi i32 [ %i.ax, %bb.h ], [ %i.bs, %bb.i ]
  %.sroa.9.0.lcssa = phi i32 [ %i.av, %bb.h ], [ %i.bq, %bb.i ]
  %.sroa.7.0.lcssa = phi i32 [ %i.at, %bb.h ], [ %i.bo, %bb.i ] ; 2 uses
  %.sroa.5.0.lcssa = phi i32 [ %i.ar, %bb.h ], [ %i.bm, %bb.i ]
  %.sroa.0.0.lcssa = phi i32 [ %i.ap, %bb.h ], [ %i.bk, %bb.i ]
  %.sroa.01.0.lcssa = phi i32 [ %i.ax, %bb.h ], [ %i.bv, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.0.lcssa, ptr %.sroa.7.0..sroa_idx, align 4, !alias.scope !1088, !noalias !1087
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.11.0.lcssa, ptr %.sroa.11.0..sroa_idx, align 4, !alias.scope !1088, !noalias !1087
  %i.bx = load i32, ptr %i.e, align 4, !alias.scope !1087, !noalias !1088, !noundef !11 ; 2 uses
  %.sroa.0.0.i.i = call noundef i32 @llvm.umin.i32(i32 %i.bx, i32 %.sroa.9.0.lcssa) ; 3 uses
  store i32 %.sroa.0.0.i.i, ptr %.sroa.9.0..sroa_idx, align 4, !alias.scope !1085, !noalias !1089
  %4 = call i32 @llvm.usub.sat.i32(i32 %i.bx, i32 %.sroa.0.0.i.i) ; 2 uses
  %.sroa.0.0.i4.i = call noundef i32 @llvm.umin.i32(i32 %4, i32 %.sroa.5.0.lcssa) ; 3 uses
  store i32 %.sroa.0.0.i4.i, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !1085, !noalias !1089
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !alias.scope !1087, !noalias !1088, !noundef !11
  %.sroa.0.0.i5.i = call noundef i32 @llvm.umin.i32(i32 %i.bz, i32 %.sroa.0.0.lcssa) ; 3 uses
  store i32 %.sroa.0.0.i5.i, ptr %0, align 4, !alias.scope !1085, !noalias !1089
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cb = load i8, ptr %i.ca, align 4, !range !12, !alias.scope !1087, !noalias !1088, !noundef !11
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.j, label %_ZN4anki5decks4tree12NodeCountsV36capped17h783337b9b6388c24E.exit

bb.j:                                             ; preds = %._crit_edge
  %5 = call i32 @llvm.usub.sat.i32(i32 %4, i32 %.sroa.0.0.i4.i)
  %.sroa.0.0.i6.i = call noundef i32 @llvm.umin.i32(i32 %5, i32 %.sroa.0.0.i5.i) ; 2 uses
  store i32 %.sroa.0.0.i6.i, ptr %0, align 4, !alias.scope !1085, !noalias !1089
  br label %_ZN4anki5decks4tree12NodeCountsV36capped17h783337b9b6388c24E.exit

_ZN4anki5decks4tree12NodeCountsV36capped17h783337b9b6388c24E.exit: ; preds = %._crit_edge, %bb.j
  %i.cd = phi i32 [ %.sroa.0.0.i5.i, %._crit_edge ], [ %.sroa.0.0.i6.i, %bb.j ]
  store i32 %i.cd, ptr %i.ao, align 4
  store i32 %.sroa.0.0.i4.i, ptr %i.aq, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cf = add i32 %.sroa.0.0.i.i, %.sroa.7.0.lcssa
  store i32 %i.cf, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 %.sroa.01.0.lcssa, ptr %i.cg, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..schema11..TodayAmountSchema11$GT$11deserialize17h5f9c37534c4cc109E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_seq17h97788b717cd9bd14E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  %i.c = load i64, ptr %i.b, align 8, !range !10, !noundef !11
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !align !14, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.h = call { i32, i32 } @"_ZN137_$LT$anki..decks..schema11..TodayAmountSchema11$u20$as$u20$core..convert..From$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$$GT$4from17ha4575b47d4dca2e3E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = extractvalue { i32, i32 } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.l, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..schema11..TodayAmountSchema11$GT$11deserialize17hbe92c8b3474fe742E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h7a39165e2ae533a9E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.c = load i64, ptr %i.b, align 8, !range !10, !noundef !11
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !align !14, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.h = call { i32, i32 } @"_ZN137_$LT$anki..decks..schema11..TodayAmountSchema11$u20$as$u20$core..convert..From$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$$GT$4from17ha4575b47d4dca2e3E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = extractvalue { i32, i32 } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.l, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki5decks8schema111_107_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..schema11..FilteredSearchTermSchema11$GT$11deserialize17h0652a92da808b702E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_struct17h84f5501ed3a068e5E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @102, i64 noundef 26, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @106, i64 noundef 3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN4anki5decks8schema111_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..decks..schema11..DeckSchema11$GT$9serialize17ha69f40d66fc25a19E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 15 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 15 uses
  %i.e = load i64, ptr %0, align 8, !range !10, !noundef !11
  %.not = icmp eq i64 %i.e, -9223372036854775808
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !1105, !noalias !1106, !nonnull !11, !align !14, !noundef !11
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5, i64 noundef 1), !noalias !1107
  store i8 0, ptr %i.d, align 8, !noalias !1103
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 1, !noalias !1103
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1103
  %i.f = call fastcc noundef align 8 ptr @"_ZN4anki5decks8schema111_98_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..decks..schema11..DeckCommonSchema11$GT$9serialize17h8a7304cb48849bb0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %0, ptr noalias noundef align 8 dereferenceable(16) %i.d) ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..decks..schema11..FilteredDeckSchema11$GT$9serialize17h97b666a5efc0b903E.exit"

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1db9aeca348d98e8E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @58, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.g) ; 2 uses
  %.not43.i = icmp eq ptr %i.h, null
  br i1 %.not43.i, label %bb.d, label %"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..decks..schema11..FilteredDeckSchema11$GT$9serialize17h97b666a5efc0b903E.exit"

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hcded3f3c89919243E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @59, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i) ; 2 uses
  %.not44.i = icmp eq ptr %i.j, null
  br i1 %.not44.i, label %bb.e, label %"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..decks..schema11..FilteredDeckSchema11$GT$9serialize17h97b666a5efc0b903E.exit"

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.l = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1db9aeca348d98e8E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @60, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.k) ; 2 uses
  %.not45.i = icmp eq ptr %i.l, null
  br i1 %.not45.i, label %bb.f, label %"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..decks..schema11..FilteredDeckSchema11$GT$9serialize17h97b666a5efc0b903E.exit"

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h281f08776a8e7c86E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @61, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m) ; 2 uses
  %.not46.i = icmp eq ptr %i.n, null
  br i1 %.not46.i, label %bb.g, label %"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..decks..schema11..FilteredDeckSchema11$GT$9serialize17h97b666a5efc0b903E.exit"

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h6783121ecf5dd621E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @62, i64 noundef 12, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.o) ; 2 uses
  %.not47.i = icmp eq ptr %i.p, null
  br i1 %.not47.i, label %bb.h, label %"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..decks..schema11..FilteredDeckSchema11$GT$9serialize17h97b666a5efc0b903E.exit"

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.r = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h6783121ecf5dd621E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @63, i64 noundef 16, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.q) ; 2 uses
  %.not48.i = icmp eq ptr %i.r, null
  br i1 %.not48.i, label %bb.i, label %"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..decks..schema11..FilteredDeckSchema11$GT$9serialize17h97b666a5efc0b903E.exit"

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h6783121ecf5dd621E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @64, i64 noundef 15, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.s) ; 2 uses
  %.not49.i = icmp eq ptr %i.t, null
  br i1 %.not49.i, label %bb.j, label %"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..decks..schema11..FilteredDeckSchema11$GT$9serialize17h97b666a5efc0b903E.exit"

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.v = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h6783121ecf5dd621E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @65, i64 noundef 15, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.u) ; 2 uses
  %.not50.i = icmp eq ptr %i.v, null
  br i1 %.not50.i, label %bb.k, label %"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..decks..schema11..FilteredDeckSchema11$GT$9serialize17h97b666a5efc0b903E.exit"

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !1103
  call fastcc void @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h3d4573986ab19537E"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1103
  br label %"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..decks..schema11..FilteredDeckSchema11$GT$9serialize17h97b666a5efc0b903E.exit"

"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..decks..schema11..FilteredDeckSchema11$GT$9serialize17h97b666a5efc0b903E.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i = phi ptr [ null, %bb.k ], [ %i.v, %bb.j ], [ %i.t, %bb.i ], [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ %i.n, %bb.f ], [ %i.p, %bb.g ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1103
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1109
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  %.val.i.i1 = load ptr, ptr %1, align 8, !alias.scope !1111, !noalias !1112, !nonnull !11, !align !14, !noundef !11
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5, i64 noundef 1), !noalias !1113
  store i8 0, ptr %i.b, align 8, !noalias !1109
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i2, align 1, !noalias !1109
  %.sroa.5.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx.i3, align 8, !noalias !1109
  %i.x = call fastcc noundef align 8 ptr @"_ZN4anki5decks8schema111_98_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..decks..schema11..DeckCommonSchema11$GT$9serialize17h8a7304cb48849bb0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.w, ptr noalias noundef align 8 dereferenceable(16) %i.b) ; 2 uses
  %.not.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i4, label %bb.m, label %"_ZN4anki5decks8schema111_98_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..decks..schema11..NormalDeckSchema11$GT$9serialize17h189d573794c0559dE.exit"

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
end_hunk_0
begin_hunk_1_@"_ZN7difflib15sequencematcher24SequenceMatcher$LT$T$GT$3new17h3d0cf86487f71872E":bb.a
          to label %.noexc15 unwind label %bb.l

.noexc15:                                         ; preds = %bb.z
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.h, ptr %i.bl, align 8, !noalias !6692
  invoke void @"_ZN136_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17hf77273d54ccbbc12E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.f)
          to label %.noexc16 unwind label %bb.l

.noexc16:                                         ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !6692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6692
  br label %bb.y

.thread.i.i:                                      ; preds = %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !6686
  br label %.body

bb.aa:                                            ; preds = %bb.v
  %i.bn = load ptr, ptr %i.d, align 8, !noalias !6692, !noundef !11 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !6692 ; 2 uses
  br i1 %.not11.i.i, label %.thread38.i.i, label %bb.ab

.thread38.i.i:                                    ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6692
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.525.0.copyload.i.i = load i64, ptr %.sroa.525.0..sroa_idx.i.i, align 8, !noalias !6692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6693
  store ptr %i.bn, ptr %i.a, align 8, !noalias !6693
  store i64 0, ptr %i.ba, align 8, !noalias !6693
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !6693
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !6693
  %i.bp = invoke noundef nonnull ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17hc701ba4ed00330ecE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bo, i64 noundef %.sroa.525.0.copyload.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc.i.i unwind label %bb.ae, !noalias !6690

.noexc.i.i:                                       ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6693
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc.i.i, %.thread38.i.i
  %.pn.i.i.i = phi ptr [ %i.bp, %.noexc.i.i ], [ %i.bo, %.thread38.i.i ] ; 3 uses
  %.sroa.0.0.i13.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -24 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !6694, !noalias !6690, !noundef !11 ; 3 uses
  %i.bs = load i64, ptr %.sroa.0.0.i13.i.i, align 8, !range !19, !alias.scope !6694, !noalias !6690, !noundef !11
  %i.bt = icmp eq i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.ad, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha76d244aa386b255E.exit.i.i"

bb.ad:                                            ; preds = %bb.ac
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha2bf3c26a223e325E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i13.i.i)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha76d244aa386b255E.exit.i.i" unwind label %bb.ae, !noalias !6690

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha76d244aa386b255E.exit.i.i": ; preds = %bb.ad, %bb.ac
  %i.bu = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -16
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !6694, !noalias !6690, !nonnull !11, !noundef !11
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.br
  store i64 %.sroa.7.043.i.i, ptr %i.bw, align 8, !noalias !6690
  %i.bx = add i64 %i.br, 1
  store i64 %i.bx, ptr %i.bq, align 8, !alias.scope !6694, !noalias !6690
  %i.by = icmp eq ptr %i.bb, %i.ay
  br i1 %i.by, label %._crit_edge.i.i, label %bb.v

bb.ae:                                            ; preds = %bb.ad, %bb.ab, %bb.v
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcf89600df0222876E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %.body unwind label %bb.af, !noalias !6690

bb.af:                                            ; preds = %bb.ae
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #45, !noalias !6690
  unreachable

bb.ag:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !6686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.o, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.ah:                                            ; preds = %bb.aj, %.body, %bb.b
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #45
  unreachable

bb.ai:                                            ; preds = %bb.aj, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.q, %bb.aj ]
  resume { ptr, i32 } %.pn

bb.aj:                                            ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$difflib..sequencematcher..Match$GT$$GT$$GT$17h8498684080bdd5fdE"(ptr noalias noundef align 8 dereferenceable(24) %i.n) #44
          to label %bb.ai unwind label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7matchit4tree13Node$LT$T$GT$12insert_route17h6fc937360125afdfE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [136 x i8], align 8               ; 18 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [136 x i8], align 8               ; 22 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [136 x i8], align 8               ; 14 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 3 uses
  %i.j = alloca [136 x i8], align 8               ; 21 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 13 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 5 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 5 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_ZN7matchit4tree13find_wildcard17h41f9ea299bf8a390E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.t = load i64, ptr %i.s, align 8, !range !20, !noundef !11
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.3110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5116.sroa.3.0..sroa.5116.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.5116.sroa.4.0..sroa.5116.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 133
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.sroa.388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 133
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.3110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5116.sroa.3.0..sroa.5116.0..sroa_idx117.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5116.sroa.4.0..sroa.5116.0..sroa_idx117.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.396.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.499.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 133
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.2150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.3151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.sroa.388.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.491.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  br label %bb.a

._crit_edge:                                      ; preds = %bb.aj, %.split
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.558.0.copyload = load i64, ptr %.sroa.558.0..sroa_idx, align 8
  %i.au = load <2 x i64>, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store <2 x i64> %i.au, ptr %0, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.558.0.copyload, ptr %.sroa.361.0..sroa_idx, align 8
  br label %bb.f

bb.a:                                             ; preds = %.lr.ph, %bb.aj
  %.sroa.0.0261 = phi ptr [ %1, %.lr.ph ], [ %i.dk, %bb.aj ] ; 18 uses
  %.sroa.051.0.copyload = load i64, ptr %i.v, align 8
  %.sroa.452.0.copyload = load i64, ptr %.sroa.452.0..sroa_idx, align 8 ; 11 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.av = trunc nuw i64 %.sroa.051.0.copyload to i1
  br i1 %i.av, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aw = load ptr, ptr %2, align 8, !nonnull !11, !align !16, !noundef !11
  %i.ax = load i64, ptr %i.w, align 8, !noundef !11 ; 3 uses
  %i.ay = icmp ult i64 %.sroa.5.0.copyload, %.sroa.452.0.copyload
  br i1 %i.ay, label %bb.i, label %bb.g, !prof !18

bb.c:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0261, i64 120
  store i32 1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0261, i64 124
  store i32 %3, ptr %i.ba, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_ZN7matchit6escape12UnescapedRef8to_owned17hb22d947067401a1cE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$matchit..escape..UnescapedRoute$GT$17h6094b72f9c7f61b9E"(ptr noalias noundef align 8 dereferenceable(48) %.sroa.0.0261)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0261, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0261, ptr %i.bc, align 8
  store i64 -9223372036854775805, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.t, %bb.n, %bb.ah, %bb.e
  ret void

bb.g:                                             ; preds = %bb.b
  %i.bd = sub nuw i64 %.sroa.5.0.copyload, %.sroa.452.0.copyload ; 4 uses
  %.not = icmp ugt i64 %.sroa.5.0.copyload, %i.ax
  br i1 %.not, label %bb.i, label %bb.h, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.be = icmp ugt i64 %i.bd, 1
  br i1 %i.be, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g, %bb.b
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %.sroa.452.0.copyload, i64 noundef %.sroa.5.0.copyload, i64 noundef %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.452.0.copyload ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !11
  %i.bi = icmp eq i8 %i.bh, 42
  br i1 %i.bi, label %bb.l, label %bb.x

bb.k:                                             ; preds = %bb.h
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef 1, i64 noundef %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #46
  unreachable

bb.l:                                             ; preds = %bb.j
  %.not171 = icmp eq i64 %.sroa.5.0.copyload, %i.ax
  br i1 %.not171, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.not172 = icmp eq i64 %.sroa.452.0.copyload, 0
  br i1 %.not172, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.l
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.f

bb.o:                                             ; preds = %bb.r, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_ZN7matchit6escape12UnescapedRef8to_owned17hb22d947067401a1cE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.475.0..sroa_idx, align 8
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.576.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store i32 0, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  store i8 0, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 0, ptr %.sroa.567.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 133
  store i8 3, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  store i64 0, ptr %i.bn, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i32 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.570.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 0, ptr %.sroa.564.0..sroa_idx, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store i32 1, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 132
  store i8 0, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 133
  store i8 2, ptr %i.bt, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store i32 1, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 124
  store i32 %3, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$matchit..escape..UnescapedRoute$GT$17h6094b72f9c7f61b9E"(ptr noalias noundef align 8 dereferenceable(48) %i.j)
          to label %bb.s unwind label %bb.v

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_ZN7matchit6escape12UnescapedRef11slice_until17hb5973989acc309dcE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.452.0.copyload)
  call void @_ZN7matchit6escape12UnescapedRef8to_owned17hb22d947067401a1cE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$matchit..escape..UnescapedRoute$GT$17h6094b72f9c7f61b9E"(ptr noalias noundef align 8 dereferenceable(48) %.sroa.0.0261)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0261, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_ZN7matchit6escape12UnescapedRef9slice_off17h1d65b34418166e21E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.452.0.copyload)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.o

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bz = call fastcc noundef i64 @"_ZN7matchit4tree13Node$LT$T$GT$9add_child17h23dea97a8051740eE"(ptr noalias noundef align 8 dereferenceable(136) %.sroa.0.0261, ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.l) ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0261, i64 132
  store i8 1, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0261, i64 88
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !11 ; 2 uses
  %i.cd = icmp ult i64 %i.bz, %i.cc
  br i1 %i.cd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0261, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !11, !noundef !11
  %i.cg = getelementptr inbounds nuw [136 x i8], ptr %i.cf, i64 %i.bz
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %i.ch, align 8
  store i64 -9223372036854775805, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.f

bb.u:                                             ; preds = %bb.s
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bz, i64 noundef %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #46
  unreachable

bb.v:                                             ; preds = %bb.o
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$matchit..tree..Node$LT$axum..routing..RouteId$GT$$GT$17h56efc3dce922ca2eE"(ptr noalias noundef align 8 dereferenceable(136) %i.l) #44
          to label %bb.am unwind label %bb.w

bb.w:                                             ; preds = %bb.al, %bb.v
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #45
  unreachable

bb.x:                                             ; preds = %bb.j
  %i.ck = load i8, ptr %i.bf, align 1, !noundef !11
  %i.cl = icmp eq i8 %i.ck, 123
  br i1 %i.cl, label %bb.y, label %bb.z, !prof !17

bb.y:                                             ; preds = %bb.x
  %.not169 = icmp eq i64 %.sroa.452.0.copyload, 0
  br i1 %.not169, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr null, ptr %i.i, align 8
  call void @_ZN4core9panicking13assert_failed17hfc0a97da6ff0bcdeE(i8 noundef 0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.bf, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) @5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #46
  unreachable

bb.aa:                                            ; preds = %bb.ad, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.385.0 = call i64 @llvm.usub.sat.i64(i64 %.sroa.5.0.copyload, i64 %.sroa.452.0.copyload)
  call void @_ZN7matchit6escape12UnescapedRef11slice_until17hb5973989acc309dcE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.385.0)
  call void @_ZN7matchit6escape12UnescapedRef8to_owned17hb22d947067401a1cE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3110.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4113.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5116.sroa.3.0..sroa.5116.0..sroa_idx.sroa_idx, align 8
  store i32 0, ptr %i.x, align 8
  store i8 0, ptr %i.y, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5116.sroa.4.0..sroa.5116.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.396.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.499.0..sroa_idx, align 8
  store i8 3, ptr %i.aa, align 1
  store i64 0, ptr %i.ab, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4103.0..sroa_idx, align 8
  store i32 0, ptr %i.ac, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5104.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.388.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.491.0..sroa_idx, align 8
  store i32 0, ptr %i.af, align 8
  store i8 0, ptr %i.ag, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  store i8 1, ptr %i.ai, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.cm = load i32, ptr %i.ad, align 4
  store i32 0, ptr %i.ak, align 8
  store i32 %i.cm, ptr %i.al, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$matchit..escape..UnescapedRoute$GT$17h6094b72f9c7f61b9E"(ptr noalias noundef align 8 dereferenceable(48) %i.c)
          to label %bb.ae unwind label %bb.al

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_ZN7matchit6escape12UnescapedRef11slice_until17hb5973989acc309dcE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.452.0.copyload)
  call void @_ZN7matchit6escape12UnescapedRef8to_owned17hb22d947067401a1cE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$matchit..escape..UnescapedRoute$GT$17h6094b72f9c7f61b9E"(ptr noalias noundef align 8 dereferenceable(48) %.sroa.0.0261)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0261, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_ZN7matchit6escape12UnescapedRef9slice_off17h1d65b34418166e21E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.452.0.copyload)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aa

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.co = call fastcc noundef i64 @"_ZN7matchit4tree13Node$LT$T$GT$9add_child17h23dea97a8051740eE"(ptr noalias noundef align 8 dereferenceable(136) %.sroa.0.0261, ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.e) ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0261, i64 132
  store i8 1, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0261, i64 88
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !11 ; 2 uses
  %i.cs = icmp ult i64 %i.co, %i.cr
  br i1 %i.cs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0261, i64 80
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !11, !noundef !11
  %i.cv = getelementptr inbounds nuw [136 x i8], ptr %i.cu, i64 %i.co ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 128 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !noundef !11
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 8
  %i.cz = load i64, ptr %i.w, align 8, !noundef !11
  %i.da = icmp ult i64 %i.bd, %i.cz
  br i1 %i.da, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.co, i64 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #46
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 120
  store i32 1, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 124
  store i32 %3, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.dd, align 8
  store i64 -9223372036854775805, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN7matchit6escape12UnescapedRef9slice_off17h1d65b34418166e21E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.a, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3110.0..sroa_idx111, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4113.0..sroa_idx114, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5116.sroa.3.0..sroa.5116.0..sroa_idx117.sroa_idx, align 8
  store i64 0, ptr %.sroa.5116.sroa.4.0..sroa.5116.0..sroa_idx117.sroa_idx, align 8
  store i32 1, ptr %i.an, align 8
  store i8 0, ptr %i.ao, align 4
  store i64 0, ptr %i.ap, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.396.0..sroa_idx97, align 8
  store i64 0, ptr %.sroa.499.0..sroa_idx100, align 8
  store i8 3, ptr %i.aq, align 1
  store i64 0, ptr %i.ar, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2150.0..sroa_idx, align 8
  store i32 0, ptr %i.as, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3151.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.388.0..sroa_idx89, align 8
  store i64 0, ptr %.sroa.491.0..sroa_idx92, align 8
  %i.de = call fastcc noundef i64 @"_ZN7matchit4tree13Node$LT$T$GT$9add_child17h23dea97a8051740eE"(ptr noalias noundef align 8 dereferenceable(136) %i.cv, ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.a) ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  %i.dg = load i64, ptr %i.df, align 8, !noundef !11 ; 2 uses
  %i.dh = icmp ult i64 %i.de, %i.dg
  br i1 %i.dh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !11, !noundef !11
  %i.dk = getelementptr inbounds nuw [136 x i8], ptr %i.dj, i64 %i.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_ZN7matchit4tree13find_wildcard17h41f9ea299bf8a390E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.dl = load i64, ptr %i.s, align 8, !range !20, !noundef !11
  %i.dm = trunc nuw i64 %i.dl to i1
  br i1 %i.dm, label %._crit_edge, label %bb.a

bb.ak:                                            ; preds = %bb.ai
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.de, i64 noundef %i.dg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #46
  unreachable

bb.al:                                            ; preds = %bb.aa
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$matchit..tree..Node$LT$axum..routing..RouteId$GT$$GT$17h56efc3dce922ca2eE"(ptr noalias noundef align 8 dereferenceable(136) %i.e) #44
          to label %bb.am unwind label %bb.w

.sink.split:                                      ; preds = %bb.ac, %bb.q, %bb.d
  %.sink = phi ptr [ %i.q, %bb.d ], [ %i.o, %bb.q ], [ %i.h, %bb.ac ]
  %.pn174.ph = phi { ptr, i32 } [ %i.bb, %bb.d ], [ %i.by, %bb.q ], [ %i.cn, %bb.ac ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0261, ptr noundef nonnull align 8 dereferenceable(48) %.sink, i64 48, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.v, %bb.al
  %.pn174 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.al ], [ %i.ci, %bb.v ], [ %.pn174.ph, %.sink.split ]
  resume { ptr, i32 } %.pn174
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 9223372036854775807) i64 @"_ZN7matchit4tree13Node$LT$T$GT$21update_child_priority17h63ed19893822c393E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, i64 noundef range(i64 0, 9223372036854775807) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 2 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %1, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #46
  unreachable

.split:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.g = getelementptr inbounds nuw [136 x i8], ptr %i.f, i64 %1
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !noundef !11
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.h, align 8
  %.not16 = icmp eq i64 %1, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %bb.h
  %.sroa.0.017 = phi i64 [ %i.k, %bb.h ], [ %1, %.split ] ; 3 uses
  %i.k = add nsw i64 %.sroa.0.017, -1             ; 3 uses
  %i.l = getelementptr inbounds nuw [136 x i8], ptr %i.f, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load i32, ptr %i.m, align 8, !noundef !11
  %i.o = icmp ult i32 %i.n, %i.j
  br i1 %i.o, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %.lr.ph, %.split
  %.sroa.0.0.lcssa = phi i64 [ 0, %.split ], [ %.sroa.0.017, %.lr.ph ], [ 0, %bb.h ] ; 6 uses
  %.not12 = icmp eq i64 %.sroa.0.0.lcssa, %1
  br i1 %.not12, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12rotate_right17hfeaff355ef16b312E.exit", label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i64, ptr %i.r, align 8, !noundef !11 ; 2 uses
  %i.t = icmp ult i64 %1, %i.s
  br i1 %i.t, label %bb.d, label %bb.e, !prof !17

end_hunk_1
