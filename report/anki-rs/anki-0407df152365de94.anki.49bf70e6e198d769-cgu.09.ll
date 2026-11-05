Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.09?download=true
inline.NumInlined: 5377
inline.NumDeleted: 2914
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 25
begin_hunk_0_@"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function18call_boxed_closure17hf4af34324ce2a16aE":bb.a

"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit.i.i.i": ; preds = %bb.g, %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11347
  br label %bb.ap

"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit59.i.i.i": ; preds = %.noexc18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !11349, !nonnull !7, !align !19, !noundef !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !11349, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11347
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.ap, label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit59.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11347
  invoke void @_ZN4anki7storage4card4data8CardData8from_str17h26c52951704023a7E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ai, i64 noundef %i.ak)
          to label %.noexc21 unwind label %bb.an

.noexc21:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11347
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !11347, !noundef !7
  invoke void @_ZN8rusqlite5types9value_ref8ValueRef10from_value17h1875f7ae7acdfe73E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef %i.an)
          to label %bb.i unwind label %.body.i.i.i, !noalias !11347

.body.i.i.i:                                      ; preds = %.critedge52.i.i.i, %bb.aa, %bb.y, %.critedge50.i.i.i, %bb.u, %bb.s, %.critedge48.i.i.i, %bb.r, %bb.p, %bb.j, %.noexc21
  %i.ao = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$anki..storage..card..data..CardData$GT$17h5a41185a76bdc655E"(ptr noalias noundef align 8 dereferenceable(80) %i.j) #41
          to label %.body19 unwind label %bb.am, !noalias !11347

bb.i:                                             ; preds = %.noexc21
  %i.ap = load i64, ptr %i.i, align 8, !range !39, !noalias !11347, !noundef !7
  %.not36.i.i.i = icmp eq i64 %i.ap, 1
  br i1 %.not36.i.i.i, label %bb.j, label %bb.al

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !11347, !noundef !7 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11347
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !noalias !11347, !noundef !7
  invoke void @_ZN8rusqlite5types9value_ref8ValueRef10from_value17h1875f7ae7acdfe73E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef %i.at)
          to label %bb.k unwind label %.body.i.i.i, !noalias !11347

bb.k:                                             ; preds = %bb.j
  %i.au = load i64, ptr %i.h, align 8, !range !39, !noalias !11347, !noundef !7
  %.not38.i.i.i = icmp eq i64 %i.au, 1
  br i1 %.not38.i.i.i, label %bb.l, label %bb.ak

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noalias !11347, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11347
  %i.ax = load i64, ptr %i.j, align 8, !range !16, !noalias !11347, !noundef !7
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !11347, !noundef !7
  %i.bb = trunc i64 %i.aw to i32
  %i.bc = trunc i64 %i.ba to i32
  %i.bd = call i32 @llvm.usub.sat.i32(i32 %i.bb, i32 %i.bc)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.be = icmp sgt i64 %i.ar, 365000
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %i.be, label %bb.y, label %bb.p

bb.o:                                             ; preds = %bb.ab, %bb.v, %bb.m
  %.sroa.01.0.i.i.i = phi i32 [ %i.bd, %bb.m ], [ %i.cm, %bb.ab ], [ %i.cc, %bb.v ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.bh = load i32, ptr %i.bg, align 8, !range !42, !noalias !11347, !noundef !7
  %i.bi = trunc nuw i32 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.bk = load i32, ptr %i.bj, align 8, !range !42, !noalias !11347
  %i.bl = trunc nuw i32 %i.bk to i1
  %or.cond.i.i.i = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %or.cond.i.i.i, label %bb.ac, label %bb.ad

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11347
  %i.bm = load ptr, ptr %i.bf, align 8, !noalias !11347, !noundef !7
  invoke void @_ZN8rusqlite5types9value_ref8ValueRef10from_value17h1875f7ae7acdfe73E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef %i.bm)
          to label %bb.q unwind label %.body.i.i.i, !noalias !11347

