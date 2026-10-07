Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_auth-1051e21019a62c9e.meilisearch_auth.c6de6405da55fb51-cgu.0?download=true
inline.NumInlined: 2724
inline.NumDeleted: 1326
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 38
begin_hunk_0_@"_ZN10serde_json2de21Deserializer$LT$R$GT$14parse_exponent17he5bac8f23395cf23E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd218e3af67c68245E.exit15", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd218e3af67c68245E.exit15.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd218e3af67c68245E.exit15": ; preds = %bb.f, %bb.s
  %.sroa.06.033 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !729, !noundef !8
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd218e3af67c68245E.exit15.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd218e3af67c68245E.exit15.thread": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd218e3af67c68245E.exit15", %bb.s, %bb.f
  %.sroa.06.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.06.033, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd218e3af67c68245E.exit15" ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd218e3af67c68245E.exit15"
  %i.ag = add nuw i64 %i.ac, 1                    ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !730
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.06.033, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd218e3af67c68245E.exit15.thread"
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.06.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd218e3af67c68245E.exit15.thread"
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.06.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.011.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.021.i = tail call i32 @llvm.abs.i32(i32 %.sroa.011.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.021.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.023.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.011.0, %bb.j ] ; 2 uses
  %.sroa.04.022.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.022.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.011.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.021.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_ZN10serde_json2de5POW1017h13e2d2d3887eda26E, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !732, !noundef !8 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.023.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.022.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.023.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !732
  store i64 14, ptr %i.a, align 8, !noalias !732
  %i.aw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !732
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !731, !noalias !733
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h816f04b292b3dca3E.exit"

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.022.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.013.0.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.013.0.i, ptr %i.az, align 8, !alias.scope !731, !noalias !733
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h816f04b292b3dca3E.exit"

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !10

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !732
  store i64 14, ptr %i.b, align 8, !noalias !732
  %i.be = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !732
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !731, !noalias !733
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h816f04b292b3dca3E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h816f04b292b3dca3E.exit": ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !731, !noalias !733
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.t, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h816f04b292b3dca3E.exit"
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.06.033, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !17

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.06.033, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd218e3af67c68245E.exit15.thread", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd218e3af67c68245E.exit15"

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @"_ZN10serde_json2de21Deserializer$LT$R$GT$23parse_exponent_overflow17h51df52e48c0a303dE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0)
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h1bcf6c8f55886afeE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 2 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !777, !noalias !778, !noundef !8 ; 17 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !777, !noalias !778, !noundef !8 ; 10 uses
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.b, label %.thread40

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !777, !noalias !778, !nonnull !8, !align !13, !noundef !8 ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.t
  %i.aa = load i8, ptr %i.z, align 1, !noalias !779, !noundef !8 ; 2 uses
  switch i8 %i.aa, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !780

bb.c:                                             ; preds = %bb.b
  %i.ab = add i8 %i.aa, -48
  %or.cond = icmp ult i8 %i.ab, 10
  br i1 %or.cond, label %bb.aj, label %.thread40, !prof !19

bb.d:                                             ; preds = %bb.b
  %i.ac = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ac, ptr %i.s, align 8, !alias.scope !781
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %exitcond.not.i.not = icmp ult i64 %i.ac, %i.v
  br i1 %exitcond.not.i.not, label %bb.e, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i"

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !784, !noundef !8
  %i.af = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !785, !noalias !786
  %.not.i = icmp eq i8 %i.ae, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !19

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %exitcond.not.i.1 = icmp eq i64 %i.v, %i.af
  br i1 %exitcond.not.i.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !788, !noundef !8
  %i.ai = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !789, !noalias !786
  %.not.i.1 = icmp eq i8 %i.ah, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !19

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %exitcond.not.i.2 = icmp eq i64 %i.ai, %umax.i
  br i1 %exitcond.not.i.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !791, !noundef !8
  %i.al = add i64 %i.t, 4
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !792, !noalias !786
  %.not.i.2 = icmp eq i8 %i.ak, 108
  br i1 %.not.i.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit", label %bb.j, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i": ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !793
  store i64 5, ptr %i.f, align 8, !noalias !793
  %i.am = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !793
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.thread"

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !793
  store i64 9, ptr %i.e, align 8, !noalias !793
  %i.an = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !793
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.thread"

bb.k:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !795
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %umax.i20 = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %exitcond.not.i22.not = icmp ult i64 %i.ao, %i.v
  br i1 %exitcond.not.i22.not, label %bb.l, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i25"

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !798, !noundef !8
  %i.ar = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !799, !noalias !800
  %.not.i23 = icmp eq i8 %i.aq, 114
  br i1 %.not.i23, label %bb.m, label %bb.q, !prof !19

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  %exitcond.not.i22.1 = icmp eq i64 %i.v, %i.ar
  br i1 %exitcond.not.i22.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i25", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !802, !noundef !8
  %i.au = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !803, !noalias !800
  %.not.i23.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i23.1, label %bb.o, label %bb.q, !prof !19

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %exitcond.not.i22.2 = icmp eq i64 %i.au, %umax.i20
  br i1 %exitcond.not.i22.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i25", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !805, !noundef !8
  %i.ax = add i64 %i.t, 4
  store i64 %i.ax, ptr %i.s, align 8, !alias.scope !806, !noalias !800
  %.not.i23.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i23.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit26", label %bb.q, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i25": ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !807
  store i64 5, ptr %i.d, align 8, !noalias !807
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !807
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.thread"

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !807
  store i64 9, ptr %i.c, align 8, !noalias !807
  %i.az = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !807
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.thread"

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %umax.i28 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.v) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  %exitcond.not.i30.not = icmp ult i64 %i.ba, %i.v
  br i1 %exitcond.not.i30.not, label %bb.s, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i33"

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !812, !noundef !8
  %i.bd = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !813, !noalias !814
  %.not.i31 = icmp eq i8 %i.bc, 97
  br i1 %.not.i31, label %bb.t, label %bb.z, !prof !19

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  %exitcond.not.i30.1 = icmp eq i64 %i.v, %i.bd
  br i1 %exitcond.not.i30.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i33", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !816, !noundef !8
  %i.bg = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !817, !noalias !814
  %.not.i31.1 = icmp eq i8 %i.bf, 108
  br i1 %.not.i31.1, label %bb.v, label %bb.z, !prof !19

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %exitcond.not.i30.2 = icmp eq i64 %i.bg, %umax.i28
  br i1 %exitcond.not.i30.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i33", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !819, !noundef !8
  %i.bj = add i64 %i.t, 4                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !820, !noalias !814
  %.not.i31.2 = icmp eq i8 %i.bi, 115
  br i1 %.not.i31.2, label %bb.x, label %bb.z, !prof !19

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %exitcond.not.i30.3 = icmp eq i64 %i.bj, %umax.i28
  br i1 %exitcond.not.i30.3, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i33", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !822, !noundef !8
  %i.bm = add i64 %i.t, 5
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !823, !noalias !814
  %.not.i31.3 = icmp eq i8 %i.bl, 101
  br i1 %.not.i31.3, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit34", label %bb.z, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i33": ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !824
  store i64 5, ptr %i.b, align 8, !noalias !824
  %i.bn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !824
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.thread"

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !824
  store i64 9, ptr %i.a, align 8, !noalias !824
  %i.bo = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !824
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.thread"

bb.aa:                                            ; preds = %bb.b
  %i.bp = add nuw i64 %i.t, 1
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h76a32c9c47bfead0E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef align 8 dereferenceable(64) %0, i1 noundef zeroext false)
  %i.bq = load i64, ptr %i.o, align 8, !range !15, !noundef !8
  %i.br = icmp eq i64 %i.bq, 3
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !22

bb.ab:                                            ; preds = %bb.b
  %i.bs = add nuw i64 %i.t, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !827
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bu = load i64, ptr %i.k, align 8, !range !23, !noundef !8
  %i.bv = icmp eq i64 %i.bu, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !8, !noundef !8 ; 2 uses
  br i1 %i.bv, label %bb.ah, label %bb.ai, !prof !22

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.by = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.bz = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit": ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 7, ptr %i.r, align 8
  %i.ca = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread40, %bb.ai, %bb.ag, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit34", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit26", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit", %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cr, %bb.al ], [ %i.cm, %.thread40 ], [ %i.ca, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit" ], [ %i.cd, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit26" ], [ %i.cf, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit34" ], [ %i.ci, %bb.ag ], [ %i.cl, %bb.ai ], [ %i.by, %bb.ac ], [ %i.bz, %bb.ad ]
  %i.cb = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3793f630b9a7d5a8E(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit26": ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %i.cc, align 1
  store i8 0, ptr %i.q, align 8
  %i.cd = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit34": ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.ce, align 1
  store i8 0, ptr %i.p, align 8
  %i.cf = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !8, !align !12, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.thread"

bb.ag:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.ci = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h7364183549d27594E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.n, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.thread"

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bx, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.ck, align 8
  store i8 5, ptr %i.j, align 8
  %i.cl = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread40:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cm = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h76a32c9c47bfead0E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(64) %0, i1 noundef zeroext true)
  %i.cn = load i64, ptr %i.m, align 8, !range !15, !noundef !8
  %i.co = icmp eq i64 %i.cn, 3
  br i1 %i.co, label %bb.ak, label %bb.al, !prof !22

bb.ak:                                            ; preds = %bb.aj
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !8, !align !12, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.thread"

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.cr = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h7364183549d27594E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.thread": ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i33", %bb.z, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i25", %bb.q, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i", %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cb, %bb.ae ], [ %i.cq, %bb.ak ], [ %i.bx, %bb.ah ], [ %i.az, %bb.q ], [ %i.an, %bb.j ], [ %i.ch, %bb.af ], [ %i.am, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i" ], [ %i.ay, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i25" ], [ %i.bn, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i33" ], [ %i.bo, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = invoke { i64, i64 } @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$8position17h1ad2c5e45b3e2a8eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %bb.b unwind label %bb.d       ; 2 uses

end_hunk_0
begin_hunk_1_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h22286a936c1e02e7E":bb.a
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !8301, !noalias !8300, !noundef !8
  %i.bp = add i8 %i.bo, 1
  store i8 %i.bp, ptr %i.bn, align 1, !alias.scope !8301, !noalias !8300
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h2bee6edc87d66c87E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8299
  store i64 %.sroa.029.0.i.i, ptr %i.f, align 8, !noalias !8299
  %.sroa.731.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.731.0.i.i, ptr %.sroa.731.0..sroa_idx.i.i, align 8, !noalias !8299
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.val1.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !8299
  %i.bq = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17h49ff5e5c7161b40fE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.aa unwind label %bb.z, !noalias !8300 ; 10 uses

bb.z:                                             ; preds = %bb.y
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr152drop_in_place$LT$core..result..Result$LT$alloc..vec..Vec$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$$C$serde_json..error..Error$GT$$GT$17hdf6e0d17132abfbfE"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #51
          to label %common.resume.i.i unwind label %bb.ag, !noalias !8300

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8299
  %i.bs = icmp eq i64 %.sroa.029.0.i.i, -9223372036854775808
  br i1 %i.bs, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %bb.al, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.731.0.i.i) ]
  %.not56.i.i = icmp eq ptr %i.bq, null
  br i1 %.not56.i.i, label %.thread47.i.i, label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.731.0.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8322)
  %i.bt = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.bt, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h75e78f77638fc4afE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ad, %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.bv, %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit.i.i.i.i.i" ], [ 0, %bb.ad ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.731.0.i.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.bv = add nuw i64 %.sroa.0.011.i.i.i.i.i, 1   ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.bu, align 8, !range !9, !alias.scope !8323, !noalias !8324, !noundef !8 ; 2 uses
  %i.bw = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.bw, label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit.i.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.bx = getelementptr i8, ptr %i.bu, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !8322, !noalias !8324, !nonnull !8, !noundef !8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !8325
  br label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit.i.i.i.i.i"

"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit.i.i.i.i.i": ; preds = %bb.ae, %.lr.ph.i.i.i.i.i
  %i.by = icmp eq i64 %i.bv, %.val1.i.i.i.i
  br i1 %i.by, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h75e78f77638fc4afE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h75e78f77638fc4afE.exit.i.i.i": ; preds = %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit.i.i.i.i.i", %bb.ad
  %i.bz = icmp eq i64 %.sroa.029.0.i.i, 0
  br i1 %i.bz, label %.thread47.i.i, label %bb.af

bb.af:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h75e78f77638fc4afE.exit.i.i.i"
  %i.ca = mul nuw i64 %.sroa.029.0.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.731.0.i.i, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 8) #49, !noalias !8324
  br label %.thread47.i.i

bb.ag:                                            ; preds = %bb.z
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #52, !noalias !8300
  unreachable

bb.ah:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8327)
  %i.cc = load i64, ptr %i.bq, align 8, !range !42, !alias.scope !8328, !noalias !8329, !noundef !8
  switch i64 %i.cc, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE.exit.i.i" [
    i64 0, label %bb.ai
    i64 1, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.cd, align 8, !alias.scope !8328, !noalias !8329, !noundef !8 ; 2 uses
  %i.ce = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.ce, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ai
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !8328, !noalias !8329, !nonnull !8, !noundef !8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #49, !noalias !8330
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE.exit.i.i"

bb.aj:                                            ; preds = %bb.ah
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha505f4bd33a851f6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cg)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE.exit.i.i" unwind label %bb.ak, !noalias !8329

bb.ak:                                            ; preds = %bb.aj
  %i.ch = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef 40, i64 noundef 8) #49, !noalias !8329
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE.exit.i.i": ; preds = %bb.aj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.ai, %bb.ah
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef 40, i64 noundef 8) #49, !noalias !8329
  br label %.thread47.i.i

.thread47.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE.exit.i.i", %bb.af, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h75e78f77638fc4afE.exit.i.i.i", %bb.ac, %bb.e
  %.sroa.9.2.i.i = phi ptr [ %.sroa.731.0.i.i, %bb.ac ], [ %i.x, %bb.e ], [ %.sroa.731.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE.exit.i.i" ], [ %i.bq, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h75e78f77638fc4afE.exit.i.i.i" ], [ %i.bq, %bb.af ]
  %i.ci = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3793f630b9a7d5a8E(ptr noalias noundef nonnull align 8 %.sroa.9.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !8300
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ci, ptr %i.cj, align 8, !alias.scope !8300, !noalias !8301
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !8300, !noalias !8301
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17hab77f178c84ba205E.exit"

bb.al:                                            ; preds = %bb.ab
  store i64 %.sroa.029.0.i.i, ptr %0, align 8, !alias.scope !8300, !noalias !8301
  %.sroa.218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.731.0.i.i, ptr %.sroa.218.0..sroa_idx.i.i, align 8, !alias.scope !8300, !noalias !8301
  %.sroa.319.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val1.i.i.i.i, ptr %.sroa.319.0..sroa_idx.i.i, align 8, !alias.scope !8300, !noalias !8301
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17hab77f178c84ba205E.exit"

"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17hab77f178c84ba205E.exit": ; preds = %.loopexit.i.i, %bb.w, %.thread47.i.i, %bb.al
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h5f4b6972e34ad36bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8364)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !8365, !noalias !8366, !noundef !8 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !8367, !noalias !8368 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !8365, !noalias !8366, !nonnull !8, !align !13, !noundef !8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8369)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !8370, !noundef !8
  switch i8 %i.l, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !8371, !noalias !8368
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i", label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i": ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8372)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8373
  call fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_string17h107fcc273d50541bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !8374
  %i.n = load i64, ptr %i.c, align 8, !range !35, !noalias !8373, !noundef !8
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i"
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !8373, !nonnull !8, !align !12, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !8374, !noalias !8375
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !8374, !noalias !8375
  br label %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hc3af62b3ed348ebcE.exit.i.i"

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !8375
  br label %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hc3af62b3ed348ebcE.exit.i.i"

"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hc3af62b3ed348ebcE.exit.i.i": ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8373
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h1b02947634512e40E.exit"

bb.f:                                             ; preds = %bb.b
  %i.s = add i64 %i.j, 1                          ; 4 uses
  store i64 %i.s, ptr %i.d, align 8, !alias.scope !8376, !noalias !8377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8378)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.f) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8379)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.s, %i.f
  br i1 %exitcond.not.i9.not.i.i, label %bb.g, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !8380, !noundef !8
  %i.v = add i64 %i.j, 2                          ; 3 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !8381, !noalias !8382
  %.not.i.i.i = icmp eq i8 %i.u, 117
  br i1 %.not.i.i.i, label %bb.h, label %bb.l, !prof !19

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8383)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.v, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !8384, !noundef !8
  %i.y = add i64 %i.j, 3                          ; 3 uses
  store i64 %i.y, ptr %i.d, align 8, !alias.scope !8385, !noalias !8382
  %.not.i.1.i.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.1.i.i, label %bb.j, label %bb.l, !prof !19

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8386)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.y, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !8387, !noundef !8
  %i.ab = add i64 %i.j, 4
  store i64 %i.ab, ptr %i.d, align 8, !alias.scope !8388, !noalias !8382
  %.not.i.2.i.i = icmp eq i8 %i.aa, 108
  br i1 %.not.i.2.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.i.i", label %bb.l, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i": ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8389
  store i64 5, ptr %i.b, align 8, !noalias !8389
  %i.ac = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !8390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8389
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8389
  store i64 9, ptr %i.a, align 8, !noalias !8389
  %i.ad = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !8390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8389
  br label %bb.m

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.i.i": ; preds = %bb.k
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !8391, !noalias !8392
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h1b02947634512e40E.exit"

