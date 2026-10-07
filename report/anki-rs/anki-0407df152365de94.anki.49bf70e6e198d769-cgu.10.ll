Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.10?download=true
inline.NumInlined: 5637
inline.NumDeleted: 1815
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4anki4sync5media7changes26determine_required_changes17h90bcf9e907a861b8E:bb.a
.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp417 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi418 = phi { ptr, i32 } [ %lpad.loopexit416, %.loopexit ], [ %lpad.loopexit.split-lp417, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$anki..sync..media..database..client..MediaEntry$GT$17h9699a2eb64dfa2e8E"(ptr noalias noundef align 8 dereferenceable(56) %i.at) #42
          to label %.thread unwind label %bb.bl

bb.af:                                            ; preds = %.noexc273
  %i.eq = load ptr, ptr %i.bu, align 8, !noalias !6051, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6051
  store i64 %i.eo, ptr %i.ar, align 8
  store ptr %i.eq, ptr %.sroa.4375.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5376.0..sroa_idx, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %bb.af
  %i.er = load i8, ptr %i.bv, align 1, !range !19, !noundef !13
  %. = add nuw nsw i8 %i.er, 1
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.at)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i276" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.at)
          to label %.thread unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i276": ; preds = %bb.ag
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.at)
          to label %"_ZN4core3ptr68drop_in_place$LT$anki..sync..media..database..client..MediaEntry$GT$17h9699a2eb64dfa2e8E.exit" unwind label %.body277.thread391.loopexit

"_ZN4core3ptr68drop_in_place$LT$anki..sync..media..database..client..MediaEntry$GT$17h9699a2eb64dfa2e8E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i276"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.s

.body285:                                         ; preds = %.loopexit419, %.loopexit.split-lp420, %bb.ct, %bb.cp, %bb.cl, %bb.ce, %bb.bj, %.body295, %.body280
  %.sroa.0108.2 = phi i1 [ true, %.body295 ], [ true, %.body280 ], [ false, %bb.cp ], [ true, %bb.bj ], [ true, %bb.ce ], [ false, %bb.cl ], [ false, %bb.ct ], [ true, %.loopexit.split-lp420 ], [ true, %.loopexit419 ]
  %.pn257 = phi { ptr, i32 } [ %.pn, %.body295 ], [ %.pn255, %.body280 ], [ %i.im, %bb.cp ], [ %i.gu, %bb.bj ], [ %i.ia, %bb.ce ], [ %i.ih, %bb.cl ], [ %i.ir, %bb.ct ], [ %lpad.loopexit.split-lp422, %.loopexit.split-lp420 ], [ %lpad.loopexit421, %.loopexit419 ] ; 2 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw) #42
          to label %bb.e unwind label %bb.bl

.loopexit419:                                     ; preds = %bb.al, %.thread399, %bb.aq, %bb.ar, %bb.ay, %bb.bq, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i284", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i300"
  %lpad.loopexit421 = landingpad { ptr, i32 }
          cleanup
  br label %.body285

.loopexit.split-lp420:                            ; preds = %.thread404.invoke
  %lpad.loopexit.split-lp422 = landingpad { ptr, i32 }
          cleanup
  br label %.body285

default.unreachable571:                           ; preds = %bb.bm
  unreachable

bb.aj:                                            ; preds = %bb.u, %bb.v, %bb.x, %bb.y, %bb.z, %bb.aa
  %.sroa.0.0.i = phi i8 [ 3, %bb.z ], [ %spec.select.i, %bb.aa ], [ 1, %bb.u ], [ %.16.i, %bb.x ], [ %..i, %bb.v ], [ 1, %bb.y ]
  store i8 %.sroa.0.0.i, ptr %i.aq, align 1
  %i.eu = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17he6f6358534555047E monotonic, align 8
  %i.ev = icmp ult i64 %i.eu, 2
  br i1 %i.ev, label %bb.ak, label %.thread402

bb.ak:                                            ; preds = %bb.aj
  %i.ew = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4anki4sync5media7changes26determine_required_changes10__CALLSITE17hee667173a8f766e5E, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ew, label %bb.al [
    i8 0, label %.thread402
    i8 1, label %.thread399
    i8 2, label %.thread399
  ], !prof !51