bb.q:                                             ; preds = %bb.p
  %i.bn = load i64, ptr %i.d, align 8, !range !39, !noalias !11347, !noundef !7
  %.not40.i.i.i = icmp eq i64 %i.bn, 1
  br i1 %.not40.i.i.i, label %bb.r, label %.critedge48.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !11347, !noundef !7 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !noalias !11347
  store i64 4, ptr %i.e, align 8, !noalias !11347
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E"(ptr noalias noundef align 8 dereferenceable(24) %i.e)
          to label %bb.s unwind label %.body.i.i.i, !noalias !11347

.critedge48.i.i.i:                                ; preds = %bb.q
  store i64 0, ptr %i.e, align 8, !noalias !11347
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E"(ptr noalias noundef align 8 dereferenceable(24) %i.e)
          to label %bb.x unwind label %.body.i.i.i, !noalias !11347

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11347
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !11347, !noundef !7
  invoke void @_ZN8rusqlite5types9value_ref8ValueRef10from_value17h1875f7ae7acdfe73E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %i.bs)
          to label %bb.t unwind label %.body.i.i.i, !noalias !11347

bb.t:                                             ; preds = %bb.s
  %i.bt = load i64, ptr %i.b, align 8, !range !39, !noalias !11347, !noundef !7
  %.not42.i.i.i = icmp eq i64 %i.bt, 1
  br i1 %.not42.i.i.i, label %bb.u, label %.critedge50.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !11347, !noundef !7 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !noalias !11347
  store i64 4, ptr %i.c, align 8, !noalias !11347
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E"(ptr noalias noundef align 8 dereferenceable(24) %i.c)
          to label %bb.v unwind label %.body.i.i.i, !noalias !11347

.critedge50.i.i.i:                                ; preds = %bb.t
  store i64 0, ptr %i.c, align 8, !noalias !11347
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E"(ptr noalias noundef align 8 dereferenceable(24) %i.c)
          to label %bb.w unwind label %.body.i.i.i, !noalias !11347

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11347
  %i.bx = trunc i64 %i.ar to i32
  %i.by = trunc i64 %i.bp to i32
  %i.bz = call i32 @llvm.usub.sat.i32(i32 %i.bx, i32 %i.by)
  %i.ca = trunc i64 %i.bv to i32
  %i.cb = call i32 @llvm.usub.sat.i32(i32 %i.ca, i32 %i.bz)
  %i.cc = mul i32 %i.cb, 86400
  br label %bb.o

bb.w:                                             ; preds = %.critedge50.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11347
  br label %bb.ah

bb.x:                                             ; preds = %.critedge48.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11347
  br label %bb.ah

bb.y:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11347
  %i.cd = load ptr, ptr %i.bf, align 8, !noalias !11347, !noundef !7
  invoke void @_ZN8rusqlite5types9value_ref8ValueRef10from_value17h1875f7ae7acdfe73E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef %i.cd)
          to label %bb.z unwind label %.body.i.i.i, !noalias !11347

bb.z:                                             ; preds = %bb.y
  %i.ce = load i64, ptr %i.f, align 8, !range !39, !noalias !11347, !noundef !7
  %.not44.i.i.i = icmp eq i64 %i.ce, 1
  br i1 %.not44.i.i.i, label %bb.aa, label %.critedge52.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !11347, !noundef !7 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !noalias !11347
  store i64 4, ptr %i.g, align 8, !noalias !11347
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E"(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %.body.i.i.i, !noalias !11347

.critedge52.i.i.i:                                ; preds = %bb.z
  store i64 0, ptr %i.g, align 8, !noalias !11347
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E"(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ag unwind label %.body.i.i.i, !noalias !11347

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11347
  %i.ci = trunc i64 %i.ar to i32
  %i.cj = trunc i64 %i.cg to i32
  %i.ck = call i32 @llvm.usub.sat.i32(i32 %i.ci, i32 %i.cj)
  %i.cl = trunc i64 %i.aw to i32
  %i.cm = call i32 @llvm.usub.sat.i32(i32 %i.cl, i32 %i.ck)
  br label %bb.o