bb.m:                                             ; preds = %bb.l, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.ac, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i" ], [ %i.ad, %bb.l ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ae, align 8, !alias.scope !8377, !noalias !8392
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !8377, !noalias !8392
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h1b02947634512e40E.exit"

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h1b02947634512e40E.exit": ; preds = %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hc3af62b3ed348ebcE.exit.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.i.i", %bb.m
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hab07e225e1baabb1E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.10.i.i = alloca [7 x i8], align 1        ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8421)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8422
  store ptr @274, ptr %i.k, align 8, !noalias !8423
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 23, ptr %i.l, align 8, !noalias !8423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8424)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !8425, !noalias !8426, !noundef !8 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !8427, !noalias !8428 ; 2 uses
  %i.p = icmp ult i64 %.promoted.i.i.i, %i.o
  br i1 %i.p, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !8425, !noalias !8426, !nonnull !8, !align !13, !noundef !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.s = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.v, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8429)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !8430, !noundef !8 ; 2 uses
  switch i8 %i.u, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.v = add i64 %i.s, 1                          ; 3 uses
  store i64 %i.v, ptr %i.m, align 8, !alias.scope !8431, !noalias !8428
  %exitcond.not.i.i.i = icmp eq i64 %i.v, %i.o
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %i.w = icmp eq i8 %i.u, 34
  br i1 %i.w, label %bb.d, label %bb.e, !prof !22

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8423
  store i64 5, ptr %i.j, align 8, !noalias !8423
  %i.x = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !8432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8423
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !8432, !noalias !8433
  store i8 1, ptr %0, align 8, !alias.scope !8432, !noalias !8433
  br label %"_ZN4uuid8external13serde_support68_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$uuid..Uuid$GT$11deserialize17hd91d074e8bd63551E.exit"

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i"
  %i.z = add i64 %i.s, 1
  store i64 %i.z, ptr %i.m, align 8, !alias.scope !8434, !noalias !8432
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.aa, align 8, !alias.scope !8433, !noalias !8432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8423
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !8432
  %i.ab = load i64, ptr %i.i, align 8, !range !23, !noalias !8423, !noundef !8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !8423 ; 4 uses
  br i1 %i.ac, label %bb.f, label %bb.g

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i"
  %i.af = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h1bcf6c8f55886afeE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @376), !noalias !8432
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.ag, align 8, !alias.scope !8432, !noalias !8433
  store i8 1, ptr %0, align 8, !alias.scope !8432, !noalias !8433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8423
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  br label %"_ZN4uuid8external13serde_support68_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$uuid..Uuid$GT$11deserialize17hd91d074e8bd63551E.exit"

bb.g:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !8423 ; 2 uses
  %i.ah = trunc nuw i64 %i.ab to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8435
  call void @"_ZN77_$LT$uuid..Uuid$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$8from_str17h25fd6f23233b1210E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %.sroa.4.0.copyload.i.i), !noalias !8436
  %i.ai = load i32, ptr %i.h, align 8, !range !8437, !noalias !8435, !noundef !8
  %.not.i.i.i = icmp eq i32 %i.ai, 9
  br i1 %.not.i.i.i, label %bb.l, label %"_ZN103_$LT$uuid..external..serde_support..UuidReadableVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h1107b8be18787282E.exit.thread.i.i"

"_ZN103_$LT$uuid..external..serde_support..UuidReadableVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h1107b8be18787282E.exit.thread.i.i": ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !8435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8435
  store ptr %i.g, ptr %i.e, align 8, !noalias !8435
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN57_$LT$uuid..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hc5fc501e77e05b49E", ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !8435
  store ptr @1, ptr %i.f, align 8, !noalias !8435
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.aj, align 8, !noalias !8435
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.ak, align 8, !noalias !8435
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.al, align 8, !noalias !8435
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %i.am, align 8, !noalias !8435
  %i.an = call fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h37bddf87cc9010d0E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.f), !noalias !8436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8423
  br label %bb.j

end_hunk_1
begin_hunk_2_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17heb05182918d3105bE":bb.a
  %i.cu = add i64 %i.bq, 1                        ; 3 uses
  store i64 %i.cu, ptr %i.bk, align 8, !alias.scope !8653, !noalias !8637
  call void @llvm.experimental.noalias.scope.decl(metadata !8654)
  call void @llvm.experimental.noalias.scope.decl(metadata !8655)
  call void @llvm.experimental.noalias.scope.decl(metadata !8656)
  call void @llvm.experimental.noalias.scope.decl(metadata !8657)
  %i.cv = icmp ult i64 %i.cu, %i.bm
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.v, %bb.w
  %i.cw = phi i64 [ %i.cz, %bb.w ], [ %i.cu, %bb.v ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !8658, !noundef !8
  switch i8 %i.cy, label %bb.x [
    i8 32, label %bb.w
    i8 10, label %bb.w
    i8 9, label %bb.w
    i8 13, label %bb.w
    i8 34, label %bb.y
    i8 125, label %bb.z
  ], !prof !24

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = add i64 %i.cw, 1                        ; 3 uses
  store i64 %i.cz, ptr %i.bk, align 8, !alias.scope !8659, !noalias !8660
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cz, %i.bm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8661
  store i64 3, ptr %i.i, align 8, !noalias !8661
  %i.da = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc14.i.i.i unwind label %.loopexit.i.i.i, !noalias !8620

.noexc14.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8661
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8661
  store i64 17, ptr %i.j, align 8, !noalias !8661
  %i.db = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !8620

.noexc15.i.i.i:                                   ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8661
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8661
  call void @llvm.experimental.noalias.scope.decl(metadata !8662)
  call void @llvm.experimental.noalias.scope.decl(metadata !8663)
  call void @llvm.experimental.noalias.scope.decl(metadata !8664)
  call void @llvm.experimental.noalias.scope.decl(metadata !8665)
  %i.dc = add i64 %i.cw, 1
  store i64 %i.dc, ptr %i.bk, align 8, !alias.scope !8666, !noalias !8667
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 0, ptr %i.dd, align 8, !alias.scope !8668, !noalias !8667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8669
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bj)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !8620

.noexc16.i.i.i:                                   ; preds = %bb.y
  %i.de = load i64, ptr %i.g, align 8, !range !23, !noalias !8669, !noundef !8
  %i.df = icmp eq i64 %i.de, 2
  %i.dg = load ptr, ptr %i.az, align 8, !noalias !8669, !nonnull !8, !noundef !8 ; 2 uses
  br i1 %i.df, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !20

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.thread.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8669
  br label %bb.aa

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i, align 8, !noalias !8669
  invoke fastcc void @"_ZN189_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h69f3fd22fd372154E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dg, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i)
          to label %.noexc17.i.i.i unwind label %.loopexit.i.i.i, !noalias !8620

.noexc17.i.i.i:                                   ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.h, align 8, !range !14, !noalias !8661
  %i.dh = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8669
  br i1 %i.dh, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", label %bb.ab, !prof !48

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc17.i.i.i
  %.pre.i.i16.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i, align 8, !noalias !8661
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8661
  store i64 10, ptr %i.k, align 8, !noalias !8661
  %i.di = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc18.i.i.i unwind label %.loopexit.i.i.i, !noalias !8620

.noexc18.i.i.i:                                   ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8661
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.aa:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  %i.dj = phi ptr [ %.pre.i.i16.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i" ], [ %i.dg, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.dk = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3793f630b9a7d5a8E(ptr noalias noundef nonnull align 8 %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj)
          to label %.noexc19.i.i.i unwind label %.loopexit.i.i.i, !noalias !8620

.noexc19.i.i.i:                                   ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8661
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.ab:                                            ; preds = %.noexc17.i.i.i
  %i.dl = load i8, ptr %i.ba, align 1, !range !40, !noalias !8661, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8661
  call void @llvm.experimental.noalias.scope.decl(metadata !8670)
  call void @llvm.experimental.noalias.scope.decl(metadata !8671)
  %i.dm = load i64, ptr %i.bl, align 8, !alias.scope !8672, !noalias !8673, !noundef !8 ; 6 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !8674, !noalias !8675 ; 2 uses
  %i.dn = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dm
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ab
  %i.do = load ptr, ptr %i.bo, align 8, !alias.scope !8672, !noalias !8673, !nonnull !8, !align !13, !noundef !8 ; 5 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dp = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ds, %bb.ad ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8676)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !8677, !noundef !8
  switch i8 %i.dr, label %bb.ae [
    i8 32, label %bb.ad
    i8 10, label %bb.ad
    i8 9, label %bb.ad
    i8 13, label %bb.ad
    i8 58, label %_ZN10serde_core2de10EnumAccess7variant17h3e4eb53ba3ebcdbcE.exit.i.i.i.i.i.i.i.i.i
  ], !prof !47

bb.ad:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %i.ds = add i64 %i.dp, 1                        ; 3 uses
  store i64 %i.ds, ptr %i.bk, align 8, !alias.scope !8678, !noalias !8675
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ds, %i.dm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ac

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8679
  store i64 3, ptr %i.e, align 8, !noalias !8679
  %i.dt = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc20.i.i.i unwind label %.loopexit.i.i.i, !noalias !8620

.noexc20.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8679
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8679
  store i64 6, ptr %i.f, align 8, !noalias !8679
  %i.du = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc21.i.i.i unwind label %.loopexit.i.i.i, !noalias !8620

.noexc21.i.i.i:                                   ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8679
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

_ZN10serde_core2de10EnumAccess7variant17h3e4eb53ba3ebcdbcE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac
  %i.dv = add i64 %i.dp, 1                        ; 3 uses
  store i64 %i.dv, ptr %i.bk, align 8, !alias.scope !8680, !noalias !8681
  call void @llvm.experimental.noalias.scope.decl(metadata !8682)
  call void @llvm.experimental.noalias.scope.decl(metadata !8683)
  call void @llvm.experimental.noalias.scope.decl(metadata !8684)
  %i.dw = icmp ult i64 %i.dv, %i.dm
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN10serde_core2de10EnumAccess7variant17h3e4eb53ba3ebcdbcE.exit.i.i.i.i.i.i.i.i.i, %bb.af
  %i.dx = phi i64 [ %i.ea, %bb.af ], [ %i.dv, %_ZN10serde_core2de10EnumAccess7variant17h3e4eb53ba3ebcdbcE.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !noalias !8685, !noundef !8
  switch i8 %i.dz, label %bb.an [
    i8 32, label %bb.af
    i8 10, label %bb.af
    i8 9, label %bb.af
    i8 13, label %bb.af
    i8 110, label %bb.ag
  ], !prof !47

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ea = add i64 %i.dx, 1                        ; 3 uses
  store i64 %i.ea, ptr %i.bk, align 8, !alias.scope !8686, !noalias !8687
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ea, %i.dm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.af, %_ZN10serde_core2de10EnumAccess7variant17h3e4eb53ba3ebcdbcE.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8688
  store i64 5, ptr %i.d, align 8, !noalias !8688
  %i.eb = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc22.i.i.i unwind label %.loopexit.i.i.i, !noalias !8620

.noexc22.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8688
  br label %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ec = add i64 %i.dx, 1                        ; 4 uses
  store i64 %i.ec, ptr %i.bk, align 8, !alias.scope !8689, !noalias !8637
  call void @llvm.experimental.noalias.scope.decl(metadata !8690)
  %umax.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ec, i64 %i.dm) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8691)
  %exitcond.not.i17.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.ec, %i.dm
  br i1 %exitcond.not.i17.not.i.i.i.i.i.i.i.i.i.i, label %bb.ah, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.ah:                                            ; preds = %bb.ag
  %i.ed = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !noalias !8692, !noundef !8
  %i.ef = add i64 %i.dx, 2                        ; 3 uses
  store i64 %i.ef, ptr %i.bk, align 8, !alias.scope !8693, !noalias !8694
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ee, 117
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.am, !prof !19

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !8695)
  %exitcond.not.i17.1.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ef, %umax.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i17.1.i.i.i.i.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eg = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !noalias !8696, !noundef !8
  %i.ei = add i64 %i.dx, 3                        ; 3 uses
  store i64 %i.ei, ptr %i.bk, align 8, !alias.scope !8697, !noalias !8694
  %.not.i.1.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.eh, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.am, !prof !19

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !8698)
  %exitcond.not.i17.2.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ei, %umax.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i17.2.i.i.i.i.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !noalias !8699, !noundef !8
  %i.el = add i64 %i.dx, 4
  store i64 %i.el, ptr %i.bk, align 8, !alias.scope !8700, !noalias !8694
  %.not.i.2.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ek, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i.i.i.i, label %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i", label %bb.am, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ak, %bb.ai, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8701
  store i64 5, ptr %i.c, align 8, !noalias !8701
  %i.em = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc23.i.i.i unwind label %.loopexit.i.i.i, !noalias !8620

.noexc23.i.i.i:                                   ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8701
  br label %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"

bb.am:                                            ; preds = %bb.al, %bb.aj, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8701
  store i64 9, ptr %i.b, align 8, !noalias !8701
  %i.en = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc24.i.i.i unwind label %.loopexit.i.i.i, !noalias !8620

.noexc24.i.i.i:                                   ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8701
  br label %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.eo = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h1bcf6c8f55886afeE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bj, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @378)
          to label %.noexc25.i.i.i unwind label %.loopexit.i.i.i, !noalias !8620

.noexc25.i.i.i:                                   ; preds = %bb.an
  %i.ep = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3793f630b9a7d5a8E(ptr noalias noundef nonnull align 8 %i.eo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj)
          to label %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i" unwind label %.loopexit.i.i.i, !noalias !8620

"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i": ; preds = %.noexc25.i.i.i, %.noexc24.i.i.i, %.noexc23.i.i.i, %bb.al, %.noexc22.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eb, %.noexc22.i.i.i ], [ %i.en, %.noexc24.i.i.i ], [ null, %bb.al ], [ %i.em, %.noexc23.i.i.i ], [ %i.ep, %.noexc25.i.i.i ] ; 59 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, null ; 58 uses
  switch i8 %i.dl, label %default.unreachable [
    i8 57, label %bb.ct
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.aq
    i8 3, label %bb.ar
    i8 4, label %bb.as
    i8 5, label %bb.at
    i8 6, label %bb.au
    i8 7, label %bb.av
    i8 8, label %bb.aw
    i8 9, label %bb.ax
    i8 10, label %bb.ay
    i8 11, label %bb.az
    i8 12, label %bb.ba
    i8 13, label %bb.bb
    i8 14, label %bb.bc
    i8 15, label %bb.bd
    i8 16, label %bb.be
    i8 17, label %bb.bf
    i8 18, label %bb.bg
    i8 19, label %bb.bh
    i8 20, label %bb.bi
    i8 21, label %bb.bj
    i8 22, label %bb.bk
    i8 23, label %bb.bl
    i8 24, label %bb.bm
    i8 25, label %bb.bn
    i8 26, label %bb.bo
    i8 27, label %bb.bp
    i8 28, label %bb.bq
    i8 29, label %bb.br
    i8 30, label %bb.bs
    i8 31, label %bb.bt
    i8 32, label %bb.bu
    i8 33, label %bb.bv
    i8 34, label %bb.bw
    i8 35, label %bb.bx
    i8 36, label %bb.by
    i8 37, label %bb.bz
    i8 38, label %bb.ca
    i8 39, label %bb.cb
    i8 40, label %bb.cc
    i8 41, label %bb.cd
    i8 42, label %bb.ce
    i8 43, label %bb.cf
    i8 44, label %bb.cg
    i8 45, label %bb.ch
    i8 46, label %bb.ci
    i8 47, label %bb.cj
    i8 48, label %bb.ck
    i8 49, label %bb.cl
    i8 50, label %bb.cm
    i8 51, label %bb.cn
    i8 52, label %bb.co
    i8 53, label %bb.cp
    i8 54, label %bb.cq
    i8 55, label %bb.cr
    i8 56, label %bb.cs
  ]

bb.ao:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.cu, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.ap:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.cv, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.aq:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.cw, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.ar:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.cx, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.as:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.cy, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.at:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.cz, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.au:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.da, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.av:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.db, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.aw:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.dc, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.ax:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.dd, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.ay:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.de, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.az:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.df, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.ba:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.dg, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.bb:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.dh, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.bc:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.di, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.bd:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.dj, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.be:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.dk, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.bf:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.dl, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.bg:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.dm, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.bh:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.dn, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.bi:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.do, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.bj:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.dp, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.bk:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.dq, label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.bl:                                            ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
end_hunk_2
begin_hunk_3_@"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h8434b47c471ef2dbE":bb.a
"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit": ; preds = %.noexc13, %.noexc12, %.noexc, %bb.h, %bb.g, %bb.e
  %.sroa.015.0 = phi i64 [ %.sroa.042.0.copyload, %.noexc13 ], [ %i.v, %bb.g ], [ %i.v, %bb.h ], [ -9223372036854775805, %.noexc ], [ -9223372036854775804, %.noexc12 ], [ -9223372036854775808, %bb.e ]
  %i.ak = phi <2 x i64> [ %i.aj, %.noexc13 ], [ %i.z, %bb.g ], [ %i.aa, %bb.h ], [ undef, %.noexc ], [ undef, %.noexc12 ], [ undef, %bb.e ]
  %i.al = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %.sroa.7.057 ; 4 uses
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.429.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.530.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.0, i64 24, i1 false)
  store i64 %.sroa.015.0, ptr %i.al, align 8
  %.sroa.530.sroa.4.0..sroa.530.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store <2 x i64> %i.ak, ptr %.sroa.530.sroa.4.0..sroa.530.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.0)
  %i.am = icmp eq i64 %i.q, 0
  br i1 %i.am, label %.thread, label %bb.d

