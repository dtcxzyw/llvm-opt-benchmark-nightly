Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.14?download=true
inline.NumInlined: 6502
inline.NumDeleted: 2826
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 45
begin_hunk_0_@"_ZN87_$LT$core..future..poll_fn..PollFn$LT$F$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h04c8b7afb5bd0836E":bb.a
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !15538
  %i.bt = extractvalue { i64, ptr } %i.br, 0
  %i.bu = extractvalue { i64, ptr } %i.br, 1
  store i64 %i.bt, ptr %i.ak, align 8, !noalias !15538
  store ptr %i.bu, ptr %i.al, align 8, !noalias !15538
  br label %bb.x

bb.s:                                             ; preds = %bb.t, %bb.n, %bb.k
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %i.bq, %bb.n ], [ %i.bp, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !15538
  br label %bb.p

bb.t:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !15538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !15538
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$reqwest..async_impl..request..RequestBuilder$GT$17hc8b5ef564a76b23cE"(ptr noalias noundef align 8 dereferenceable(272) %i.s) #33
          to label %bb.s unwind label %bb.u, !noalias !15539

bb.u:                                             ; preds = %bb.cp, %bb.cn, %.body.i.i, %bb.br, %bb.y, %bb.t
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34, !noalias !15539
  unreachable

bb.v:                                             ; preds = %bb.g
  call void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h3b6db46748f97cb2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #35, !noalias !15539
  unreachable

bb.w:                                             ; preds = %bb.g
  call void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h9ee303addc83bb21E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #35, !noalias !15539
  unreachable

bb.x:                                             ; preds = %bb.r, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15538
  invoke void @"_ZN85_$LT$reqwest..async_impl..client..Pending$u20$as$u20$core..future..future..Future$GT$4poll17h14f46e72637afb0eE"(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.z unwind label %bb.y, !noalias !15539

bb.y:                                             ; preds = %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15538
  %.val.i12.i = load i64, ptr %i.ak, align 8, !range !18, !noalias !15538, !noundef !10
  %.val39.i.i = load ptr, ptr %i.al, align 8, !noalias !15538
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$reqwest..async_impl..client..Pending$GT$17h9c633218daa82e29E"(i64 %.val.i12.i, ptr %.val39.i.i) #33
          to label %bb.ac unwind label %bb.u, !noalias !15539

bb.z:                                             ; preds = %bb.x
  %i.by = load i64, ptr %i.o, align 8, !range !63, !noalias !15538, !noundef !10 ; 3 uses
  %i.bz = icmp eq i64 %i.by, 4
  br i1 %i.bz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !15538
  br label %"_ZN4anki4sync11http_client10io_monitor9IoMonitor25zstd_request_with_timeout28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h3ae2f2bee312c909E.exit.thread.i"

bb.ab:                                            ; preds = %bb.z
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !15538 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx.i.i, i64 120, i1 false), !noalias !15538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15538
  %.val40.i.i = load i64, ptr %i.ak, align 8, !range !18, !noalias !15538, !noundef !10
  %.val41.i.i = load ptr, ptr %i.al, align 8, !noalias !15538
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$reqwest..async_impl..client..Pending$GT$17h9c633218daa82e29E"(i64 %.val40.i.i, ptr %.val41.i.i)
          to label %bb.ae unwind label %bb.ad, !noalias !15539

bb.ac:                                            ; preds = %bb.ad, %bb.y
  %.pn13.i.i = phi { ptr, i32 } [ %i.ca, %bb.ad ], [ %i.bx, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !15538
  br label %bb.bx

bb.ad:                                            ; preds = %bb.ab
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ab
  %i.cb = icmp eq i64 %i.by, 3
  br i1 %i.cb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
  invoke void @"_ZN4anki4sync11http_client107_$LT$impl$u20$core..convert..From$LT$reqwest..error..Error$GT$$u20$for$u20$anki..sync..error..HttpError$GT$4from17h212053e4450df971E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef nonnull align 8 %.sroa.3.0.copyload.i.i)
          to label %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17he45b2c698723c780E.exit.i.i" unwind label %bb.ah, !noalias !15539

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.1260.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.i.i, i64 120, i1 false), !noalias !15538
  store i64 %i.by, ptr %i.n, align 8, !noalias !15538
  store ptr %.sroa.3.0.copyload.i.i, ptr %.sroa.1057.0..sroa_idx.i.i, align 8, !noalias !15538
  invoke void @_ZN7reqwest10async_impl8response8Response16error_for_status17hb2f055a05b874aa4E(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.n)
          to label %bb.ai unwind label %bb.ah, !noalias !15539

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !15538
  br label %bb.bx

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !15540)
  %i.cd = load i64, ptr %i.u, align 8, !range !16, !alias.scope !15541, !noalias !15542, !noundef !10 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 3
  %i.cf = load ptr, ptr %i.am, align 8, !alias.scope !15543, !noalias !15538 ; 2 uses
  br i1 %i.ce, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !15538
  invoke void @"_ZN4anki4sync11http_client107_$LT$impl$u20$core..convert..From$LT$reqwest..error..Error$GT$$u20$for$u20$anki..sync..error..HttpError$GT$4from17h212053e4450df971E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef nonnull align 8 %i.cf)
          to label %"_ZN4anki4sync11http_client10io_monitor9IoMonitor25zstd_request_with_timeout28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h3ae2f2bee312c909E.exit.i" unwind label %bb.bw, !noalias !15539

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.564.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.12.0..sroa_idx54.i.i, i64 120, i1 false), !noalias !15538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !15538
  store i8 1, ptr %i.ah, align 1, !noalias !15538
  store i64 %i.cd, ptr %i.ak, align 8, !noalias !15538
  store ptr %i.cf, ptr %i.al, align 8, !noalias !15538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15538
  invoke void @_ZN4anki4sync11http_client10io_monitor21map_redirect_to_error17hfaadac2686b98d78E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.ak)
          to label %bb.am unwind label %bb.al, !noalias !15539

