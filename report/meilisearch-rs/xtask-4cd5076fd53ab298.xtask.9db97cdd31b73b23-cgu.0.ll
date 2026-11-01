Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15192
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@"_ZN10serde_json2de21Deserializer$LT$R$GT$18parse_long_integer17he87bfb461869b7beE":bb.a
  call fastcc void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcb522c236a8f469eE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef align 8 dereferenceable(32) %i.f), !noalias !4607
  %i.n = load i8, ptr %i.c, align 8, !range !35, !noalias !4606, !noundef !24
  switch i8 %i.n, label %bb.e [
    i8 2, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h9da6f3d37584454cE.exit.thread11.i"
    i8 0, label %bb.d
  ], !prof !55

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.g, align 1, !noalias !4606, !noundef !24 ; 2 uses
  store i8 1, ptr %i.d, align 8, !alias.scope !4605
  store i8 %i.o, ptr %i.e, align 1, !alias.scope !4605
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h9da6f3d37584454cE.exit.thread11.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h9da6f3d37584454cE.exit.thread11.i": ; preds = %bb.d, %bb.c
  %.sroa.6.0.ph.i = phi i8 [ 0, %bb.c ], [ %i.o, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4606
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !4606, !nonnull !24, !noundef !24
  %i.r = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.q), !noalias !4607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4606
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  store i64 1, ptr %0, align 8
  br label %bb.t

bb.f:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h9da6f3d37584454cE.exit.thread11.i", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h9da6f3d37584454cE.exit.thread.i"
  %.sroa.5.0.ph = phi i8 [ %.sroa.6.0.ph.i, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h9da6f3d37584454cE.exit.thread11.i" ], [ %i.m, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h9da6f3d37584454cE.exit.thread.i" ] ; 2 uses
  %i.t = add i8 %.sroa.5.0.ph, -48
  %or.cond = icmp ult i8 %i.t, 10
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i8 %.sroa.5.0.ph, label %bb.k [
    i8 46, label %bb.r
    i8 101, label %bb.s
    i8 69, label %bb.s
  ]

bb.h:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.d, align 8, !range !38, !alias.scope !4608, !noundef !24
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = load i8, ptr %i.e, align 1, !alias.scope !4608
  store i8 0, ptr %i.d, align 8, !alias.scope !4608
  %i.x = load i64, ptr %i.h, align 8, !range !47, !alias.scope !4608 ; 2 uses
  %.not.i = icmp ne i64 %i.x, -9223372036854775808
  %or.cond.not.i = select i1 %i.v, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit"

bb.i:                                             ; preds = %bb.h
  %i.y = load i64, ptr %i.i, align 8, !alias.scope !4609, !noundef !24 ; 3 uses
  %i.z = icmp eq i64 %i.y, %i.x
  br i1 %i.z, label %bb.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i"

bb.j:                                             ; preds = %bb.i
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1685)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i": ; preds = %bb.j, %bb.i
  %i.aa = load ptr, ptr %i.j, align 8, !alias.scope !4609, !nonnull !24, !noundef !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 %i.w, ptr %i.ab, align 1
  %i.ac = add i64 %i.y, 1
  store i64 %i.ac, ptr %i.i, align 8, !alias.scope !4609
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit": ; preds = %bb.h, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i"
  %i.ad = add i32 %.sroa.0.0, 1
  br label %bb.b

bb.k:                                             ; preds = %bb.g
  %.val = load i64, ptr %i.f, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val4 = load i64, ptr %i.ae, align 8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4610)
  %i.af = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.09.i = tail call i32 @llvm.abs.i32(i32 %.sroa.0.0, i1 false) ; 2 uses
  %i.ag = icmp ult i32 %.sroa.012.09.i, 309
  br i1 %i.ag, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.m
  %.sroa.0.011.i = phi i32 [ %i.ao, %bb.m ], [ %.sroa.0.0, %bb.k ] ; 2 uses
  %.sroa.04.010.i = phi double [ %i.an, %bb.m ], [ %i.af, %bb.k ] ; 3 uses
  %i.ah = fcmp oeq double %.sroa.04.010.i, 0.000000e+00
  br i1 %i.ah, label %.loopexit.i, label %bb.l