bb.n:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #52
  unreachable

bb.o:                                             ; preds = %.loopexit, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.057, ptr %i.m, align 8, !alias.scope !8779
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17h71f446569c0fd2ebE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #51
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hefc7e53531005b46E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 24 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 23 uses
  %i.g = alloca [64 x i8], align 16               ; 37 uses
  %i.h = alloca [32 x i8], align 16               ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [48 x i8], align 8               ; 8 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.9.i.i.i.i.i.i.i = alloca [7 x i8], align 1 ; 5 uses
  %.sroa.0121.i.i.i.i.i.i = alloca [7 x i8], align 8 ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 10 uses
  %i.ak = alloca [24 x i8], align 8               ; 13 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [16 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [4 x i8], align 4                ; 5 uses
  %i.as = alloca [16 x i8], align 8               ; 7 uses
  %i.at = alloca [1 x i8], align 1                ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 7 uses
  %i.av = alloca [1 x i8], align 1                ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 7 uses
  %i.ax = alloca [1 x i8], align 1                ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 15 uses
  %i.az = alloca [24 x i8], align 8               ; 5 uses
  %i.ba = alloca [24 x i8], align 8               ; 5 uses
  %i.bb = alloca [24 x i8], align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 5 uses
  %i.bd = alloca [24 x i8], align 8               ; 5 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 4 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [24 x i8], align 8               ; 4 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 5 uses
  %i.bn = alloca [24 x i8], align 8               ; 8 uses
  %i.bo = alloca [16 x i8], align 8               ; 6 uses
  %i.bp = alloca [16 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 4 uses
  %i.br = alloca [64 x i8], align 8               ; 32 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !9036
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 3 uses
  store ptr %1, ptr %i.bt, align 8, !noalias !9037
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !9037
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 26 uses
  store i64 0, ptr %i.br, align 8, !noalias !9036
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9036
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !9036
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 57 ; 7 uses
  store i8 -128, ptr %i.bu, align 1, !noalias !9036
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 56 ; 3 uses
  store i8 0, ptr %i.bv, align 8, !noalias !9036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9040)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %i.bw = phi i64 [ %i.bz, %bb.b ], [ 0, %bb.a ]  ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noalias !9041, !noundef !8
  switch i8 %i.by, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i.i" [
    i8 32, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 110, label %bb.jb
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bz = add i64 %i.bw, 1                        ; 3 uses
  store i64 %i.bz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9042, !noalias !9043
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bz, %2
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i.i": ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.promoted.i.i.i.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.bw, %.lr.ph.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9047)
  %i.ca = icmp ult i64 %.promoted.i.i.i.i.i.i.i, %2
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i.i", %bb.c
  %i.cb = phi i64 [ %i.ce, %bb.c ], [ %.promoted.i.i.i.i.i.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i.i" ] ; 19 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !9048, !noundef !8 ; 2 uses
  switch i8 %i.cd, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ex
    i8 123, label %bb.im
  ]

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ce = add i64 %i.cb, 1                        ; 3 uses
  store i64 %i.ce, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9049, !noalias !9050
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ce, %2
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.b, %bb.c, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !9051
  store i64 5, ptr %i.bq, align 8, !noalias !9051
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bq)
          to label %.noexc.i unwind label %bb.jj, !noalias !9036

.noexc.i:                                         ; preds = %.loopexit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !9051
  br label %.noexc19.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cg = add i8 %i.cd, -48
  %or.cond4.i.i.i.i.i.i = icmp ult i8 %i.cg, 10
  br i1 %or.cond4.i.i.i.i.i.i, label %bb.iu, label %bb.it, !prof !16

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ch = add i64 %i.cb, 1                        ; 4 uses
  store i64 %i.ch, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9052, !noalias !9053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9054)
  %umax.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9055)
  %exitcond.not.i66.not.i.i.i.i.i.i = icmp ult i64 %i.ch, %2
  br i1 %exitcond.not.i66.not.i.i.i.i.i.i, label %bb.f, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i"

bb.f:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !9056, !noundef !8
  %i.ck = add i64 %i.cb, 2                        ; 3 uses
  store i64 %i.ck, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9057, !noalias !9058
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cj, 117
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.k, !prof !19

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9059)
  %exitcond.not.i66.1.i.i.i.i.i.i = icmp eq i64 %i.ck, %umax.i.i.i.i.i.i.i
  br i1 %exitcond.not.i66.1.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !9060, !noundef !8
  %i.cn = add i64 %i.cb, 3                        ; 3 uses
  store i64 %i.cn, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9061, !noalias !9058
  %.not.i.1.i.i.i.i.i.i = icmp eq i8 %i.cm, 108
  br i1 %.not.i.1.i.i.i.i.i.i, label %bb.i, label %bb.k, !prof !19

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9062)
  %exitcond.not.i66.2.i.i.i.i.i.i = icmp eq i64 %i.cn, %umax.i.i.i.i.i.i.i
  br i1 %exitcond.not.i66.2.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noalias !9063, !noundef !8
  %i.cq = add i64 %i.cb, 4
  store i64 %i.cq, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9064, !noalias !9058
  %.not.i.2.i.i.i.i.i.i = icmp eq i8 %i.cp, 108
  br i1 %.not.i.2.i.i.i.i.i.i, label %bb.ad, label %bb.k, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !9065
  store i64 5, ptr %i.bk, align 8, !noalias !9065
  %i.cr = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bk)
          to label %.noexc10.i unwind label %bb.jj, !noalias !9036

.noexc10.i:                                       ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !9065
  br label %.noexc19.i

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !9065
  store i64 9, ptr %i.bj, align 8, !noalias !9065
  %i.cs = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bj)
          to label %.noexc11.i unwind label %bb.jj, !noalias !9036

.noexc11.i:                                       ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !9065
  br label %.noexc19.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ct = add i64 %i.cb, 1                        ; 4 uses
  store i64 %i.ct, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9066, !noalias !9053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9067)
  %umax.i68.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9068)
  %exitcond.not.i70.not.i.i.i.i.i.i = icmp ult i64 %i.ct, %2
  br i1 %exitcond.not.i70.not.i.i.i.i.i.i, label %bb.m, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i73.i.i.i.i.i.i"

bb.m:                                             ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !9069, !noundef !8
  %i.cw = add i64 %i.cb, 2                        ; 3 uses
  store i64 %i.cw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9070, !noalias !9071
  %.not.i71.i.i.i.i.i.i = icmp eq i8 %i.cv, 114
  br i1 %.not.i71.i.i.i.i.i.i, label %bb.n, label %bb.r, !prof !19

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9072)
  %exitcond.not.i70.1.i.i.i.i.i.i = icmp eq i64 %i.cw, %umax.i68.i.i.i.i.i.i
  br i1 %exitcond.not.i70.1.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i73.i.i.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !9073, !noundef !8
  %i.cz = add i64 %i.cb, 3                        ; 3 uses
  store i64 %i.cz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9074, !noalias !9071
  %.not.i71.1.i.i.i.i.i.i = icmp eq i8 %i.cy, 117
  br i1 %.not.i71.1.i.i.i.i.i.i, label %bb.p, label %bb.r, !prof !19

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9075)
  %exitcond.not.i70.2.i.i.i.i.i.i = icmp eq i64 %i.cz, %umax.i68.i.i.i.i.i.i
  br i1 %exitcond.not.i70.2.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i73.i.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !noalias !9076, !noundef !8
  %i.dc = add i64 %i.cb, 4
  store i64 %i.dc, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9077, !noalias !9071
  %.not.i71.2.i.i.i.i.i.i = icmp eq i8 %i.db, 101
  br i1 %.not.i71.2.i.i.i.i.i.i, label %bb.ae, label %bb.r, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i73.i.i.i.i.i.i": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !9078
  store i64 5, ptr %i.bi, align 8, !noalias !9078
  %i.dd = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bi)
          to label %.noexc12.i unwind label %bb.jj, !noalias !9036

.noexc12.i:                                       ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i73.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !9078
  br label %.noexc19.i

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !9078
  store i64 9, ptr %i.bh, align 8, !noalias !9078
  %i.de = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bh)
          to label %.noexc13.i unwind label %bb.jj, !noalias !9036

.noexc13.i:                                       ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !9078
  br label %.noexc19.i

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.df = add i64 %i.cb, 1                        ; 4 uses
  store i64 %i.df, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9079, !noalias !9053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9080)
  %umax.i76.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.df, i64 %2) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9081)
  %exitcond.not.i78.not.i.i.i.i.i.i = icmp ult i64 %i.df, %2
  br i1 %exitcond.not.i78.not.i.i.i.i.i.i, label %bb.t, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i81.i.i.i.i.i.i"

bb.t:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !9082, !noundef !8
  %i.di = add i64 %i.cb, 2                        ; 3 uses
  store i64 %i.di, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9083, !noalias !9084
  %.not.i79.i.i.i.i.i.i = icmp eq i8 %i.dh, 97
  br i1 %.not.i79.i.i.i.i.i.i, label %bb.u, label %bb.aa, !prof !19

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9085)
  %exitcond.not.i78.1.i.i.i.i.i.i = icmp eq i64 %i.di, %umax.i76.i.i.i.i.i.i
  br i1 %exitcond.not.i78.1.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i81.i.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !9086, !noundef !8
  %i.dl = add i64 %i.cb, 3                        ; 3 uses
  store i64 %i.dl, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9087, !noalias !9084
  %.not.i79.1.i.i.i.i.i.i = icmp eq i8 %i.dk, 108
  br i1 %.not.i79.1.i.i.i.i.i.i, label %bb.w, label %bb.aa, !prof !19

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9088)
  %exitcond.not.i78.2.i.i.i.i.i.i = icmp eq i64 %i.dl, %umax.i76.i.i.i.i.i.i
  br i1 %exitcond.not.i78.2.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i81.i.i.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !9089, !noundef !8
  %i.do = add i64 %i.cb, 4                        ; 3 uses
  store i64 %i.do, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9090, !noalias !9084
  %.not.i79.2.i.i.i.i.i.i = icmp eq i8 %i.dn, 115
  br i1 %.not.i79.2.i.i.i.i.i.i, label %bb.y, label %bb.aa, !prof !19

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9091)
  %exitcond.not.i78.3.i.i.i.i.i.i = icmp eq i64 %i.do, %umax.i76.i.i.i.i.i.i
  br i1 %exitcond.not.i78.3.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i81.i.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !noalias !9092, !noundef !8
  %i.dr = add i64 %i.cb, 5
  store i64 %i.dr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9093, !noalias !9084
  %.not.i79.3.i.i.i.i.i.i = icmp eq i8 %i.dq, 101
  br i1 %.not.i79.3.i.i.i.i.i.i, label %bb.af, label %bb.aa, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i81.i.i.i.i.i.i": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !9094
  store i64 5, ptr %i.bg, align 8, !noalias !9094
  %i.ds = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bg)
          to label %.noexc14.i unwind label %bb.jj, !noalias !9036

.noexc14.i:                                       ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i81.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !9094
  br label %.noexc19.i

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !9094
  store i64 9, ptr %i.bf, align 8, !noalias !9094
  %i.dt = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bf)
          to label %.noexc15.i unwind label %bb.jj, !noalias !9036

.noexc15.i:                                       ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !9094
  br label %.noexc19.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.du = add i64 %i.cb, 1
  store i64 %i.du, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9095, !noalias !9053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !9051
  invoke fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h76a32c9c47bfead0E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.br, i1 noundef zeroext false)
          to label %.noexc16.i unwind label %bb.jj, !noalias !9036

.noexc16.i:                                       ; preds = %bb.ab
  %i.dv = load i64, ptr %i.bp, align 8, !range !15, !noalias !9051, !noundef !8 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 3
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  br i1 %i.dw, label %bb.ag, label %bb.ah

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dy = add i64 %i.cb, 1
  store i64 %i.dy, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9096, !noalias !9053
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9097, !noalias !9053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !9051
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bn, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.br)
          to label %.noexc17.i unwind label %bb.jj, !noalias !9036

.noexc17.i:                                       ; preds = %bb.ac
  %i.dz = load i64, ptr %i.bn, align 8, !range !23, !noalias !9051, !noundef !8
  %i.ea = icmp eq i64 %i.dz, 2
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !9051 ; 3 uses
  br i1 %i.ea, label %bb.am, label %bb.an

bb.ad:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !9098
  store i8 7, ptr %i.be, align 8, !noalias !9098
  %i.ed = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.be, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %.noexc18.i unwind label %bb.jj, !noalias !9036

.noexc18.i:                                       ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !9098
  br label %.invoke.i

bb.ae:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !9099
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 1, ptr %i.ee, align 1, !noalias !9099
  store i8 0, ptr %i.bd, align 8, !noalias !9099
  %i.ef = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bd, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %.noexc20.i unwind label %bb.jj, !noalias !9036

.noexc20.i:                                       ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !9099
  br label %.invoke.i

bb.af:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !9100
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 0, ptr %i.eg, align 1, !noalias !9100
  store i8 0, ptr %i.bc, align 8, !noalias !9100
  %i.eh = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bc, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %.noexc22.i unwind label %bb.jj, !noalias !9036

.noexc22.i:                                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !9100
  br label %.invoke.i

bb.ag:                                            ; preds = %.noexc16.i
  %i.ei = load ptr, ptr %i.dx, align 8, !noalias !9051, !nonnull !8, !align !12, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !9051
  br label %.noexc19.i

bb.ah:                                            ; preds = %.noexc16.i
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !noalias !9051 ; 3 uses
  switch i64 %i.dv, label %default.unreachable [
    i64 0, label %bb.ai
    i64 1, label %bb.aj
    i64 2, label %bb.ak
  ]

default.unreachable:                              ; preds = %bb.iw, %bb.gt, %bb.gi, %bb.fr, %bb.fg, %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !9101
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.ej, align 8, !noalias !9101
  store i8 3, ptr %i.bb, align 8, !noalias !9101
  %i.ek = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bb, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %.noexc24.i unwind label %bb.jj, !noalias !9036

.noexc24.i:                                       ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !9101
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !9102
  %i.el = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.el, align 8, !noalias !9102
  store i8 1, ptr %i.ba, align 8, !noalias !9102
  %i.em = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ba, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %.noexc25.i unwind label %bb.jj, !noalias !9036

.noexc25.i:                                       ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !9102
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !9103
  %i.en = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.en, align 8, !noalias !9103
  store i8 2, ptr %i.az, align 8, !noalias !9103
  %i.eo = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.az, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %.noexc26.i unwind label %bb.jj, !noalias !9036

.noexc26.i:                                       ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !9103
  br label %bb.al

bb.al:                                            ; preds = %.noexc26.i, %.noexc25.i, %.noexc24.i
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.eo, %.noexc26.i ], [ %i.em, %.noexc25.i ], [ %i.ek, %.noexc24.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !9051
  br label %.invoke.i

bb.am:                                            ; preds = %.noexc17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !9051
  br label %.noexc19.i

bb.an:                                            ; preds = %.noexc17.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !9051
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ec) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9105
end_hunk_3
begin_hunk_4_@"_ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hefc7e53531005b46E":bb.a
bb.if:                                            ; preds = %bb.ie
  %i.zn = ptrtoint ptr %i.zk to i64
  br label %.thread201.i.i.i.i.i.i

bb.ig:                                            ; preds = %bb.id
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.4.i.i.i.i.i.i) ]
  %i.zo = ptrtoint ptr %.sroa.18.4.i.i.i.i.i.i to i64 ; 2 uses
  %.not148.i.i.i.i.i.i = icmp eq ptr %i.zk, null
  br i1 %.not148.i.i.i.i.i.i, label %.thread201.i.i.i.i.i.i, label %bb.ii

bb.ih:                                            ; preds = %bb.ip, %bb.ic
  %i.zp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #52, !noalias !9053
  unreachable

bb.ii:                                            ; preds = %bb.ig
  call void @llvm.experimental.noalias.scope.decl(metadata !9169)
  call void @llvm.experimental.noalias.scope.decl(metadata !9170)
  %i.zq = load i64, ptr %i.zk, align 8, !range !42, !alias.scope !9171, !noalias !9172, !noundef !8
  switch i64 %i.zq, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE.exit.i.i.i.i.i.i" [
    i64 0, label %bb.ij
    i64 1, label %bb.ik
  ]