bb.al:                                            ; preds = %bb.ak
  %i.ex = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17h04e030585b2863adE(ptr noundef nonnull align 8 @_ZN4anki4sync5media7changes26determine_required_changes10__CALLSITE17hee667173a8f766e5E)
          to label %bb.am unwind label %.loopexit419 ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.ey = icmp eq i8 %i.ex, 0
  br i1 %i.ey, label %.thread402, label %.thread399

.thread399:                                       ; preds = %bb.ak, %bb.ak, %bb.am
  %.sroa.020.0401 = phi i8 [ %i.ex, %bb.am ], [ %i.ew, %bb.ak ], [ %i.ew, %bb.ak ]
  %i.ez = load ptr, ptr @_ZN4anki4sync5media7changes26determine_required_changes10__CALLSITE17hee667173a8f766e5E, align 8, !nonnull !13, !align !14, !noundef !13
  %i.fa = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17h7ea8ceed54f5561bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ez, i8 noundef %.sroa.020.0401)
          to label %bb.an unwind label %.loopexit419

bb.an:                                            ; preds = %.thread399
  br i1 %i.fa, label %bb.ao, label %.thread402

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.fb = load ptr, ptr @_ZN4anki4sync5media7changes26determine_required_changes10__CALLSITE17hee667173a8f766e5E, align 8, !nonnull !13, !align !14, !noundef !13 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 48 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !nonnull !13, !align !14, !noundef !13 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 56 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !noundef !13 ; 11 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fh = load ptr, ptr %i.fg, align 8, !nonnull !13, !align !22, !noundef !13 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 72
  %i.fj = load ptr, ptr %i.fi, align 8, !nonnull !13, !align !14, !noundef !13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %.not240 = icmp eq i64 %i.ff, 0
  br i1 %.not240, label %.thread404.invoke, label %bb.bn

.thread402:                                       ; preds = %bb.ak, %bb.aj, %bb.an, %bb.am
  %i.fk = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9325306da66b02e3E monotonic, align 1
  %i.fl = icmp eq i8 %i.fk, 0
  br i1 %i.fl, label %bb.ap, label %bb.bm

bb.ap:                                            ; preds = %.thread402
  %i.fm = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hb57afb2b1cb16849E monotonic, align 8 ; 2 uses
  %i.fn = icmp ult i64 %i.fm, 6
  call void @llvm.assume(i1 %i.fn)
  %i.fo = icmp samesign ugt i64 %i.fm, 3
  br i1 %i.fo, label %bb.aq, label %bb.bm

bb.aq:                                            ; preds = %bb.ap
  %i.fp = load ptr, ptr @_ZN4anki4sync5media7changes26determine_required_changes10__CALLSITE17hee667173a8f766e5E, align 8, !nonnull !13, !align !14, !noundef !13 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !nonnull !13, !align !22, !noundef !13
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.ft = load i64, ptr %i.fs, align 8, !noundef !13
  store i64 4, ptr %i.z, align 8
  store ptr %i.fr, ptr %.sroa.3178.0..sroa_idx, align 8
  store i64 %i.ft, ptr %.sroa.5179.0..sroa_idx, align 8
  %i.fu = invoke { ptr, ptr } @_ZN3log6logger17hef834f2fd8d55c8dE()
          to label %bb.ar unwind label %.loopexit419 ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.fv = extractvalue { ptr, ptr } %i.fu, 0      ; 2 uses
  %i.fw = extractvalue { ptr, ptr } %i.fu, 1      ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !invariant.load !13, !nonnull !13
  %i.fz = invoke noundef zeroext i1 %i.fy(ptr noundef align 1 %i.fv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %bb.as unwind label %.loopexit419

bb.as:                                            ; preds = %bb.ar
  br i1 %i.fz, label %bb.at, label %bb.bm

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ga = load ptr, ptr @_ZN4anki4sync5media7changes26determine_required_changes10__CALLSITE17hee667173a8f766e5E, align 8, !nonnull !13, !align !14, !noundef !13 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48 ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !nonnull !13, !align !14, !noundef !13 ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 56 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !noundef !13 ; 11 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  %i.gg = load ptr, ptr %i.gf, align 8, !nonnull !13, !align !22, !noundef !13 ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  %i.gi = load ptr, ptr %i.gh, align 8, !nonnull !13, !align !14, !noundef !13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %.not248 = icmp eq i64 %i.ge, 0
  br i1 %.not248, label %.thread404.invoke, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.sroa.0183.0.copyload = load ptr, ptr %i.gb, align 8 ; 2 uses
  %.not249 = icmp eq ptr %.sroa.0183.0.copyload, null
  br i1 %.not249, label %.thread404.invoke, label %bb.av, !prof !52

bb.av:                                            ; preds = %bb.au
  store ptr %.sroa.0183.0.copyload, ptr %i.w, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.671.0..sroa_idx72, ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i64 24, i1 false)
  store i64 0, ptr %.sroa.671.sroa.4.0..sroa.671.0..sroa_idx72.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr @598, ptr %i.v, align 8
  store i64 1, ptr %i.cq, align 8
  store ptr null, ptr %i.cr, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cs, align 8
  store i64 0, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %.not414 = icmp eq i64 %i.ge, 1
  br i1 %.not414, label %.thread404.invoke, label %bb.ax, !prof !15