bb.al:                                            ; preds = %bb.ak
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15538
  br label %bb.bv

bb.am:                                            ; preds = %bb.ak
  %i.ch = load i64, ptr %i.m, align 8, !range !19, !alias.scope !15544, !noalias !15545, !noundef !10 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ch, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.an, label %bb.bt

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15538
  %i.ci = invoke noundef align 8 ptr @"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h80e614ed799424b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ak, ptr noundef nonnull align 8 @_ZN4anki4sync8response13ORIGINAL_SIZE17h04a377dfcaef2a71E)
          to label %bb.ap unwind label %bb.ao, !noalias !15539 ; 3 uses

bb.ao:                                            ; preds = %bb.an
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ap:                                            ; preds = %bb.an
  %.not.i44.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i44.i.i, label %.thread97.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ck = getelementptr i8, ptr %i.ci, i64 8
  %.val.i.i.i = load ptr, ptr %i.ck, align 8, !noalias !15539, !nonnull !10, !noundef !10 ; 7 uses
  %i.cl = getelementptr i8, ptr %i.ci, i64 16
  %.val3.i.i.i = load i64, ptr %i.cl, align 8, !noalias !15539, !noundef !10 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.val3.i.i.i
  %i.cn = icmp samesign eq i64 %.val3.i.i.i, 0
  br i1 %i.cn, label %"_ZN4anki4sync11http_client10io_monitor9IoMonitor25zstd_request_with_timeout28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h83d7ec895c25bf23E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 1 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.cm
  br i1 %i.cp, label %bb.as, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aq, %bb.ar
  %.sroa.02.01.i.i.i.i.i = phi ptr [ %i.co, %bb.ar ], [ %.val.i.i.i, %bb.aq ] ; 2 uses
  %i.cq = load i8, ptr %.sroa.02.01.i.i.i.i.i, align 1, !noalias !15539, !noundef !10 ; 2 uses
  %i.cr = add i8 %i.cq, -32
  %or.cond.i.i.i.i.i = icmp ult i8 %i.cr, 95
  %i.cs = icmp eq i8 %i.cq, 9
  %or.cond1.i.i.i.i.i = or i1 %i.cs, %or.cond.i.i.i.i.i
  br i1 %or.cond1.i.i.i.i.i, label %bb.ar, label %.thread97.i.i

bb.as:                                            ; preds = %bb.ar
  %cond.i.i = icmp eq i64 %.val3.i.i.i, 1
  %i.ct = load i8, ptr %.val.i.i.i, align 1, !alias.scope !15546, !noalias !15539 ; 2 uses
  br i1 %cond.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  switch i8 %i.ct, label %.lr.ph.i.i.i46.i.i.preheader [
    i8 43, label %"_ZN4anki4sync11http_client10io_monitor9IoMonitor25zstd_request_with_timeout28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h83d7ec895c25bf23E.exit.i.i.i"
    i8 45, label %"_ZN4anki4sync11http_client10io_monitor9IoMonitor25zstd_request_with_timeout28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h83d7ec895c25bf23E.exit.i.i.i"
  ]