bb.ij:                                            ; preds = %bb.ii
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.zr, align 8, !alias.scope !9171, !noalias !9172, !noundef !8 ; 2 uses
  %i.zs = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.zs, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE.exit.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ij
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.zt, align 8, !alias.scope !9171, !noalias !9172, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef 1) #49, !noalias !9173
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE.exit.i.i.i.i.i.i"

bb.ik:                                            ; preds = %bb.ii
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha505f4bd33a851f6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.zu)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE.exit.i.i.i.i.i.i" unwind label %bb.il, !noalias !9172

bb.il:                                            ; preds = %bb.ik
  %i.zv = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.zk, i64 noundef 40, i64 noundef 8) #49, !noalias !9172
  br label %.body.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE.exit.i.i.i.i.i.i": ; preds = %bb.ik, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ij, %bb.ii
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.zk, i64 noundef 40, i64 noundef 8) #49, !noalias !9172
  br label %.thread201.i.i.i.i.i.i

bb.im:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  store i8 127, ptr %i.bu, align 1, !alias.scope !9097, !noalias !9053
  %i.zw = add i64 %i.cb, 1
  store i64 %i.zw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9174, !noalias !9053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9175
  store i8 11, ptr %i.l, align 8, !noalias !9175
  %i.zx = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %.noexc82.i unwind label %bb.jj, !noalias !9036 ; 3 uses

.noexc82.i:                                       ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9175
  %i.zy = load i8, ptr %i.bv, align 8, !range !14, !alias.scope !9097, !noalias !9053, !noundef !8
  %i.zz = trunc nuw i8 %i.zy to i1
  br i1 %i.zz, label %bb.io, label %bb.in

bb.in:                                            ; preds = %.noexc82.i
  %i.aaa = load i8, ptr %i.bu, align 1, !alias.scope !9097, !noalias !9053, !noundef !8
  %i.aab = add i8 %i.aaa, 1
  store i8 %i.aab, ptr %i.bu, align 1, !alias.scope !9097, !noalias !9053
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %.noexc82.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !9051
  %i.aac = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h2b52be1d28f7ca2eE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.br)
          to label %bb.iq unwind label %bb.ip, !noalias !9053 ; 2 uses

bb.ip:                                            ; preds = %bb.io
  %i.aad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$core..result..Result$LT$time..offset_date_time..OffsetDateTime$C$serde_json..error..Error$GT$$GT$17hd0236b3cd14b85c9E"(i8 1, ptr nonnull %i.zx) #51
          to label %.body.i unwind label %bb.ih, !noalias !9053

bb.iq:                                            ; preds = %bb.io
  %.sroa.4119.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 7
  store i8 1, ptr %.sroa.4119.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !9051
  %.sroa.6120.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.zx, ptr %.sroa.6120.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !9051
  %i.aae = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  store ptr %i.aac, ptr %i.aae, align 8, !noalias !9051
  %i.aaf = ptrtoint ptr %i.zx to i64
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aac, null
  br i1 %.not.i.i.i.i.i.i, label %.thread200.i.i.i.i.i.i, label %bb.ir

.thread200.i.i.i.i.i.i:                           ; preds = %bb.ir, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !9051
  br label %.thread201.i.i.i.i.i.i

bb.ir:                                            ; preds = %bb.iq
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aae)
          to label %.thread200.i.i.i.i.i.i unwind label %bb.jj, !noalias !9036

bb.is:                                            ; preds = %bb.ie
  %i.aag = ptrtoint ptr %.sroa.18.4.i.i.i.i.i.i to i64
  br label %"_ZN4time5serde96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$time..offset_date_time..OffsetDateTime$GT$11deserialize17h24e54c030ba03e58E.exit.i.i.i.i"

bb.it:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !9051
  store i64 10, ptr %i.bl, align 8, !noalias !9051
  %i.aah = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bl)
          to label %.noexc85.i unwind label %bb.jj, !noalias !9036

.noexc85.i:                                       ; preds = %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !9051
  %i.aai = ptrtoint ptr %i.aah to i64
  br label %.thread201.i.i.i.i.i.i

bb.iu:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !9051
  invoke fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h76a32c9c47bfead0E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bo, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.br, i1 noundef zeroext true)
          to label %.noexc86.i unwind label %bb.jj, !noalias !9036

.noexc86.i:                                       ; preds = %bb.iu
  %i.aaj = load i64, ptr %i.bo, align 8, !range !15, !noalias !9051, !noundef !8 ; 2 uses
  %i.aak = icmp eq i64 %i.aaj, 3
  %i.aal = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  br i1 %i.aak, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %.noexc86.i
  %i.aam = load ptr, ptr %i.aal, align 8, !noalias !9051, !nonnull !8, !align !12, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !9051
  br label %.noexc19.i

bb.iw:                                            ; preds = %.noexc86.i
  %.sroa.292.0.copyload.i.i.i.i.i.i = load i64, ptr %i.aal, align 8, !noalias !9051 ; 3 uses
  switch i64 %i.aaj, label %default.unreachable [
    i64 0, label %bb.ix
    i64 1, label %bb.iy
    i64 2, label %bb.iz
  ]

bb.ix:                                            ; preds = %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9176
  %i.aan = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.292.0.copyload.i.i.i.i.i.i, ptr %i.aan, align 8, !noalias !9176
  store i8 3, ptr %i.k, align 8, !noalias !9176
  %i.aao = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %.noexc87.i unwind label %bb.jj, !noalias !9036

.noexc87.i:                                       ; preds = %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9176
  br label %bb.ja

bb.iy:                                            ; preds = %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9177
  %i.aap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.292.0.copyload.i.i.i.i.i.i, ptr %i.aap, align 8, !noalias !9177
  store i8 1, ptr %i.j, align 8, !noalias !9177
  %i.aaq = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %.noexc88.i unwind label %bb.jj, !noalias !9036

.noexc88.i:                                       ; preds = %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9177
  br label %bb.ja

bb.iz:                                            ; preds = %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9178
  %i.aar = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.292.0.copyload.i.i.i.i.i.i, ptr %i.aar, align 8, !noalias !9178
  store i8 2, ptr %i.i, align 8, !noalias !9178
  %i.aas = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %.noexc89.i unwind label %bb.jj, !noalias !9036

.noexc89.i:                                       ; preds = %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9178
  br label %bb.ja

bb.ja:                                            ; preds = %.noexc89.i, %.noexc88.i, %.noexc87.i
  %.sink.i85.i.i.i.i.i.i = phi ptr [ %i.aas, %.noexc89.i ], [ %i.aaq, %.noexc88.i ], [ %i.aao, %.noexc87.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !9051
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ja, %.thread201.i.i.i.i.i.i, %bb.al, %.noexc22.i, %.noexc20.i, %.noexc18.i
  %i.aat = phi ptr [ %.sink.i85.i.i.i.i.i.i, %bb.ja ], [ %i.sa, %.thread201.i.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.i, %bb.al ], [ %i.eh, %.noexc22.i ], [ %i.ef, %.noexc20.i ], [ %i.ed, %.noexc18.i ]
  %i.aau = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3793f630b9a7d5a8E(ptr noalias noundef nonnull align 8 %i.aat, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br)
          to label %.noexc19.i unwind label %bb.jj, !noalias !9036

"_ZN4time5serde96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$time..offset_date_time..OffsetDateTime$GT$11deserialize17h24e54c030ba03e58E.exit.i.i.i.i": ; preds = %bb.is, %"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h9c0d41a6289c9b69E.exit.i.i.i.i.i"
  %.sroa.0.sroa.0.sroa.0.0.in.i.i.i.i = phi i64 [ %.sroa.094.i.sroa.0.0.i.i.i.i.i, %bb.is ], [ %.sroa.0.sroa.7.022.i.i.i.i.i.i, %"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h9c0d41a6289c9b69E.exit.i.i.i.i.i" ]
  %.sroa.22.0.i.i.i.i = phi i64 [ %i.aag, %bb.is ], [ %.sroa.10.sroa.0.0.insert.insert5.i.i.i.i.i.i, %"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h9c0d41a6289c9b69E.exit.i.i.i.i.i" ]
  %i.aav = and i64 %.sroa.0.sroa.0.sroa.0.0.in.i.i.i.i, 72057594037927935
  %.pre.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9179, !noalias !9180
  %.promoted.i.i.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9181, !noalias !9182
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h493a814b32408b49E.exit.i"

bb.jb:                                            ; preds = %.lr.ph.i.i.i.i
  %i.aaw = add i64 %i.bw, 1                       ; 4 uses
  store i64 %i.aaw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9183, !noalias !9184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9185)
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aaw, i64 %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9186)
  %exitcond.not.i9.not.i.i.i = icmp ult i64 %i.aaw, %2
  br i1 %exitcond.not.i9.not.i.i.i, label %bb.jc, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i"

bb.jc:                                            ; preds = %bb.jb
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aaw
  %i.aay = load i8, ptr %i.aax, align 1, !noalias !9187, !noundef !8
  %i.aaz = add i64 %i.bw, 2                       ; 3 uses
  store i64 %i.aaz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9188, !noalias !9189
  %.not.i.i.i.i = icmp eq i8 %i.aay, 117
  br i1 %.not.i.i.i.i, label %bb.jd, label %bb.jh, !prof !19

bb.jd:                                            ; preds = %bb.jc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9190)
  %exitcond.not.i9.1.i.i.i = icmp eq i64 %i.aaz, %umax.i.i.i.i
  br i1 %exitcond.not.i9.1.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i", label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 %i.aaz
  %i.abb = load i8, ptr %i.aba, align 1, !noalias !9191, !noundef !8
  %i.abc = add i64 %i.bw, 3                       ; 3 uses
  store i64 %i.abc, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9192, !noalias !9189
  %.not.i.1.i.i.i = icmp eq i8 %i.abb, 108
  br i1 %.not.i.1.i.i.i, label %bb.jf, label %bb.jh, !prof !19

bb.jf:                                            ; preds = %bb.je
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9193)
  %exitcond.not.i9.2.i.i.i = icmp eq i64 %i.abc, %umax.i.i.i.i
  br i1 %exitcond.not.i9.2.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i", label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 %i.abc
  %i.abe = load i8, ptr %i.abd, align 1, !noalias !9194, !noundef !8
  %i.abf = add i64 %i.bw, 4                       ; 2 uses
  store i64 %i.abf, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9195, !noalias !9189
  %.not.i.2.i.i.i = icmp eq i8 %i.abe, 108
  br i1 %.not.i.2.i.i.i, label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h493a814b32408b49E.exit.i", label %bb.jh, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i": ; preds = %bb.jf, %bb.jd, %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9196
  store i64 5, ptr %i.d, align 8, !noalias !9196
  %i.abg = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc91.i unwind label %bb.jj, !noalias !9036

.noexc91.i:                                       ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9196
  br label %.noexc19.i

bb.jh:                                            ; preds = %bb.jg, %bb.je, %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9196
  store i64 9, ptr %i.c, align 8, !noalias !9196
  %i.abh = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc92.i unwind label %bb.jj, !noalias !9036

.noexc92.i:                                       ; preds = %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9196
  br label %.noexc19.i

.body.i:                                          ; preds = %bb.jm, %bb.jj, %bb.ip, %bb.il, %bb.ic
  %.pn.i = phi { ptr, i32 } [ %i.abs, %bb.jm ], [ %i.abj, %bb.jj ], [ %i.zv, %bb.il ], [ %i.aad, %bb.ip ], [ %i.zl, %bb.ic ] ; 2 uses
  %.val8.i = load i64, ptr %i.br, align 8, !range !9, !alias.scope !9197, !noalias !9036, !noundef !8 ; 2 uses
  %i.abi = icmp eq i64 %.val8.i, 0
  br i1 %i.abi, label %common.resume, label %bb.ji

bb.ji:                                            ; preds = %.body.i
  %.val9.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9036, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %.val8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9198
  br label %common.resume

bb.jj:                                            ; preds = %bb.jh, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i", %.invoke.i, %bb.iz, %bb.iy, %bb.ix, %bb.iu, %bb.it, %bb.ir, %bb.im, %bb.hx, %.invoke275.i, %bb.hp, %bb.hn, %bb.hl, %bb.hj, %bb.hi, %bb.hg, %bb.hf, %bb.hd, %bb.hc, %.critedge.i.i.i.i.i.i.invoke.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hf902660a8d877d02E.exit.i.i.i.i.i.i.i.i.i", %.invoke276.i, %bb.gy, %bb.gw, %bb.gu, %bb.gr, %bb.gq, %bb.gn, %bb.gl, %bb.gj, %bb.gf, %.loopexit.i.i.i.i.i.i164.i.i.i.i.i.i.i, %bb.fz, %bb.fw, %bb.fu, %bb.fs, %bb.fp, %bb.fo, %bb.fl, %bb.fj, %bb.fh, %bb.fd, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ex, %"_ZN119_$LT$time..serde..visitor..Visitor$LT$time..offset_date_time..OffsetDateTime$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h9c0d41a6289c9b69E.exit.thread.i.i.i.i.i", %bb.bw, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.ak, %bb.aj, %bb.ai, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i81.i.i.i.i.i.i", %bb.r, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i73.i.i.i.i.i.i", %bb.k, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i", %.loopexit.i.i.i.i.i.i
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h493a814b32408b49E.exit.i": ; preds = %bb.jg, %"_ZN4time5serde96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$time..offset_date_time..OffsetDateTime$GT$11deserialize17h24e54c030ba03e58E.exit.i.i.i.i"
  %.promoted.i.i.i = phi i64 [ %i.abf, %bb.jg ], [ %.promoted.i.i.pre.i, %"_ZN4time5serde96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$time..offset_date_time..OffsetDateTime$GT$11deserialize17h24e54c030ba03e58E.exit.i.i.i.i" ] ; 2 uses
  %i.abk = phi i64 [ %2, %bb.jg ], [ %.pre.i, %"_ZN4time5serde96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$time..offset_date_time..OffsetDateTime$GT$11deserialize17h24e54c030ba03e58E.exit.i.i.i.i" ] ; 2 uses
  %.sroa.7.0.i = phi i64 [ undef, %bb.jg ], [ %.sroa.22.0.i.i.i.i, %"_ZN4time5serde96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$time..offset_date_time..OffsetDateTime$GT$11deserialize17h24e54c030ba03e58E.exit.i.i.i.i" ]
  %.sroa.0.sroa.0.0.insert.insert104.i = phi i64 [ 72057594037927936, %bb.jg ], [ %i.aav, %"_ZN4time5serde96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$time..offset_date_time..OffsetDateTime$GT$11deserialize17h24e54c030ba03e58E.exit.i.i.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9199)
  call void @llvm.experimental.noalias.scope.decl(metadata !9200)
  %i.abl = icmp ult i64 %.promoted.i.i.i, %i.abk
  br i1 %i.abl, label %.lr.ph.i.i.i, label %.loopexit.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h493a814b32408b49E.exit.i"
  %i.abm = load ptr, ptr %i.bt, align 8, !alias.scope !9179, !noalias !9180, !nonnull !8, !align !13, !noundef !8
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jl, %.lr.ph.i.i.i
  %i.abn = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.abq, %bb.jl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9201)
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.abn
  %i.abp = load i8, ptr %i.abo, align 1, !noalias !9202, !noundef !8
  switch i8 %i.abp, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i" [
    i8 32, label %bb.jl
    i8 10, label %bb.jl
    i8 9, label %bb.jl
    i8 13, label %bb.jl
  ]

bb.jl:                                            ; preds = %bb.jk, %bb.jk, %bb.jk, %bb.jk
  %i.abq = add i64 %i.abn, 1                      ; 3 uses
  store i64 %i.abq, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9203, !noalias !9182
  %exitcond.not.i.i.i = icmp eq i64 %i.abq, %i.abk
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %bb.jk

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i": ; preds = %bb.jk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9204
  store i64 22, ptr %i.b, align 8, !noalias !9204
  %i.abr = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.br, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.jn unwind label %bb.jm, !noalias !9036

bb.jm:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i"
  %i.abs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.jn:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9204
  br label %.noexc19.i

.loopexit.i:                                      ; preds = %bb.jl, %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h493a814b32408b49E.exit.i"
  %.val6.i = load i64, ptr %i.br, align 8, !range !9, !alias.scope !9197, !noalias !9036, !noundef !8 ; 2 uses
  %i.abt = icmp eq i64 %.val6.i, 0
  br i1 %i.abt, label %_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit.thread8, label %_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit

.noexc19.i:                                       ; preds = %.noexc.i, %.noexc10.i, %.noexc11.i, %.noexc12.i, %.noexc13.i, %.noexc14.i, %.noexc15.i, %bb.ag, %bb.am, %bb.iv, %.invoke.i, %.noexc91.i, %.noexc92.i, %bb.jn
  %.sroa.7.0.in = phi ptr [ %i.abr, %bb.jn ], [ %i.aau, %.invoke.i ], [ %i.ds, %.noexc14.i ], [ %i.abh, %.noexc92.i ], [ %i.ec, %bb.am ], [ %i.cr, %.noexc10.i ], [ %i.ei, %bb.ag ], [ %i.dd, %.noexc12.i ], [ %i.de, %.noexc13.i ], [ %i.abg, %.noexc91.i ], [ %i.cs, %.noexc11.i ], [ %i.dt, %.noexc15.i ], [ %i.aam, %bb.iv ], [ %i.cf, %.noexc.i ] ; 2 uses
  %.val.i = load i64, ptr %i.br, align 8, !range !9, !alias.scope !9197, !noalias !9036, !noundef !8 ; 2 uses
  %i.abu = icmp eq i64 %.val.i, 0
  br i1 %i.abu, label %_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit.thread, label %_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit.thread15

