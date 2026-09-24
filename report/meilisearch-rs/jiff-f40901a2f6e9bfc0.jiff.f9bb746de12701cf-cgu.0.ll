Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4035
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN4jiff3fmt7strtime14BrokenDownTime7to_date7to_date17h8186537ab608891cE:bb.a
  call fastcc void @_ZN4jiff5civil4date4Date3new17h8f75b13fdc83d48aE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, i16 noundef %i.z, i8 noundef %i.aj, i8 noundef %i.ah), !noalias !3421
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3422)
  %i.ak = load i16, ptr %i.p, align 8, !range !62, !alias.scope !3422, !noalias !3423, !noundef !11
  %i.al = trunc nuw i16 %i.ak to i1
  br i1 %i.al, label %bb.e, label %.thread105

.thread105:                                       ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.am, align 2, !alias.scope !3422, !noalias !3423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3421
  br label %.thread130

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call fastcc void @_ZN4jiff3fmt7strtime14BrokenDownTime16to_date_from_iso17h8f637bf11465a869E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1)
  %i.an = load i16, ptr %i.u, align 8, !range !62, !noundef !11
  %i.ao = trunc nuw i16 %i.an to i1
  br i1 %i.ao, label %bb.aq, label %bb.ar

bb.e:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !3422, !noalias !3423, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3424
  store i8 9, ptr %i.o, align 8, !noalias !3424
  %i.ar = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h8d1c818ace875e4eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr noundef %i.aq), !noalias !3424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3421
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  br label %bb.ap

bb.f:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %.sroa.052.0.copyload = load i16, ptr %i.at, align 2
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.553.0.copyload = load i32, ptr %.sroa.553.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.not63 = icmp eq i16 %.sroa.052.0.copyload, 1
  br i1 %.not63, label %.thread130, label %bb.i

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call fastcc void @_ZN4jiff3fmt7strtime14BrokenDownTime16to_date_from_iso17h8f637bf11465a869E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1)
  %i.au = load i16, ptr %i.s, align 8, !range !62, !noundef !11
  %i.av = trunc nuw i16 %i.au to i1
  br i1 %i.av, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8
  br label %bb.ap

bb.i:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.val = load i16, ptr %i.az, align 4, !range !62, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 86
  %.val68 = load i16, ptr %i.ba, align 2
  %i.bb = trunc nuw i16 %.val to i1
  br i1 %i.bb, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.bc = add i16 %i.z, -10000
  %or.cond.i.i.i = icmp ult i16 %i.bc, -19999
  %i.bd = zext i16 %i.z to i32
  %i.be = shl nuw i32 %i.bd, 16
  %.sroa.0.0.insert.insert.i.i.i = select i1 %or.cond.i.i.i, i32 11777, i32 %i.be ; 2 uses
  %i.bf = trunc i32 %.sroa.0.0.insert.insert.i.i.i to i1
  br i1 %i.bf, label %bb.k, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17heaadf476ce029772E.exit.i"

bb.k:                                             ; preds = %bb.j
  %i.bg = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 46), !noalias !3425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3426
  store ptr %i.bg, ptr %i.l, align 8, !noalias !3426
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 43, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #45
          to label %bb.o unwind label %bb.l, !noalias !3427

bb.l:                                             ; preds = %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !3428)
  %i.bi = load ptr, ptr %i.l, align 8, !alias.scope !3429, !noalias !3427, !noundef !11 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !noalias !3430
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.n, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i"

bb.n:                                             ; preds = %bb.m
  fence acquire, !noalias !3431
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.l)
          to label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i" unwind label %bb.p, !noalias !3432, !inline_history !25

bb.o:                                             ; preds = %bb.k
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !3427
  unreachable

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i": ; preds = %bb.n, %bb.m, %bb.l
  resume { ptr, i32 } %i.bh

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17heaadf476ce029772E.exit.i": ; preds = %bb.j
  %.sroa.518.0.extract.shift.i.i = lshr i32 %.sroa.0.0.insert.insert.i.i.i, 16
  %.sroa.4.5.insert.insert.i = or disjoint i32 %.sroa.518.0.extract.shift.i.i, 16842752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3432
  %.sroa.414.0.insert.ext.i = zext i16 %.val68 to i32
  %.sroa.414.0.insert.shift.i = shl nuw i32 %.sroa.414.0.insert.ext.i, 16
  %.sroa.012.0.insert.insert.i = or disjoint i32 %.sroa.414.0.insert.shift.i, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  store i32 %.sroa.4.5.insert.insert.i, ptr %i.bn, align 2, !noalias !3432
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i8 2, ptr %i.bo, align 2, !noalias !3432
  store i8 0, ptr %i.m, align 2, !noalias !3432
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  store i32 %.sroa.012.0.insert.insert.i, ptr %i.bp, align 2, !noalias !3432
  call fastcc void @_ZN4jiff5civil4date8DateWith5build17h16f59ab13caeb75bE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.n, ptr noalias noundef readonly align 2 captures(address) dereferenceable(14) %i.m), !noalias !3432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3432
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3433)
  %i.bq = load i16, ptr %i.n, align 8, !range !62, !alias.scope !3433, !noalias !3434, !noundef !11
  %i.br = trunc nuw i16 %i.bq to i1
  br i1 %i.br, label %bb.q, label %.thread140

.thread140:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17heaadf476ce029772E.exit.i"
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %.sroa.0.0.copyload.i17.i = load i32, ptr %i.bs, align 2, !alias.scope !3433, !noalias !3434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3432
  br label %.thread130

bb.q:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17heaadf476ce029772E.exit.i"
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !3433, !noalias !3434, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3435
  store i8 9, ptr %i.k, align 8, !noalias !3435
  %i.bv = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h8d1c818ace875e4eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noundef %i.bu), !noalias !3435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3432
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bv, ptr %i.bw, align 8
  br label %bb.ap