.lr.ph.i.i.i46.i.i.preheader:                     ; preds = %bb.ax, %bb.av, %bb.at
  %.sroa.0.186.i.i.i.i.i.ph = phi ptr [ %i.cu, %bb.av ], [ %.val.i.i.i, %bb.ax ], [ %.val.i.i.i, %bb.at ]
  %.sroa.16.185.i.i.i.i.i.ph = phi i64 [ %i.cv, %bb.av ], [ %.val3.i.i.i, %bb.ax ], [ 1, %bb.at ]
  br label %.lr.ph.i.i.i46.i.i

bb.au:                                            ; preds = %bb.as
  %cond.i.i.i.i.i = icmp eq i8 %i.ct, 43
  br i1 %cond.i.i.i.i.i, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 1 ; 2 uses
  %i.cv = add i64 %.val3.i.i.i, -1                ; 2 uses
  %i.cw = icmp ult i64 %.val3.i.i.i, 10
  br i1 %i.cw, label %.lr.ph.i.i.i46.i.i.preheader, label %.preheader75.i.i.i.i.i

.preheader75.i.i.i.i.i:                           ; preds = %bb.av, %bb.ax
  %.sroa.0.0.ph.i.i.i.i.i = phi ptr [ %i.cu, %bb.av ], [ %.val.i.i.i, %bb.ax ]
  %.sroa.16.0.i.i.i.i.i49.ph = phi i64 [ %i.cv, %bb.av ], [ %.val3.i.i.i, %bb.ax ]
  br label %.lr.ph

bb.aw:                                            ; preds = %bb.ba
  %.not69.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not69.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph

bb.ax:                                            ; preds = %bb.au
  %i.cx = icmp ult i64 %.val3.i.i.i, 9
  br i1 %i.cx, label %.lr.ph.i.i.i46.i.i.preheader, label %.preheader75.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.aw, %bb.bb
  %.sroa.054.2.i.i.i.i.i = phi i32 [ %i.dt, %bb.bb ], [ %i.dl, %bb.aw ]
  %i.cy = zext i32 %.sroa.054.2.i.i.i.i.i to i64
  %i.cz = shl nuw i64 %i.cy, 32
  br label %"_ZN4anki4sync11http_client10io_monitor9IoMonitor25zstd_request_with_timeout28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h83d7ec895c25bf23E.exit.i.i.i"

.lr.ph:                                           ; preds = %.preheader75.i.i.i.i.i, %bb.aw
  %.sroa.0.0.i.i.i.i.i50 = phi ptr [ %i.da, %bb.aw ], [ %.sroa.0.0.ph.i.i.i.i.i, %.preheader75.i.i.i.i.i ] ; 2 uses
  %.sroa.16.0.i.i.i.i.i49 = phi i64 [ %i.db, %bb.aw ], [ %.sroa.16.0.i.i.i.i.i49.ph, %.preheader75.i.i.i.i.i ]
  %.sroa.054.0.i.i.i.i.i48 = phi i32 [ %i.dl, %bb.aw ], [ 0, %.preheader75.i.i.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i50, i64 1
  %i.db = add i64 %.sroa.16.0.i.i.i.i.i49, -1     ; 2 uses
  %i.dc = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.054.0.i.i.i.i.i48, i32 10) ; 2 uses
  %i.dd = extractvalue { i32, i1 } %i.dc, 0       ; 2 uses
  %i.de = extractvalue { i32, i1 } %i.dc, 1
  %i.df = load i8, ptr %.sroa.0.0.i.i.i.i.i50, align 1, !alias.scope !15546, !noalias !15539, !noundef !10 ; 2 uses
  br i1 %i.de, label %bb.az, label %bb.ay, !prof !17

bb.ay:                                            ; preds = %.lr.ph
  %i.dg = zext i8 %i.df to i32
  %i.dh = add nsw i32 %i.dg, -48                  ; 2 uses
  %i.di = icmp ult i32 %i.dh, 10
  br i1 %i.di, label %bb.ba, label %"_ZN4anki4sync11http_client10io_monitor9IoMonitor25zstd_request_with_timeout28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h83d7ec895c25bf23E.exit.i.i.i"