_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit.thread15: ; preds = %.noexc19.i
  %.val7.i20 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9036, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i20, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9036
  br label %_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit.thread

common.resume:                                    ; preds = %bb.jp, %.body.i, %bb.ji
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %.pn.i, %bb.ji ], [ %i.abx, %bb.jp ]
  resume { ptr, i32 } %common.resume.op

_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit: ; preds = %.loopexit.i
  %.val7.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9036, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef %.val6.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9036
  br label %_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit.thread8

_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit.thread: ; preds = %.noexc19.i, %_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit.thread15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !9036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store ptr %.sroa.7.0.in, ptr %i.bs, align 8, !noalias !9205
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49
  %i.abv = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #49 ; 3 uses
  %i.abw = icmp eq ptr %i.abv, null
  br i1 %i.abw, label %bb.jo, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0ccee352b21bc803E.exit", !prof !11

bb.jo:                                            ; preds = %_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit.thread
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #50
          to label %.noexc unwind label %bb.jp

.noexc:                                           ; preds = %bb.jo
  unreachable

bb.jp:                                            ; preds = %bb.jo
  %i.abx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bs) #51
          to label %common.resume unwind label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.aby = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #52
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0ccee352b21bc803E.exit": ; preds = %_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit.thread
  store ptr %.sroa.7.0.in, ptr %i.abv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.abv, ptr %i.abz, align 8
  %i.aca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @42, ptr %i.aca, align 8
  br label %bb.jr

_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit.thread8: ; preds = %.loopexit.i, %_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !9036
  %i.acb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0.sroa.0.0.insert.insert104.i, ptr %i.acb, align 4
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.7.0.i, ptr %.sroa.43.0..sroa_idx, align 4
  br label %bb.jr

bb.jr:                                            ; preds = %_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit.thread8, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0ccee352b21bc803E.exit"
  %storemerge = phi i32 [ 0, %_ZN10serde_json2de10from_trait17h04f459ce81af0d09E.exit.thread8 ], [ 1, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0ccee352b21bc803E.exit" ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hf281ade457d4f989E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
end_hunk_4
begin_hunk_5_@"_ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hf281ade457d4f989E":bb.a
  %.sroa.14.01547.i.i.i.i = phi ptr [ %.sroa.14.02292.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.14.02292.i.i.i.i, %bb.ia ], [ %.sroa.14.02292.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.14.01550.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0452.01441.i.i.i.i = phi i64 [ %.sroa.0452.02293.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0452.02293.i.i.i.i, %bb.ia ], [ %.sroa.0452.02293.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.0452.01444.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ %.sroa.0452.02293.lcssa3137.ph.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ] ; 3 uses
  %.sroa.0219.1.i.i.i.i = phi i1 [ %.sroa.0219.6.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0219.6.i.i.i.i, %bb.ia ], [ %.sroa.0219.6.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ true, %.loopexit.i.i.i.i ], [ true, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ true, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ]
  %.sroa.0221.1.i.i.i.i = phi i1 [ %.sroa.0221.6.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0221.6.i.i.i.i, %bb.ia ], [ %.sroa.0221.6.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ true, %.loopexit.i.i.i.i ], [ true, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ true, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ]
  %.sroa.0223.1.i.i.i.i = phi i8 [ %.sroa.0223.5.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0223.5.i.i.i.i, %bb.ia ], [ %.sroa.0223.5.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ 1, %.loopexit.i.i.i.i ], [ 1, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ 1, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ]
  %.sroa.0225.1.i.i.i.i = phi i8 [ %.sroa.0225.4.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0225.4.i.i.i.i, %bb.ia ], [ %.sroa.0225.4.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ 1, %.loopexit.i.i.i.i ], [ 1, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ 1, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ]
  %.pn286.i.i.i.i = phi { ptr, i32 } [ %.pn273.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.pn273.i.i.i.i, %bb.ia ], [ %.pn273.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp615.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ %lpad.loopexit4002.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ] ; 4 uses
  %i.li = load i64, ptr %i.as, align 8, !range !35, !noalias !9740, !noundef !8
  %i.lj = icmp ne i64 %i.li, -9223372036854775808
  %or.cond9.i.i.i.i = and i1 %.sroa.0219.1.i.i.i.i, %i.lj
  br i1 %or.cond9.i.i.i.i, label %bb.ik, label %bb.ie

.loopexit.i.i.i.i:                                ; preds = %bb.ey, %bb.eh, %bb.ef, %bb.ed, %bb.ec
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit445.i.i.i.i"

.loopexit.split-lp.loopexit.loopexit.i.i.i.i:     ; preds = %bb.gz, %bb.gt, %bb.gn, %bb.gi, %bb.gd, %bb.fx, %bb.fs, %bb.fm, %.loopexit.i.i.i.i.i.i
  %.sroa.0452.02293.lcssa3137.ph.i.i.i.i = phi i64 [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ -9223372036854775807, %bb.fm ], [ %.sroa.0452.02293.i.i.i.i, %bb.fs ], [ %.sroa.0452.02293.i.i.i.i, %bb.fx ], [ %.sroa.0452.02293.i.i.i.i, %bb.gd ], [ %.sroa.0452.02293.i.i.i.i, %bb.gi ], [ %.sroa.0452.02293.i.i.i.i, %bb.gn ], [ %.sroa.0452.02293.i.i.i.i, %bb.gt ], [ %.sroa.0452.02293.i.i.i.i, %bb.gz ]
  %.sroa.0457.02290.lcssa2867.ph.i.i.i.i = phi i64 [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.fm ], [ -9223372036854775807, %bb.fs ], [ %.sroa.0457.02290.i.i.i.i, %bb.fx ], [ %.sroa.0457.02290.i.i.i.i, %bb.gd ], [ %.sroa.0457.02290.i.i.i.i, %bb.gi ], [ %.sroa.0457.02290.i.i.i.i, %bb.gn ], [ %.sroa.0457.02290.i.i.i.i, %bb.gt ], [ %.sroa.0457.02290.i.i.i.i, %bb.gz ]
  %.sroa.0463.02287.lcssa2597.ph.i.i.i.i = phi i64 [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.fm ], [ %.sroa.0463.02287.i.i.i.i, %bb.fs ], [ %.sroa.0463.02287.i.i.i.i, %bb.fx ], [ -9223372036854775808, %bb.gd ], [ %.sroa.0463.02287.i.i.i.i, %bb.gi ], [ %.sroa.0463.02287.i.i.i.i, %bb.gn ], [ %.sroa.0463.02287.i.i.i.i, %bb.gt ], [ %.sroa.0463.02287.i.i.i.i, %bb.gz ]
  %lpad.loopexit4002.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit445.i.i.i.i"

.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i: ; preds = %bb.fw, %.loopexit.i.i.i385.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit445.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.i.i.i:     ; preds = %.invoke6826, %.invoke, %bb.gy, %.loopexit.i.i.i428.i.i.i.i, %bb.gs, %.loopexit.i.i.i418.i.i.i.i, %bb.gm, %.loopexit.i.i.i410.i.i.i.i, %bb.gh, %.loopexit.i.i.i401.i.i.i.i, %bb.gc, %.loopexit.i.i.i393.i.i.i.i, %bb.fr, %.loopexit.i.i.i375.i.i.i.i, %bb.fl, %.loopexit.i.i.i368.i.i.i.i, %bb.fh, %bb.fe, %.loopexit146.i.i.i.i.i.i.i.i.i.i, %bb.ez, %.loopexit147.i.i.i.i.i.i.i.i.i.i, %bb.eo, %bb.eg, %.loopexit242.i.i.i.i.i.i.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i", %.loopexit249.i.i.i.i.i.i.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i", %.loopexit256.i.i.i.i.i.i.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i", %.loopexit153.i.i.i.i.i.i.i.i.i.i, %bb.dd, %.loopexit.i.i.i341.i.i.i.i, %bb.cg, %bb.cf, %bb.ce, %.loopexit.i.i.i.i.i.i.i, %bb.cd, %.loopexit23.i.i.i.i.i.i.i
  %.sroa.14467.02120.i.i.i.i = phi ptr [ %.sroa.14467.02286.i.i.i.i, %bb.gy ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i428.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.gs ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i418.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.gm ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i410.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.gh ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i401.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.gc ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i393.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.fr ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i375.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.fl ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i368.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.fh ], [ %.sroa.14467.02286.i.i.i.i, %.invoke6826 ], [ %.sroa.14467.02286.i.i.i.i, %bb.fe ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit146.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.ez ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit147.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.eo ], [ %.sroa.14467.02286.i.i.i.i, %.invoke ], [ %.sroa.14467.02286.i.i.i.i, %bb.eg ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit242.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit249.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit256.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit153.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.dd ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i341.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.cg ], [ %.sroa.14467.02286.i.i.i.i, %bb.cf ], [ %.sroa.14467.02286.i.i.i.i, %bb.ce ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.cd ], [ %.sroa.14467.02121.i.i.i.i, %.loopexit23.i.i.i.i.i.i.i ]
  %.sroa.0463.02042.i.i.i.i = phi i64 [ %.sroa.0463.02287.i.i.i.i, %bb.gy ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i428.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.gs ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i418.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.gm ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i410.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.gh ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i401.i.i.i.i ], [ -9223372036854775808, %bb.gc ], [ -9223372036854775808, %.loopexit.i.i.i393.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.fr ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i375.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.fl ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i368.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.fh ], [ %.sroa.0463.02287.i.i.i.i, %.invoke6826 ], [ %.sroa.0463.02287.i.i.i.i, %bb.fe ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit146.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.ez ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit147.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.eo ], [ %.sroa.0463.02287.i.i.i.i, %.invoke ], [ %.sroa.0463.02287.i.i.i.i, %bb.eg ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit242.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit249.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit256.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit153.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.dd ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i341.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.cg ], [ %.sroa.0463.02287.i.i.i.i, %bb.cf ], [ %.sroa.0463.02287.i.i.i.i, %bb.ce ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.cd ], [ %.sroa.0463.02011.i.i.i.i, %.loopexit23.i.i.i.i.i.i.i ]
  %.sroa.14461.01834.i.i.i.i = phi ptr [ %.sroa.14461.02289.i.i.i.i, %bb.gy ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i428.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.gs ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i418.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.gm ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i410.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.gh ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i401.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.gc ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i393.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.fr ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i375.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.fl ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i368.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.fh ], [ %.sroa.14461.02289.i.i.i.i, %.invoke6826 ], [ %.sroa.14461.02289.i.i.i.i, %bb.fe ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit146.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.ez ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit147.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.eo ], [ %.sroa.14461.02289.i.i.i.i, %.invoke ], [ %.sroa.14461.02289.i.i.i.i, %bb.eg ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit242.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit249.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit256.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit153.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.dd ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i341.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.cg ], [ %.sroa.14461.02289.i.i.i.i, %bb.cf ], [ %.sroa.14461.02289.i.i.i.i, %bb.ce ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.cd ], [ %.sroa.14461.01835.i.i.i.i, %.loopexit23.i.i.i.i.i.i.i ]
  %.sroa.0457.01728.i.i.i.i = phi i64 [ %.sroa.0457.02290.i.i.i.i, %bb.gy ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i428.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.gs ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i418.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.gm ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i410.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.gh ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i401.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.gc ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i393.i.i.i.i ], [ -9223372036854775807, %bb.fr ], [ -9223372036854775807, %.loopexit.i.i.i375.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.fl ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i368.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.fh ], [ %.sroa.0457.02290.i.i.i.i, %.invoke6826 ], [ %.sroa.0457.02290.i.i.i.i, %bb.fe ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit146.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.ez ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit147.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.eo ], [ %.sroa.0457.02290.i.i.i.i, %.invoke ], [ %.sroa.0457.02290.i.i.i.i, %bb.eg ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit242.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit249.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit256.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit153.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.dd ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i341.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.cg ], [ %.sroa.0457.02290.i.i.i.i, %bb.cf ], [ %.sroa.0457.02290.i.i.i.i, %bb.ce ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.cd ], [ %.sroa.0457.01729.i.i.i.i, %.loopexit23.i.i.i.i.i.i.i ]
  %.sroa.14.01550.i.i.i.i = phi ptr [ %.sroa.14.02292.i.i.i.i, %bb.gy ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i428.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.gs ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i418.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.gm ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i410.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.gh ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i401.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.gc ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i393.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.fr ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i375.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.fl ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i368.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.fh ], [ %.sroa.14.02292.i.i.i.i, %.invoke6826 ], [ %.sroa.14.02292.i.i.i.i, %bb.fe ], [ %.sroa.14.02292.i.i.i.i, %.loopexit146.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.ez ], [ %.sroa.14.02292.i.i.i.i, %.loopexit147.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.eo ], [ %.sroa.14.02292.i.i.i.i, %.invoke ], [ %.sroa.14.02292.i.i.i.i, %bb.eg ], [ %.sroa.14.02292.i.i.i.i, %.loopexit242.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14.02292.i.i.i.i, %.loopexit249.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14.02292.i.i.i.i, %.loopexit256.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14.02292.i.i.i.i, %.loopexit153.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.dd ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i341.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.cg ], [ %.sroa.14.02292.i.i.i.i, %bb.cf ], [ %.sroa.14.02292.i.i.i.i, %bb.ce ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.cd ], [ %.sroa.14.01551.i.i.i.i, %.loopexit23.i.i.i.i.i.i.i ]
  %.sroa.0452.01444.i.i.i.i = phi i64 [ %.sroa.0452.02293.i.i.i.i, %bb.gy ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i428.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.gs ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i418.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.gm ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i410.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.gh ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i401.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.gc ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i393.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.fr ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i375.i.i.i.i ], [ -9223372036854775807, %bb.fl ], [ -9223372036854775807, %.loopexit.i.i.i368.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.fh ], [ %.sroa.0452.02293.i.i.i.i, %.invoke6826 ], [ %.sroa.0452.02293.i.i.i.i, %bb.fe ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit146.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.ez ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit147.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.eo ], [ %.sroa.0452.02293.i.i.i.i, %.invoke ], [ %.sroa.0452.02293.i.i.i.i, %bb.eg ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit242.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit249.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit256.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit153.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.dd ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i341.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.cg ], [ %.sroa.0452.02293.i.i.i.i, %bb.cf ], [ %.sroa.0452.02293.i.i.i.i, %bb.ce ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.cd ], [ %.sroa.0452.01445.i.i.i.i, %.loopexit23.i.i.i.i.i.i.i ]
  %lpad.loopexit.split-lp615.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit445.i.i.i.i"

bb.cr:                                            ; preds = %bb.bw
  %.not267.i.i.i.i = icmp eq i64 %.sroa.0452.02293.i.i.i.i, -9223372036854775807
  br i1 %.not267.i.i.i.i, label %bb.hb, label %bb.hc

bb.cs:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9763
  %.not285.i.i.i.i = icmp eq i64 %.sroa.0452.02293.i.i.i.i, -9223372036854775807
  br i1 %.not285.i.i.i.i, label %bb.fi, label %.invoke, !prof !22

bb.ct:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9763
  %.not284.i.i.i.i = icmp eq i64 %.sroa.0457.02290.i.i.i.i, -9223372036854775807
  br i1 %.not284.i.i.i.i, label %bb.fo, label %.invoke, !prof !22

bb.cu:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9763
  %i.lk = trunc nuw i8 %.sroa.0.02303.i.i.i.i to i1
  br i1 %i.lk, label %.invoke, label %bb.ft, !prof !10

bb.cv:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9763
  %.not283.i.i.i.i = icmp eq i64 %.sroa.0463.02287.i.i.i.i, -9223372036854775808
  br i1 %.not283.i.i.i.i, label %bb.fz, label %.invoke, !prof !22

bb.cw:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9763
  %.not282.i.i.i.i = icmp eq i64 %i.hp, -9223372036854775808
  br i1 %.not282.i.i.i.i, label %bb.ge, label %.invoke, !prof !22

bb.cx:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9763
  %.not281.i.i.i.i = icmp eq i8 %.sroa.5.02302.i.i.i.i, 2
  br i1 %.not281.i.i.i.i, label %bb.gj, label %.invoke, !prof !22

bb.cy:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9763
  %.not280.not.i.i.i.i = icmp eq i8 %.sroa.524.02300.i.i.i.i, 0
  br i1 %.not280.not.i.i.i.i, label %.invoke, label %bb.gp, !prof !10

bb.cz:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9763
  %.not279.not.i.i.i.i = icmp eq i8 %.sroa.532.02298.i.i.i.i, 0
  br i1 %.not279.not.i.i.i.i, label %.invoke, label %bb.gv, !prof !10

bb.da:                                            ; preds = %bb.cp, %bb.cm, %bb.ck, %bb.cj, %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9763
  call void @llvm.experimental.noalias.scope.decl(metadata !9764)
  call void @llvm.experimental.noalias.scope.decl(metadata !9765)
  %i.ll = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9766, !noalias !9767, !noundef !8 ; 4 uses
  %.promoted.i.i.i.i340.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9768, !noalias !9769 ; 2 uses
  %i.lm = icmp ult i64 %.promoted.i.i.i.i340.i.i.i.i, %i.ll
  br i1 %i.lm, label %.lr.ph.i.i.i.i342.i.i.i.i, label %.loopexit.i.i.i341.i.i.i.i

.lr.ph.i.i.i.i342.i.i.i.i:                        ; preds = %bb.da
  %i.ln = load ptr, ptr %i.bw, align 8, !alias.scope !9766, !noalias !9767, !nonnull !8, !align !13, !noundef !8 ; 2 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.dc, %.lr.ph.i.i.i.i342.i.i.i.i
  %i.lo = phi i64 [ %.promoted.i.i.i.i340.i.i.i.i, %.lr.ph.i.i.i.i342.i.i.i.i ], [ %i.lr, %bb.dc ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9770)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !noalias !9771, !noundef !8
  switch i8 %i.lq, label %bb.dd [
    i8 32, label %bb.dc
    i8 10, label %bb.dc
    i8 9, label %bb.dc
    i8 13, label %bb.dc
    i8 58, label %bb.de
  ], !prof !47

bb.dc:                                            ; preds = %bb.db, %bb.db, %bb.db, %bb.db
  %i.lr = add i64 %i.lo, 1                        ; 3 uses
  store i64 %i.lr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9772, !noalias !9769
  %exitcond.not.i.i.i.i343.i.i.i.i = icmp eq i64 %i.lr, %i.ll
  br i1 %exitcond.not.i.i.i.i343.i.i.i.i, label %.loopexit.i.i.i341.i.i.i.i, label %bb.db

.loopexit.i.i.i341.i.i.i.i:                       ; preds = %bb.da, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !9773
  store i64 3, ptr %i.aj, align 8, !noalias !9773
  %i.ls = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj)
          to label %.noexc344.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9749

.noexc344.i.i.i.i:                                ; preds = %.loopexit.i.i.i341.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9773
  br label %.loopexit625.i.i.i.i

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !9773
  store i64 6, ptr %i.ak, align 8, !noalias !9773
  %i.lt = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ak)
          to label %.noexc345.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9749

