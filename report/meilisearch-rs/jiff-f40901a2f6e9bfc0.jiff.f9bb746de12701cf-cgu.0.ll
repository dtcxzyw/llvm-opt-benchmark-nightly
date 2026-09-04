Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4035
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN4jiff5civil8datetime13DateTimeRound5round17ha18a1310279c63e0E:bb.a
.thread.i.i:                                      ; preds = %bb.v
  %i.cz = icmp ne i64 %i.cw, 0
  %spec.select.i.i = zext i1 %i.cz to i8
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit"

bb.w:                                             ; preds = %_ZN4jiff5civil4time4Time23from_duration_unchecked17h9c2b3b2233f80a8cE.exit
  %i.da = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 27), !noalias !10290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10291
  store ptr %i.da, ptr %i.a, align 8, !noalias !10291
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @293, i64 noundef 31, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @294) #45
          to label %bb.aa unwind label %bb.x, !noalias !10292

bb.x:                                             ; preds = %bb.w
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !10293)
  %i.dc = load ptr, ptr %i.a, align 8, !alias.scope !10294, !noalias !10291, !noundef !11 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !10295
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.z, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i"

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i" unwind label %bb.ab, !noalias !10292, !inline_history !25

bb.aa:                                            ; preds = %bb.w
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !10292
  unreachable

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i": ; preds = %bb.z, %bb.y, %bb.x
  resume { ptr, i32 } %i.db

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit": ; preds = %bb.v, %.thread.i.i, %bb.u
  %.sroa.0.1.i.i = phi i8 [ -1, %bb.u ], [ 0, %bb.v ], [ %spec.select.i.i, %.thread.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.1065.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  store i32 %.sroa.016.0.i, ptr %.sroa.1065.0..sroa_idx, align 8
  %.sroa.1166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 0, ptr %.sroa.1166.0..sroa_idx, align 4
  %.sroa.1267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i16 %masksel.i, ptr %.sroa.1267.0..sroa_idx, align 8
  %.sroa.1368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 58
  store i16 0, ptr %.sroa.1368.0..sroa_idx, align 2
  %.sroa.1469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i8 %.sroa.0.1.i.i, ptr %.sroa.1469.0..sroa_idx, align 4
  %.sroa.420.0.insert.ext = zext i8 %i.cp to i32
  %.sroa.420.0.insert.shift = shl nuw nsw i32 %.sroa.420.0.insert.ext, 16
  %.sroa.019.0.insert.ext = zext i16 %i.at to i32
  %.sroa.420.0.insert.insert = or disjoint i32 %.sroa.420.0.insert.shift, %.sroa.019.0.insert.ext
  %.sroa.019.0.insert.insert = or disjoint i32 %.sroa.420.0.insert.insert, 16777216
  call fastcc void @_ZN4jiff5civil4date14DateArithmetic11checked_add17h0d983f9344ba4ef7E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %i.f, i32 %.sroa.019.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !10296)
  %i.dh = load i16, ptr %i.g, align 8, !range !62, !alias.scope !10296, !noalias !10297, !noundef !11
  %i.di = trunc nuw i16 %i.dh to i1
  br i1 %i.di, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit"
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !10296, !noalias !10297, !noundef !11
  %i.dl = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31f2028364fac28dE"(i8 noundef 0, ptr noundef %i.dk), !noalias !10298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.ad:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit"
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.sroa.0.0.copyload.i = load i32, ptr %i.dm, align 2, !alias.scope !10296, !noalias !10297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.dn, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.0.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.c