bb.az:                                            ; preds = %.lr.ph
  %i.dj = add i8 %i.df, -48
  %i.dk = icmp ult i8 %i.dj, 10
  %spec.select.i.i.i.i.i = select i1 %i.dk, i64 513, i64 257
  br label %"_ZN4anki4sync11http_client10io_monitor9IoMonitor25zstd_request_with_timeout28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h83d7ec895c25bf23E.exit.i.i.i"

bb.ba:                                            ; preds = %bb.ay
  %i.dl = add i32 %i.dh, %i.dd                    ; 3 uses
  %.not70.i.i.i.i.i = icmp ult i32 %i.dl, %i.dd
  br i1 %.not70.i.i.i.i.i, label %"_ZN4anki4sync11http_client10io_monitor9IoMonitor25zstd_request_with_timeout28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h83d7ec895c25bf23E.exit.i.i.i", label %bb.aw

.lr.ph.i.i.i46.i.i:                               ; preds = %.lr.ph.i.i.i46.i.i.preheader, %bb.bb
  %.sroa.0.186.i.i.i.i.i = phi ptr [ %i.ds, %bb.bb ], [ %.sroa.0.186.i.i.i.i.i.ph, %.lr.ph.i.i.i46.i.i.preheader ] ; 2 uses
  %.sroa.16.185.i.i.i.i.i = phi i64 [ %i.dr, %bb.bb ], [ %.sroa.16.185.i.i.i.i.i.ph, %.lr.ph.i.i.i46.i.i.preheader ]
  %.sroa.054.184.i.i.i.i.i = phi i32 [ %i.dt, %bb.bb ], [ 0, %.lr.ph.i.i.i46.i.i.preheader ]
  %i.dm = load i8, ptr %.sroa.0.186.i.i.i.i.i, align 1, !alias.scope !15546, !noalias !15539, !noundef !10
  %i.dn = zext i8 %i.dm to i32
  %i.do = add nsw i32 %i.dn, -48                  ; 2 uses
  %i.dp = icmp ult i32 %i.do, 10
  br i1 %i.dp, label %bb.bb, label %"_ZN4anki4sync11http_client10io_monitor9IoMonitor25zstd_request_with_timeout28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h83d7ec895c25bf23E.exit.i.i.i"

bb.bb:                                            ; preds = %.lr.ph.i.i.i46.i.i
  %i.dq = mul i32 %.sroa.054.184.i.i.i.i.i, 10
  %i.dr = add nsw i64 %.sroa.16.185.i.i.i.i.i, -1 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.186.i.i.i.i.i, i64 1
  %i.dt = add i32 %i.do, %i.dq                    ; 2 uses
  %.not71.i.i.i.i.i = icmp eq i64 %i.dr, 0
  br i1 %.not71.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i46.i.i

"_ZN4anki4sync11http_client10io_monitor9IoMonitor25zstd_request_with_timeout28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h83d7ec895c25bf23E.exit.i.i.i": ; preds = %bb.ba, %bb.ay, %.lr.ph.i.i.i46.i.i, %bb.az, %.loopexit.i.i.i.i.i, %bb.at, %bb.at, %bb.aq
  %.sroa.8.0.insert.insert.i.i.i.i.i = phi i64 [ 257, %bb.at ], [ %i.cz, %.loopexit.i.i.i.i.i ], [ 257, %.lr.ph.i.i.i46.i.i ], [ 257, %bb.at ], [ 1, %bb.aq ], [ %spec.select.i.i.i.i.i, %bb.az ], [ 513, %bb.ba ], [ 257, %bb.ay ] ; 2 uses
  %i.du = trunc i64 %.sroa.8.0.insert.insert.i.i.i.i.i to i32
  %not..i.i.i.i = and i32 %i.du, 1
  %..i.i.i.i = xor i32 %not..i.i.i.i, 1
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i64 %.sroa.8.0.insert.insert.i.i.i.i.i, 32
  %.sroa.5.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i.i.i to i32
  br label %.thread97.i.i