bb.r:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3436)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.by = load i8, ptr %i.bx, align 2, !range !21, !alias.scope !3436, !noalias !3437, !noundef !11
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 99
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !3436, !noalias !3437 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.cd = load i8, ptr %i.cc, align 1, !range !26, !alias.scope !3436, !noalias !3437, !noundef !11 ; 6 uses
  %.not.i = icmp ne i8 %i.cd, 0                   ; 2 uses
  %or.cond.not.i = and i1 %.not.i, %i.bz
  br i1 %or.cond.not.i, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.ce = sext i8 %i.cb to i16
  %i.cf = icmp eq i8 %i.cd, 7
  %narrow.i = select i1 %i.cf, i8 0, i8 %i.cd
  %.sroa.05.0.i = zext nneg i8 %narrow.i to i16   ; 2 uses
  %i.cg = add i16 %i.z, -10000
  %or.cond.i.i.i72 = icmp ult i16 %i.cg, -19999
  %i.ch = zext i16 %i.z to i32
  %i.ci = shl nuw i32 %i.ch, 16
  %.sroa.0.0.insert.insert.i.i.i73 = select i1 %or.cond.i.i.i72, i32 11777, i32 %i.ci ; 3 uses
  %i.cj = trunc i32 %.sroa.0.0.insert.insert.i.i.i73 to i1
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 46), !noalias !3438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3439
  store i8 9, ptr %i.g, align 8, !noalias !3439
  %i.cl = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h8d1c818ace875e4eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %i.ck), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3439
  br label %bb.aa

bb.u:                                             ; preds = %bb.s
  %.sroa.518.0.extract.shift.i.i74 = lshr i32 %.sroa.0.0.insert.insert.i.i.i73, 16
  %.sroa.4.5.insert.insert.i75 = or disjoint i32 %.sroa.518.0.extract.shift.i.i74, 16842752
  %i.cm = ashr i32 %.sroa.0.0.insert.insert.i.i.i73, 16
  %i.cn = add nsw i32 %i.cm, 32799                ; 3 uses
  %i.co = udiv i32 %i.cn, 400
  %i.cp = udiv i32 %i.cn, 100
  %i.cq = mul nuw nsw i32 %i.cn, 1461
  %i.cr = lshr i32 %i.cq, 2
  %reass.sub159 = sub nsw i32 %i.co, %i.cp
  %i.cs = add nsw i32 %reass.sub159, -12699113
  %i.ct = add nsw i32 %i.cs, %i.cr
  %i.cu = srem i32 %i.ct, 7                       ; 2 uses
  %.inv.i.i.i = icmp sgt i32 %i.cu, -1
  %i.cv = select i1 %.inv.i.i.i, i32 -1, i32 248
  %i.cw = sub nsw i32 %i.cv, %i.cu
  %.neg4.i.i.i = trunc i32 %i.cw to i8
  %i.cx = add nsw i8 %.neg4.i.i.i, 7
  %i.cy = srem i8 %i.cx, 7                        ; 2 uses
  %i.cz = icmp slt i8 %i.cy, 0
  %i.da = select i1 %i.cz, i8 8, i8 1
  %i.db = add nsw i8 %i.da, %i.cy
  %i.dc = zext i8 %i.db to i16                    ; 2 uses
  %i.dd = icmp eq i8 %i.cb, 0
  br i1 %i.dd, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.de = mul nsw i16 %i.ce, 7
  %i.df = add nsw i16 %i.dc, -7
  %i.dg = add nsw i16 %i.df, %i.de
  %i.dh = add nsw i16 %i.dg, %.sroa.05.0.i
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.di = xor i16 %.sroa.05.0.i, 7
  %i.dj = sub nsw i16 %i.dc, %i.di                ; 2 uses
  %i.dk = icmp eq i16 %i.dj, 0
  br i1 %i.dk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3440
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.cd, ptr %i.dl, align 1, !noalias !3440
  store i8 12, ptr %i.j, align 8, !noalias !3440
  %i.dm = call noundef ptr @"_ZN4jiff5error3fmt7strtime108_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h57bc27f59ec061bdE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j), !noalias !3440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3440
  br label %bb.aa

bb.y:                                             ; preds = %bb.w, %bb.v
  %.sroa.015.0.i = phi i16 [ %i.dh, %bb.v ], [ %i.dj, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3440
  %.sroa.468.0.insert.ext.i = zext i16 %.sroa.015.0.i to i32
  %.sroa.468.0.insert.shift.i = shl nuw i32 %.sroa.468.0.insert.ext.i, 16
  %.sroa.066.0.insert.insert.i = or disjoint i32 %.sroa.468.0.insert.shift.i, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  store i32 %.sroa.4.5.insert.insert.i75, ptr %i.dn, align 2, !noalias !3440
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 2, ptr %i.do, align 2, !noalias !3440
  store i8 0, ptr %i.h, align 2, !noalias !3440
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  store i32 %.sroa.066.0.insert.insert.i, ptr %i.dp, align 2, !noalias !3440
  call fastcc void @_ZN4jiff5civil4date8DateWith5build17h16f59ab13caeb75bE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef readonly align 2 captures(address) dereferenceable(14) %i.h), !noalias !3440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3440
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3441)
  %i.dq = load i16, ptr %i.i, align 8, !range !62, !alias.scope !3441, !noalias !3442, !noundef !11
  %i.dr = trunc nuw i16 %i.dq to i1
  br i1 %i.dr, label %bb.z, label %.thread144

bb.z:                                             ; preds = %bb.y
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !3441, !noalias !3442, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3443
  store i8 9, ptr %i.f, align 8, !noalias !3443
  %i.du = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h8d1c818ace875e4eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noundef %i.dt), !noalias !3443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3440
  br label %bb.aa