bb.ae:                                            ; preds = %bb.q, %bb.ac, %bb.e
  %.sink89 = phi ptr [ %i.bn, %bb.q ], [ %i.dl, %bb.ac ], [ %i.s, %bb.e ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink89, ptr %i.do, align 8
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4jiff5civil8datetime18DateTimeArithmetic11checked_add17had1ab0e18dcef9d4E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10327)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.i = load i8, ptr %i.h, align 4, !range !75, !alias.scope !10327, !noalias !10328, !noundef !11
  %i.j = tail call i8 @llvm.smax.i8(i8 %i.i, i8 1)
  switch i8 %i.j, label %default.unreachable [
    i8 1, label %bb.r
    i8 2, label %bb.b
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %1, align 8, !alias.scope !10327, !noalias !10328, !noundef !11
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = load i64, ptr %1, align 8, !alias.scope !10327, !noalias !10328, !noundef !11 ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.n = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef 23), !noalias !10329
  %i.o = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31d4b772b39a2270E"(i1 noundef zeroext true, ptr noundef nonnull %i.n), !noalias !10330
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i32 1, ptr %0, align 8
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sroa.8.0.ph.ph = phi i64 [ %i.k, %bb.b ], [ %i.l, %bb.c ] ; 3 uses
  %.sroa.14.0.ph.ph.in.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.14.0.ph.ph.in = load i32, ptr %.sroa.14.0.ph.ph.in.in, align 8, !alias.scope !10327, !noalias !10328, !noundef !11 ; 2 uses
  %.val = load i64, ptr %2, align 4               ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val10 = load i32, ptr %i.q, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10332)
  %.sroa.019.0.extract.trunc.i.i = trunc i64 %.val to i32
  %i.r = or i32 %.sroa.14.0.ph.ph.in, %.sroa.019.0.extract.trunc.i.i
  %or.cond.i.i = icmp eq i32 %i.r, 0
  br i1 %or.cond.i.i, label %bb.g, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  call void @_ZN4jiff5civil4time4Time32overflowing_add_duration_general17hbab895a8e2bf349fE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, i64 %.val, i64 noundef %.sroa.8.0.ph.ph, i32 noundef %.sroa.14.0.ph.ph.in), !noalias !10331
  br label %_ZN4jiff5civil4time4Time24overflowing_add_duration17h82dea2d84539660fE.exit.i

bb.g:                                             ; preds = %bb.e
  %i.s = shl i64 %.val, 24
  %i.t = ashr i64 %i.s, 56
  %i.u = mul nsw i64 %i.t, 3600
  %i.v = shl i64 %.val, 16
  %i.w = ashr i64 %i.v, 56
  %i.x = mul nsw i64 %i.w, 60
  %i.y = shl i64 %.val, 8
  %i.z = ashr i64 %i.y, 56
  %i.aa = add nsw i64 %i.x, %i.z
  %i.ab = add nsw i64 %i.aa, %i.u
  %i.ac = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ab, i64 %.sroa.8.0.ph.ph) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.i, label %bb.h, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.ae = extractvalue { i64, i1 } %i.ac, 0       ; 2 uses
  %i.af = sdiv i64 %i.ae, 86400
  %i.ag = srem i64 %i.ae, 86400                   ; 4 uses
  %.lobit.i.i.i = ashr i64 %i.ag, 63
  %.sroa.0.0.i.i.i = add nsw i64 %.lobit.i.i.i, %i.af ; 2 uses
  %i.ah = add nsw i64 %.sroa.0.0.i.i.i, -7304485
  %or.cond.i.i.i = icmp ult i64 %i.ah, -14608969
  %i.ai = shl nsw i64 %.sroa.0.0.i.i.i, 32
  %.sroa.0.0.insert.insert.i.i.i = select i1 %or.cond.i.i.i, i64 6913, i64 %i.ai ; 2 uses
  %i.aj = trunc i64 %.sroa.0.0.insert.insert.i.i.i to i1
  br i1 %i.aj, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  %.sroa.450.0.insert.insert.i.i = and i64 %.val, -4294967296
  call void @_ZN4jiff5civil4time4Time32overflowing_add_duration_general17hbab895a8e2bf349fE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, i64 %.sroa.450.0.insert.insert.i.i, i64 noundef %.sroa.8.0.ph.ph, i32 noundef 0), !noalias !10331
  br label %_ZN4jiff5civil4time4Time24overflowing_add_duration17h82dea2d84539660fE.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ak = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 27), !noalias !10333
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !10332, !noalias !10331
  store i64 1, ptr %i.g, align 8, !alias.scope !10332, !noalias !10331
  br label %_ZN4jiff5civil4time4Time24overflowing_add_duration17h82dea2d84539660fE.exit.i

bb.k:                                             ; preds = %bb.h
  %i.am = icmp slt i64 %i.ag, 0
  %i.an = add nsw i64 %i.ag, 86400
  %spec.select.i.i.i = select i1 %i.am, i64 %i.an, i64 %i.ag ; 2 uses
  %i.ao = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %i.ao, label %_ZN4jiff5civil4time4Time21from_second_unchecked17h6c924a705560a3dfE.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = trunc nuw nsw i64 %spec.select.i.i.i to i32 ; 2 uses
  %i.aq = udiv i32 %i.ap, 3600                    ; 2 uses
  %i.ar = urem i32 %i.ap, 3600                    ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN4jiff5civil4time4Time21from_second_unchecked17h6c924a705560a3dfE.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.lhs.trunc.i.i.i = trunc nuw nsw i32 %i.ar to i16 ; 2 uses
  %i.at = udiv i16 %.lhs.trunc.i.i.i, 60
  %i.au = zext nneg i16 %i.at to i64
  %i.av = urem i16 %.lhs.trunc.i.i.i, 60
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 48
  %i.ay = shl nuw nsw i64 %i.au, 40
  %i.az = or disjoint i64 %i.ax, %i.ay
  br label %_ZN4jiff5civil4time4Time21from_second_unchecked17h6c924a705560a3dfE.exit.i.i