.thread404.invoke:                                ; preds = %bb.bp, %bb.bo, %bb.ao, %bb.bn, %bb.ax, %bb.av, %bb.au, %bb.at
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @233, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @596) #44
          to label %.thread404.cont unwind label %.loopexit.split-lp420

.thread404.cont:                                  ; preds = %.thread404.invoke
  unreachable

bb.aw:                                            ; preds = %bb.bt, %bb.bb
  unreachable

bb.ax:                                            ; preds = %bb.av
  store ptr %i.gc, ptr %i.u, align 8
  store i64 %i.ge, ptr %.sroa.678.0..sroa_idx79, align 8
  store ptr %i.gg, ptr %.sroa.678.sroa.0.sroa.4.0..sroa.678.0..sroa_idx79.sroa_idx, align 8
  store ptr %i.gi, ptr %.sroa.678.sroa.0.sroa.5.0..sroa.678.0..sroa_idx79.sroa_idx, align 8
  store i64 1, ptr %.sroa.678.sroa.4.0..sroa.678.0..sroa_idx79.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.ax, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.gj = icmp ugt i64 %i.ge, 2
  br i1 %i.gj, label %bb.ay, label %.thread404.invoke, !prof !35

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.gc, ptr %i.s, align 8
  store i64 %i.ge, ptr %.sroa.685.0..sroa_idx86, align 8
  store ptr %i.gg, ptr %.sroa.685.sroa.0.sroa.4.0..sroa.685.0..sroa_idx86.sroa_idx, align 8
  store ptr %i.gi, ptr %.sroa.685.sroa.0.sroa.5.0..sroa.685.0..sroa_idx86.sroa_idx, align 8
  store i64 2, ptr %.sroa.685.sroa.4.0..sroa.685.0..sroa_idx86.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.gk = load ptr, ptr %i.by, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.gl = load i64, ptr %i.bz, align 8, !noundef !13
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gl
  store ptr %i.gk, ptr %i.q, align 8
  store ptr %i.gm, ptr %i.cu, align 8
  store i64 8, ptr %i.cv, align 8
  invoke void @"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h03a8544b45553249E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.az unwind label %.loopexit419

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.not615 = icmp eq i64 %i.ge, 3                 ; 2 uses
  %.sroa.0220.3 = select i1 %.not615, i64 3, i64 4 ; 3 uses
  br i1 %.not615, label %bb.bb, label %bb.ba, !prof !15

bb.ba:                                            ; preds = %bb.az
  store ptr %i.gc, ptr %i.p, align 8
  store i64 %i.ge, ptr %.sroa.692.0..sroa_idx93, align 8
  store ptr %i.gg, ptr %.sroa.692.sroa.0.sroa.4.0..sroa.692.0..sroa_idx93.sroa_idx, align 8
  store ptr %i.gi, ptr %.sroa.692.sroa.0.sroa.5.0..sroa.692.0..sroa_idx93.sroa_idx, align 8
  store i64 3, ptr %.sroa.692.sroa.4.0..sroa.692.0..sroa_idx93.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.gn = load ptr, ptr %i.cb, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.go = load i64, ptr %i.cc, align 8, !noundef !13
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.go
  store ptr %i.gn, ptr %i.n, align 8
  store ptr %i.gp, ptr %i.cw, align 8
  store i64 8, ptr %i.cx, align 8
  invoke void @"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h03a8544b45553249E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.bc unwind label %.loopexit434

bb.bb:                                            ; preds = %bb.az
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @233, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @596) #44
          to label %bb.aw unwind label %.loopexit.split-lp435

