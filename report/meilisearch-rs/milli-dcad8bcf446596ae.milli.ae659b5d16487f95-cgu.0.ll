Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/milli-dcad8bcf446596ae.milli.ae659b5d16487f95-cgu.0?download=true
inline.NumInlined: 106527
inline.NumDeleted: 43100
loop-unroll.NumCompletelyUnrolled: 378
loop-unroll.NumRuntimeUnrolled: 1730
loop-unroll.NumUnrolled: 2138
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17hc3b9508057601612E":bb.a
  %or.cond = icmp ult i8 %i.aa, 10
  br i1 %or.cond, label %bb.q, label %bb.p, !prof !2825

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.z, align 8, !nonnull !10, !align !299, !noundef !10
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %.sroa.2.0.copyload = load i64, ptr %i.z, align 8 ; 6 uses
  switch i64 %i.x, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.s, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !48997
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.2.0.copyload, ptr %i.ad, align 8, !noalias !48997
  store i8 3, ptr %i.g, align 8, !noalias !48997
  %i.ae = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @472), !noalias !48997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !48997
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.af = icmp ugt i64 %.sroa.2.0.copyload, 65535
  br i1 %i.af, label %bb.j, label %bb.n, !prof !59

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !49003
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.2.0.copyload, ptr %i.ag, align 8, !noalias !49003
  store i8 1, ptr %i.f, align 8, !noalias !49003
  %i.ah = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @472), !noalias !49003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !49003
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ai = icmp ugt i64 %.sroa.2.0.copyload, 65535
  br i1 %i.ai, label %bb.l, label %bb.n, !prof !1948

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !49006
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.2.0.copyload, ptr %i.aj, align 8, !noalias !49006
  store i8 2, ptr %i.e, align 8, !noalias !49006
  %i.ak = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @472), !noalias !49006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !49006
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.h, %bb.l
  %.sroa.1824.0.ph = phi ptr [ %i.ak, %bb.l ], [ %i.ah, %bb.j ], [ %i.ae, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.al = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h61c98d43c241ee1cE(ptr noalias noundef nonnull align 8 %.sroa.1824.0.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8
  store i16 1, ptr %0, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.i
  %.sroa.12.0 = trunc nuw i64 %.sroa.2.0.copyload to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.12.0, ptr %i.an, align 2
  store i16 0, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.r, %bb.p, %.loopexit, %bb.y, %bb.z, %bb.m, %bb.n
  ret void

bb.p:                                             ; preds = %bb.e
  %i.ao = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h11938068f54bbbd6E"(ptr noalias noundef align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @472)
  %i.ap = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h61c98d43c241ee1cE(ptr noalias noundef nonnull align 8 %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  store i16 1, ptr %0, align 8
  br label %bb.o

bb.q:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17he98760da1998ed15E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef align 8 dereferenceable(64) %1, i1 noundef zeroext true)
  %i.ar = load i64, ptr %i.h, align 8, !range !1722, !noundef !10 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !10, !align !299, !noundef !10
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.av, align 8
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.o

bb.s:                                             ; preds = %bb.q
  %.sroa.229.0.copyload = load i64, ptr %i.at, align 8 ; 6 uses
  switch i64 %i.ar, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !49009
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.229.0.copyload, ptr %i.aw, align 8, !noalias !49009
  store i8 3, ptr %i.d, align 8, !noalias !49009
  %i.ax = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @472), !noalias !49009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !49009
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.ay = icmp ugt i64 %.sroa.229.0.copyload, 65535
  br i1 %i.ay, label %bb.v, label %bb.z, !prof !59

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !49015
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.229.0.copyload, ptr %i.az, align 8, !noalias !49015
  store i8 1, ptr %i.c, align 8, !noalias !49015
  %i.ba = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @472), !noalias !49015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !49015
  br label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.bb = icmp ugt i64 %.sroa.229.0.copyload, 65535
  br i1 %i.bb, label %bb.x, label %bb.z, !prof !1948

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !49018
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.229.0.copyload, ptr %i.bc, align 8, !noalias !49018
  store i8 2, ptr %i.b, align 8, !noalias !49018
  %i.bd = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @472), !noalias !49018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !49018
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.t, %bb.x
  %.sroa.1824.1.ph = phi ptr [ %i.bd, %bb.x ], [ %i.ba, %bb.v ], [ %i.ax, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.be = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h61c98d43c241ee1cE(ptr noalias noundef nonnull align 8 %.sroa.1824.1.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8
  store i16 1, ptr %0, align 8
  br label %bb.o

bb.z:                                             ; preds = %bb.w, %bb.u
  %.sroa.12.1 = trunc nuw i64 %.sroa.229.0.copyload to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.12.1, ptr %i.bg, align 2
  store i16 0, ptr %0, align 8
  br label %bb.o
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @"_ZN10serde_json2de21Deserializer$LT$R$GT$18parse_long_integer17h2e3e9df0f99671f5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(64) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #22 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !49021, !noalias !49026, !noundef !10 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !alias.scope !49029, !noalias !49026, !noundef !10 ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17ha5bb36df9391e54eE.exit.lr.ph", label %.thread

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17ha5bb36df9391e54eE.exit.lr.ph": ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !49021, !noalias !49026, !nonnull !10, !align !1504, !noundef !10
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17ha5bb36df9391e54eE.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17ha5bb36df9391e54eE.exit": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17ha5bb36df9391e54eE.exit.lr.ph", %bb.c
  %i.j = phi i64 [ %i.f, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17ha5bb36df9391e54eE.exit.lr.ph" ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.0.015 = phi i32 [ 0, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17ha5bb36df9391e54eE.exit.lr.ph" ], [ %i.o, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49033)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !49034, !noundef !10 ; 2 uses
  %i.m = add i8 %i.l, -48
  %or.cond = icmp ult i8 %i.m, 10
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17ha5bb36df9391e54eE.exit"
  switch i8 %i.l, label %.thread [
    i8 46, label %bb.h
    i8 101, label %bb.i
    i8 69, label %bb.i
  ]

bb.c:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17ha5bb36df9391e54eE.exit"
  %i.n = add nuw i64 %i.j, 1                      ; 3 uses
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !49035
  %i.o = add i32 %.sroa.0.015, 1                  ; 2 uses
  %i.p = icmp ult i64 %i.n, %i.e
  br i1 %i.p, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17ha5bb36df9391e54eE.exit", label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.0.013 = phi i32 [ %.sroa.0.015, %bb.b ], [ 0, %bb.a ], [ %i.o, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49038)
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
  %7 = load double, ptr %6, align 8, !noalias !49041, !noundef !10 ; 2 uses
  %8 = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %8, label %bb.f, label %14

9:                                                ; preds = %.lr.ph.i
  %10 = icmp sgt i32 %.sroa.0.023.i, -1
  br i1 %10, label %bb.e, label %bb.d, !prof !59

bb.d:                                             ; preds = %9
  %11 = fdiv double %.sroa.04.022.i, 1.000000e+308 ; 2 uses
  %12 = add nsw i32 %.sroa.0.023.i, 308           ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %12, i1 true) ; 2 uses
  %13 = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %13, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !49041
  store i64 14, ptr %i.a, align 8, !noalias !49041
  %i.s = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h10b3cd5e983b9291E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !49038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !49041
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8, !alias.scope !49038, !noalias !49043
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17he1dc722be7297f7eE.exit"

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.f, %14
  %.sroa.04.1.i = phi double [ %i.w, %bb.f ], [ %15, %14 ], [ %.sroa.04.022.i, %.lr.ph.i ] ; 2 uses
  %i.u = fneg double %.sroa.04.1.i
  %.sroa.013.0.i = select i1 %2, double %.sroa.04.1.i, double %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.013.0.i, ptr %i.v, align 8, !alias.scope !49038, !noalias !49043
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17he1dc722be7297f7eE.exit"

14:                                               ; preds = %._crit_edge.i
  %15 = fdiv double %.sroa.04.0.lcssa.i, %7
  br label %.loopexit.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.w = fmul double %.sroa.04.0.lcssa.i, %7      ; 2 uses
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = fcmp oeq double %i.x, +inf
  br i1 %i.y, label %bb.g, label %.loopexit.i, !prof !59

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !49041
  store i64 14, ptr %i.b, align 8, !noalias !49041
  %i.z = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h10b3cd5e983b9291E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !49038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !49041
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !49038, !noalias !49043
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17he1dc722be7297f7eE.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17he1dc722be7297f7eE.exit": ; preds = %bb.e, %.loopexit.i, %bb.g
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.g ], [ 1, %bb.e ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !49038, !noalias !49043
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_decimal17h6f55ad51bfdb4c30E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %.sroa.0.015)
  br label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.b
  tail call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$14parse_exponent17hde2793210e7fdf7eE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %.sroa.0.015)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17he1dc722be7297f7eE.exit"
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @"_ZN10serde_json2de21Deserializer$LT$R$GT$18parse_long_integer17hec26104879978f6fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(104) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i = alloca i8, align 1                 ; 6 uses
  %.sroa.9.i = alloca i8, align 2                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h4c71b0134a44617cE.exit", %bb.a
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %i.al, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h4c71b0134a44617cE.exit" ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49044)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49050)
  %i.m = load i8, ptr %i.c, align 8, !range !405, !alias.scope !49052, !noalias !49053, !noundef !10
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.d, align 1, !alias.scope !49052, !noalias !49053, !noundef !10
  store i8 1, ptr %.sroa.5.i, align 1, !alias.scope !49047, !noalias !49055
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49068)
  %i.p = load i64, ptr %i.f, align 8, !alias.scope !49071, !noalias !49072, !noundef !10 ; 2 uses
  %i.q = icmp ne i64 %i.p, 0                      ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i = zext i1 %i.q to i64 ; 3 uses
  %i.r = load ptr, ptr %i.e, align 8, !alias.scope !49071, !noalias !49072, !nonnull !10, !align !1504, !noundef !10 ; 3 uses
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.r, align 1, !noalias !49078, !noundef !10 ; 3 uses
  %i.t = sub nuw i64 %i.p, %.sroa.0.0.i.i.i.i.i.i.i.i
  %.sink11.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i.i.i.i.i.i.i.i
  store ptr %.sink11.i.i.i.i.i.i, ptr %i.e, align 8, !alias.scope !49071, !noalias !49072
  store i64 %i.t, ptr %i.f, align 8, !alias.scope !49071, !noalias !49072
  %i.u = icmp eq i8 %i.s, 10
  %i.v = load i64, ptr %i.g, align 8, !alias.scope !49079, !noalias !49080, !noundef !10
  %i.w = add i64 %i.v, 1                          ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.h, align 8, !alias.scope !49079, !noalias !49080, !noundef !10
  %i.y = add i64 %i.x, %i.w
  store i64 %i.y, ptr %i.h, align 8, !alias.scope !49079, !noalias !49080
  %i.z = load i64, ptr %i.i, align 8, !alias.scope !49079, !noalias !49080, !noundef !10
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.i, align 8, !alias.scope !49079, !noalias !49080
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %.sink11.i.i.i9.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i.i.i.i.i.i.i.i
  store ptr %.sink11.i.i.i9.i.i.i, ptr %i.e, align 8, !alias.scope !49071, !noalias !49072
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %storemerge.i.i = phi i64 [ 0, %bb.f ], [ %i.w, %bb.e ]
  store i64 %storemerge.i.i, ptr %i.g, align 8, !alias.scope !49079, !noalias !49080
  store i8 1, ptr %i.c, align 8, !alias.scope !49052, !noalias !49053
  store i8 %i.s, ptr %i.d, align 1, !alias.scope !49052, !noalias !49053
  store i8 1, ptr %.sroa.5.i, align 1, !alias.scope !49047, !noalias !49055
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.c
  %i.ab = phi i1 [ false, %bb.g ], [ true, %bb.h ], [ true, %bb.c ]
  %.sink6.i.sroa.phi.i = phi ptr [ %.sroa.5.i, %bb.g ], [ %.sroa.9.i, %bb.h ], [ %.sroa.9.i, %bb.c ]
  %.sink.i.i = phi i8 [ 0, %bb.g ], [ %i.s, %bb.h ], [ %i.o, %bb.c ]
  store i8 %.sink.i.i, ptr %.sink6.i.sroa.phi.i, align 1, !alias.scope !49047, !noalias !49055
  %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.1..i = load i8, ptr %.sroa.5.i, align 1, !range !405, !noalias !49081, !noundef !10
  %i.ac = trunc nuw i8 %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.1..i to i1
  %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.2..i = load i8, ptr %.sroa.9.i, align 2, !noalias !49081
  %.sroa.0.0.i = select i1 %i.ac, i8 %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.2..i, i8 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.ad = add i8 %.sroa.0.0.i, -48
  %or.cond = icmp ult i8 %i.ad, 10
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i8 %.sroa.0.0.i, label %bb.n [
    i8 46, label %bb.u
    i8 101, label %bb.v
    i8 69, label %bb.v
  ]