_ZN4jiff5civil4time4Time21from_second_unchecked17h6c924a705560a3dfE.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.07.0.shrunk.i.i.i = phi i32 [ 0, %bb.k ], [ %i.aq, %bb.l ], [ %i.aq, %bb.m ]
  %.sroa.09.0.i.i.i = phi i64 [ 0, %bb.k ], [ 0, %bb.l ], [ %i.az, %bb.m ]
  %.sroa.2.0.insert.ext.i.i.i = zext nneg i32 %.sroa.07.0.shrunk.i.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.2.0.insert.insert.i.i.i = or i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.09.0.i.i.i
  %i.ba = ashr i64 %.sroa.0.0.insert.insert.i.i.i, 32
  %i.bb = mul nsw i64 %i.ba, 86400
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.2.0.insert.insert.i.i.i, ptr %i.bc, align 8, !alias.scope !10332, !noalias !10331
  %.sroa.437.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.bb, ptr %.sroa.437.0..sroa_idx.i.i, align 8, !alias.scope !10332, !noalias !10331
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 0, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !alias.scope !10332, !noalias !10331
  store i64 0, ptr %i.g, align 8, !alias.scope !10332, !noalias !10331
  br label %_ZN4jiff5civil4time4Time24overflowing_add_duration17h82dea2d84539660fE.exit.i

_ZN4jiff5civil4time4Time24overflowing_add_duration17h82dea2d84539660fE.exit.i: ; preds = %_ZN4jiff5civil4time4Time21from_second_unchecked17h6c924a705560a3dfE.exit.i.i, %bb.j, %bb.i, %bb.f
  %i.bd = load i64, ptr %i.g, align 8, !range !53, !noalias !10331, !noundef !11
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !10331 ; 2 uses
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4jiff5civil4time4Time24overflowing_add_duration17h82dea2d84539660fE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10331
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !alias.scope !10331
  br label %_ZN4jiff5civil8datetime8DateTime20checked_add_duration17hced8427afbf789adE.exit

bb.o:                                             ; preds = %_ZN4jiff5civil4time4Time24overflowing_add_duration17h82dea2d84539660fE.exit.i
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !10331
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !10331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10331
  store i64 %.sroa.510.0.copyload.i, ptr %i.e, align 8, !noalias !10331
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %.sroa.6.0.copyload.i, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !10331
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i8 2, ptr %.sroa.515.0..sroa_idx.i, align 4, !noalias !10331
  call fastcc void @_ZN4jiff5civil4date14DateArithmetic11checked_add17h0d983f9344ba4ef7E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %i.e, i32 %.val10), !noalias !10331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10331
  call void @llvm.experimental.noalias.scope.decl(metadata !10334)
  %i.bi = load i16, ptr %i.f, align 8, !range !62, !alias.scope !10334, !noalias !10335, !noundef !11
  %i.bj = trunc nuw i16 %i.bi to i1
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !10334, !noalias !10335, !noundef !11
  %i.bm = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31f2028364fac28dE"(i8 noundef 1, ptr noundef %i.bl), !noalias !10336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10331
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !alias.scope !10331
  br label %_ZN4jiff5civil8datetime8DateTime20checked_add_duration17hced8427afbf789adE.exit

bb.q:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bo, align 2, !alias.scope !10334, !noalias !10335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10331
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.bp, ptr %i.bq, align 4, !alias.scope !10331
  %.sroa.4.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i11, align 4, !alias.scope !10331
  br label %_ZN4jiff5civil8datetime8DateTime20checked_add_duration17hced8427afbf789adE.exit