.body280:                                         ; preds = %.loopexit434, %.loopexit.split-lp435, %bb.bh, %bb.be
  %.pn255 = phi { ptr, i32 } [ %lpad.phi443, %bb.be ], [ %i.gs, %bb.bh ], [ %lpad.loopexit436, %.loopexit434 ], [ %lpad.loopexit.split-lp437, %.loopexit.split-lp435 ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #42
          to label %.body285 unwind label %bb.bl

.loopexit434:                                     ; preds = %bb.ba, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"
  %lpad.loopexit436 = landingpad { ptr, i32 }
          cleanup
  br label %.body280

.loopexit.split-lp435:                            ; preds = %bb.bb
  %lpad.loopexit.split-lp437 = landingpad { ptr, i32 }
          cleanup
  br label %.body280

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.gq = icmp ult i64 %.sroa.0220.3, %i.ge       ; 2 uses
  %i.gr = zext i1 %i.gq to i64
  %.sroa.0220.4 = add nuw nsw i64 %.sroa.0220.3, %i.gr ; 2 uses
  br i1 %i.gq, label %bb.bd, label %.invoke, !prof !35

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.gc, ptr %i.m, align 8
  store i64 %i.ge, ptr %.sroa.699.0..sroa_idx100, align 8
  store ptr %i.gg, ptr %.sroa.699.sroa.0.sroa.4.0..sroa.699.0..sroa_idx100.sroa_idx, align 8
  store ptr %i.gi, ptr %.sroa.699.sroa.0.sroa.5.0..sroa.699.0..sroa_idx100.sroa_idx, align 8
  store i64 %.sroa.0220.3, ptr %.sroa.699.sroa.4.0..sroa.699.0..sroa_idx100.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.av, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not415 = icmp ult i64 %.sroa.0220.4, %i.ge
  br i1 %.not415, label %bb.bf, label %.invoke, !prof !35

.invoke:                                          ; preds = %bb.bc, %bb.bd
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @233, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @596) #44
          to label %.cont unwind label %.loopexit.split-lp440

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit439:                                     ; preds = %bb.bf
  %lpad.loopexit441 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp440:                            ; preds = %.invoke
  %lpad.loopexit.split-lp442 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.split-lp440, %.loopexit439
  %lpad.phi443 = phi { ptr, i32 } [ %lpad.loopexit441, %.loopexit439 ], [ %lpad.loopexit.split-lp442, %.loopexit.split-lp440 ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #42
          to label %.body280 unwind label %bb.bl

bb.bf:                                            ; preds = %bb.bd
  store ptr %i.gc, ptr %i.k, align 8
  store i64 %i.ge, ptr %.sroa.6106.0..sroa_idx107, align 8
  store ptr %i.gg, ptr %.sroa.6106.sroa.0.sroa.4.0..sroa.6106.0..sroa_idx107.sroa_idx, align 8
  store ptr %i.gi, ptr %.sroa.6106.sroa.0.sroa.5.0..sroa.6106.0..sroa_idx107.sroa_idx, align 8
  store i64 %.sroa.0220.4, ptr %.sroa.6106.sroa.4.0..sroa.6106.0..sroa_idx107.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.aq, ptr %i.j, align 8
  store ptr %i.w, ptr %i.x, align 8
  store ptr %i.v, ptr %.sroa.467.0..sroa_idx, align 8
  store ptr @237, ptr %.sroa.568.0..sroa_idx, align 8
  store ptr %i.u, ptr %i.cy, align 8
  store ptr %i.t, ptr %.sroa.474.0..sroa_idx, align 8
  store ptr @599, ptr %.sroa.575.0..sroa_idx, align 8
  store ptr %i.s, ptr %i.cz, align 8
  store ptr %i.r, ptr %.sroa.481.0..sroa_idx, align 8
  store ptr @253, ptr %.sroa.582.0..sroa_idx, align 8
  store ptr %i.p, ptr %i.da, align 8
  store ptr %i.o, ptr %.sroa.488.0..sroa_idx, align 8
  store ptr @253, ptr %.sroa.589.0..sroa_idx, align 8
  store ptr %i.m, ptr %i.db, align 8
  store ptr %i.l, ptr %.sroa.495.0..sroa_idx, align 8
  store ptr @600, ptr %.sroa.596.0..sroa_idx, align 8
  store ptr %i.k, ptr %i.dc, align 8
  store ptr %i.j, ptr %.sroa.4102.0..sroa_idx, align 8
  store ptr @601, ptr %.sroa.5103.0..sroa_idx, align 8
  store ptr %i.x, ptr %i.y, align 8
  store i64 6, ptr %i.dd, align 8
  store ptr %i.gb, ptr %i.de, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  invoke void @_ZN7tracing15__macro_support13__tracing_log17h48fba2a1e547b7beE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fp, ptr noundef nonnull align 1 %i.fv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fw, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %bb.bg unwind label %.loopexit439

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i" unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body280 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i": ; preds = %bb.bg
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit" unwind label %.loopexit434

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i284" unwind label %bb.bj

bb.bj:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body285 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i284": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit288" unwind label %.loopexit419

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit288": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i284"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bm

bb.bl:                                            ; preds = %.body, %.thread, %.body277.thread, %.body364, %.body360, %.body326, %bb.bw, %.body295, %bb.be, %.body280, %.body285, %bb.ae, %"_ZN4core3ptr99drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..sync..media..changes..MediaChange$GT$$GT$17hedbe6c967aa9a6efE.exit"
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

bb.bm:                                            ; preds = %bb.as, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit288", %bb.ap, %.thread402, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit305"
  %i.gx = load i8, ptr %i.aq, align 1, !range !24, !noundef !13
  switch i8 %i.gx, label %default.unreachable571 [
    i8 0, label %bb.cg
    i8 1, label %bb.cj
    i8 2, label %bb.cn
    i8 3, label %bb.cr
  ]

bb.bn:                                            ; preds = %bb.ao
  %.sroa.0128.0.copyload = load ptr, ptr %i.fc, align 8 ; 2 uses
  %.not241 = icmp eq ptr %.sroa.0128.0.copyload, null
  br i1 %.not241, label %.thread404.invoke, label %bb.bo, !prof !52

bb.bo:                                            ; preds = %bb.bn
  store ptr %.sroa.0128.0.copyload, ptr %i.an, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629.0..sroa_idx30, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false)
  store i64 0, ptr %.sroa.629.sroa.4.0..sroa.629.0..sroa_idx30.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr @598, ptr %i.am, align 8
  store i64 1, ptr %i.cd, align 8
  store ptr null, ptr %i.ce, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cf, align 8
  store i64 0, ptr %i.cg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %.not412 = icmp eq i64 %i.ff, 1
  br i1 %.not412, label %.thread404.invoke, label %bb.bp, !prof !15