.thread144:                                       ; preds = %bb.y
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.sroa.0.0.copyload.i91.i = load i32, ptr %i.dv, align 2, !alias.scope !3441, !noalias !3442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3440
  br label %.thread130

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.t
  %.sroa.990.0.ph = phi ptr [ %i.du, %bb.z ], [ %i.dm, %bb.x ], [ %i.cl, %bb.t ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.990.0.ph, ptr %i.dw, align 8
  br label %bb.ap

bb.ab:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3444)
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.dy = load i8, ptr %i.dx, align 4, !range !21, !alias.scope !3444, !noalias !3445, !noundef !11
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 101
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !3444, !noalias !3445 ; 2 uses
  %or.cond.not.i77 = and i1 %.not.i, %i.dz
  br i1 %or.cond.not.i77, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.ec = sext i8 %i.eb to i16
  %i.ed = add nsw i8 %i.cd, -1
  %i.ee = zext nneg i8 %i.ed to i16               ; 2 uses
  %i.ef = add i16 %i.z, -10000
  %or.cond.i.i.i79 = icmp ult i16 %i.ef, -19999
  %i.eg = zext i16 %i.z to i32
  %i.eh = shl nuw i32 %i.eg, 16
  %.sroa.0.0.insert.insert.i.i.i80 = select i1 %or.cond.i.i.i79, i32 11777, i32 %i.eh ; 3 uses
  %i.ei = trunc i32 %.sroa.0.0.insert.insert.i.i.i80 to i1
  br i1 %i.ei, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ej = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 46), !noalias !3446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3447
  store i8 9, ptr %i.b, align 8, !noalias !3447
  %i.ek = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h8d1c818ace875e4eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.ej), !noalias !3447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3447
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ac
  %.sroa.518.0.extract.shift.i.i81 = lshr i32 %.sroa.0.0.insert.insert.i.i.i80, 16
  %.sroa.4.5.insert.insert.i82 = or disjoint i32 %.sroa.518.0.extract.shift.i.i81, 16842752
  %i.el = ashr i32 %.sroa.0.0.insert.insert.i.i.i80, 16
  %i.em = add nsw i32 %i.el, 32799                ; 3 uses
  %i.en = udiv i32 %i.em, 400
  %i.eo = udiv i32 %i.em, 100
  %i.ep = mul nuw nsw i32 %i.em, 1461
  %i.eq = lshr i32 %i.ep, 2
  %reass.sub = sub nsw i32 %i.en, %i.eo
  %i.er = add nsw i32 %reass.sub, -12699113
  %i.es = add nsw i32 %i.er, %i.eq
  %i.et = srem i32 %i.es, 7                       ; 2 uses
  %.inv.i.i.i84 = icmp sgt i32 %i.et, -1
  %i.eu = select i1 %.inv.i.i.i84, i32 -1, i32 248
  %i.ev = sub nsw i32 %i.eu, %i.et
  %.neg4.i.i.i85 = trunc i32 %i.ev to i8
  %i.ew = add nsw i8 %.neg4.i.i.i85, 1
  %i.ex = srem i8 %i.ew, 7                        ; 2 uses
  %i.ey = icmp slt i8 %i.ex, 0
  %i.ez = select i1 %i.ey, i8 8, i8 1
  %i.fa = add nsw i8 %i.ez, %i.ex
  %i.fb = zext i8 %i.fa to i16                    ; 2 uses
  %i.fc = icmp eq i8 %i.eb, 0
  br i1 %i.fc, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fd = mul nsw i16 %i.ec, 7
  %i.fe = add nsw i16 %i.fb, -7
  %i.ff = add nsw i16 %i.fe, %i.fd
  %i.fg = add nsw i16 %i.ff, %i.ee
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %.neg.i = add nsw i16 %i.fb, -7
  %i.fh = add nsw i16 %.neg.i, %i.ee              ; 2 uses
  %i.fi = icmp eq i16 %i.fh, 0
  br i1 %i.fi, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3448
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.cd, ptr %i.fj, align 1, !noalias !3448
  store i8 11, ptr %i.e, align 8, !noalias !3448
  %i.fk = call noundef ptr @"_ZN4jiff5error3fmt7strtime108_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h57bc27f59ec061bdE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e), !noalias !3448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3448
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %.sroa.014.0.i = phi i16 [ %i.fg, %bb.af ], [ %i.fh, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3448
  %.sroa.467.0.insert.ext.i = zext i16 %.sroa.014.0.i to i32
  %.sroa.467.0.insert.shift.i = shl nuw i32 %.sroa.467.0.insert.ext.i, 16
  %.sroa.065.0.insert.insert.i = or disjoint i32 %.sroa.467.0.insert.shift.i, 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i32 %.sroa.4.5.insert.insert.i82, ptr %i.fl, align 2, !noalias !3448
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 2, ptr %i.fm, align 2, !noalias !3448
  store i8 0, ptr %i.c, align 2, !noalias !3448
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i32 %.sroa.065.0.insert.insert.i, ptr %i.fn, align 2, !noalias !3448
  call fastcc void @_ZN4jiff5civil4date8DateWith5build17h16f59ab13caeb75bE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef readonly align 2 captures(address) dereferenceable(14) %i.c), !noalias !3448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3448
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3449)
  %i.fo = load i16, ptr %i.d, align 8, !range !62, !alias.scope !3449, !noalias !3450, !noundef !11
  %i.fp = trunc nuw i16 %i.fo to i1
  br i1 %i.fp, label %bb.aj, label %.thread151