bb.ac:                                            ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.co = load i32, ptr %i.cn, align 8, !range !42, !noalias !11347, !noundef !7
  %i.cp = trunc nuw i32 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  %i.cr = load float, ptr %i.cq, align 4, !noalias !11347
  %.sroa.02.0.i.i.i = select i1 %i.cp, float %i.cr, float 5.000000e-01 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %4 = load float, ptr %3, align 4, !noalias !11347, !noundef !7
  %i.cs = uitofp i32 %.sroa.01.0.i.i.i to float
  %i.ct = fdiv nnan float %i.cs, 8.640000e+04
  %i.cu = fneg float %.sroa.02.0.i.i.i
  %i.cv = fdiv float -1.000000e+00, %.sroa.02.0.i.i.i
  %i.cw = call float @llvm.pow.f32(float f0x3F666666, float %i.cv)
  %i.cx = fadd float %i.cw, -1.000000e+00
  %i.cy = fdiv float %i.ct, %4
  %i.cz = fmul float %i.cy, %i.cx
  %i.da = fadd float %i.cz, 1.000000e+00
  %i.db = call float @llvm.pow.f32(float %i.da, float %i.cu)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.o
  %.sroa.06.0.i.i.i = phi i32 [ 1, %bb.ac ], [ 0, %bb.o ]
  %.sroa.3.0.i.i.i = phi float [ %i.db, %bb.ac ], [ undef, %bb.o ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %"_ZN4core3ptr56drop_in_place$LT$anki..storage..card..data..CardData$GT$17h5a41185a76bdc655E.exit.i.i.i" unwind label %bb.ae, !noalias !11347

bb.ae:                                            ; preds = %bb.ad
  %i.dd = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %.body19 unwind label %bb.af, !noalias !11347

bb.af:                                            ; preds = %bb.ae
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42, !noalias !11347
  unreachable

"_ZN4core3ptr56drop_in_place$LT$anki..storage..card..data..CardData$GT$17h5a41185a76bdc655E.exit.i.i.i": ; preds = %bb.ad
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %.noexc22 unwind label %bb.an

.noexc22:                                         ; preds = %"_ZN4core3ptr56drop_in_place$LT$anki..storage..card..data..CardData$GT$17h5a41185a76bdc655E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11347
  br label %bb.ap

bb.ag:                                            ; preds = %.critedge52.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11347
  br label %bb.ah

bb.ah:                                            ; preds = %bb.al, %bb.ak, %bb.ag, %bb.x, %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %"_ZN4core3ptr56drop_in_place$LT$anki..storage..card..data..CardData$GT$17h5a41185a76bdc655E.exit86.i.i.i" unwind label %bb.ai, !noalias !11347

bb.ai:                                            ; preds = %bb.ah
  %i.dg = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %.body19 unwind label %bb.aj, !noalias !11347

bb.aj:                                            ; preds = %bb.ai
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42, !noalias !11347
  unreachable

"_ZN4core3ptr56drop_in_place$LT$anki..storage..card..data..CardData$GT$17h5a41185a76bdc655E.exit86.i.i.i": ; preds = %bb.ah
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %.noexc23 unwind label %bb.an

.noexc23:                                         ; preds = %"_ZN4core3ptr56drop_in_place$LT$anki..storage..card..data..CardData$GT$17h5a41185a76bdc655E.exit86.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11347
  br label %bb.ap

bb.ak:                                            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11347
  br label %bb.ah

bb.al:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11347
  br label %bb.ah

bb.am:                                            ; preds = %.body.i.i.i
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42, !noalias !11347
  unreachable

bb.an:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$anki..storage..card..data..CardData$GT$17h5a41185a76bdc655E.exit86.i.i.i", %"_ZN4core3ptr56drop_in_place$LT$anki..storage..card..data..CardData$GT$17h5a41185a76bdc655E.exit.i.i.i", %bb.h, %bb.f, %bb.e, %bb.d, %bb.b
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  br label %.body19

.body19:                                          ; preds = %.body.i.i.i, %bb.ae, %bb.ai, %bb.an
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.dj, %bb.an ], [ %i.dg, %bb.ai ], [ %i.ao, %.body.i.i.i ], [ %i.dd, %bb.ae ]
  %i.dk = extractvalue { ptr, i32 } %eh.lpad-body20, 0
  %i.dl = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.dk)
          to label %.thread unwind label %bb.ao   ; 2 uses

bb.ao:                                            ; preds = %.body19
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #42
  unreachable