.noexc345.i.i.i.i:                                ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9773
  br label %.loopexit625.i.i.i.i

bb.de:                                            ; preds = %bb.db
  %i.lu = add i64 %i.lo, 1                        ; 3 uses
  store i64 %i.lu, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9774, !noalias !9749
  call void @llvm.experimental.noalias.scope.decl(metadata !9775)
  call void @llvm.experimental.noalias.scope.decl(metadata !9776)
  call void @llvm.experimental.noalias.scope.decl(metadata !9777)
  call void @llvm.experimental.noalias.scope.decl(metadata !9778)
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9779, !noalias !9749
  %i.lv = icmp ult i64 %i.lu, %i.ll
  br i1 %i.lv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit153.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.de, %bb.ff
  %i.lw = phi ptr [ %i.qe, %bb.ff ], [ %i.ln, %bb.de ] ; 11 uses
  %.promoted.i194.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %bb.ff ], [ %i.lu, %bb.de ]
  %i.lx = phi i64 [ %i.qd, %bb.ff ], [ %i.ll, %bb.de ] ; 7 uses
  %.sroa.01.0193.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.ff ], [ false, %bb.de ] ; 3 uses
  %.sroa.8.0192.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.030.0186.i.i.i.i.i.i.i.i.i.i, %bb.ff ], [ undef, %bb.de ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9780)
  br label %bb.df

bb.df:                                            ; preds = %bb.dg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ly = phi i64 [ %.promoted.i194.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mb, %bb.dg ] ; 17 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !noalias !9781, !noundef !8 ; 3 uses
  switch i8 %i.ma, label %bb.dh [
    i8 32, label %bb.dg
    i8 10, label %bb.dg
    i8 9, label %bb.dg
    i8 13, label %bb.dg
    i8 110, label %bb.di
    i8 116, label %bb.do
    i8 102, label %bb.du
    i8 45, label %bb.ec
    i8 34, label %bb.ed
    i8 91, label %bb.ee
    i8 123, label %bb.ee
  ]

bb.dg:                                            ; preds = %bb.df, %bb.df, %bb.df, %bb.df
  %i.mb = add i64 %i.ly, 1                        ; 3 uses
  store i64 %i.mb, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9782, !noalias !9783
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mb, %i.lx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit153.i.i.i.i.i.i.i.i.i.i, label %bb.df

.loopexit153.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.de, %bb.ff, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !9784
  store i64 5, ptr %i.ai, align 8, !noalias !9784
  %i.mc = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ai)
          to label %.noexc346.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9749

.noexc346.i.i.i.i:                                ; preds = %.loopexit153.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !9784
  br label %.loopexit625.i.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.md = add i8 %i.ma, -48
  %or.cond.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.md, 10
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.eh, label %bb.eg, !prof !16

bb.di:                                            ; preds = %bb.df
  %i.me = add i64 %i.ly, 1                        ; 4 uses
  store i64 %i.me, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9785, !noalias !9749
  call void @llvm.experimental.noalias.scope.decl(metadata !9786)
  %umax.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.me, i64 %i.lx) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9787)
  %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.me, %i.lx
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i, label %bb.dj, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.dj:                                            ; preds = %bb.di
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !noalias !9788, !noundef !8
  %i.mh = add i64 %i.ly, 2                        ; 3 uses
  store i64 %i.mh, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9789, !noalias !9790
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.mg, 117
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.dk, label %.loopexit256.i.i.i.i.i.i.i.i.i.i, !prof !19

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.experimental.noalias.scope.decl(metadata !9791)
  %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mh, %umax.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !noalias !9792, !noundef !8
  %i.mk = add i64 %i.ly, 3                        ; 3 uses
  store i64 %i.mk, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9793, !noalias !9790
  %.not.i.1.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.mj, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i.i.i.i, label %bb.dm, label %.loopexit256.i.i.i.i.i.i.i.i.i.i, !prof !19

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.experimental.noalias.scope.decl(metadata !9794)
  %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mk, %umax.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !noalias !9795, !noundef !8
  %i.mn = add i64 %i.ly, 4
  store i64 %i.mn, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9796, !noalias !9790
  %.not.i.2.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.mm, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i.i.i.i, label %.loopexit150.i.i.i.i.i.i.i.i.i.i, label %.loopexit256.i.i.i.i.i.i.i.i.i.i, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dm, %bb.dk, %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9797
  store i64 5, ptr %i.aa, align 8, !noalias !9797
  %i.mo = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %.noexc347.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9749

.noexc347.i.i.i.i:                                ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9797
  br label %.loopexit625.i.i.i.i

.loopexit256.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dn, %bb.dl, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !9797
  store i64 9, ptr %i.z, align 8, !noalias !9797
  %i.mp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc348.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9749

.noexc348.i.i.i.i:                                ; preds = %.loopexit256.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !9797
  br label %.loopexit625.i.i.i.i

bb.do:                                            ; preds = %bb.df
  %i.mq = add i64 %i.ly, 1                        ; 4 uses
  store i64 %i.mq, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9798, !noalias !9749
  call void @llvm.experimental.noalias.scope.decl(metadata !9799)
  %umax.i69.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mq, i64 %i.lx) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9800)
  %exitcond.not.i71.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.mq, %i.lx
  br i1 %exitcond.not.i71.not.i.i.i.i.i.i.i.i.i.i, label %bb.dp, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i"

bb.dp:                                            ; preds = %bb.do
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !noalias !9801, !noundef !8
  %i.mt = add i64 %i.ly, 2                        ; 3 uses
  store i64 %i.mt, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9802, !noalias !9803
  %.not.i72.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ms, 114
  br i1 %.not.i72.i.i.i.i.i.i.i.i.i.i, label %bb.dq, label %.loopexit249.i.i.i.i.i.i.i.i.i.i, !prof !19

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.experimental.noalias.scope.decl(metadata !9804)
  %exitcond.not.i71.1.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mt, %umax.i69.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i71.1.i.i.i.i.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i", label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !noalias !9805, !noundef !8
  %i.mw = add i64 %i.ly, 3                        ; 3 uses
  store i64 %i.mw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9806, !noalias !9803
  %.not.i72.1.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.mv, 117
  br i1 %.not.i72.1.i.i.i.i.i.i.i.i.i.i, label %bb.ds, label %.loopexit249.i.i.i.i.i.i.i.i.i.i, !prof !19

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.experimental.noalias.scope.decl(metadata !9807)
  %exitcond.not.i71.2.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mw, %umax.i69.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i71.2.i.i.i.i.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i", label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !noalias !9808, !noundef !8
  %i.mz = add i64 %i.ly, 4
  store i64 %i.mz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9809, !noalias !9803
  %.not.i72.2.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.my, 101
  br i1 %.not.i72.2.i.i.i.i.i.i.i.i.i.i, label %.loopexit150.i.i.i.i.i.i.i.i.i.i, label %.loopexit249.i.i.i.i.i.i.i.i.i.i, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ds, %bb.dq, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !9810
  store i64 5, ptr %i.y, align 8, !noalias !9810
  %i.na = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %.noexc349.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9749

.noexc349.i.i.i.i:                                ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !9810
  br label %.loopexit625.i.i.i.i

.loopexit249.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dt, %bb.dr, %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !9810
  store i64 9, ptr %i.x, align 8, !noalias !9810
  %i.nb = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x)
          to label %.noexc350.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9749

.noexc350.i.i.i.i:                                ; preds = %.loopexit249.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !9810
  br label %.loopexit625.i.i.i.i

bb.du:                                            ; preds = %bb.df
  %i.nc = add i64 %i.ly, 1                        ; 4 uses
  store i64 %i.nc, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9811, !noalias !9749
  call void @llvm.experimental.noalias.scope.decl(metadata !9812)
  %umax.i77.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.nc, i64 %i.lx) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9813)
  %exitcond.not.i79.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.nc, %i.lx
  br i1 %exitcond.not.i79.not.i.i.i.i.i.i.i.i.i.i, label %bb.dv, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i"

bb.dv:                                            ; preds = %bb.du
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1, !noalias !9814, !noundef !8
  %i.nf = add i64 %i.ly, 2                        ; 3 uses
  store i64 %i.nf, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9815, !noalias !9816
  %.not.i80.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ne, 97
  br i1 %.not.i80.i.i.i.i.i.i.i.i.i.i, label %bb.dw, label %.loopexit242.i.i.i.i.i.i.i.i.i.i, !prof !19

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !9817)
  %exitcond.not.i79.1.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.nf, %umax.i77.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i79.1.i.i.i.i.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i", label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.nf
  %i.nh = load i8, ptr %i.ng, align 1, !noalias !9818, !noundef !8
  %i.ni = add i64 %i.ly, 3                        ; 3 uses
  store i64 %i.ni, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9819, !noalias !9816
  %.not.i80.1.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nh, 108
  br i1 %.not.i80.1.i.i.i.i.i.i.i.i.i.i, label %bb.dy, label %.loopexit242.i.i.i.i.i.i.i.i.i.i, !prof !19

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.experimental.noalias.scope.decl(metadata !9820)
  %exitcond.not.i79.2.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ni, %umax.i77.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i79.2.i.i.i.i.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i", label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !noalias !9821, !noundef !8
  %i.nl = add i64 %i.ly, 4                        ; 3 uses
  store i64 %i.nl, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9822, !noalias !9816
  %.not.i80.2.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nk, 115
  br i1 %.not.i80.2.i.i.i.i.i.i.i.i.i.i, label %bb.ea, label %.loopexit242.i.i.i.i.i.i.i.i.i.i, !prof !19

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.experimental.noalias.scope.decl(metadata !9823)
  %exitcond.not.i79.3.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.nl, %umax.i77.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i79.3.i.i.i.i.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i", label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.nm = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !noalias !9824, !noundef !8
  %i.no = add i64 %i.ly, 5
  store i64 %i.no, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9825, !noalias !9816
  %.not.i80.3.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nn, 101
  br i1 %.not.i80.3.i.i.i.i.i.i.i.i.i.i, label %.loopexit150.i.i.i.i.i.i.i.i.i.i, label %.loopexit242.i.i.i.i.i.i.i.i.i.i, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ea, %bb.dy, %bb.dw, %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !9826
  store i64 5, ptr %i.w, align 8, !noalias !9826
  %i.np = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc351.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9749

.noexc351.i.i.i.i:                                ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !9826
  br label %.loopexit625.i.i.i.i

.loopexit242.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.eb, %bb.dz, %bb.dx, %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !9826
  store i64 9, ptr %i.v, align 8, !noalias !9826
  %i.nq = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc352.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9749

.noexc352.i.i.i.i:                                ; preds = %.loopexit242.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !9826
  br label %.loopexit625.i.i.i.i

bb.ec:                                            ; preds = %bb.df
  %i.nr = add i64 %i.ly, 1
  store i64 %i.nr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9827, !noalias !9749
  %i.ns = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h8aae432b7713b6bcE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bu)
          to label %.noexc353.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !9749 ; 2 uses

.noexc353.i.i.i.i:                                ; preds = %bb.ec
  %.not57.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ns, null
  br i1 %.not57.i.i.i.i.i.i.i.i.i.i, label %.loopexit150.i.i.i.i.i.i.i.i.i.i, label %.loopexit625.i.i.i.i

bb.ed:                                            ; preds = %bb.df
  %i.nt = add i64 %i.ly, 1
  store i64 %i.nt, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9828, !noalias !9749
  %i.nu = invoke noundef align 8 ptr @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$10ignore_str17h7f65efcd6d706c0fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %.noexc354.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !9749 ; 2 uses

.noexc354.i.i.i.i:                                ; preds = %bb.ed
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit150.i.i.i.i.i.i.i.i.i.i, label %.loopexit625.i.i.i.i

bb.ee:                                            ; preds = %bb.df, %bb.df
  call void @llvm.experimental.noalias.scope.decl(metadata !9829)
  %i.nv = zext i1 %.sroa.01.0193.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.nw = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9830, !noalias !9749, !noundef !8 ; 3 uses
  %i.nx = load i64, ptr %i.bu, align 8, !range !9, !alias.scope !9830, !noalias !9749, !noundef !8
  %i.ny = sub i64 %i.nx, %i.nw
  %i.nz = icmp ult i64 %i.ny, %i.nv
  br i1 %i.nz, label %bb.ef, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !10

bb.ef:                                            ; preds = %bb.ee
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bu, i64 noundef %i.nw, i64 noundef %i.nv, i64 noundef 1, i64 noundef 1)
          to label %.noexc355.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !9749

.noexc355.i.i.i.i:                                ; preds = %bb.ef
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9831, !noalias !9749
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc355.i.i.i.i, %bb.ee
  %i.oa = phi i64 [ %i.nw, %bb.ee ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %.noexc355.i.i.i.i ] ; 3 uses
  br i1 %.sroa.01.0193.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.ob = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9831, !noalias !9749, !nonnull !8, !noundef !8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.oa
  store i8 %.sroa.8.0192.i.i.i.i.i.i.i.i.i.i, ptr %i.oc, align 1, !noalias !9832
  %i.od = add i64 %i.oa, 1
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.od, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.oa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i.i.i.i.i.i.i.i.i.i.i" ]
  store i64 %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9831, !noalias !9833
  %i.oe = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9834, !noalias !9749, !noundef !8
  %i.of = add i64 %i.oe, 1
  store i64 %i.of, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9834, !noalias !9749
  br label %bb.ek

bb.eg:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !9784
  store i64 10, ptr %i.ah, align 8, !noalias !9784
  %i.og = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ah)
          to label %.noexc356.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9749

.noexc356.i.i.i.i:                                ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9784
  br label %.loopexit625.i.i.i.i

bb.eh:                                            ; preds = %bb.dh
  %i.oh = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h8aae432b7713b6bcE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bu)
          to label %.noexc357.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !9749 ; 2 uses

.noexc357.i.i.i.i:                                ; preds = %bb.eh
  %.not61.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.oh, null
  br i1 %.not61.i.i.i.i.i.i.i.i.i.i, label %.loopexit150.i.i.i.i.i.i.i.i.i.i, label %.loopexit625.i.i.i.i