bb.aj:                                            ; preds = %bb.ai
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !3449, !noalias !3450, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3451
  store i8 9, ptr %i.a, align 8, !noalias !3451
  %i.fs = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h8d1c818ace875e4eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef %i.fr), !noalias !3451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3448
  br label %bb.ak

.thread151:                                       ; preds = %bb.ai
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.0.0.copyload.i89.i = load i32, ptr %i.ft, align 2, !alias.scope !3449, !noalias !3450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3448
  br label %.thread130

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.ad
  %.sroa.994.0.ph = phi ptr [ %i.fs, %bb.aj ], [ %i.fk, %bb.ah ], [ %i.ek, %bb.ad ]
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.994.0.ph, ptr %i.fu, align 8
  br label %bb.ap

.thread130:                                       ; preds = %.thread151, %.thread144, %.thread140, %.thread105, %bb.f
  %.sroa.13.3133 = phi i32 [ %.sroa.0.0.copyload.i89.i, %.thread151 ], [ %.sroa.0.0.copyload.i91.i, %.thread144 ], [ %.sroa.0.0.copyload.i17.i, %.thread140 ], [ %.sroa.0.0.copyload.i.i, %.thread105 ], [ %.sroa.553.0.copyload, %bb.f ] ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.fw = load i8, ptr %i.fv, align 1, !range !26, !noundef !11 ; 3 uses
  %.not66 = icmp eq i8 %i.fw, 0
  br i1 %.not66, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 27, ptr %i.r, align 8
  %i.fx = call noundef ptr @"_ZN4jiff5error3fmt7strtime108_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h57bc27f59ec061bdE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fx, ptr %i.fy, align 8
  br label %bb.ap

bb.am:                                            ; preds = %.thread130
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.13.3133, 16 ; 2 uses
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  %sext.i = shl i32 %.sroa.4.0.extract.shift.i, 24
  %i.fz = ashr exact i32 %sext.i, 24              ; 2 uses
  %i.ga = icmp ult i8 %.sroa.4.0.extract.trunc.i, 3 ; 2 uses
  %i.gb = or disjoint i32 %i.fz, 12
  %.sroa.0.0.i.i = select i1 %i.ga, i32 %i.gb, i32 %i.fz
  %sext4.i = shl i32 %.sroa.13.3133, 16
  %i.gc = ashr exact i32 %sext4.i, 16
  %i.gd = add nsw i32 %i.gc, 32800
  %.neg.i.i = sext i1 %i.ga to i32
  %i.ge = add nsw i32 %i.gd, %.neg.i.i            ; 3 uses
  %i.gf = ashr i32 %.sroa.13.3133, 24
  %i.gg = udiv i32 %i.ge, 100
  %i.gh = mul nuw nsw i32 %i.ge, 1461
  %i.gi = lshr i32 %i.gh, 2
  %i.gj = udiv i32 %i.ge, 400
  %i.gk = mul nsw i32 %.sroa.0.0.i.i, 979
  %i.gl = add nsw i32 %i.gk, -2919
  %i.gm = lshr i32 %i.gl, 5
  %i.gn = add nsw i32 %i.gf, -12699420
  %i.go = sub nuw nsw i32 %i.gn, %i.gg
  %i.gp = add nuw nsw i32 %i.go, %i.gj
  %i.gq = add nsw i32 %i.gp, %i.gi
  %i.gr = add nsw i32 %i.gq, %i.gm
  %i.gs = srem i32 %i.gr, 7                       ; 2 uses
  %i.gt = icmp slt i32 %i.gs, 0
  %i.gu = select i1 %i.gt, i32 7, i32 0
  %spec.select.i.i.i = add nsw i32 %i.gu, %i.gs
  %i.gv = trunc nuw nsw i32 %spec.select.i.i.i to i8
  %i.gw = add nuw nsw i8 %i.gv, 1
  %.not67 = icmp eq i8 %i.fw, %i.gw
  br i1 %.not67, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %.thread130
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.13.3133, ptr %i.gx, align 2
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.gy = tail call fastcc noundef i8 @_ZN4jiff5civil4date4Date7weekday17hfa96d66b3a8fd691E(i32 %.sroa.13.3133)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.fw, ptr %i.gz, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i8 %i.gy, ptr %i.ha, align 2
  store i8 14, ptr %i.q, align 8
  %i.hb = call noundef ptr @"_ZN4jiff5error3fmt7strtime108_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h57bc27f59ec061bdE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hb, ptr %i.hc, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %bb.as, %bb.e, %bb.h, %bb.q, %bb.aa, %bb.ak, %bb.al, %bb.ao, %bb.at, %bb.an
  %.sink = phi i16 [ 1, %bb.e ], [ 1, %bb.h ], [ 1, %bb.q ], [ 1, %bb.aa ], [ 1, %bb.ak ], [ 1, %bb.al ], [ 1, %bb.ao ], [ 0, %bb.an ], [ 1, %bb.at ], [ 0, %bb.as ], [ 1, %bb.aq ]
  store i16 %.sink, ptr %0, align 8
  ret void

bb.aq:                                            ; preds = %bb.d
  %i.hd = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.he, ptr %i.hf, align 8
  br label %bb.ap