._crit_edge.i:                                    ; preds = %bb.m, %bb.k
  %.sroa.04.0.lcssa.i = phi double [ %i.af, %bb.k ], [ %i.an, %bb.m ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.0.0, %bb.k ], [ %i.ao, %bb.m ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.09.i, %bb.k ], [ %.sroa.012.0.i, %bb.m ]
  %i.ai = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_ZN10serde_json2de5POW1017h13e2d2d3887eda26E, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !noalias !4610, !noundef !24 ; 2 uses
  %i.al = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.al, label %bb.p, label %bb.o

bb.l:                                             ; preds = %.lr.ph.i
  %i.am = icmp sgt i32 %.sroa.0.011.i, -1
  br i1 %i.am, label %bb.n, label %bb.m, !prof !26

bb.m:                                             ; preds = %bb.l
  %i.an = fdiv double %.sroa.04.010.i, 1.000000e+308 ; 2 uses
  %i.ao = add nsw i32 %.sroa.0.011.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.ao, i1 true) ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.ap, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4611
  store i64 14, ptr %i.b, align 8, !noalias !4610
  %i.aq = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.val, i64 noundef %.val4), !noalias !4611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4611
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !alias.scope !4610
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h07ae1965096d83f8E.exit"

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.p, %bb.o
  %.sroa.04.1.i = phi double [ %i.av, %bb.p ], [ %i.au, %bb.o ], [ %.sroa.04.010.i, %.lr.ph.i ] ; 2 uses
  %i.as = fneg double %.sroa.04.1.i
  %.sroa.013.0.i = select i1 %2, double %.sroa.04.1.i, double %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.013.0.i, ptr %i.at, align 8, !alias.scope !4610
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h07ae1965096d83f8E.exit"

bb.o:                                             ; preds = %._crit_edge.i
  %i.au = fdiv double %.sroa.04.0.lcssa.i, %i.ak
  br label %.loopexit.i

bb.p:                                             ; preds = %._crit_edge.i
  %i.av = fmul double %.sroa.04.0.lcssa.i, %i.ak  ; 2 uses
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp oeq double %i.aw, +inf
  br i1 %i.ax, label %bb.q, label %.loopexit.i, !prof !26

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4612
  store i64 14, ptr %i.a, align 8, !noalias !4610
  %i.ay = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val4), !noalias !4612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4612
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !alias.scope !4610
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h07ae1965096d83f8E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h07ae1965096d83f8E.exit": ; preds = %bb.n, %.loopexit.i, %bb.q
  %storemerge.i5 = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.q ], [ 1, %bb.n ]
  store i64 %storemerge.i5, ptr %0, align 8, !alias.scope !4610
  br label %bb.t

bb.r:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_decimal17h3cc5237a6a35e19eE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(96) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %.sroa.0.0)
  br label %bb.t

bb.s:                                             ; preds = %bb.g, %bb.g
  tail call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$14parse_exponent17h4ec7a342aa8df3f3E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(96) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %.sroa.0.0)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h07ae1965096d83f8E.exit", %bb.e
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @"_ZN10serde_json2de21Deserializer$LT$R$GT$18parse_long_integer17hecfbf3112424e6fcE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(64) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4628, !noundef !24 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !alias.scope !4629, !noundef !24 ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h697f3951fa63abe2E.exit.lr.ph", label %.thread

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h697f3951fa63abe2E.exit.lr.ph": ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !4628, !nonnull !24, !align !42, !noundef !24
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h697f3951fa63abe2E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h697f3951fa63abe2E.exit": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h697f3951fa63abe2E.exit.lr.ph", %bb.c
  %i.j = phi i64 [ %i.f, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h697f3951fa63abe2E.exit.lr.ph" ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.0.015 = phi i32 [ 0, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h697f3951fa63abe2E.exit.lr.ph" ], [ %i.o, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4631)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !4632, !noundef !24 ; 2 uses
  %i.m = add i8 %i.l, -48
  %or.cond = icmp ult i8 %i.m, 10
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h697f3951fa63abe2E.exit"
  switch i8 %i.l, label %.thread [
    i8 46, label %bb.h
    i8 101, label %bb.i
    i8 69, label %bb.i
  ]