.thread97.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i, %"_ZN4anki4sync11http_client10io_monitor9IoMonitor25zstd_request_with_timeout28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h83d7ec895c25bf23E.exit.i.i.i", %bb.ap
  %.sroa.03.0.i.i.i = phi i32 [ %..i.i.i.i, %"_ZN4anki4sync11http_client10io_monitor9IoMonitor25zstd_request_with_timeout28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h83d7ec895c25bf23E.exit.i.i.i" ], [ 0, %bb.ap ], [ 0, %.lr.ph.i.i.i.i.i ]
  %.sroa.34.0.i.i.i = phi i32 [ %.sroa.5.0.extract.trunc.i.i.i.i, %"_ZN4anki4sync11http_client10io_monitor9IoMonitor25zstd_request_with_timeout28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h83d7ec895c25bf23E.exit.i.i.i" ], [ undef, %bb.ap ], [ undef, %.lr.ph.i.i.i.i.i ]
  invoke void @_ZN4anki4sync5error9OrHttpErr14or_bad_request17h383acb02e33d4b0dE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.l, i32 noundef %.sroa.03.0.i.i.i, i32 %.sroa.34.0.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @174, i64 noundef 21)
          to label %bb.bd unwind label %bb.bc, !noalias !15539

bb.bc:                                            ; preds = %.thread97.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %.thread97.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15547)
  %i.dw = load i64, ptr %i.l, align 8, !range !19, !alias.scope !15548, !noalias !15549, !noundef !10 ; 2 uses
  %.not.i47.i.i = icmp eq i64 %i.dw, -9223372036854775808
  %i.dx = load i32, ptr %i.an, align 8, !alias.scope !15550, !noalias !15538 ; 3 uses
  br i1 %.not.i47.i.i, label %bb.bf, label %bb.bs

bb.be:                                            ; preds = %bb.bc, %bb.ao
  %.pn15.i.i = phi { ptr, i32 } [ %i.cj, %bb.ao ], [ %i.dv, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15538
  br label %bb.bv

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15538
  %i.dy = load ptr, ptr %i.ao, align 8, !noalias !15538, !nonnull !10, !align !13, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15538
  store i8 0, ptr %i.ah, align 1, !noalias !15538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.i, ptr noundef nonnull align 8 dereferenceable(136) %i.ak, i64 136, i1 false), !noalias !15538
  %i.dz = invoke { ptr, ptr } @_ZN7reqwest10async_impl8response8Response12bytes_stream17hd69f333fbea97af0E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.i)
          to label %bb.bh unwind label %bb.bg, !noalias !15539 ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15538
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bf
  %i.eb = extractvalue { ptr, ptr } %i.dz, 0
  %i.ec = extractvalue { ptr, ptr } %i.dz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15538
  invoke void @_ZN4anki4sync7request17header_and_stream34decode_zstd_body_stream_for_client17hfb63125ded3dd424E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.j, ptr noundef nonnull align 1 %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ec)
          to label %bb.bj unwind label %bb.bi, !noalias !15539

bb.bi:                                            ; preds = %bb.bh
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  invoke void @_ZN4anki4sync11http_client10io_monitor9IoMonitor11wrap_stream17h6baf876b18f586c7E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dy, i1 noundef zeroext false, i32 noundef %i.dx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.j)
          to label %bb.bm unwind label %bb.bl, !noalias !15539

bb.bk:                                            ; preds = %bb.bl, %bb.bi, %bb.bg
  %.pn18.i.i = phi { ptr, i32 } [ %i.ee, %bb.bl ], [ %i.ed, %bb.bi ], [ %i.ea, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15538
  br label %bb.bv

bb.bl:                                            ; preds = %bb.bj
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bm:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.k, i64 128, i1 false), !noalias !15538
  store ptr null, ptr %i.aq, align 8, !alias.scope !15551, !noalias !15552
  %i.ef = zext i32 %i.dx to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15553)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15554
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef range(i64 0, 4294967296) %i.ef, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %.loopexit.i, !noalias !15539

.noexc.i.i:                                       ; preds = %bb.bm
  %i.eg = load i64, ptr %i.d, align 8, !range !18, !noalias !15554, !noundef !10
  %i.eh = trunc nuw i64 %i.eg to i1
  %i.ei = load i64, ptr %i.as, align 8, !range !19, !noalias !15554, !noundef !10 ; 3 uses
  br i1 %i.eh, label %bb.bn, label %bb.bo, !prof !17

bb.bn:                                            ; preds = %.noexc.i.i
  %i.ej = load i64, ptr %i.at, align 8, !noalias !15554
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ei, i64 %i.ej) #35
          to label %.noexc48.i.i unwind label %.loopexit.split-lp.i, !noalias !15539

.noexc48.i.i:                                     ; preds = %bb.bn
  unreachable