_ZN4jiff5civil8datetime8DateTime20checked_add_duration17hced8427afbf789adE.exit: ; preds = %bb.n, %bb.p, %bb.q
  %.sink.i = phi i32 [ 1, %bb.n ], [ 1, %bb.p ], [ 0, %bb.q ]
  store i32 %.sink.i, ptr %0, align 8, !alias.scope !10331
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10339)
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.023.0.copyload.i = load i32, ptr %i.br, align 4, !alias.scope !10338, !noalias !10340 ; 2 uses
  %.sroa.026.0.copyload.i = load i64, ptr %2, align 4, !alias.scope !10338, !noalias !10340 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load i16, ptr %i.bs, align 8, !alias.scope !10339, !noalias !10341, !noundef !11 ; 2 uses
  %i.bu = and i16 %i.bt, 960
  %i.bv = and i16 %i.bt, 63
  %i.bw = icmp eq i16 %i.bv, 0                    ; 2 uses
  %i.bx = icmp eq i16 %i.bu, 0
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %i.bw, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  br i1 %i.bw, label %bb.ab, label %bb.aa, !prof !16

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10342
  call fastcc void @_ZN4jiff5civil4time4Time15overflowing_add17h5d13792563477874E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c, i64 %.sroa.026.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !10341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10343)
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.bz = load i8, ptr %i.by, align 4, !range !59, !alias.scope !10344, !noalias !10345, !noundef !11 ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 2
  %i.cb = load ptr, ptr %i.c, align 8, !alias.scope !10346, !noalias !10342 ; 2 uses
  br i1 %i.ca, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cc, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false), !alias.scope !10341, !noalias !10339
  store i32 0, ptr %0, align 8, !alias.scope !10337, !noalias !10347
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

bb.w:                                             ; preds = %bb.u
  %i.cd = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h94c9f5eadfcf7d2eE"(ptr noundef %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10342
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cd, ptr %i.ce, align 8, !alias.scope !10337, !noalias !10347
  store i32 1, ptr %0, align 8, !alias.scope !10337, !noalias !10347
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

bb.x:                                             ; preds = %bb.u
  %.sroa.741.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.a, ptr noundef nonnull align 8 dereferenceable(60) %.sroa.741.0..sroa_idx.i, i64 60, i1 false), !noalias !10342
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 69
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.532.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.11.0..sroa_idx.i, i64 3, i1 false), !noalias !10342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10342
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i8 %i.bz, ptr %.sroa.431.0..sroa_idx.i, align 4, !noalias !10342
  call fastcc void @_ZN4jiff5civil4date14DateArithmetic11checked_add17h0d983f9344ba4ef7E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %i.a, i32 %.sroa.023.0.copyload.i), !noalias !10342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10342
  call void @llvm.experimental.noalias.scope.decl(metadata !10348)
  %i.cf = load i16, ptr %i.b, align 8, !range !62, !alias.scope !10348, !noalias !10349, !noundef !11
  %i.cg = trunc nuw i16 %i.cf to i1
  br i1 %i.cg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !10348, !noalias !10349, !noundef !11
  %i.cj = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31f2028364fac28dE"(i8 noundef 3, ptr noundef %i.ci), !noalias !10350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10342
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cj, ptr %i.ck, align 8, !alias.scope !10337, !noalias !10347
  store i32 1, ptr %0, align 8, !alias.scope !10337, !noalias !10347
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

bb.z:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.0.0.copyload.i.i13 = load i32, ptr %i.cl, align 2, !alias.scope !10348, !noalias !10349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10342
  %i.cm = ptrtoint ptr %i.cb to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.cm, ptr %i.cn, align 4, !alias.scope !10337, !noalias !10347
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.0.0.copyload.i.i13, ptr %.sroa.417.0..sroa_idx.i, align 4, !alias.scope !10337, !noalias !10347
  store i32 0, ptr %0, align 8, !alias.scope !10337, !noalias !10347
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

bb.aa:                                            ; preds = %bb.t
  tail call void @_ZN4jiff5civil8datetime8DateTime24checked_add_span_general17h4df33807ad2f7b5cE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