bb.ar:                                            ; preds = %bb.d
  %i.hg = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %.sroa.049.0.copyload = load i16, ptr %i.hg, align 2
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.hh = trunc i16 %.sroa.049.0.copyload to i1
  br i1 %i.hh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.5.0.copyload, ptr %i.hi, align 2
  br label %bb.ap

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i8 29, ptr %i.t, align 8
  %i.hj = call noundef ptr @"_ZN4jiff5error3fmt7strtime108_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h57bc27f59ec061bdE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hj, ptr %i.hk, align 8
  br label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN4jiff3fmt7strtime15month_name_full17hab5dff7e2abc3579E(i8 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %switch.tableidx = add i8 %0, -1                ; 3 uses
  %i.d = icmp ult i8 %switch.tableidx, 12
  br i1 %i.d, label %switch.lookup, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %0, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E", ptr %.sroa.43.0..sroa_idx, align 8
  store ptr @213, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_0
begin_hunk_1_@_ZN4jiff6shared4util5itime5IDate16checked_add_days17h881065ec0ca4a71dE:bb.a
bb.f:                                             ; preds = %bb.d
  %.sroa.020.0.insert.insert.i = add i32 %.sroa.07.0.copyload, -16777216
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = add i16 %.sroa.04.0.extract.trunc.i, -1 ; 2 uses
  %i.ad = icmp slt i16 %i.ac, -9999
  br i1 %i.ad, label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ae = add i8 %.sroa.45.0.extract.trunc.i, -1  ; 4 uses
  %i.af = icmp eq i8 %i.ae, 2
  br i1 %i.af, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  %.sroa.013.0.insert.ext.i = zext i16 %i.ac to i32
  %.sroa.013.0.insert.insert.i = or disjoint i32 %.sroa.013.0.insert.ext.i, 520880128
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = srem i16 %.sroa.04.0.extract.trunc.i, 25
  %i.ah = icmp eq i16 %i.ag, 0
  %..i.i = select i1 %i.ah, i16 15, i16 3
  %i.ai = and i16 %..i.i, %.sroa.04.0.extract.trunc.i
  %i.aj = icmp eq i16 %i.ai, 0
  %..i = select i1 %i.aj, i32 486539264, i32 469762048
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ak = ashr i8 %i.ae, 3
  %i.al = xor i8 %i.ak, %i.ae
  %i.am = or i8 %i.al, 30
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw i32 %i.an, 24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.016.0.i = phi i32 [ %i.ao, %bb.k ], [ %..i, %bb.j ]
  %.sroa.418.0.insert.ext.i = zext i8 %i.ae to i32
  %.sroa.418.0.insert.shift.i = shl nuw nsw i32 %.sroa.418.0.insert.ext.i, 16
  %.sroa.418.0.insert.insert.i = or disjoint i32 %.sroa.016.0.i, %.sroa.418.0.insert.shift.i
  %.sroa.017.0.insert.ext.i = and i32 %.sroa.07.0.copyload, 65535
  %.sroa.017.0.insert.insert.i = or disjoint i32 %.sroa.418.0.insert.insert.i, %.sroa.017.0.insert.ext.i
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.m:                                             ; preds = %bb.a
  %.sroa.09.0.copyload = load i32, ptr %0, align 2 ; 7 uses
  %.sroa.03.0.extract.trunc.i = trunc i32 %.sroa.09.0.copyload to i16 ; 3 uses
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.09.0.copyload, 16
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8 ; 4 uses
  %.sroa.54.0.extract.shift.i = lshr i32 %.sroa.09.0.copyload, 24
  %.sroa.54.0.extract.trunc.i = trunc nuw i32 %.sroa.54.0.extract.shift.i to i8 ; 3 uses
  %i.ap = icmp sgt i8 %.sroa.54.0.extract.trunc.i, 27
  br i1 %i.ap, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread.i, %bb.p, %bb.m
  %i.aq = and i32 %.sroa.09.0.copyload, -16777216
  %.sroa.521.0.insert.shift.i = add i32 %i.aq, 16777216
  %i.ar = and i32 %.sroa.09.0.copyload, 16777215
  %.sroa.019.0.insert.insert.i = or disjoint i32 %.sroa.521.0.insert.shift.i, %i.ar
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.o:                                             ; preds = %bb.m
  %i.as = icmp eq i8 %.sroa.4.0.extract.trunc.i, 2
  br i1 %i.as, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = ashr i8 %.sroa.4.0.extract.trunc.i, 3
  %i.au = xor i8 %i.at, %.sroa.4.0.extract.trunc.i
  %i.av = or i8 %i.au, 30
  %i.aw = icmp eq i8 %i.av, %.sroa.54.0.extract.trunc.i
  br i1 %i.aw, label %bb.q, label %bb.n

.thread.i:                                        ; preds = %bb.o
  %i.ax = srem i16 %.sroa.03.0.extract.trunc.i, 25
  %i.ay = icmp eq i16 %i.ax, 0
  %..i.i28 = select i1 %i.ay, i16 15, i16 3
  %i.az = and i16 %..i.i28, %.sroa.03.0.extract.trunc.i
  %i.ba = icmp eq i16 %i.az, 0
  %..i29 = select i1 %i.ba, i8 29, i8 28
  %i.bb = icmp eq i8 %..i29, %.sroa.54.0.extract.trunc.i
  br i1 %i.bb, label %.thread23.i, label %bb.n

bb.q:                                             ; preds = %bb.p
  %i.bc = icmp eq i8 %.sroa.4.0.extract.trunc.i, 12
  br i1 %i.bc, label %bb.r, label %.thread23.i

bb.r:                                             ; preds = %bb.q
  %i.bd = add i16 %.sroa.03.0.extract.trunc.i, 1  ; 2 uses
  %i.be = icmp sgt i16 %i.bd, 9999
  br i1 %i.be, label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit, label %bb.s

.thread23.i:                                      ; preds = %bb.q, %.thread.i
  %.sroa.417.0.insert.ext.i = add i32 %.sroa.09.0.copyload, 65536
  %.sroa.417.0.insert.shift.i = and i32 %.sroa.417.0.insert.ext.i, 16711680
  %.sroa.016.0.insert.ext.i = and i32 %.sroa.09.0.copyload, 65535
  %.sroa.417.0.insert.insert.i = or disjoint i32 %.sroa.016.0.insert.ext.i, %.sroa.417.0.insert.shift.i
  %.sroa.016.0.insert.insert.i = or disjoint i32 %.sroa.417.0.insert.insert.i, 16777216
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.s:                                             ; preds = %bb.r
  %.sroa.013.0.insert.ext.i26 = zext i16 %i.bd to i32
  %.sroa.013.0.insert.insert.i27 = or disjoint i32 %.sroa.013.0.insert.ext.i26, 16842752
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit: ; preds = %bb.b, %bb.s, %.thread23.i, %bb.r, %bb.n, %bb.l, %bb.i, %bb.g, %bb.f, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit, %bb.c
  %.sroa.6.0 = phi i32 [ 11, %bb.g ], [ %.sroa.06.0.copyload, %bb.c ], [ %.sroa.0.0.insert.insert.i, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit ], [ 8, %bb.r ], [ %.sroa.020.0.insert.insert.i, %bb.f ], [ %.sroa.013.0.insert.insert.i, %bb.i ], [ %.sroa.017.0.insert.insert.i, %bb.l ], [ %.sroa.019.0.insert.insert.i, %bb.n ], [ %.sroa.013.0.insert.insert.i27, %bb.s ], [ %.sroa.016.0.insert.insert.i, %.thread23.i ], [ 5, %bb.b ]
  %.sroa.0.0 = phi i16 [ 1, %bb.g ], [ 0, %bb.c ], [ 0, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit ], [ 1, %bb.r ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.s ], [ 0, %.thread23.i ], [ 1, %bb.b ]
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.0 to i48
  %.sroa.6.0.insert.shift = shl nuw i48 %.sroa.6.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert

_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit: ; preds = %bb.b
  %i.bf = shl nsw i32 %i.y, 2
  %i.bg = add nsw i32 %i.bf, 50797691             ; 2 uses
  %i.bh = urem i32 %i.bg, 146097
  %i.bi = or i32 %i.bh, 3
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = mul nuw nsw i64 %i.bj, 2939745          ; 2 uses
  %i.bl = trunc i64 %i.bk to i32                  ; 2 uses
  %i.bm = udiv i32 %i.bl, 11758980
  %i.bn = mul nuw nsw i32 %i.bm, 2141
  %i.bo = add nuw nsw i32 %i.bn, 197913           ; 3 uses
  %i.bp = and i32 %i.bo, 4128768
  %i.bq = icmp ugt i32 %i.bl, -696719417          ; 2 uses
  %i.br = udiv i32 %i.bg, 146097
  %i.bs = mul nuw nsw i32 %i.br, 100
  %i.bt = lshr i64 %i.bk, 32
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = zext i1 %i.bq to i32
  %i.bw = add nuw nsw i32 %i.bs, 32736
  %i.bx = add nuw nsw i32 %i.bw, %i.bu
  %i.by = add nuw nsw i32 %i.bx, %i.bv
  %.lhs.trunc.i = trunc i32 %i.bo to i16
  %i.bz = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.bz to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.ca = add nuw nsw i32 %i.bp, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.bq, i32 %i.ca, i32 %i.bo
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = and i32 %i.by, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc range(i48 131072, -16646142) i48 @_ZN4jiff6shared4util5itime5IDate20nth_weekday_of_month17h606984929501b6ceE(i16 %.0.val, i8 %.2.val, i8 noundef range(i8 6, 5) %0, i8 noundef range(i8 1, 8) %1) unnamed_addr #16 {
bb.a:
  %i.a = icmp ne i8 %0, 0
  %i.b = add i8 %0, 5
  %i.c = icmp ult i8 %i.b, 11
  %or.cond1 = and i1 %i.a, %i.c
  br i1 %or.cond1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i8 %0, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.k, %bb.p, %bb.a, %bb.e, %bb.j
  %.sroa.7.0 = phi i32 [ 7, %bb.a ], [ %.sroa.019.0.insert.insert, %bb.e ], [ %.sroa.09.0.insert.insert, %bb.j ], [ %.sroa.023.0.insert.insert, %bb.p ], [ %.sroa.026.0.insert.insert, %bb.k ]
  %.sroa.0.0 = phi i16 [ 1, %bb.a ], [ 0, %bb.e ], [ 1, %bb.j ], [ 1, %bb.p ], [ 0, %bb.k ]
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.0 to i48
  %.sroa.7.0.insert.shift = shl nuw i48 %.sroa.7.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.7.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i8 %.2.val, 2                    ; 2 uses
  br i1 %i.e, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.f = sext i8 %.2.val to i32                   ; 2 uses
  %i.g = icmp ult i8 %.2.val, 3                   ; 2 uses
  %i.h = or disjoint i32 %i.f, 12
  %.sroa.0.0.i = select i1 %i.g, i32 %i.h, i32 %i.f
  %i.i = sext i16 %.0.val to i32
  %i.j = add nsw i32 %i.i, 32800
  %.neg.i = sext i1 %i.g to i32
  %i.k = add nsw i32 %i.j, %.neg.i                ; 3 uses
  %i.l = udiv i32 %i.k, 100
  %i.m = mul nuw nsw i32 %i.k, 1461
  %i.n = lshr i32 %i.m, 2
  %i.o = udiv i32 %i.k, 400
  %i.p = mul nsw i32 %.sroa.0.0.i, 979
  %i.q = add nsw i32 %i.p, -2919
  %i.r = lshr i32 %i.q, 5
  %reass.sub9 = sub nsw i32 %i.o, %i.l
  %i.s = add nsw i32 %reass.sub9, -12699419
  %i.t = add nsw i32 %i.s, %i.n
  %i.u = add nsw i32 %i.t, %i.r
  %i.v = srem i32 %i.u, 7                         ; 2 uses
  %.inv = icmp sgt i32 %i.v, -1
  %i.w = select i1 %.inv, i32 -1, i32 248
  %i.x = sub nsw i32 %i.w, %i.v
  %.neg4 = trunc i32 %i.x to i8
  %i.y = add nsw i8 %1, %.neg4
  %i.z = srem i8 %i.y, 7                          ; 3 uses
  %i.aa = icmp slt i8 %i.z, 0
  %i.ab = add nsw i8 %i.z, 7
  %spec.select.i = select i1 %i.aa, i8 %i.ab, i8 %i.z
  %i.ac = mul nuw nsw i8 %0, 7
  %i.ad = add nsw i8 %i.ac, -6
  %i.ae = add nsw i8 %i.ad, %spec.select.i
  %.sroa.521.0.insert.ext = zext nneg i8 %i.ae to i32
  %.sroa.521.0.insert.shift = shl nuw nsw i32 %.sroa.521.0.insert.ext, 24
  %.sroa.420.0.insert.ext = zext i8 %.2.val to i32
  %.sroa.420.0.insert.shift = shl nuw nsw i32 %.sroa.420.0.insert.ext, 16
  %.sroa.420.0.insert.insert = or disjoint i32 %.sroa.521.0.insert.shift, %.sroa.420.0.insert.shift
  %.sroa.019.0.insert.ext = zext i16 %.0.val to i32
  %.sroa.019.0.insert.insert = or disjoint i32 %.sroa.420.0.insert.insert, %.sroa.019.0.insert.ext
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.af = srem i16 %.0.val, 25
  %i.ag = icmp eq i16 %i.af, 0
  %..i = select i1 %i.ag, i16 15, i16 3
  %i.ah = and i16 %..i, %.0.val
  %i.ai = icmp eq i16 %i.ah, 0
  %. = select i1 %i.ai, i8 29, i8 28
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.aj = ashr i8 %.2.val, 3
  %i.ak = xor i8 %i.aj, %.2.val
  %i.al = or i8 %i.ak, 30
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.014.0 = phi i8 [ %i.al, %bb.g ], [ %., %bb.f ] ; 2 uses
  %i.am = sext i8 %.2.val to i32                  ; 2 uses
  %i.an = icmp ult i8 %.2.val, 3                  ; 2 uses
  %i.ao = or disjoint i32 %i.am, 12
  %.sroa.0.0.i35 = select i1 %i.an, i32 %i.ao, i32 %i.am
  %i.ap = sext i16 %.0.val to i32
  %i.aq = add nsw i32 %i.ap, 32800
  %.neg.i36 = sext i1 %i.an to i32
  %i.ar = add nsw i32 %i.aq, %.neg.i36            ; 3 uses
  %i.as = sext i8 %.sroa.014.0 to i32
  %i.at = udiv i32 %i.ar, 100
  %i.au = mul nuw nsw i32 %i.ar, 1461
  %i.av = lshr i32 %i.au, 2
  %i.aw = udiv i32 %i.ar, 400
  %i.ax = mul nsw i32 %.sroa.0.0.i35, 979
  %i.ay = add nsw i32 %i.ax, -2919
  %i.az = lshr i32 %i.ay, 5
  %reass.sub = sub nsw i32 %i.aw, %i.at
  %i.ba = add nsw i32 %reass.sub, -12699420
  %i.bb = add nsw i32 %i.ba, %i.av
  %i.bc = add nsw i32 %i.bb, %i.az
  %i.bd = add nsw i32 %i.bc, %i.as
  %i.be = srem i32 %i.bd, 7                       ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  %i.bg = select i1 %i.bf, i32 7, i32 0
  %spec.select.i.i37 = add nsw i32 %i.bg, %i.be
  %i.bh = trunc nuw nsw i32 %spec.select.i.i37 to i8
  %reass.sub8 = sub nsw i8 %i.bh, %1
  %i.bi = add nsw i8 %reass.sub8, 1
  %i.bj = srem i8 %i.bi, 7                        ; 3 uses
  %i.bk = icmp slt i8 %i.bj, 0
  %i.bl = add nsw i8 %i.bj, 7
  %spec.select.i38 = select i1 %i.bk, i8 %i.bl, i8 %i.bj
  %i.bm = sub nuw nsw i8 %.sroa.014.0, %spec.select.i38
  %i.bn = xor i8 %0, -1
  %.neg = mul nsw i8 %i.bn, -7
  %i.bo = add i8 %i.bm, %.neg                     ; 4 uses
  %i.bp = icmp slt i8 %i.bo, 1
  br i1 %i.bp, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = icmp samesign ugt i8 %i.bo, 28
  br i1 %i.bq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  %.sroa.5.0.insert.ext = zext i16 %.0.val to i32
  %.sroa.5.0.insert.shift = shl nuw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.4.0.insert.ext10 = zext i8 %.2.val to i32
  %.sroa.4.0.insert.shift11 = shl nuw nsw i32 %.sroa.4.0.insert.ext10, 8
  %.sroa.4.0.insert.insert13 = or disjoint i32 %.sroa.4.0.insert.shift11, %.sroa.5.0.insert.shift
  %.sroa.09.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert13, 2
  br label %bb.c

bb.k:                                             ; preds = %bb.o, %bb.i
  %.sroa.528.0.insert.ext = zext nneg i8 %i.bo to i32
  %.sroa.528.0.insert.shift = shl nuw nsw i32 %.sroa.528.0.insert.ext, 24
  %.sroa.427.0.insert.ext = zext i8 %.2.val to i32
  %.sroa.427.0.insert.shift = shl nuw nsw i32 %.sroa.427.0.insert.ext, 16
  %.sroa.427.0.insert.insert = or disjoint i32 %.sroa.528.0.insert.shift, %.sroa.427.0.insert.shift
  %.sroa.026.0.insert.ext = zext i16 %.0.val to i32
  %.sroa.026.0.insert.insert = or disjoint i32 %.sroa.427.0.insert.insert, %.sroa.026.0.insert.ext
  br label %bb.c

bb.l:                                             ; preds = %bb.i
  br i1 %i.e, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.br = srem i16 %.0.val, 25
  %i.bs = icmp eq i16 %i.br, 0
  %..i39 = select i1 %i.bs, i16 15, i16 3
  %i.bt = and i16 %..i39, %.0.val
  %i.bu = icmp eq i16 %i.bt, 0
  %.34 = select i1 %i.bu, i8 29, i8 28
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bv = ashr i8 %.2.val, 3
  %i.bw = xor i8 %i.bv, %.2.val
  %i.bx = or i8 %i.bw, 30
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sroa.022.0 = phi i8 [ %i.bx, %bb.n ], [ %.34, %bb.m ]
  %i.by = icmp sgt i8 %i.bo, %.sroa.022.0
  br i1 %i.by, label %bb.p, label %bb.k

bb.p:                                             ; preds = %bb.o
  %.sroa.525.0.insert.ext = zext i16 %.0.val to i32
  %.sroa.525.0.insert.shift = shl nuw i32 %.sroa.525.0.insert.ext, 16
  %.sroa.424.0.insert.ext = zext i8 %.2.val to i32
  %.sroa.424.0.insert.shift = shl nuw nsw i32 %.sroa.424.0.insert.ext, 8
  %.sroa.424.0.insert.insert = or disjoint i32 %.sroa.424.0.insert.shift, %.sroa.525.0.insert.shift
  %.sroa.023.0.insert.insert = or disjoint i32 %.sroa.424.0.insert.insert, 2
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc range(i48 65536, 35184372023298) i48 @_ZN4jiff6shared4util5itime5IDate24from_day_of_year_no_leap17hc4209b8f4e04ba66E(i16 noundef %0, i16 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = add i16 %1, -1
  %or.cond = icmp ult i16 %i.b, 365
  br i1 %or.cond, label %bb.b, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcef25793c996049dE.exit"

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i16 %1, 59
  br i1 %i.c, label %bb.c, label %bb.d

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcef25793c996049dE.exit": ; preds = %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i, %bb.a
  %.sroa.3.0 = phi i32 [ 1, %bb.a ], [ %.sroa.0.0.insert.insert.i.i, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i ]
  %.sroa.06.0 = phi i16 [ 1, %bb.a ], [ 0, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i ]
  %.sroa.3.0.insert.ext = zext nneg i32 %.sroa.3.0 to i48
  %.sroa.3.0.insert.shift = shl nuw nsw i48 %.sroa.3.0.insert.ext, 16
  %.sroa.06.0.insert.ext = zext nneg i16 %.sroa.06.0 to i48
  %.sroa.06.0.insert.insert = or disjoint i48 %.sroa.3.0.insert.shift, %.sroa.06.0.insert.ext
  ret i48 %.sroa.06.0.insert.insert

bb.c:                                             ; preds = %bb.b
  %i.d = srem i16 %0, 25
  %i.e = icmp eq i16 %i.d, 0
  %..i = select i1 %i.e, i16 15, i16 3
  %i.f = and i16 %..i, %0
  %i.g = icmp eq i16 %i.f, 0
  %i.h = zext i1 %i.g to i16
  %spec.select = add nuw nsw i16 %1, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i16 [ %1, %bb.b ], [ %spec.select, %bb.c ]
  %i.i = sext i16 %0 to i32
  %i.j = add nsw i32 %i.i, 32799                  ; 3 uses
  %i.k = udiv i32 %i.j, 100
  %i.l = mul nuw nsw i32 %i.j, 1461
  %i.m = lshr i32 %i.l, 2
  %i.n = udiv i32 %i.j, 400
  %i.o = zext nneg i16 %.sroa.0.0 to i32
  %reass.sub = sub nsw i32 %i.n, %i.k
  %i.p = add nsw i32 %reass.sub, -12699422
  %i.q = add nsw i32 %i.p, %i.m
  %i.r = add nsw i32 %i.q, %i.o                   ; 2 uses
  %i.s = add nsw i32 %i.r, 4371892
  %or.cond.i.i = icmp ult i32 %i.s, 7304484
  br i1 %or.cond.i.i, label %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i, label %bb.f, !prof !76

_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i: ; preds = %bb.d
  %i.t = shl nsw i32 %i.r, 2
  %i.u = add nsw i32 %i.t, 50798911               ; 2 uses
  %i.v = urem i32 %i.u, 146097
  %i.w = or i32 %i.v, 3
  %i.x = zext nneg i32 %i.w to i64
  %i.y = mul nuw nsw i64 %i.x, 2939745            ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = udiv i32 %i.z, 11758980
  %i.ab = mul nuw nsw i32 %i.aa, 2141
  %i.ac = add nuw nsw i32 %i.ab, 197913           ; 3 uses
  %i.ad = and i32 %i.ac, 4128768
  %i.ae = icmp ugt i32 %i.z, -696719417           ; 2 uses
  %i.af = udiv i32 %i.u, 146097
  %i.ag = mul nuw nsw i32 %i.af, 100
  %i.ah = lshr i64 %i.y, 32
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = zext i1 %i.ae to i32
  %i.ak = add nuw nsw i32 %i.ag, 32736
  %i.al = add nuw nsw i32 %i.ak, %i.ai
  %i.am = add nuw nsw i32 %i.al, %i.aj            ; 2 uses
  %.lhs.trunc.i.i = trunc i32 %i.ac to i16
  %i.an = udiv i16 %.lhs.trunc.i.i, 2141
  %.zext.i.i = zext nneg i16 %i.an to i32
end_hunk_1