bb.c:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h697f3951fa63abe2E.exit"
  %i.n = add nuw i64 %i.j, 1                      ; 3 uses
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !4633
  %i.o = add i32 %.sroa.0.015, 1                  ; 2 uses
  %i.p = icmp ult i64 %i.n, %i.e
  br i1 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h697f3951fa63abe2E.exit", label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.0.013 = phi i32 [ %.sroa.0.015, %bb.b ], [ 0, %bb.a ], [ %i.o, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4634)
  %i.q = uitofp i64 %3 to double                  ; 2 uses
  %.sroa.012.021.i = tail call i32 @llvm.abs.i32(i32 %.sroa.0.013, i1 false) ; 2 uses
  %i.r = icmp ult i32 %.sroa.012.021.i, 309
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %bb.d
  %.sroa.0.023.i = phi i32 [ %12, %bb.d ], [ %.sroa.0.013, %.thread ] ; 2 uses
  %.sroa.04.022.i = phi double [ %11, %bb.d ], [ %i.q, %.thread ] ; 3 uses
  %4 = fcmp oeq double %.sroa.04.022.i, 0.000000e+00
  br i1 %4, label %.loopexit.i, label %9

._crit_edge.i:                                    ; preds = %bb.d, %.thread
  %.sroa.04.0.lcssa.i = phi double [ %i.q, %.thread ], [ %11, %bb.d ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.0.013, %.thread ], [ %12, %bb.d ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.021.i, %.thread ], [ %.sroa.012.0.i, %bb.d ]
  %5 = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %6 = getelementptr inbounds nuw [8 x i8], ptr @_ZN10serde_json2de5POW1017h13e2d2d3887eda26E, i64 %5
  %7 = load double, ptr %6, align 8, !noalias !4635, !noundef !24 ; 2 uses
  %8 = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %8, label %bb.f, label %14

9:                                                ; preds = %.lr.ph.i
  %10 = icmp sgt i32 %.sroa.0.023.i, -1
  br i1 %10, label %bb.e, label %bb.d, !prof !26

bb.d:                                             ; preds = %9
  %11 = fdiv double %.sroa.04.022.i, 1.000000e+308 ; 2 uses
  %12 = add nsw i32 %.sroa.0.023.i, 308           ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %12, i1 true) ; 2 uses
  %13 = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %13, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4635
  store i64 14, ptr %i.a, align 8, !noalias !4635
  %i.s = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !4634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4635
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8, !alias.scope !4634
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h4e85b71f76029584E.exit"

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.f, %14
  %.sroa.04.1.i = phi double [ %i.w, %bb.f ], [ %15, %14 ], [ %.sroa.04.022.i, %.lr.ph.i ] ; 2 uses
  %i.u = fneg double %.sroa.04.1.i
  %.sroa.013.0.i = select i1 %2, double %.sroa.04.1.i, double %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.013.0.i, ptr %i.v, align 8, !alias.scope !4634
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h4e85b71f76029584E.exit"

14:                                               ; preds = %._crit_edge.i
  %15 = fdiv double %.sroa.04.0.lcssa.i, %7
  br label %.loopexit.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.w = fmul double %.sroa.04.0.lcssa.i, %7      ; 2 uses
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = fcmp oeq double %i.x, +inf
  br i1 %i.y, label %bb.g, label %.loopexit.i, !prof !26

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4635
  store i64 14, ptr %i.b, align 8, !noalias !4635
  %i.z = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !4634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4635
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !4634
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h4e85b71f76029584E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h4e85b71f76029584E.exit": ; preds = %bb.e, %.loopexit.i, %bb.g
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.g ], [ 1, %bb.e ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !4634
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_decimal17ha4976a8c52464d73E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %.sroa.0.015)
  br label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.b
  tail call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$14parse_exponent17hb4247b2faf5e8eefE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %.sroa.0.015)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h4e85b71f76029584E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$18parse_object_colon17h2c40e81fc0d11353E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4654)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit.i": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit.i.backedge", %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4655)
  %i.k = load i8, ptr %i.e, align 8, !range !38, !alias.scope !4656, !noundef !24
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit.i"
  %i.m = load i8, ptr %i.f, align 1, !alias.scope !4656, !noundef !24
  br label %bb.c

bb.b:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4657
  call fastcc void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcb522c236a8f469eE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef align 8 dereferenceable(32) %i.g), !noalias !4658
  %i.n = load i8, ptr %i.c, align 8, !range !35, !noalias !4657, !noundef !24
  switch i8 %i.n, label %bb.g [
    i8 2, label %bb.h
    i8 0, label %.thread30.i
  ], !prof !55