bb.ab:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10342
  call fastcc void @_ZN4jiff5civil4date14DateArithmetic11checked_add17h0d983f9344ba4ef7E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %1, i32 %.sroa.023.0.copyload.i), !noalias !10341
  call void @llvm.experimental.noalias.scope.decl(metadata !10351)
  %i.co = load i16, ptr %i.d, align 8, !range !62, !alias.scope !10351, !noalias !10352, !noundef !11
  %i.cp = trunc nuw i16 %i.co to i1
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !10351, !noalias !10352, !noundef !11
  %i.cs = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31f2028364fac28dE"(i8 noundef 2, ptr noundef %i.cr), !noalias !10353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10342
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !alias.scope !10337, !noalias !10347
  store i32 1, ptr %0, align 8, !alias.scope !10337, !noalias !10347
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.0.0.copyload.i36.i = load i32, ptr %i.cu, align 2, !alias.scope !10351, !noalias !10352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10342
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.026.0.copyload.i, ptr %i.cv, align 4, !alias.scope !10337, !noalias !10347
  %.sroa.4.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.0.0.copyload.i36.i, ptr %.sroa.4.0..sroa_idx.i12, align 4, !alias.scope !10337, !noalias !10347
  store i32 0, ptr %0, align 8, !alias.scope !10337, !noalias !10347
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit: ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %_ZN4jiff5civil8datetime8DateTime20checked_add_duration17hced8427afbf789adE.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i32 } @_ZN4jiff5civil8datetime8DateTime11to_duration17h93e0596288ada61dE(i64 %.0.val, i32 %.8.val) unnamed_addr #5 {
bb.a:
  %.sroa.4.0.extract.shift.i = lshr i32 %.8.val, 16 ; 2 uses
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  %sext.i = shl i32 %.sroa.4.0.extract.shift.i, 24
  %i.a = ashr exact i32 %sext.i, 24               ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZN4jiff6shared5posix21DstInfo$LT$ABBREV$GT$6in_dst17h6ba2b5073dc7c997E":bb.a
  br label %bb.ba
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4jiff6shared5posix44_$LT$impl$u20$jiff..shared..PosixDayTime$GT$11to_datetime17hc1571a40d9927b69E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1, i16 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11556)
  %i.d = load i8, ptr %1, align 4, !range !22, !alias.scope !11556, !noundef !11
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2, !alias.scope !11556, !noundef !11
  %i.g = tail call fastcc i48 @_ZN4jiff6shared4util5itime5IDate24from_day_of_year_no_leap17hc4209b8f4e04ba66E(i16 noundef %2, i16 noundef %i.f), !noalias !11556 ; 2 uses
  %.sroa.02.2.extract.shift.i.i = lshr i48 %i.g, 16
  %.sroa.02.2.extract.trunc.i.i = trunc nuw nsw i48 %.sroa.02.2.extract.shift.i.i to i32 ; 2 uses
  %i.h = trunc i48 %i.g to i1
  br i1 %i.h, label %bb.c, label %"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit", !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11557
  store i32 %.sroa.02.2.extract.trunc.i.i, ptr %i.b, align 4, !noalias !11557
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @418, i64 noundef 34, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @420) #45, !noalias !11556
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i16, ptr %i.i, align 2, !alias.scope !11556, !noundef !11 ; 2 uses
  %or.cond.i.i = icmp ult i16 %i.j, 366
  br i1 %or.cond.i.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.k = sext i16 %2 to i32
  %i.l = add nsw i32 %i.k, 32799                  ; 3 uses
  %i.m = udiv i32 %i.l, 100
  %i.n = mul nuw nsw i32 %i.l, 1461
  %i.o = lshr i32 %i.n, 2
  %i.p = udiv i32 %i.l, 400
  %i.q = zext nneg i16 %i.j to i32
  %reass.sub = sub nsw i32 %i.p, %i.m
  %i.r = add nsw i32 %reass.sub, -12699421
  %i.s = add nsw i32 %i.r, %i.o
  %i.t = add nsw i32 %i.s, %i.q                   ; 2 uses
  %i.u = add nsw i32 %i.t, 4371892
  %or.cond.i.i.i = icmp ult i32 %i.u, 7304484
  br i1 %or.cond.i.i.i, label %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i.i, label %.critedge, !prof !76

_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i.i: ; preds = %bb.e
  %i.v = shl nsw i32 %i.t, 2
  %i.w = add nsw i32 %i.v, 50798911               ; 2 uses
  %i.x = urem i32 %i.w, 146097
  %i.y = or i32 %i.x, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = mul nuw nsw i64 %i.z, 2939745           ; 2 uses
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = udiv i32 %i.ab, 11758980
  %i.ad = mul nuw nsw i32 %i.ac, 2141
  %i.ae = add nuw nsw i32 %i.ad, 197913           ; 3 uses
  %i.af = and i32 %i.ae, 4128768
  %i.ag = icmp ugt i32 %i.ab, -696719417          ; 2 uses
  %i.ah = udiv i32 %i.w, 146097
  %i.ai = mul nuw nsw i32 %i.ah, 100
  %i.aj = lshr i64 %i.aa, 32
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = zext i1 %i.ag to i32
  %i.am = add nuw nsw i32 %i.ai, 32736
  %i.an = add nuw nsw i32 %i.am, %i.ak
  %i.ao = add nuw nsw i32 %i.an, %i.al            ; 2 uses
  %.lhs.trunc.i.i.i = trunc i32 %i.ae to i16
  %i.ap = udiv i16 %.lhs.trunc.i.i.i, 2141
  %.zext.i.i.i = zext nneg i16 %i.ap to i32
  %.sroa.3.0.insert.ext.i.i.i = shl nuw nsw i32 %.zext.i.i.i, 24
  %.sroa.3.0.insert.shift.i.i.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i.i.i, 16777216
  %i.aq = add nuw nsw i32 %i.af, 15990784
  %.sroa.2.0.insert.ext.i.i.i = select i1 %i.ag, i32 %i.aq, i32 %i.ae
  %.sroa.2.0.insert.shift.i.i.i = and i32 %.sroa.2.0.insert.ext.i.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i32 %.sroa.3.0.insert.shift.i.i.i, %.sroa.2.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = and i32 %i.ao, 65535
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %.sroa.032.0.extract.trunc.i.i = trunc i32 %i.ao to i16
  %.not.i.i = icmp eq i16 %2, %.sroa.032.0.extract.trunc.i.i
  br i1 %.not.i.i, label %"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit", label %.critedge