bb.k:                                             ; preds = %bb.i
  %i.ae = load i8, ptr %i.d, align 1, !alias.scope !49082
  store i8 0, ptr %i.c, align 8, !alias.scope !49082
  %i.af = load i64, ptr %i.j, align 8, !range !1428, !alias.scope !49082 ; 2 uses
  %.not.i = icmp ne i64 %i.af, -9223372036854775808
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.l, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h4c71b0134a44617cE.exit"

bb.l:                                             ; preds = %bb.k
  %i.ag = load i64, ptr %i.k, align 8, !alias.scope !49085, !noalias !49088, !noundef !10 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.m, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbf970842c90ac7f3E.exit.i"

bb.m:                                             ; preds = %bb.l
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7463)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbf970842c90ac7f3E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbf970842c90ac7f3E.exit.i": ; preds = %bb.m, %bb.l
  %i.ai = load ptr, ptr %i.l, align 8, !alias.scope !49085, !noalias !49088, !nonnull !10, !noundef !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 %i.ae, ptr %i.aj, align 1
  %i.ak = add i64 %i.ag, 1
  store i64 %i.ak, ptr %i.k, align 8, !alias.scope !49085, !noalias !49088
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h4c71b0134a44617cE.exit"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h4c71b0134a44617cE.exit": ; preds = %bb.k, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbf970842c90ac7f3E.exit.i"
  %i.al = add i32 %.sroa.0.0, 1
  br label %bb.b