.loopexit150.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc357.i.i.i.i, %.noexc354.i.i.i.i, %.noexc353.i.i.i.i, %bb.eb, %bb.dt, %bb.dn
  br i1 %.sroa.01.0193.i.i.i.i.i.i.i.i.i.i, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %.loopexit150.i.i.i.i.i.i.i.i.i.i
  %i.oi = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9779, !noalias !9749, !noundef !8 ; 2 uses
  %.not62.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.oi, 0
  br i1 %.not62.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h1cd303e913ff1fadE.exit.i.i.i.i", label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.oj = add i64 %i.oi, -1                       ; 3 uses
  store i64 %i.oj, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9779, !noalias !9749
  %i.ok = load i64, ptr %i.bu, align 8, !range !9, !alias.scope !9779, !noalias !9749, !noundef !8
  %i.ol = icmp ult i64 %i.oj, %i.ok
  call void @llvm.assume(i1 %i.ol)
  %i.om = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9779, !noalias !9749, !nonnull !8, !noundef !8
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.oj
  %i.oo = load i8, ptr %i.on, align 1, !noalias !9749, !noundef !8
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.loopexit150.i.i.i.i.i.i.i.i.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.054.1.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.i.i.i.i.i.i.i.i.i.i" ], [ true, %.loopexit150.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.ej ]
  %.sroa.055.1.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ma, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.8.0192.i.i.i.i.i.i.i.i.i.i, %.loopexit150.i.i.i.i.i.i.i.i.i.i ], [ %i.oo, %bb.ej ] ; 2 uses
  %i.op = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9835, !noalias !9836, !noundef !8 ; 6 uses
  %.promoted.i84185.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9837, !noalias !9838 ; 2 uses
  %i.oq = icmp ult i64 %.promoted.i84185.i.i.i.i.i.i.i.i.i.i, %i.op
  br i1 %i.oq, label %.lr.ph.i89.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit145.i.i.i.i.i.i.i.i.i.i

.lr.ph.i89.lr.ph.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ek
  %i.or = load ptr, ptr %i.bw, align 8, !alias.scope !9835, !noalias !9836, !nonnull !8, !align !13, !noundef !8 ; 3 uses
  %.sroa.5.0..sroa_idx.promoted.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !9673
  %i.os = load i64, ptr %i.bu, align 8, !range !9, !noalias !9673
  %i.ot = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9673, !nonnull !8
  br label %.lr.ph.i89.i.i.i.i.i.i.i.i.i.i

.lr.ph.i89.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.eu, %.lr.ph.i89.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ou = phi i64 [ %.sroa.5.0..sroa_idx.promoted.i, %.lr.ph.i89.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.pf, %bb.eu ] ; 2 uses
  %.promoted.i84188.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i84185.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.pe, %bb.eu ]
  %.sroa.028.0187.i.i.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.054.1.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.eu ] ; 2 uses
  %.sroa.030.0186.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.055.1.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.pi, %bb.eu ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9839)
  br label %bb.el

bb.el:                                            ; preds = %bb.em, %.lr.ph.i89.i.i.i.i.i.i.i.i.i.i
  %i.ov = phi i64 [ %.promoted.i84188.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i89.i.i.i.i.i.i.i.i.i.i ], [ %i.oy, %bb.em ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9840)
  %i.ow = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !noalias !9841, !noundef !8
  switch i8 %i.ox, label %.loopexit.i.i.i.i.i.i.i.i.i.i [
    i8 32, label %bb.em
    i8 10, label %bb.em
    i8 9, label %bb.em
    i8 13, label %bb.em
    i8 44, label %bb.ep
    i8 93, label %bb.eq
    i8 125, label %bb.er
end_hunk_5
begin_hunk_6_@"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_str17h025ae41a0cc2e870E":bb.a
  %.sroa.913.0.copyload17 = load i8, ptr %.sroa.913.0..sroa_idx16, align 1, !noalias !10258
  %.sroa.14.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.14.0.copyload24 = load ptr, ptr %.sroa.14.0..sroa_idx23, align 8, !noalias !10258 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ai = trunc nuw i8 %.sroa.913.0.copyload17 to i1
  br i1 %i.ai, label %bb.j, label %bb.m, !prof !48

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10260
  call void @"_ZN4time7parsing8parsable124_$LT$impl$u20$time..parsing..parsable..sealed..Sealed$u20$for$u20$time..format_description..well_known..rfc3339..Rfc3339$GT$22parse_offset_date_time17hfdbb88674528a481E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aa, i64 noundef %.sroa.4.0.copyload), !noalias !10261
  %i.aj = load i64, ptr %i.c, align 8, !range !23, !noalias !10260, !noundef !8
  %.not.i.i = icmp eq i64 %i.aj, 2
  br i1 %.not.i.i, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h416778edcd1583ceE.exit, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h416778edcd1583ceE.exit.thread

_ZN10serde_core2de7Visitor18visit_borrowed_str17h416778edcd1583ceE.exit.thread: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !10260
  %i.ak = call fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17he077385b891c3c7dE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b), !noalias !10261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

_ZN10serde_core2de7Visitor18visit_borrowed_str17h416778edcd1583ceE.exit: ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.012, ptr noundef nonnull align 8 dereferenceable(7) %i.al, i64 7, i1 false), !noalias !10262
  %.sroa.913.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %.sroa.913.0.copyload19 = load i8, ptr %.sroa.913.0..sroa_idx18, align 1, !noalias !10262
  %.sroa.14.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.14.0.copyload26 = load ptr, ptr %.sroa.14.0..sroa_idx25, align 8, !noalias !10262 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.am = trunc nuw i8 %.sroa.913.0.copyload19 to i1
  br i1 %i.am, label %bb.j, label %bb.k, !prof !48

bb.j:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h416778edcd1583ceE.exit.thread, %"_ZN135_$LT$time..serde..visitor..Visitor$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17habc54bfa8849edadE.exit.thread", %bb.e, %"_ZN135_$LT$time..serde..visitor..Visitor$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17habc54bfa8849edadE.exit", %_ZN10serde_core2de7Visitor18visit_borrowed_str17h416778edcd1583ceE.exit
  %.sroa.14.0 = phi ptr [ %.sroa.14.0.copyload24, %"_ZN135_$LT$time..serde..visitor..Visitor$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17habc54bfa8849edadE.exit" ], [ %.sroa.14.0.copyload26, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h416778edcd1583ceE.exit ], [ %i.ab, %bb.e ], [ %i.ag, %"_ZN135_$LT$time..serde..visitor..Visitor$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17habc54bfa8849edadE.exit.thread" ], [ %i.ak, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h416778edcd1583ceE.exit.thread ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0) ]
  %i.an = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3793f630b9a7d5a8E(ptr noalias noundef nonnull align 8 %.sroa.14.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 1, ptr %i.ap, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.012)
  br label %bb.l

bb.k:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h416778edcd1583ceE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %0, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.012, i64 7, i1 false)
  %.sroa.4.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %.sroa.4.0..sroa_idx28, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.14.0.copyload26, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.012)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %.loopexit, %bb.f, %bb.m, %bb.k
  ret void

bb.m:                                             ; preds = %"_ZN135_$LT$time..serde..visitor..Visitor$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17habc54bfa8849edadE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %0, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.012, i64 7, i1 false)
  %.sroa.4.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %.sroa.4.0..sroa_idx30, align 1
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.14.0.copyload24, ptr %.sroa.6.0..sroa_idx32, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.012)
  br label %bb.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17he1f52b8de0a06040E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 9 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 10 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.088.i.i = alloca [7 x i8], align 8       ; 12 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10373)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 24 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !10374, !noalias !10375, !noundef !8 ; 12 uses
  %.promoted.i = load i64, ptr %i.ah, align 8, !alias.scope !10373, !noalias !10376 ; 3 uses
  %i.ak = icmp ult i64 %.promoted.i, %i.aj
  br i1 %i.ak, label %.lr.ph.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread"

.lr.ph.i:                                         ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !10374, !noalias !10375, !nonnull !8, !align !13, !noundef !8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.an = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.aq, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10377)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !10378, !noundef !8
  switch i8 %i.ap, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.bz
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.aq = add i64 %i.an, 1                        ; 3 uses
  store i64 %i.aq, ptr %i.ah, align 8, !alias.scope !10379, !noalias !10376
  %exitcond.not.i = icmp eq i64 %i.aq, %i.aj
  br i1 %exitcond.not.i, label %.loopexit.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i = phi i64 [ %.promoted.i, %bb.a ], [ %i.an, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10383)
  %i.ar = icmp ult i64 %.promoted.i.i.i, %i.aj
  br i1 %i.ar, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread"
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !10384, !noalias !10385, !nonnull !8, !align !13, !noundef !8 ; 11 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %i.au = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ax, %bb.e ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10386)
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !10387, !noundef !8 ; 3 uses
  switch i8 %i.aw, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i" [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ax = add i64 %i.au, 1                        ; 3 uses
  store i64 %i.ax, ptr %i.ah, align 8, !alias.scope !10388, !noalias !10389
  %exitcond.not.i.i.i = icmp eq i64 %i.ax, %i.aj
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.d

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i": ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.088.i.i)
  switch i8 %i.aw, label %bb.f [
    i8 110, label %bb.g
    i8 116, label %bb.n
    i8 102, label %bb.u
    i8 45, label %bb.ad
    i8 34, label %bb.ae
    i8 91, label %bb.af
    i8 123, label %bb.ag
  ]

.loopexit.i.i:                                    ; preds = %bb.c, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !10390
  store i64 5, ptr %i.ag, align 8, !noalias !10390
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag), !noalias !10391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !10390
  br label %bb.by

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i"
  %i.az = add i8 %i.aw, -48
  %or.cond4.i.i = icmp ult i8 %i.az, 10
  br i1 %or.cond4.i.i, label %bb.bq, label %bb.bp, !prof !16

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i"
  %i.ba = add i64 %i.au, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.ah, align 8, !alias.scope !10392, !noalias !10391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10393)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.aj) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10394)
  %exitcond.not.i66.not.i.i = icmp ult i64 %i.ba, %i.aj
  br i1 %exitcond.not.i66.not.i.i, label %bb.h, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !10395, !noundef !8
  %i.bd = add i64 %i.au, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.ah, align 8, !alias.scope !10396, !noalias !10397
  %.not.i.i.i = icmp eq i8 %i.bc, 117
  br i1 %.not.i.i.i, label %bb.i, label %bb.m, !prof !19

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10398)
  %exitcond.not.i66.1.i.i = icmp eq i64 %i.bd, %umax.i.i.i
  br i1 %exitcond.not.i66.1.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !10399, !noundef !8
  %i.bg = add i64 %i.au, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.ah, align 8, !alias.scope !10400, !noalias !10397
  %.not.i.1.i.i = icmp eq i8 %i.bf, 108
  br i1 %.not.i.1.i.i, label %bb.k, label %bb.m, !prof !19

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10401)
  %exitcond.not.i66.2.i.i = icmp eq i64 %i.bg, %umax.i.i.i
  br i1 %exitcond.not.i66.2.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !10402, !noundef !8
  %i.bj = add i64 %i.au, 4
  store i64 %i.bj, ptr %i.ah, align 8, !alias.scope !10403, !noalias !10397
  %.not.i.2.i.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i.2.i.i, label %bb.ah, label %bb.m, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i": ; preds = %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !10404
  store i64 5, ptr %i.x, align 8, !noalias !10404
  %i.bk = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x), !noalias !10405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !10404
  br label %bb.ai

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !10404
  store i64 9, ptr %i.w, align 8, !noalias !10404
  %i.bl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w), !noalias !10405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !10404
  br label %bb.ai

bb.n:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i"
  %i.bm = add i64 %i.au, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.ah, align 8, !alias.scope !10406, !noalias !10391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10407)
  %umax.i68.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.aj) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10408)
  %exitcond.not.i70.not.i.i = icmp ult i64 %i.bm, %i.aj
  br i1 %exitcond.not.i70.not.i.i, label %bb.o, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i73.i.i"

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !10409, !noundef !8
  %i.bp = add i64 %i.au, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.ah, align 8, !alias.scope !10410, !noalias !10411
  %.not.i71.i.i = icmp eq i8 %i.bo, 114
  br i1 %.not.i71.i.i, label %bb.p, label %bb.t, !prof !19

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10412)
  %exitcond.not.i70.1.i.i = icmp eq i64 %i.bp, %umax.i68.i.i
  br i1 %exitcond.not.i70.1.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i73.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !10413, !noundef !8
  %i.bs = add i64 %i.au, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.ah, align 8, !alias.scope !10414, !noalias !10411
  %.not.i71.1.i.i = icmp eq i8 %i.br, 117
  br i1 %.not.i71.1.i.i, label %bb.r, label %bb.t, !prof !19

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10415)
  %exitcond.not.i70.2.i.i = icmp eq i64 %i.bs, %umax.i68.i.i
  br i1 %exitcond.not.i70.2.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i73.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !10416, !noundef !8
  %i.bv = add i64 %i.au, 4
  store i64 %i.bv, ptr %i.ah, align 8, !alias.scope !10417, !noalias !10411
  %.not.i71.2.i.i = icmp eq i8 %i.bu, 101
  br i1 %.not.i71.2.i.i, label %bb.aj, label %bb.t, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i73.i.i": ; preds = %bb.r, %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !10418
  store i64 5, ptr %i.v, align 8, !noalias !10418
  %i.bw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v), !noalias !10419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !10418
  br label %bb.ai

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !10418
  store i64 9, ptr %i.u, align 8, !noalias !10418
  %i.bx = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u), !noalias !10419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10418
  br label %bb.ai

bb.u:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i"
  %i.by = add i64 %i.au, 1                        ; 4 uses
  store i64 %i.by, ptr %i.ah, align 8, !alias.scope !10420, !noalias !10391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10421)
  %umax.i76.i.i = tail call i64 @llvm.umax.i64(i64 %i.by, i64 %i.aj) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10422)
  %exitcond.not.i78.not.i.i = icmp ult i64 %i.by, %i.aj
  br i1 %exitcond.not.i78.not.i.i, label %bb.v, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i81.i.i"

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !10423, !noundef !8
  %i.cb = add i64 %i.au, 2                        ; 3 uses
  store i64 %i.cb, ptr %i.ah, align 8, !alias.scope !10424, !noalias !10425
  %.not.i79.i.i = icmp eq i8 %i.ca, 97
  br i1 %.not.i79.i.i, label %bb.w, label %bb.ac, !prof !19

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10426)
  %exitcond.not.i78.1.i.i = icmp eq i64 %i.cb, %umax.i76.i.i
  br i1 %exitcond.not.i78.1.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i81.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !10427, !noundef !8
  %i.ce = add i64 %i.au, 3                        ; 3 uses
  store i64 %i.ce, ptr %i.ah, align 8, !alias.scope !10428, !noalias !10425
  %.not.i79.1.i.i = icmp eq i8 %i.cd, 108
  br i1 %.not.i79.1.i.i, label %bb.y, label %bb.ac, !prof !19

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10429)
  %exitcond.not.i78.2.i.i = icmp eq i64 %i.ce, %umax.i76.i.i
  br i1 %exitcond.not.i78.2.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i81.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !10430, !noundef !8
  %i.ch = add i64 %i.au, 4                        ; 3 uses
  store i64 %i.ch, ptr %i.ah, align 8, !alias.scope !10431, !noalias !10425
  %.not.i79.2.i.i = icmp eq i8 %i.cg, 115
  br i1 %.not.i79.2.i.i, label %bb.aa, label %bb.ac, !prof !19

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10432)
  %exitcond.not.i78.3.i.i = icmp eq i64 %i.ch, %umax.i76.i.i
  br i1 %exitcond.not.i78.3.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i81.i.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !10433, !noundef !8
  %i.ck = add i64 %i.au, 5
  store i64 %i.ck, ptr %i.ah, align 8, !alias.scope !10434, !noalias !10425
  %.not.i79.3.i.i = icmp eq i8 %i.cj, 101
  br i1 %.not.i79.3.i.i, label %bb.ak, label %bb.ac, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i81.i.i": ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !10435
  store i64 5, ptr %i.t, align 8, !noalias !10435
  %i.cl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t), !noalias !10436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10435
  br label %bb.ai

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10435
  store i64 9, ptr %i.s, align 8, !noalias !10435
  %i.cm = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s), !noalias !10436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10435
  br label %bb.ai

bb.ad:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i"
  %i.cn = add i64 %i.au, 1
  store i64 %i.cn, ptr %i.ah, align 8, !alias.scope !10437, !noalias !10391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !10390
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h76a32c9c47bfead0E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext false), !noalias !10391
  %i.co = load i64, ptr %i.af, align 8, !range !15, !noalias !10390, !noundef !8 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  br i1 %i.cp, label %bb.al, label %bb.am

bb.ae:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i"
  %i.cr = add i64 %i.au, 1
  store i64 %i.cr, ptr %i.ah, align 8, !alias.scope !10438, !noalias !10391
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cs, align 8, !alias.scope !10439, !noalias !10391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !10390
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !10391
  %i.ct = load i64, ptr %i.ad, align 8, !range !23, !noalias !10390, !noundef !8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !10390 ; 4 uses
  br i1 %i.cu, label %bb.ar, label %bb.as

bb.af:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i"
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cy = load i8, ptr %i.cx, align 8, !range !14, !alias.scope !10439, !noalias !10391, !noundef !8
  %i.cz = trunc nuw i8 %i.cy to i1                ; 2 uses
  br i1 %i.cz, label %bb.aw, label %bb.av

bb.ag:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i"
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.db = load i8, ptr %i.da, align 8, !range !14, !alias.scope !10439, !noalias !10391, !noundef !8
  %i.dc = trunc nuw i8 %i.db to i1                ; 2 uses
  br i1 %i.dc, label %bb.bg, label %bb.bf

bb.ah:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10440
  store i8 7, ptr %i.r, align 8, !noalias !10440
  %i.dd = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24), !noalias !10440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10440
  %i.de = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3793f630b9a7d5a8E(ptr noalias noundef nonnull align 8 %i.dd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !10391
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.088.i.i)
  br label %bb.by