bb.f:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !11556, !noundef !11 ; 3 uses
  %or.cond.i24.i = icmp ult i8 %i.as, 7
  br i1 %or.cond.i24.i, label %_ZN4jiff6shared4util5itime8IWeekday23from_sunday_zero_offset17h3b550d42d23a3cc6E.exit.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @409, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @410) #45, !noalias !11556
  unreachable

_ZN4jiff6shared4util5itime8IWeekday23from_sunday_zero_offset17h3b550d42d23a3cc6E.exit.i: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.au = load i8, ptr %i.at, align 2, !alias.scope !11556, !noundef !11 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !11556, !noundef !11
  %i.ax = icmp eq i8 %i.as, 0
  %i.ay = select i1 %i.ax, i8 7, i8 %i.as
  %i.az = icmp eq i8 %i.au, 5
  %.22.i = select i1 %i.az, i8 -1, i8 %i.au
  %i.ba = tail call fastcc i48 @_ZN4jiff6shared4util5itime5IDate20nth_weekday_of_month17h606984929501b6ceE(i16 %2, i8 %i.aw, i8 noundef %.22.i, i8 noundef %i.ay) ; 2 uses
  %.sroa.02.2.extract.shift.i25.i = lshr i48 %i.ba, 16
  %.sroa.02.2.extract.trunc.i26.i = trunc nuw i48 %.sroa.02.2.extract.shift.i25.i to i32 ; 2 uses
  %i.bb = trunc i48 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit", !prof !23

bb.h:                                             ; preds = %_ZN4jiff6shared4util5itime8IWeekday23from_sunday_zero_offset17h3b550d42d23a3cc6E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11558
  store i32 %.sroa.02.2.extract.trunc.i26.i, ptr %i.a, align 4, !noalias !11558
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @421, i64 noundef 25, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @422) #45, !noalias !11556
  unreachable