.loopexit.i:                                      ; preds = %bb.bm
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i:                             ; preds = %bb.bn
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bo:                                            ; preds = %.noexc.i.i
  %i.ek = load ptr, ptr %i.at, align 8, !noalias !15554, !nonnull !10, !noundef !10
  %i.el = icmp uge i64 %i.ei, %i.ef
  call void @llvm.assume(i1 %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15554
  store i64 %i.ei, ptr %i.ar, align 8, !alias.scope !15553, !noalias !15538
  store ptr %i.ek, ptr %i.au, align 8, !alias.scope !15553, !noalias !15538
  store i64 0, ptr %i.av, align 8, !alias.scope !15553, !noalias !15538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15538
  invoke void @_ZN5tokio2io4util14async_read_ext12AsyncReadExt11read_to_end17h90f3c797c0f7139dE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(160) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.bq unwind label %bb.bp, !noalias !15539

bb.bp:                                            ; preds = %bb.bo
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15538
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !15538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15538
  br label %bb.by

bb.br:                                            ; preds = %bb.cd, %bb.bz, %bb.bp
  %.pn24.i.i = phi { ptr, i32 } [ %i.ez, %bb.cd ], [ %i.em, %bb.bp ], [ %i.ev, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15538
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.ar) #33
          to label %.body.i.i unwind label %bb.u, !noalias !15539

.body.i.i:                                        ; preds = %bb.ck, %bb.ch, %bb.br, %.loopexit.split-lp.i, %.loopexit.i
  %.pn29.i.i = phi { ptr, i32 } [ %i.fb, %bb.ch ], [ %.pn24.i.i, %bb.br ], [ %i.fd, %bb.ck ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr2073drop_in_place$LT$tokio_util..io..stream_reader..StreamReader$LT$futures_util..stream..try_stream..MapErr$LT$futures_util..stream..stream..map..Map$LT$futures_util..stream..try_stream..MapErr$LT$tokio_util..io..reader_stream..ReaderStream$LT$async_compression..tokio..bufread..ZstdDecoder$LT$tokio_util..io..stream_reader..StreamReader$LT$futures_util..stream..try_stream..MapErr$LT$reqwest..async_impl..body..DataStream$LT$reqwest..async_impl..decoder..Decoder$GT$$C$anki..sync..request..header_and_stream..decode_zstd_body_stream_for_client$LT$reqwest..async_impl..body..DataStream$LT$reqwest..async_impl..decoder..Decoder$GT$$C$reqwest..error..Error$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$bytes..bytes..Bytes$GT$$GT$$GT$$C$anki..sync..request..header_and_stream..decode_zstd_body_stream_for_client$LT$reqwest..async_impl..body..DataStream$LT$reqwest..async_impl..decoder..Decoder$GT$$C$reqwest..error..Error$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$anki..sync..http_client..io_monitor..IoMonitor..wrap_stream$LT$futures_util..stream..try_stream..MapErr$LT$tokio_util..io..reader_stream..ReaderStream$LT$async_compression..tokio..bufread..ZstdDecoder$LT$tokio_util..io..stream_reader..StreamReader$LT$futures_util..stream..try_stream..MapErr$LT$reqwest..async_impl..body..DataStream$LT$reqwest..async_impl..decoder..Decoder$GT$$C$anki..sync..request..header_and_stream..decode_zstd_body_stream_for_client$LT$reqwest..async_impl..body..DataStream$LT$reqwest..async_impl..decoder..Decoder$GT$$C$reqwest..error..Error$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$bytes..bytes..Bytes$GT$$GT$$GT$$C$anki..sync..request..header_and_stream..decode_zstd_body_stream_for_client$LT$reqwest..async_impl..body..DataStream$LT$reqwest..async_impl..decoder..Decoder$GT$$C$reqwest..error..Error$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$anki..sync..error..HttpError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$anki..sync..http_client..io_monitor..IoMonitor..zstd_request_with_timeout..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$bytes..bytes..Bytes$GT$$GT$17h3fc57ba521ad1b9aE"(ptr noalias noundef align 8 dereferenceable(160) %i.ap) #33
          to label %bb.bv unwind label %bb.u, !noalias !15539

bb.bs:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.378.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.1074.0..sroa_idx75.i.i, i64 36, i1 false), !noalias !15538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15538
  store i64 %i.dw, ptr %i.f, align 8, !alias.scope !15555, !noalias !15538
  store i32 %i.dx, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !15555, !noalias !15538
  br label %bb.bu

bb.bt:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx67.i.i, i64 40, i1 false), !noalias !15538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15538
  store i64 %i.ch, ptr %i.f, align 8, !alias.scope !15556, !noalias !15538
  br label %bb.bu

end_hunk_0