bb.ai:                                            ; preds = %bb.br, %bb.bh, %bb.ax, %bb.ar, %bb.al, %bb.ac, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i81.i.i", %bb.t, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i73.i.i", %bb.m, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i"
  %.sroa.23.0.i = phi ptr [ %i.fi, %bb.br ], [ %i.ew, %bb.bh ], [ %i.bl, %bb.m ], [ %i.bx, %bb.t ], [ %i.dl, %bb.al ], [ %i.cw, %bb.ar ], [ %i.ei, %bb.ax ], [ %i.bk, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i" ], [ %i.bw, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i73.i.i" ], [ %i.cl, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i81.i.i" ], [ %i.cm, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.088.i.i)
  br label %bb.by

bb.aj:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10441
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %i.df, align 1, !noalias !10441
  store i8 0, ptr %i.q, align 8, !noalias !10441
  %i.dg = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24), !noalias !10441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10441
  %i.dh = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3793f630b9a7d5a8E(ptr noalias noundef nonnull align 8 %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !10391
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.088.i.i)
  br label %bb.by

bb.ak:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10442
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.di, align 1, !noalias !10442
  store i8 0, ptr %i.p, align 8, !noalias !10442
  %i.dj = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24), !noalias !10442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10442
  %i.dk = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3793f630b9a7d5a8E(ptr noalias noundef nonnull align 8 %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !10391
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.088.i.i)
  br label %bb.by

bb.al:                                            ; preds = %bb.ad
  %i.dl = load ptr, ptr %i.cq, align 8, !noalias !10390, !nonnull !8, !align !12, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !10390
  br label %bb.ai

bb.am:                                            ; preds = %bb.ad
  %.sroa.2.0.copyload.i.i = load i64, ptr %i.cq, align 8, !noalias !10390 ; 3 uses
  switch i64 %i.co, label %default.unreachable [
    i64 0, label %bb.an
    i64 1, label %bb.ao
    i64 2, label %bb.ap
  ]

default.unreachable:                              ; preds = %bb.bs, %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10443
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.2.0.copyload.i.i, ptr %i.dm, align 8, !noalias !10443
  store i8 3, ptr %i.o, align 8, !noalias !10443
  %i.dn = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24), !noalias !10444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10443
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10445
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.2.0.copyload.i.i, ptr %i.do, align 8, !noalias !10445
  store i8 1, ptr %i.n, align 8, !noalias !10445
  %i.dp = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24), !noalias !10446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10445
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10447
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.2.0.copyload.i.i, ptr %i.dq, align 8, !noalias !10447
  store i8 2, ptr %i.m, align 8, !noalias !10447
  %i.dr = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24), !noalias !10448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10447
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %.sink.i.i.i = phi ptr [ %i.dr, %bb.ap ], [ %i.dp, %bb.ao ], [ %i.dn, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !10390
  %i.ds = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3793f630b9a7d5a8E(ptr noalias noundef nonnull align 8 %.sink.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !10391
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.088.i.i)
  br label %bb.by

bb.ar:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !10390
  br label %bb.ai

bb.as:                                            ; preds = %bb.ae
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !10390 ; 2 uses
  %i.dt = trunc nuw i64 %i.ct to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cw) ]
  br i1 %i.dt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10449
end_hunk_6
begin_hunk_7_@"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17he1f52b8de0a06040E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10390
  br label %bb.ai

bb.ay:                                            ; preds = %bb.aw
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !10439, !noalias !10391, !noundef !8
  %i.el = add i8 %i.ek, 1
  store i8 %i.el, ptr %i.ej, align 1, !alias.scope !10439, !noalias !10391
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !10390
  %i.em = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17h49ff5e5c7161b40fE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.bb unwind label %bb.ba, !noalias !10391 ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$core..result..Result$LT$time..offset_date_time..OffsetDateTime$C$serde_json..error..Error$GT$$GT$17hd0236b3cd14b85c9E"(i8 1, ptr nonnull %i.eh) #51
          to label %bb.bx unwind label %bb.bc, !noalias !10391

bb.bb:                                            ; preds = %bb.az
  %.sroa.4.0..sroa_idx153.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
  store i8 1, ptr %.sroa.4.0..sroa_idx153.i.i, align 1, !noalias !10390
  %.sroa.6155.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.eh, ptr %.sroa.6155.0..sroa_idx.i.i, align 8, !noalias !10390
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store ptr %i.em, ptr %i.eo, align 8, !noalias !10390
  %.not211.i.i = icmp eq ptr %i.em, null
  br i1 %.not211.i.i, label %bb.bd, label %bb.be

bb.bc:                                            ; preds = %bb.bk, %bb.ba
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #52, !noalias !10391
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10390
  br label %bb.bo

bb.be:                                            ; preds = %bb.bb
  call void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eo), !noalias !10391
  br label %bb.bd

bb.bf:                                            ; preds = %bb.ag
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !10439, !noalias !10391, !noundef !8
  %i.es = add i8 %i.er, -1                        ; 2 uses
  store i8 %i.es, ptr %i.eq, align 1, !alias.scope !10439, !noalias !10391
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.bh, label %bb.bg, !prof !10

bb.bg:                                            ; preds = %bb.bf, %bb.ag
  %i.eu = add i64 %i.au, 1
  store i64 %i.eu, ptr %i.ah, align 8, !alias.scope !10458, !noalias !10391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10459
  store i8 11, ptr %i.g, align 8, !noalias !10459
  %i.ev = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24), !noalias !10459 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10459
  br i1 %i.dc, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !10390
  store i64 24, ptr %i.aa, align 8, !noalias !10390
  %i.ew = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa), !noalias !10391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10390
  br label %bb.ai

bb.bi:                                            ; preds = %bb.bg
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !10439, !noalias !10391, !noundef !8
  %i.ez = add i8 %i.ey, 1
  store i8 %i.ez, ptr %i.ex, align 1, !alias.scope !10439, !noalias !10391
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10390
  %i.fa = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h2b52be1d28f7ca2eE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.bl unwind label %bb.bk, !noalias !10391 ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$core..result..Result$LT$time..offset_date_time..OffsetDateTime$C$serde_json..error..Error$GT$$GT$17hd0236b3cd14b85c9E"(i8 1, ptr nonnull %i.ev) #51
          to label %bb.bx unwind label %bb.bc, !noalias !10391

bb.bl:                                            ; preds = %bb.bj
  %.sroa.4162.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 7
  store i8 1, ptr %.sroa.4162.0..sroa_idx.i.i, align 1, !noalias !10390
  %.sroa.6163.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ev, ptr %.sroa.6163.0..sroa_idx.i.i, align 8, !noalias !10390
  %i.fc = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store ptr %i.fa, ptr %i.fc, align 8, !noalias !10390
  %.not.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10390
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  call void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb977a50786a704dbE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fc), !noalias !10391
  br label %bb.bm

bb.bo:                                            ; preds = %bb.bp, %bb.bm, %bb.bd, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h416778edcd1583ceE.exit.i.i, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h416778edcd1583ceE.exit.thread.i.i, %"_ZN135_$LT$time..serde..visitor..Visitor$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17habc54bfa8849edadE.exit.i.i", %"_ZN135_$LT$time..serde..visitor..Visitor$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17habc54bfa8849edadE.exit.thread.i.i"
  %.sroa.47.0.i.i = phi ptr [ %i.fe, %bb.bp ], [ %.sroa.47.0.copyload137.i.i, %"_ZN135_$LT$time..serde..visitor..Visitor$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17habc54bfa8849edadE.exit.i.i" ], [ %.sroa.47.0.copyload139.i.i, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h416778edcd1583ceE.exit.i.i ], [ %i.dz, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h416778edcd1583ceE.exit.thread.i.i ], [ %i.dv, %"_ZN135_$LT$time..serde..visitor..Visitor$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17habc54bfa8849edadE.exit.thread.i.i" ], [ %i.eh, %bb.bd ], [ %i.ev, %bb.bm ]
  %i.fd = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3793f630b9a7d5a8E(ptr noalias noundef nonnull align 8 %.sroa.47.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !10391
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.088.i.i)
  br label %bb.by

bb.bp:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !10390
  store i64 10, ptr %i.y, align 8, !noalias !10390
  %i.fe = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y), !noalias !10391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10390
  br label %bb.bo

bb.bq:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !10390
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h76a32c9c47bfead0E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !10391
  %i.ff = load i64, ptr %i.ae, align 8, !range !15, !noalias !10390, !noundef !8 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 3
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  br i1 %i.fg, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !10390, !nonnull !8, !align !12, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10390
  br label %bb.ai

bb.bs:                                            ; preds = %bb.bq
  %.sroa.2148.0.copyload.i.i = load i64, ptr %i.fh, align 8, !noalias !10390 ; 3 uses
  switch i64 %i.ff, label %default.unreachable [
    i64 0, label %bb.bt
    i64 1, label %bb.bu
    i64 2, label %bb.bv
  ]

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10460
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.2148.0.copyload.i.i, ptr %i.fj, align 8, !noalias !10460
  store i8 3, ptr %i.f, align 8, !noalias !10460
  %i.fk = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24), !noalias !10461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10460
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10462
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.2148.0.copyload.i.i, ptr %i.fl, align 8, !noalias !10462
  store i8 1, ptr %i.e, align 8, !noalias !10462
  %i.fm = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24), !noalias !10463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10462
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10464
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.2148.0.copyload.i.i, ptr %i.fn, align 8, !noalias !10464
  store i8 2, ptr %i.d, align 8, !noalias !10464
  %i.fo = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24), !noalias !10465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10464
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %.sink.i84.i.i = phi ptr [ %i.fo, %bb.bv ], [ %i.fm, %bb.bu ], [ %i.fk, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10390
  %i.fp = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3793f630b9a7d5a8E(ptr noalias noundef nonnull align 8 %.sink.i84.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !10391
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.088.i.i)
  br label %bb.by

bb.bx:                                            ; preds = %bb.bk, %bb.ba
  %.pn.i.i = phi { ptr, i32 } [ %i.fb, %bb.bk ], [ %i.en, %bb.ba ]
  resume { ptr, i32 } %.pn.i.i

bb.by:                                            ; preds = %bb.bw, %bb.bo, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %.loopexit.i.i
  %.sroa.23.1.ph.i = phi ptr [ %i.ay, %.loopexit.i.i ], [ %i.ds, %bb.aq ], [ %i.dk, %bb.ak ], [ %i.dh, %bb.aj ], [ %i.de, %bb.ah ], [ %i.fd, %bb.bo ], [ %i.fp, %bb.bw ], [ %.sroa.23.0.i, %bb.ai ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.23.1.ph.i) ]
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.23.1.ph.i, ptr %i.fq, align 8, !alias.scope !10380, !noalias !10381
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 2, ptr %i.fr, align 1, !alias.scope !10380, !noalias !10381
  br label %"_ZN163_$LT$time..serde..visitor..Visitor$LT$core..option..Option$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h45156a3bec96f5edE.exit"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hab646a8a96f0386dE.exit.i": ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h416778edcd1583ceE.exit.i.i, %"_ZN135_$LT$time..serde..visitor..Visitor$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17habc54bfa8849edadE.exit.i.i"
  %.sroa.23.1.i = phi ptr [ %.sroa.47.0.copyload139.i.i, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h416778edcd1583ceE.exit.i.i ], [ %.sroa.47.0.copyload137.i.i, %"_ZN135_$LT$time..serde..visitor..Visitor$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17habc54bfa8849edadE.exit.i.i" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %0, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.088.i.i, i64 7, i1 false), !noalias !10381
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.088.i.i)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !10380, !noalias !10381
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.23.1.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !10380, !noalias !10381
  br label %"_ZN163_$LT$time..serde..visitor..Visitor$LT$core..option..Option$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h45156a3bec96f5edE.exit"

bb.bz:                                            ; preds = %bb.b
  %i.fs = add i64 %i.an, 1                        ; 4 uses
  store i64 %i.fs, ptr %i.ah, align 8, !alias.scope !10466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10467)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.fs, i64 %i.aj) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10468)
  %exitcond.not.i9.not = icmp ult i64 %i.fs, %i.aj
  br i1 %exitcond.not.i9.not, label %bb.ca, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i"

bb.ca:                                            ; preds = %bb.bz
  %i.ft = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !noalias !10469, !noundef !8
  %i.fv = add i64 %i.an, 2                        ; 3 uses
  store i64 %i.fv, ptr %i.ah, align 8, !alias.scope !10470, !noalias !10471
  %.not.i = icmp eq i8 %i.fu, 117
  br i1 %.not.i, label %bb.cb, label %bb.cf, !prof !19

bb.cb:                                            ; preds = %bb.ca
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10472)
  %exitcond.not.i9.1 = icmp eq i64 %i.fv, %umax.i
  br i1 %exitcond.not.i9.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i", label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fw = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !noalias !10473, !noundef !8
  %i.fy = add i64 %i.an, 3                        ; 3 uses
  store i64 %i.fy, ptr %i.ah, align 8, !alias.scope !10474, !noalias !10471
  %.not.i.1 = icmp eq i8 %i.fx, 108
  br i1 %.not.i.1, label %bb.cd, label %bb.cf, !prof !19

bb.cd:                                            ; preds = %bb.cc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10475)
  %exitcond.not.i9.2 = icmp eq i64 %i.fy, %umax.i
  br i1 %exitcond.not.i9.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fz = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !noalias !10476, !noundef !8
  %i.gb = add i64 %i.an, 4
  store i64 %i.gb, ptr %i.ah, align 8, !alias.scope !10477, !noalias !10471
  %.not.i.2 = icmp eq i8 %i.ga, 108
  br i1 %.not.i.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit", label %bb.cf, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i": ; preds = %bb.cd, %bb.cb, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10478
  store i64 5, ptr %i.c, align 8, !noalias !10478
  %i.gc = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !10479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10478
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce, %bb.cc, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10478
  store i64 9, ptr %i.b, align 8, !noalias !10478
  %i.gd = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !10479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10478
  br label %bb.cg

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit": ; preds = %bb.ce
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 1, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !10480
  br label %"_ZN163_$LT$time..serde..visitor..Visitor$LT$core..option..Option$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h45156a3bec96f5edE.exit"

bb.cg:                                            ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i", %bb.cf
  %.sroa.0.1.i.ph = phi ptr [ %i.gc, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i" ], [ %i.gd, %bb.cf ]
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 2, ptr %i.gf, align 1
  br label %"_ZN163_$LT$time..serde..visitor..Visitor$LT$core..option..Option$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h45156a3bec96f5edE.exit"

"_ZN163_$LT$time..serde..visitor..Visitor$LT$core..option..Option$LT$time..format_description..well_known..rfc3339..Rfc3339$GT$$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h45156a3bec96f5edE.exit": ; preds = %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hab646a8a96f0386dE.exit.i", %bb.by, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17heb8c27f3015c8dc1E.exit", %bb.cg
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_string17h107fcc273d50541bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10519)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !10520, !noalias !10521, !noundef !8 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !10522, !noalias !10523 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !10520, !noalias !10521, !nonnull !8, !align !13, !noundef !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10524)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !10525, !noundef !8
  switch i8 %i.l, label %bb.m [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 34, label %bb.d
  ], !prof !47

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !10526, !noalias !10523
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10527
  store i64 5, ptr %i.c, align 8, !noalias !10527
  %i.n = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !10517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10527
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8, !alias.scope !10517, !noalias !10518
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !10517, !noalias !10518
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_str17he039fd89b5eae48aE.exit"

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !10528, !noalias !10517
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.q, align 8, !alias.scope !10518, !noalias !10517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10527
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !10517
  %i.r = load i64, ptr %i.b, align 8, !range !23, !noalias !10527, !noundef !8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !10527 ; 4 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !10517, !noalias !10518
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !10517, !noalias !10518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10527
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_str17he039fd89b5eae48aE.exit"

bb.f:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10527 ; 13 uses
  %i.w = trunc nuw i64 %i.r to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.x = icmp slt i64 %.sroa.4.0.copyload.i, 0    ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.g
  %i.y = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.y, label %bb.o, label %bb.h

bb.h:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !10529
  %i.z = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, 9) 1) #49, !noalias !10529 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.h ], [ 0, %bb.g ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.4.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #50, !noalias !10530
  unreachable

bb.j:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.l, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.ab = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.ab, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !10531
  %i.ac = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, 9) 1) #49, !noalias !10531 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %bb.k ], [ 0, %bb.j ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %.sroa.4.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #50, !noalias !10532
  unreachable

bb.m:                                             ; preds = %bb.b
  %i.ae = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h1bcf6c8f55886afeE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @377), !noalias !10517
  %i.af = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3793f630b9a7d5a8E(ptr noalias noundef nonnull align 8 %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !10517
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !10517, !noalias !10518
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !10517, !noalias !10518
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_str17he039fd89b5eae48aE.exit"

bb.n:                                             ; preds = %bb.k, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.ac, %bb.k ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %i.u, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !10533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10527
  store i64 %.sroa.4.0.copyload.i, ptr %0, align 8, !alias.scope !10517, !noalias !10518
  %.sroa.4.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx21.i, align 8, !alias.scope !10517, !noalias !10518
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !10517, !noalias !10518
end_hunk_7