bb.bp:                                            ; preds = %bb.bo
  store ptr %i.fd, ptr %i.al, align 8
  store i64 %i.ff, ptr %.sroa.636.0..sroa_idx37, align 8
  store ptr %i.fh, ptr %.sroa.636.sroa.0.sroa.4.0..sroa.636.0..sroa_idx37.sroa_idx, align 8
  store ptr %i.fj, ptr %.sroa.636.sroa.0.sroa.5.0..sroa.636.0..sroa_idx37.sroa_idx, align 8
  store i64 1, ptr %.sroa.636.sroa.4.0..sroa.636.0..sroa_idx37.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.ax, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.gy = icmp ugt i64 %i.ff, 2
  br i1 %i.gy, label %bb.bq, label %.thread404.invoke, !prof !35

bb.bq:                                            ; preds = %bb.bp
  store ptr %i.fd, ptr %i.aj, align 8
  store i64 %i.ff, ptr %.sroa.643.0..sroa_idx44, align 8
  store ptr %i.fh, ptr %.sroa.643.sroa.0.sroa.4.0..sroa.643.0..sroa_idx44.sroa_idx, align 8
  store ptr %i.fj, ptr %.sroa.643.sroa.0.sroa.5.0..sroa.643.0..sroa_idx44.sroa_idx, align 8
  store i64 2, ptr %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx44.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.gz = load ptr, ptr %i.by, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.ha = load i64, ptr %i.bz, align 8, !noundef !13
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.ha
  store ptr %i.gz, ptr %i.ah, align 8
  store ptr %i.hb, ptr %i.ch, align 8
  store i64 8, ptr %i.ci, align 8
  invoke void @"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h03a8544b45553249E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ah)
          to label %bb.br unwind label %.loopexit419

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %.not614 = icmp eq i64 %i.ff, 3                 ; 2 uses
  %.sroa.0165.3 = select i1 %.not614, i64 3, i64 4 ; 3 uses
  br i1 %.not614, label %bb.bt, label %bb.bs, !prof !15