.thread30.i:                                      ; preds = %bb.b
  %i.o = load i8, ptr %i.h, align 1, !noalias !4657, !noundef !24 ; 2 uses
  store i8 1, ptr %i.e, align 8, !alias.scope !4656
  store i8 %i.o, ptr %i.f, align 1, !alias.scope !4656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4657
  br label %bb.c

bb.c:                                             ; preds = %.thread30.i, %.thread.i
  %i.p = phi i8 [ %i.m, %.thread.i ], [ %i.o, %.thread30.i ] ; 2 uses
  switch i8 %i.p, label %bb.l [
    i8 32, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
    i8 58, label %bb.i
  ], !prof !58

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  store i8 0, ptr %i.e, align 8, !alias.scope !4659
  %i.q = load i64, ptr %i.d, align 8, !range !47, !alias.scope !4659 ; 2 uses
  %.not.i.not.i = icmp eq i64 %i.q, -9223372036854775808
  br i1 %.not.i.not.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit.i.backedge", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.i, align 8, !alias.scope !4660, !noundef !24 ; 3 uses
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.f, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i"

bb.f:                                             ; preds = %bb.e
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1685), !noalias !4661
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i": ; preds = %bb.f, %bb.e
  %i.t = load ptr, ptr %i.j, align 8, !alias.scope !4660, !nonnull !24, !noundef !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 %i.p, ptr %i.u, align 1, !noalias !4661
  %i.v = add i64 %i.r, 1
  store i64 %i.v, ptr %i.i, align 8, !alias.scope !4660
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit.i.backedge"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit.i.backedge": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i", %bb.d
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit.i"

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !4657, !nonnull !24, !noundef !24
  %i.y = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.x), !noalias !4658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4657
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit"

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4657
  %.val4 = load i64, ptr %i.g, align 8, !noundef !24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val5 = load i64, ptr %i.z, align 8, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4662
  store i64 3, ptr %i.b, align 8
  %i.aa = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.val4, i64 noundef %.val5), !noalias !4662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4662
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit"

bb.i:                                             ; preds = %bb.c
  store i8 0, ptr %i.e, align 8, !alias.scope !4663
  %i.ab = load i64, ptr %i.d, align 8, !range !47, !alias.scope !4663 ; 2 uses
  %.not.i.not = icmp eq i64 %i.ab, -9223372036854775808
  br i1 %.not.i.not, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr %i.i, align 8, !alias.scope !4664, !noundef !24 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, %i.ab
  br i1 %i.ad, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i"

bb.k:                                             ; preds = %bb.j
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1685)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i": ; preds = %bb.k, %bb.j
  %i.ae = load ptr, ptr %i.j, align 8, !alias.scope !4664, !nonnull !24, !noundef !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 58, ptr %i.af, align 1
  %i.ag = add i64 %i.ac, 1
  store i64 %i.ag, ptr %i.i, align 8, !alias.scope !4664
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit"

bb.l:                                             ; preds = %bb.c
  %.val = load i64, ptr %i.g, align 8, !noundef !24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val3 = load i64, ptr %i.ah, align 8, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4665
  store i64 6, ptr %i.a, align 8
  %i.ai = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val3), !noalias !4665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4665
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i", %bb.i, %bb.h, %bb.l, %bb.g
  %.sroa.0.1 = phi ptr [ %i.y, %bb.g ], [ %i.aa, %bb.h ], [ %i.ai, %bb.l ], [ null, %bb.i ], [ null, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i" ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$18parse_object_colon17hbaa3ef2bb9407807E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4684)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.backedge", %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4685)
  %i.k = load i8, ptr %i.e, align 8, !range !38, !alias.scope !4686, !noundef !24
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i"
  %i.m = load i8, ptr %i.f, align 1, !alias.scope !4686, !noundef !24
  br label %bb.c

bb.b:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4687
  call fastcc void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h92f8f7b98fabe574E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef align 8 dereferenceable(32) %i.g), !noalias !4688
  %i.n = load i8, ptr %i.c, align 8, !range !35, !noalias !4687, !noundef !24
  switch i8 %i.n, label %bb.g [
    i8 2, label %bb.h
    i8 0, label %.thread30.i
  ], !prof !55

.thread30.i:                                      ; preds = %bb.b
end_hunk_0