"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit": ; preds = %_ZN4jiff6shared4util5itime8IWeekday23from_sunday_zero_offset17h3b550d42d23a3cc6E.exit.i, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i.i, %bb.b
  %.sroa.5.0.i = phi i32 [ %.sroa.02.2.extract.trunc.i.i, %bb.b ], [ %.sroa.02.2.extract.trunc.i26.i, %_ZN4jiff6shared4util5itime8IWeekday23from_sunday_zero_offset17h3b550d42d23a3cc6E.exit.i ], [ %.sroa.0.0.insert.insert.i.i.i, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.sroa.5.0.i, ptr %i.c, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !noundef !11
  %i.be = sub i32 %i.bd, %3                       ; 3 uses
  %i.bf = sdiv i32 %i.be, 86400
  %i.bg = srem i32 %i.be, 86400                   ; 3 uses
  %.lobit.i = ashr i32 %i.bg, 31
  %.sroa.0.0.i47 = add nsw i32 %.lobit.i, %i.bf
  %i.bh = icmp slt i32 %i.bg, 0
  %i.bi = select i1 %i.bh, i32 86400, i32 0
  %spec.select.i = add nsw i32 %i.bi, %i.bg       ; 3 uses
  %i.bj = call fastcc i48 @_ZN4jiff6shared4util5itime5IDate16checked_add_days17h881065ec0ca4a71dE(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.c, i32 noundef %.sroa.0.0.i47) ; 2 uses
  %.sroa.043.2.extract.shift = lshr i48 %i.bj, 16 ; 2 uses
  %.sroa.043.2.extract.trunc = trunc i48 %.sroa.043.2.extract.shift to i16 ; 2 uses
  %i.bk = trunc i48 %i.bj to i1
  br i1 %i.bk, label %bb.i, label %bb.j

.critedge:                                        ; preds = %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i.i, %bb.d, %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %2, ptr %i.bl, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 12, ptr %.sroa.4.0..sroa_idx, align 2
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 31, ptr %.sroa.518.0..sroa_idx, align 1
  store i64 16671994596215295, ptr %0, align 4
  br label %bb.s

bb.i:                                             ; preds = %"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit"
  %i.bm = icmp slt i32 %i.be, 0                   ; 3 uses
  %.sink50 = select i1 %i.bm, i8 1, i8 12
  %.sink = select i1 %i.bm, i8 1, i8 31
  %storemerge = select i1 %i.bm, i64 0, i64 16671994596215295
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %2, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sink50, ptr %i.bo, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %.sink, ptr %i.bp, align 1
  store i64 %storemerge, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.j:                                             ; preds = %"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit"
  %i.bq = icmp sgt i16 %2, %.sroa.043.2.extract.trunc
  br i1 %i.bq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = icmp slt i16 %2, %.sroa.043.2.extract.trunc
  br i1 %i.br, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %2, ptr %i.bs, align 4
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 1, ptr %.sroa.426.0..sroa_idx, align 2
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %.sroa.527.0..sroa_idx, align 1
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bt = icmp eq i32 %spec.select.i, 0
  br i1 %i.bt, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %2, ptr %i.bu, align 4
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 12, ptr %.sroa.429.0..sroa_idx, align 2
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 31, ptr %.sroa.530.0..sroa_idx, align 1
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bv = udiv i32 %spec.select.i, 3600           ; 2 uses
  %i.bw = urem i32 %spec.select.i, 3600           ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.q
  %.sroa.438.0.shrunk = phi i32 [ 0, %bb.m ], [ %i.bv, %bb.o ], [ %i.bv, %bb.q ]
  %.sroa.640.0 = phi i64 [ 0, %bb.m ], [ 0, %bb.o ], [ %i.cg, %bb.q ]
  %.sroa.438.0.insert.ext = zext nneg i32 %.sroa.438.0.shrunk to i64
  %.sroa.438.0.insert.shift = shl nuw nsw i64 %.sroa.438.0.insert.ext, 32
  %.sroa.438.0.insert.insert = or i64 %.sroa.438.0.insert.shift, %.sroa.640.0
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = trunc nuw i48 %.sroa.043.2.extract.shift to i32
  store i32 %i.bz, ptr %i.by, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %.lhs.trunc = trunc nuw nsw i32 %i.bw to i16    ; 2 uses
  %i.ca = udiv i16 %.lhs.trunc, 60
  %i.cb = urem i16 %.lhs.trunc, 60
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 48
  %i.ce = zext nneg i16 %i.ca to i64
  %i.cf = shl nuw nsw i64 %i.ce, 40
  %i.cg = or disjoint i64 %i.cd, %i.cf
  br label %bb.p

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.l
  %.sink54 = phi i64 [ 16671994596215295, %bb.n ], [ %.sroa.438.0.insert.insert, %bb.p ], [ 0, %bb.l ]
  store i64 %.sink54, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %bb.i, %bb.r
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4jiff6shared5posix59_$LT$impl$u20$jiff..shared..PosixTimeZone$LT$ABBREV$GT$$GT$12dst_info_utc17h101cfcbe0fba22f5E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(88) %1, i16 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 10 uses
  %i.b = alloca [12 x i8], align 8                ; 5 uses
  %i.c = load i8, ptr %1, align 4, !range !27, !noundef !11
  %.not = icmp eq i8 %i.c, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i32, ptr %i.d, align 4, !noundef !11 ; 3 uses
  call void @"_ZN4jiff6shared5posix44_$LT$impl$u20$jiff..shared..PosixDayTime$GT$11to_datetime17hc1571a40d9927b69E"(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, i16 noundef %2, i32 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 4, !noundef !11
  call void @"_ZN4jiff6shared5posix44_$LT$impl$u20$jiff..shared..PosixDayTime$GT$11to_datetime17hc1571a40d9927b69E"(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.f, i16 noundef %2, i32 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load <8 x i8>, ptr %i.i, align 4
  %i.k = shufflevector <8 x i8> %i.j, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %.fr = freeze <4 x i8> %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.m = load i8, ptr %i.l, align 2
  %.fr31 = freeze i8 %i.m
  %i.n = icmp eq i8 %.fr31, 0
  %i.o = load i32, ptr %i.b, align 8
  %i.p = icmp eq i32 %i.o, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.q = icmp eq i32 %.fr.scalar, 16842752
  %op.rdx = and i1 %i.q, %i.n
  %op.rdx29 = select i1 %op.rdx, i1 %i.p, i1 false
  br i1 %op.rdx29, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit, %bb.b, %bb.j
  store ptr %1, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false)
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.523.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load i8, ptr %i.r, align 4, !noundef !11
  %i.t = sext i8 %i.s to i32
  %i.u = mul nsw i32 %i.t, 3600
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.w = load i8, ptr %i.v, align 1, !noundef !11
  %i.x = sext i8 %i.w to i32
  %i.y = mul nsw i32 %i.x, 60
  %i.z = add nsw i32 %i.y, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ab = load i8, ptr %i.aa, align 2, !noundef !11
  %i.ac = sext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.z, %i.ac
  %i.ae = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ad, i32 %i.e) ; 2 uses
  %i.af = extractvalue { i32, i1 } %i.ae, 1
  br i1 %i.af, label %bb.i, label %bb.g, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.ag = extractvalue { i32, i1 } %i.ae, 0       ; 2 uses
  %i.ah = sdiv i32 %i.ag, 86400
  %i.ai = srem i32 %i.ag, 86400
  %.lobit.i.i.i = ashr i32 %i.ai, 31
  %.sroa.0.0.i.i.i = add nsw i32 %.lobit.i.i.i, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = call fastcc i48 @_ZN4jiff6shared4util5itime5IDate16checked_add_days17h881065ec0ca4a71dE(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.aj, i32 noundef %.sroa.0.0.i.i.i) ; 2 uses
  %i.al = trunc i48 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.050.2.extract.shift.i.i = lshr i48 %i.ak, 16
  %.sroa.050.2.extract.trunc.i.i = trunc i48 %.sroa.050.2.extract.shift.i.i to i16
  br label %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.am = icmp slt i32 %i.e, 0
  %spec.select = select i1 %i.am, i16 -9999, i16 9999
  br label %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit

_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit: ; preds = %bb.i, %bb.h
  %.sroa.6.0 = phi i16 [ %spec.select, %bb.i ], [ %.sroa.050.2.extract.trunc.i.i, %bb.h ]
  %.not24 = icmp eq i16 %2, %.sroa.6.0
  br i1 %.not24, label %bb.e, label %bb.j

bb.j:                                             ; preds = %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit
  store i64 16671994596215295, ptr %i.a, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %2, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 12, ptr %.sroa.520.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 31, ptr %.sroa.6.0..sroa_idx, align 1
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4jiff6shared5posix59_$LT$impl$u20$jiff..shared..PosixTimeZone$LT$ABBREV$GT$$GT$12dst_info_utc17h1b84b21fa39b3a96E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, i16 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 10 uses
  %i.b = alloca [12 x i8], align 8                ; 5 uses
  %i.c = load i8, ptr %1, align 8, !range !27, !noundef !11
  %.not = icmp eq i8 %i.c, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i32, ptr %i.d, align 8, !noundef !11 ; 3 uses
  call void @"_ZN4jiff6shared5posix44_$LT$impl$u20$jiff..shared..PosixDayTime$GT$11to_datetime17hc1571a40d9927b69E"(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, i16 noundef %2, i32 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i32, ptr %i.g, align 8, !noundef !11
  call void @"_ZN4jiff6shared5posix44_$LT$impl$u20$jiff..shared..PosixDayTime$GT$11to_datetime17hc1571a40d9927b69E"(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.f, i16 noundef %2, i32 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load <8 x i8>, ptr %i.i, align 4
  %i.k = shufflevector <8 x i8> %i.j, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %.fr = freeze <4 x i8> %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.m = load i8, ptr %i.l, align 2
  %.fr31 = freeze i8 %i.m
  %i.n = icmp eq i8 %.fr31, 0
  %i.o = load i32, ptr %i.b, align 8
  %i.p = icmp eq i32 %i.o, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.q = icmp eq i32 %.fr.scalar, 16842752
  %op.rdx = and i1 %i.q, %i.n
  %op.rdx29 = select i1 %op.rdx, i1 %i.p, i1 false
  br i1 %op.rdx29, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit, %bb.b, %bb.j
  store ptr %1, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false)
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.523.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load i8, ptr %i.r, align 4, !noundef !11
  %i.t = sext i8 %i.s to i32
  %i.u = mul nsw i32 %i.t, 3600
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.w = load i8, ptr %i.v, align 1, !noundef !11
  %i.x = sext i8 %i.w to i32
  %i.y = mul nsw i32 %i.x, 60
  %i.z = add nsw i32 %i.y, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ab = load i8, ptr %i.aa, align 2, !noundef !11
  %i.ac = sext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.z, %i.ac
  %i.ae = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ad, i32 %i.e) ; 2 uses
  %i.af = extractvalue { i32, i1 } %i.ae, 1
  br i1 %i.af, label %bb.i, label %bb.g, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.ag = extractvalue { i32, i1 } %i.ae, 0       ; 2 uses
  %i.ah = sdiv i32 %i.ag, 86400
end_hunk_1