bb.bs:                                            ; preds = %bb.br
  store ptr %i.fd, ptr %i.ag, align 8
  store i64 %i.ff, ptr %.sroa.650.0..sroa_idx51, align 8
  store ptr %i.fh, ptr %.sroa.650.sroa.0.sroa.4.0..sroa.650.0..sroa_idx51.sroa_idx, align 8
  store ptr %i.fj, ptr %.sroa.650.sroa.0.sroa.5.0..sroa.650.0..sroa_idx51.sroa_idx, align 8
  store i64 3, ptr %.sroa.650.sroa.4.0..sroa.650.0..sroa_idx51.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.hc = load ptr, ptr %i.cb, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.hd = load i64, ptr %i.cc, align 8, !noundef !13
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hd
  store ptr %i.hc, ptr %i.ae, align 8
  store ptr %i.he, ptr %i.cj, align 8
  store i64 8, ptr %i.ck, align 8
  invoke void @"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h03a8544b45553249E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ae)
          to label %bb.bu unwind label %.loopexit424

bb.bt:                                            ; preds = %bb.br
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @233, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @596) #44
          to label %bb.aw unwind label %.loopexit.split-lp425

.body295:                                         ; preds = %.loopexit424, %.loopexit.split-lp425, %bb.cc, %bb.bw
  %.pn = phi { ptr, i32 } [ %lpad.phi433, %bb.bw ], [ %i.hy, %bb.cc ], [ %lpad.loopexit426, %.loopexit424 ], [ %lpad.loopexit.split-lp427, %.loopexit.split-lp425 ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #42
          to label %.body285 unwind label %bb.bl

.loopexit424:                                     ; preds = %bb.bs, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i294"
  %lpad.loopexit426 = landingpad { ptr, i32 }
          cleanup
  br label %.body295

.loopexit.split-lp425:                            ; preds = %bb.bt
  %lpad.loopexit.split-lp427 = landingpad { ptr, i32 }
          cleanup
  br label %.body295

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.hf = icmp ult i64 %.sroa.0165.3, %i.ff       ; 2 uses
  %i.hg = zext i1 %i.hf to i64
  %.sroa.0165.4 = add nuw nsw i64 %.sroa.0165.3, %i.hg ; 2 uses
  br i1 %i.hf, label %bb.bv, label %.invoke612, !prof !35

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.fd, ptr %i.ad, align 8
  store i64 %i.ff, ptr %.sroa.657.0..sroa_idx58, align 8
  store ptr %i.fh, ptr %.sroa.657.sroa.0.sroa.4.0..sroa.657.0..sroa_idx58.sroa_idx, align 8
  store ptr %i.fj, ptr %.sroa.657.sroa.0.sroa.5.0..sroa.657.0..sroa_idx58.sroa_idx, align 8
  store i64 %.sroa.0165.3, ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx58.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %i.av, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %.not413 = icmp ult i64 %.sroa.0165.4, %i.ff
  br i1 %.not413, label %bb.bx, label %.invoke612, !prof !35

.invoke612:                                       ; preds = %bb.bu, %bb.bv
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @233, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @596) #44
          to label %.cont613 unwind label %.loopexit.split-lp430

.cont613:                                         ; preds = %.invoke612
  unreachable

.loopexit429:                                     ; preds = %bb.bx, %bb.bz, %.noexc290, %bb.ca
  %lpad.loopexit431 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp430:                            ; preds = %.invoke612
  %lpad.loopexit.split-lp432 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.split-lp430, %.loopexit429
  %lpad.phi433 = phi { ptr, i32 } [ %lpad.loopexit431, %.loopexit429 ], [ %lpad.loopexit.split-lp432, %.loopexit.split-lp430 ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af) #42
          to label %.body295 unwind label %bb.bl