.thread:                                          ; preds = %.body19
  %i.dn = extractvalue { ptr, ptr } %i.dl, 0      ; 6 uses
  %i.do = extractvalue { ptr, ptr } %i.dl, 1      ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.dn, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.do, ptr %i.dq, align 8
  store i64 -9223372036854775782, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  invoke void @_ZN8rusqlite9functions12report_error17h4fb0d31a667dc200E(ptr noundef %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @428)
          to label %bb.ar unwind label %bb.ax

bb.ap:                                            ; preds = %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit.i.i.i", %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit59.i.i.i", %.noexc22, %.noexc23
  %.sroa.11.0.i = phi float [ undef, %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit.i.i.i" ], [ undef, %.noexc23 ], [ %.sroa.3.0.i.i.i, %.noexc22 ], [ undef, %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit59.i.i.i" ]
  %.sroa.7.0.i = phi i32 [ 0, %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit.i.i.i" ], [ 0, %.noexc23 ], [ %.sroa.06.0.i.i.i, %.noexc22 ], [ 0, %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit59.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11346
  store i32 %.sroa.7.0.i, ptr %.sroa.8, align 8
  %.sroa.8.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 4
  store float %.sroa.11.0.i, ptr %.sroa.8.4..sroa_idx, align 4
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload = load ptr, ptr %.sroa.8, align 8
  store i64 -9223372036854775783, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  invoke fastcc void @_ZN8rusqlite9functions10sql_result17h8135a7b88279c9f7E(ptr noundef %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.o)
          to label %"_ZN4core3ptr206drop_in_place$LT$core..result..Result$LT$core..result..Result$LT$core..option..Option$LT$f32$GT$$C$rusqlite..error..Error$GT$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h46c08b63caae976cE.exit14" unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.aq, %bb.av, %bb.aw, %bb.ax
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #42
  unreachable

"_ZN4core3ptr206drop_in_place$LT$core..result..Result$LT$core..result..Result$LT$core..option..Option$LT$f32$GT$$C$rusqlite..error..Error$GT$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h46c08b63caae976cE.exit14": ; preds = %bb.ap, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.ar:                                            ; preds = %.thread
  %i.ds = load ptr, ptr %i.do, align 8, !invariant.load !7, !noalias !11351 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i9, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dn) ]
  invoke void %i.ds(ptr noundef nonnull %i.dn)
          to label %bb.at unwind label %bb.av, !noalias !11351

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !range !18, !invariant.load !7, !noalias !11351 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !range !26, !invariant.load !7, !noalias !11351 ; 2 uses
  %i.dx = icmp ult i64 %i.dw, -9223372036854775807
  call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp eq i64 %i.du, 0
  br i1 %i.dy, label %"_ZN4core3ptr206drop_in_place$LT$core..result..Result$LT$core..result..Result$LT$core..option..Option$LT$f32$GT$$C$rusqlite..error..Error$GT$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h46c08b63caae976cE.exit14", label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dn) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef range(i64 1, 0) %i.du, i64 noundef range(i64 1, -9223372036854775807) %i.dw) #44, !noalias !11351
  br label %"_ZN4core3ptr206drop_in_place$LT$core..result..Result$LT$core..result..Result$LT$core..option..Option$LT$f32$GT$$C$rusqlite..error..Error$GT$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h46c08b63caae976cE.exit14"

bb.av:                                            ; preds = %bb.as
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !range !18, !invariant.load !7, !noalias !11351 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !range !26, !invariant.load !7, !noalias !11351 ; 2 uses
  %i.ee = icmp ult i64 %i.ed, -9223372036854775807
  call void @llvm.assume(i1 %i.ee)
  %i.ef = icmp eq i64 %i.eb, 0
  br i1 %i.ef, label %.body, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef range(i64 1, 0) %i.eb, i64 noundef range(i64 1, -9223372036854775807) %i.ed) #44, !noalias !11351
  br label %.body

bb.ax:                                            ; preds = %.thread
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  invoke fastcc void @"_ZN4core3ptr206drop_in_place$LT$core..result..Result$LT$core..result..Result$LT$core..option..Option$LT$f32$GT$$C$rusqlite..error..Error$GT$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h46c08b63caae976cE"(ptr noalias noundef align 8 dereferenceable(64) %i.p) #41
          to label %.body unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
end_hunk_0