bb.n:                                             ; preds = %bb.j
  %.val = load i64, ptr %i.i, align 8             ; 2 uses
  %.val4 = load i64, ptr %i.g, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49090)
  %i.am = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.09.i = tail call i32 @llvm.abs.i32(i32 %.sroa.0.0, i1 false) ; 2 uses
  %i.an = icmp ult i32 %.sroa.012.09.i, 309
  br i1 %i.an, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.p
  %.sroa.0.011.i = phi i32 [ %i.av, %bb.p ], [ %.sroa.0.0, %bb.n ] ; 2 uses
  %.sroa.04.010.i = phi double [ %i.au, %bb.p ], [ %i.am, %bb.n ] ; 3 uses
  %i.ao = fcmp oeq double %.sroa.04.010.i, 0.000000e+00
  br i1 %i.ao, label %.loopexit.i, label %bb.o

._crit_edge.i:                                    ; preds = %bb.p, %bb.n
  %.sroa.04.0.lcssa.i = phi double [ %i.am, %bb.n ], [ %i.au, %bb.p ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.0.0, %bb.n ], [ %i.av, %bb.p ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.09.i, %bb.n ], [ %.sroa.012.0.i, %bb.p ]
  %i.ap = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @_ZN10serde_json2de5POW1017h13e2d2d3887eda26E, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !noalias !49090, !noundef !10 ; 2 uses
  %i.as = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.as, label %bb.s, label %bb.r

bb.o:                                             ; preds = %.lr.ph.i
  %i.at = icmp sgt i32 %.sroa.0.011.i, -1
  br i1 %i.at, label %bb.q, label %bb.p, !prof !59

bb.p:                                             ; preds = %bb.o
  %i.au = fdiv double %.sroa.04.010.i, 1.000000e+308 ; 2 uses
  %i.av = add nsw i32 %.sroa.0.011.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.av, i1 true) ; 2 uses
  %i.aw = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.aw, label %._crit_edge.i, label %.lr.ph.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !49093
  store i64 14, ptr %i.b, align 8, !noalias !49090
end_hunk_0