bb.bx:                                            ; preds = %bb.bv
  store ptr %i.fd, ptr %i.ab, align 8
  store i64 %i.ff, ptr %.sroa.664.0..sroa_idx65, align 8
  store ptr %i.fh, ptr %.sroa.664.sroa.0.sroa.4.0..sroa.664.0..sroa_idx65.sroa_idx, align 8
  store ptr %i.fj, ptr %.sroa.664.sroa.0.sroa.5.0..sroa.664.0..sroa_idx65.sroa_idx, align 8
  store i64 %.sroa.0165.4, ptr %.sroa.664.sroa.4.0..sroa.664.0..sroa_idx65.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.aq, ptr %i.aa, align 8
  store ptr %i.an, ptr %i.ao, align 8
  store ptr %i.am, ptr %.sroa.425.0..sroa_idx, align 8
  store ptr @237, ptr %.sroa.526.0..sroa_idx, align 8
  store ptr %i.al, ptr %i.cl, align 8
  store ptr %i.ak, ptr %.sroa.432.0..sroa_idx, align 8
  store ptr @599, ptr %.sroa.533.0..sroa_idx, align 8
  store ptr %i.aj, ptr %i.cm, align 8
  store ptr %i.ai, ptr %.sroa.439.0..sroa_idx, align 8
  store ptr @253, ptr %.sroa.540.0..sroa_idx, align 8
  store ptr %i.ag, ptr %i.cn, align 8
  store ptr %i.af, ptr %.sroa.446.0..sroa_idx, align 8
  store ptr @253, ptr %.sroa.547.0..sroa_idx, align 8
  store ptr %i.ad, ptr %i.co, align 8
  store ptr %i.ac, ptr %.sroa.453.0..sroa_idx, align 8
  store ptr @600, ptr %.sroa.554.0..sroa_idx, align 8
  store ptr %i.ab, ptr %i.cp, align 8
  store ptr %i.aa, ptr %.sroa.460.0..sroa_idx, align 8
  store ptr @601, ptr %.sroa.561.0..sroa_idx, align 8
  store ptr %i.ao, ptr %i.ap, align 8
  store i64 6, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.fc, ptr %.sroa.523.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.hh = load ptr, ptr @_ZN4anki4sync5media7changes26determine_required_changes10__CALLSITE17hee667173a8f766e5E, align 8, !noalias !6052, !nonnull !13, !align !14, !noundef !13
  invoke void @_ZN12tracing_core5event5Event8dispatch17h90a40a5c2adbda05E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %.noexc289 unwind label %.loopexit429

.noexc289:                                        ; preds = %bb.bx
  %i.hi = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9325306da66b02e3E monotonic, align 1, !noalias !6052
  %i.hj = icmp eq i8 %i.hi, 0
  br i1 %i.hj, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %.noexc289
  %i.hk = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hb57afb2b1cb16849E monotonic, align 8, !noalias !6052 ; 2 uses
  %i.hl = icmp ult i64 %i.hk, 6
  call void @llvm.assume(i1 %i.hl)
  %i.hm = icmp samesign ugt i64 %i.hk, 3
  br i1 %i.hm, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.hn = load ptr, ptr @_ZN4anki4sync5media7changes26determine_required_changes10__CALLSITE17hee667173a8f766e5E, align 8, !noalias !6052, !nonnull !13, !align !14, !noundef !13 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !nonnull !13, !align !22, !noundef !13
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  %i.hr = load i64, ptr %i.hq, align 8, !noundef !13
  store i64 4, ptr %i.b, align 8, !noalias !6052
  store ptr %i.hp, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !6052
  store i64 %i.hr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !6052
  %i.hs = invoke { ptr, ptr } @_ZN3log6logger17hef834f2fd8d55c8dE()
          to label %.noexc290 unwind label %.loopexit429 ; 2 uses

.noexc290:                                        ; preds = %bb.bz
  %i.ht = extractvalue { ptr, ptr } %i.hs, 0      ; 2 uses
  %i.hu = extractvalue { ptr, ptr } %i.hs, 1      ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !invariant.load !13, !nonnull !13
  %i.hx = invoke noundef zeroext i1 %i.hw(ptr noundef align 1 %i.ht, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc291 unwind label %.loopexit429, !inline_history !6036

.noexc291:                                        ; preds = %.noexc290
  br i1 %i.hx, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.noexc291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !6052
  invoke void @_ZN7tracing15__macro_support13__tracing_log17h48fba2a1e547b7beE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hn, ptr noundef nonnull align 1 %i.ht, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hu, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %.noexc292 unwind label %.loopexit429

.noexc292:                                        ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6052
  br label %bb.cb

bb.cb:                                            ; preds = %.noexc292, %.noexc291, %bb.by, %.noexc289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i294" unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body295 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i294": ; preds = %bb.cb
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit298" unwind label %.loopexit424

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit298": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i294"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i300" unwind label %bb.ce

bb.ce:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit298"
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body285 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i300": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit298"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit305" unwind label %.loopexit419

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit305": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i300"
end_hunk_0
