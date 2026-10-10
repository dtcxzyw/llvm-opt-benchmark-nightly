Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@"_ZN108_$LT$actix_service..map_err..MapErrFuture$LT$A$C$Req$C$F$C$E$GT$$u20$as$u20$core..future..future..Future$GT$4poll17hc94b9a60500967c4E":bb.a
  switch i64 %i.bu, label %.loopexit186.i.i.i [
    i64 2, label %._crit_edge135.i.i.i.i
    i64 0, label %bb.m
  ]

._crit_edge135.i.i.i.i:                           ; preds = %.noexc87.i.i.i
  %.pre.i.i.i.i = load i8, ptr %i.ab, align 2, !range !52, !noalias !675
  br label %split.i.i.i.i

bb.m:                                             ; preds = %.noexc87.i.i.i
  %i.bx = icmp eq ptr %i.bv, null
  br i1 %i.bx, label %.thread.i.i.i.i, label %.lr.ph107.i.i.i.i

.lr.ph107.i.i.i.i:                                ; preds = %bb.m
  %i.by = add i64 %.sroa.017.1105.i244.i.i.i, %i.bw ; 2 uses
  %i.bz = load i64, ptr %i.al, align 8, !noalias !675, !noundef !45
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = load i8, ptr %i.am, align 1, !range !52, !noalias !675
  %i.cc = trunc nuw i8 %i.cb to i1
  %or.cond4.i.i.i.i = select i1 %i.ca, i1 true, i1 %i.cc
  %.pre136.i.i.i.i = load i8, ptr %i.ab, align 2, !range !52, !noalias !675 ; 2 uses
  br i1 %or.cond4.i.i.i.i, label %split.i.i.i.i, label %.lr.ph.i.i.i

.thread69.i.i.i.i:                                ; preds = %.thread.i.i.i.i
  %i.cd = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 37, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @532, i64 noundef 17)
          to label %.noexc88.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !674

.noexc88.i.i.i:                                   ; preds = %.thread69.i.i.i.i
  %i.ce = ptrtoint ptr %i.cd to i64
  br label %.loopexit186.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i, %split.i.i.i.i
  %i.cf = phi i8 [ %i.bi, %split.i.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  %.sroa.017.1105.i213.i.i.i = phi i64 [ %.sroa.017.1105.i214.i.i.i, %split.i.i.i.i ], [ %.sroa.017.1105.i244.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.022.066.i.i.i.i = phi i1 [ %.sroa.022.0.i.i.i.i, %split.i.i.i.i ], [ %.not.lcssa141.i.i.i.i, %.lr.ph.i.i.i ]
  br i1 %.sroa.022.066.i.i.i.i, label %bb.n, label %.backedge

.backedge:                                        ; preds = %.critedge.i.i.i.i, %.loopexit196.i.i.i
  %.be = phi i1 [ false, %.critedge.i.i.i.i ], [ %i.an, %.loopexit196.i.i.i ]
  %.sroa.017.0.i.i.i.i.be = phi i64 [ %.sroa.017.1105.i213.i.i.i, %.critedge.i.i.i.i ], [ 0, %.loopexit196.i.i.i ]
  %.sroa.0.0.i.i.i.i.be = phi i64 [ %.sroa.0.1.lcssa139.i.i.i.i, %.critedge.i.i.i.i ], [ 0, %.loopexit196.i.i.i ]
  br label %bb.g

bb.n:                                             ; preds = %.critedge.i.i.i.i
  %i.cg = icmp eq i64 %.sroa.017.1105.i213.i.i.i, 0
  %i.ch = icmp eq i64 %.sroa.0.1.lcssa139.i.i.i.i, 0
  %or.cond13.i.i.i.i = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond13.i.i.i.i, label %"_ZN12tokio_rustls6common20Stream$LT$IO$C$C$GT$9handshake17hdc840cbeb9efecf3E.exit.i.i.i", label %.loopexit196.i.i.i

._crit_edge.i.i.i:                                ; preds = %.loopexit196.i.i.i, %split.i.i.i.i, %.thread.i.i.i.i, %bb.f
  %.sroa.13.0.lcssa.i.i.i = phi i8 [ %i.aa, %bb.f ], [ 0, %.thread.i.i.i.i ], [ 0, %split.i.i.i.i ], [ 0, %.loopexit196.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !676
  store ptr %i.y, ptr %i.a, align 8, !noalias !676
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @2195, ptr %i.ci, align 8, !noalias !676
  %i.cj = invoke noundef ptr @"_ZN67_$LT$rustls..conn..connection..Writer$u20$as$u20$std..io..Write$GT$5flush17h71137fecd459de7dE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc91.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !674 ; 2 uses

.noexc91.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.cj, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !676
  br i1 %.not.i.i.i.i, label %bb.o, label %.loopexit182.i.i.i

bb.o:                                             ; preds = %.noexc91.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !676, !noundef !45
  %.not11.i.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not11.i.i.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = invoke fastcc { i64, ptr } @"_ZN12tokio_rustls6common20Stream$LT$IO$C$C$GT$8write_io17hf4cda4144493f4f5E"(ptr nonnull %i.p, ptr nonnull %i.y, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc92.i.i.i unwind label %.loopexit.i.i.i, !noalias !674 ; 2 uses

.noexc92.i.i.i:                                   ; preds = %bb.q
  %i.cn = extractvalue { i64, ptr } %i.cm, 0
  %i.co = extractvalue { i64, ptr } %i.cm, 1      ; 3 uses
  switch i64 %i.cn, label %bb.r [
    i64 2, label %bb.t
    i64 0, label %bb.s
  ]

bb.r:                                             ; preds = %.noexc92.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  br label %.loopexit182.i.i.i

bb.s:                                             ; preds = %.noexc92.i.i.i
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %.loopexit182.i.i.i, label %bb.p

bb.t:                                             ; preds = %.noexc92.i.i.i
  store i8 %.sroa.13.0.lcssa.i.i.i, ptr %i.z, align 8, !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.b, ptr noundef nonnull align 8 dereferenceable(1208) %i.p, i64 1208, i1 false), !noalias !668
  invoke fastcc void @"_ZN4core3ptr147drop_in_place$LT$tokio_rustls..common..handshake..MidHandshake$LT$tokio_rustls..server..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$$GT$17h887e78f26cf4af9bE"(ptr noalias noundef nonnull align 8 dereferenceable(1208) %i.r)
          to label %bb.y unwind label %bb.x, !noalias !677

.loopexit182.i.i.i:                               ; preds = %bb.s, %bb.r, %.noexc91.i.i.i
  %.sroa.6.0.i.ph.ph.i.i.i = phi ptr [ %i.cj, %.noexc91.i.i.i ], [ %i.co, %bb.r ], [ inttoptr (i64 98784247811 to ptr), %bb.s ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !668
  store ptr %.sroa.6.0.i.ph.ph.i.i.i, ptr %i.e, align 8, !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.c, ptr noundef nonnull align 8 dereferenceable(1208) %i.p, i64 1208, i1 false), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !668
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  invoke void @"_ZN4core3ptr108drop_in_place$LT$rustls..conn..ConnectionCommon$LT$rustls..server..server_conn..ServerConnectionData$GT$$GT$17h47960af765b77812E"(ptr noalias noundef nonnull align 8 dereferenceable(1168) %i.cq)
          to label %"_ZN104_$LT$tokio_rustls..server..TlsStream$LT$IO$GT$$u20$as$u20$tokio_rustls..common..handshake..IoSession$GT$7into_io17hdb32a421e8f2f4dbE.exit.i.i.i" unwind label %bb.v, !noalias !674

bb.u:                                             ; preds = %bb.p
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.p, align 8, !noalias !678
  %.sroa.12.0.copyload3.i.i = load ptr, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !678
  %.sroa.17.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.0..sroa_idx4.i.i, i64 32, i1 false), !noalias !678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.21.i.i, ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.620.0..sroa_idx.i.i.i, i64 1160, i1 false), !noalias !678
  br label %"_ZN104_$LT$tokio_rustls..common..handshake..MidHandshake$LT$IS$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h77985b3c5a77b5ecE.exit.i.i"

bb.v:                                             ; preds = %.loopexit182.i.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #44
          to label %.thread161.i.i.i unwind label %bb.w, !noalias !674

"_ZN104_$LT$tokio_rustls..server..TlsStream$LT$IO$GT$$u20$as$u20$tokio_rustls..common..handshake..IoSession$GT$7into_io17hdb32a421e8f2f4dbE.exit.i.i.i": ; preds = %.loopexit182.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !668
  br label %"_ZN104_$LT$tokio_rustls..common..handshake..MidHandshake$LT$IS$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h77985b3c5a77b5ecE.exit.thread.i.i"

bb.w:                                             ; preds = %bb.ay, %bb.ai, %.thread143.i.i.i, %.loopexit.split-lp.i.i.i, %bb.z, %bb.v
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !677
  unreachable

bb.x:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.r, ptr noundef nonnull align 8 dereferenceable(1208) %i.b, i64 1208, i1 false), !noalias !670
  br label %.thread161.i.i.i

bb.y:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.r, ptr noundef nonnull align 8 dereferenceable(1208) %i.b, i64 1208, i1 false), !noalias !670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZN104_$LT$tokio_rustls..common..handshake..MidHandshake$LT$IS$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h77985b3c5a77b5ecE.exit.thread17.i.i"

"_ZN12tokio_rustls6common20Stream$LT$IO$C$C$GT$9handshake17hdc840cbeb9efecf3E.exit.i.i.i": ; preds = %bb.n
  store i8 0, ptr %i.z, align 8, !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.f, ptr noundef nonnull align 8 dereferenceable(1208) %i.p, i64 1208, i1 false), !noalias !668
  invoke fastcc void @"_ZN4core3ptr147drop_in_place$LT$tokio_rustls..common..handshake..MidHandshake$LT$tokio_rustls..server..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$$GT$17h887e78f26cf4af9bE"(ptr noalias noundef nonnull align 8 dereferenceable(1208) %i.r)
          to label %bb.ab unwind label %bb.aa, !noalias !677

.loopexit186.i.i.i:                               ; preds = %bb.h, %.noexc.i.i.i, %bb.j, %.noexc86.i.i.i, %.noexc87.i.i.i, %.noexc88.i.i.i
  %.sroa.11116.0.ph.i.i.i = phi i64 [ 98784247811, %bb.j ], [ %i.bw, %.noexc87.i.i.i ], [ %i.ce, %.noexc88.i.i.i ], [ %i.ba, %.noexc86.i.i.i ], [ %i.at, %.noexc.i.i.i ], [ 98784247811, %bb.h ]
  %i.cu = inttoptr i64 %.sroa.11116.0.ph.i.i.i to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !668
  store ptr %i.cu, ptr %i.i, align 8, !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.g, ptr noundef nonnull align 8 dereferenceable(1208) %i.p, i64 1208, i1 false), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !668
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke void @"_ZN4core3ptr108drop_in_place$LT$rustls..conn..ConnectionCommon$LT$rustls..server..server_conn..ServerConnectionData$GT$$GT$17h47960af765b77812E"(ptr noalias noundef nonnull align 8 dereferenceable(1168) %i.cv)
          to label %"_ZN104_$LT$tokio_rustls..server..TlsStream$LT$IO$GT$$u20$as$u20$tokio_rustls..common..handshake..IoSession$GT$7into_io17hdb32a421e8f2f4dbE.exit95.i.i.i" unwind label %bb.z, !noalias !674

.loopexit196.i.i.i:                               ; preds = %bb.n
  %.pre.i.i.i = load i8, ptr %i.ac, align 1, !range !52, !noalias !668
  %i.cw = trunc nuw i8 %i.cf to i1
  %i.cx = trunc nuw i8 %.pre.i.i.i to i1
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %._crit_edge.i.i.i, label %.backedge

bb.z:                                             ; preds = %.loopexit186.i.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #44
          to label %.thread161.i.i.i unwind label %bb.w, !noalias !674

"_ZN104_$LT$tokio_rustls..server..TlsStream$LT$IO$GT$$u20$as$u20$tokio_rustls..common..handshake..IoSession$GT$7into_io17hdb32a421e8f2f4dbE.exit95.i.i.i": ; preds = %.loopexit186.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !668
  br label %"_ZN104_$LT$tokio_rustls..common..handshake..MidHandshake$LT$IS$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h77985b3c5a77b5ecE.exit.thread.i.i"

bb.aa:                                            ; preds = %"_ZN12tokio_rustls6common20Stream$LT$IO$C$C$GT$9handshake17hdc840cbeb9efecf3E.exit.i.i.i"
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.r, ptr noundef nonnull align 8 dereferenceable(1208) %i.f, i64 1208, i1 false), !noalias !670
  br label %.thread161.i.i.i

bb.ab:                                            ; preds = %"_ZN12tokio_rustls6common20Stream$LT$IO$C$C$GT$9handshake17hdc840cbeb9efecf3E.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.r, ptr noundef nonnull align 8 dereferenceable(1208) %i.f, i64 1208, i1 false), !noalias !670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %"_ZN104_$LT$tokio_rustls..common..handshake..MidHandshake$LT$IS$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h77985b3c5a77b5ecE.exit.thread17.i.i"

.thread161.i.i.i:                                 ; preds = %bb.ay, %.body105.thread.i.i.i, %.thread157.i.i.i, %bb.ai, %.loopexit.split-lp.i.i.i, %bb.aa, %bb.z, %bb.x, %bb.v
  %.pn81.pn.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ], [ %i.dk, %bb.ai ], [ %i.dc, %bb.ay ], [ %i.fe, %.body105.thread.i.i.i ], [ %i.cr, %bb.v ], [ %i.ct, %bb.x ], [ %i.cz, %bb.z ], [ %i.da, %bb.aa ], [ %i.dt, %.thread157.i.i.i ]
  resume { ptr, i32 } %.pn81.pn.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.q
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %bb.l
  %lpad.loopexit183.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit187.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i
  %lpad.loopexit190.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i: ; preds = %._crit_edge.i.i.i, %.thread69.i.i.i.i
  %lpad.loopexit.split-lp191.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit183.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit187.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit190.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp191.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$tokio_rustls..server..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h4635cea1d1c4a5cbE"(ptr noalias noundef align 8 dereferenceable(1208) %i.p) #44
          to label %.thread161.i.i.i unwind label %bb.w, !noalias !674

bb.ac:                                            ; preds = %bb.ag, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !668
  store ptr %i.o, ptr %i.l, align 8, !noalias !668
  store ptr %2, ptr %i.t, align 8, !noalias !668
  %i.db = invoke { i64, ptr } @_ZN6rustls6server11server_conn10connection13AcceptedAlert5write17he69f05bf566ed295E(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @21)
          to label %bb.ad unwind label %.thread143.i.i.i, !noalias !674 ; 2 uses

.thread143.i.i.i:                                 ; preds = %bb.ac
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #44
          to label %bb.ay unwind label %bb.w, !noalias !674

bb.ad:                                            ; preds = %bb.ac
  %i.dd = extractvalue { i64, ptr } %i.db, 0
  %i.de = extractvalue { i64, ptr } %i.db, 1      ; 10 uses
  %i.df = trunc nuw i64 %i.dd to i1
  br i1 %i.df, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dg = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dh = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr %i.de), !noalias !674
  %i.di = icmp eq i8 %i.dh, 13
  br i1 %i.di, label %bb.ah, label %bb.as

bb.af:                                            ; preds = %bb.ad
  %i.dj = icmp eq ptr %i.de, null
  br i1 %i.dj, label %.loopexit197.i.i.i, label %bb.ag

.loopexit197.i.i.i:                               ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !678
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit107.i.i.i"

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !668
  br label %bb.ac

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !668
  store ptr %i.de, ptr %i.k, align 8, !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.524.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.626.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.524.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.626.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !668
  invoke fastcc void @"_ZN4core3ptr147drop_in_place$LT$tokio_rustls..common..handshake..MidHandshake$LT$tokio_rustls..server..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$$GT$17h887e78f26cf4af9bE"(ptr noalias noundef nonnull align 8 dereferenceable(1208) %i.r)
          to label %bb.aj unwind label %bb.ai, !noalias !677

bb.ai:                                            ; preds = %bb.ah
  %i.dk = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %i.r, align 8, !alias.scope !669, !noalias !670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.524.i.i.i, i64 32, i1 false), !noalias !670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.626.i.i.i, i64 56, i1 false), !noalias !670
  store ptr %.sroa.1013.0.copyload.i.i.i, ptr %.sroa.1013.0..sroa_idx.i.i.i, align 8, !alias.scope !669, !noalias !670
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #44
          to label %.thread161.i.i.i unwind label %bb.w, !noalias !677

bb.aj:                                            ; preds = %bb.ah
  store i64 3, ptr %i.r, align 8, !alias.scope !669, !noalias !670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.524.i.i.i, i64 32, i1 false), !noalias !670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.626.i.i.i, i64 56, i1 false), !noalias !670
  store ptr %.sroa.1013.0.copyload.i.i.i, ptr %.sroa.1013.0..sroa_idx.i.i.i, align 8, !alias.scope !669, !noalias !670
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.626.i.i.i)
  %i.dl = and i64 %i.dg, 3
  switch i64 %i.dl, label %default.unreachable [
    i64 2, label %.critedge.i.i.i
    i64 3, label %bb.ak
    i64 0, label %.critedge.i.i.i
    i64 1, label %bb.al
  ], !prof !53

default.unreachable:                              ; preds = %bb.as, %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.dm = icmp ult ptr %i.de, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.dm)
  br label %.critedge.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.dn = getelementptr i8, ptr %i.de, i64 -1     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dn) ]
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.dn, align 8, !noalias !679 ; 5 uses
  %i.do = getelementptr i8, ptr %i.de, i64 7
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.do, align 8, !noalias !679, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.dp = load ptr, ptr %.val1.i.i.i.i.i.i.i.i, align 8, !invariant.load !45, !noalias !679 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i) ]
  invoke void %i.dp(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i)
          to label %bb.an unwind label %bb.ao, !noalias !679

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !range !46, !invariant.load !45, !noalias !679
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i) ]
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i) #38, !noalias !679
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i.i"

bb.ao:                                            ; preds = %bb.am
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !46, !invariant.load !45, !noalias !679
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %.thread157.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ao
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i) #38, !noalias !679
  br label %.thread157.i.i.i

.thread157.i.i.i:                                 ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i", %bb.ao
  call void @mi_free(ptr noundef nonnull %i.dn) #38, !noalias !679
  br label %.thread161.i.i.i

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.an
  call void @mi_free(ptr noundef nonnull %i.dn) #38, !noalias !679
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i.i", %bb.ak, %bb.aj, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !668
  br label %"_ZN4core3ptr51drop_in_place$LT$rustls..vecbuf..ChunkVecBuffer$GT$17hc8a746004fcfa8beE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit107.i.i.i": ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i103.i.i.i", %bb.at, %bb.as, %bb.as, %.loopexit197.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !668
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !683, !noalias !668, !noundef !45 ; 4 uses
  %i.ea = icmp eq i64 %i.dz, 0
  %.val.pre.i.i.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !684, !noalias !668 ; 5 uses
  br i1 %i.ea, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c40d65d64bff782E.exit.i.i.i.i.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17hde71e6b77a15160bE.exit.i.i.i.i.i.i"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17hde71e6b77a15160bE.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit107.i.i.i"
  %i.eb = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.val1.i.i.i.i.i.i = load i64, ptr %i.eb, align 8, !alias.scope !683, !noalias !668 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.val1.i.i.i.i.i.i, %.val.pre.i.i.i.i.i
  %i.ec = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %.val.pre.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = sub nuw i64 %.val1.i.i.i.i.i.i, %i.ec ; 5 uses
  %i.ed = sub i64 %.val.pre.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp ult i64 %i.ed, %i.dz ; 2 uses
  %i.ee = add i64 %.sroa.0.0.i.i.i.i.i.i.i, %i.dz
  %.sroa.58.0.i.i.i.i.i.i = select i1 %.not11.i.i.i.i.i.i.i, i64 %.val.pre.i.i.i.i.i, i64 %i.ee ; 2 uses
  %.sroa.11.0.i.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.dz, i64 %i.ed)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !683, !noalias !668, !nonnull !45, !noundef !45 ; 2 uses
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %.sroa.0.0.i.i.i.i.i.i.i
  %i.ei = sub i64 %.sroa.58.0.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.ej = icmp eq i64 %.sroa.58.0.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i
  br i1 %i.ej, label %"_ZN4core3ptr56drop_in_place$LT$$u5b$alloc..vec..Vec$LT$u8$GT$$u5d$$GT$17h95da082c306c2a8eE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17hde71e6b77a15160bE.exit.i.i.i.i.i.i", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.el, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i.i.i.i.i" ], [ 0, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17hde71e6b77a15160bE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.el = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.ek, align 8, !alias.scope !685, !noalias !686
  %i.em = icmp eq i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %i.em, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i.i.i.i.i", label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.en = getelementptr i8, ptr %i.ek, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.en, align 8, !alias.scope !685, !noalias !686, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val9.i.i.i.i.i.i.i) #38, !noalias !687
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i.i.i.i.i": ; preds = %bb.ap, %.lr.ph.i.i.i.i.i.i.i
  %i.eo = icmp eq i64 %i.el, %i.ei
  br i1 %i.eo, label %"_ZN4core3ptr56drop_in_place$LT$$u5b$alloc..vec..Vec$LT$u8$GT$$u5d$$GT$17h95da082c306c2a8eE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN4core3ptr56drop_in_place$LT$$u5b$alloc..vec..Vec$LT$u8$GT$$u5d$$GT$17h95da082c306c2a8eE.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i.i.i.i.i", %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17hde71e6b77a15160bE.exit.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c40d65d64bff782E.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %"_ZN4core3ptr56drop_in_place$LT$$u5b$alloc..vec..Vec$LT$u8$GT$$u5d$$GT$17h95da082c306c2a8eE.exit.i.i.i.i.i.i", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eq, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr56drop_in_place$LT$$u5b$alloc..vec..Vec$LT$u8$GT$$u5d$$GT$17h95da082c306c2a8eE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.eq = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ep, align 8, !alias.scope !688, !noalias !686
  %i.er = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.er, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i.i.i.i.i.i.i", label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.es = getelementptr i8, ptr %i.ep, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.es, align 8, !alias.scope !688, !noalias !686, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i) #38, !noalias !689
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.aq, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.et = icmp eq i64 %i.eq, %.sroa.11.0.i.i.i.i.i.i
  br i1 %i.et, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c40d65d64bff782E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c40d65d64bff782E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr56drop_in_place$LT$$u5b$alloc..vec..Vec$LT$u8$GT$$u5d$$GT$17h95da082c306c2a8eE.exit.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit107.i.i.i"
  %i.eu = icmp eq i64 %.val.pre.i.i.i.i.i, 0
  br i1 %i.eu, label %"_ZN4core3ptr51drop_in_place$LT$rustls..vecbuf..ChunkVecBuffer$GT$17hc8a746004fcfa8beE.exit.i.i.i", label %bb.ar

bb.ar:                                            ; preds = %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c40d65d64bff782E.exit.i.i.i.i.i"
  %i.ev = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.val1.i.i.i.i.i = load ptr, ptr %i.ev, align 8, !alias.scope !684, !noalias !668, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val1.i.i.i.i.i) #38, !noalias !690
  br label %"_ZN4core3ptr51drop_in_place$LT$rustls..vecbuf..ChunkVecBuffer$GT$17hc8a746004fcfa8beE.exit.i.i.i"

bb.as:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !678
  %i.ew = and i64 %i.dg, 3
  switch i64 %i.ew, label %default.unreachable [
    i64 2, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit107.i.i.i"
    i64 3, label %bb.at
    i64 0, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit107.i.i.i"
    i64 1, label %bb.au
  ], !prof !53

bb.at:                                            ; preds = %bb.as
  %i.ex = icmp ult ptr %i.de, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.ex)
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit107.i.i.i"

bb.au:                                            ; preds = %bb.as
  %i.ey = getelementptr i8, ptr %i.de, i64 -1     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.val.i.i.i.i.i98.i.i.i = load ptr, ptr %i.ey, align 8, !noalias !691 ; 5 uses
  %i.ez = getelementptr i8, ptr %i.de, i64 7
  %.val1.i.i.i.i.i99.i.i.i = load ptr, ptr %i.ez, align 8, !noalias !691, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.fa = load ptr, ptr %.val1.i.i.i.i.i99.i.i.i, align 8, !invariant.load !45, !noalias !691 ; 2 uses
  %.not.i.i.i.i.i.i.i100.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i.i.i100.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i98.i.i.i) ]
  invoke void %i.fa(ptr noundef nonnull %.val.i.i.i.i.i98.i.i.i)
          to label %bb.aw unwind label %bb.ax, !noalias !691

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i99.i.i.i, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !range !46, !invariant.load !45, !noalias !691
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i103.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i102.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i102.i.i.i": ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i98.i.i.i) ]
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i98.i.i.i) #38, !noalias !691
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i103.i.i.i"

bb.ax:                                            ; preds = %bb.av
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i99.i.i.i, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !range !46, !invariant.load !45, !noalias !691
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %.body105.thread.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i101.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i101.i.i.i": ; preds = %bb.ax
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i98.i.i.i) #38, !noalias !691
  br label %.body105.thread.i.i.i

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i103.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i102.i.i.i", %bb.aw
  call void @mi_free(ptr noundef nonnull %i.ey) #38, !noalias !691
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit107.i.i.i"

"_ZN4core3ptr51drop_in_place$LT$rustls..vecbuf..ChunkVecBuffer$GT$17hc8a746004fcfa8beE.exit.i.i.i": ; preds = %bb.ar, %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c40d65d64bff782E.exit.i.i.i.i.i", %.critedge.i.i.i
  %.sroa.12.1.i.i = phi ptr [ undef, %.critedge.i.i.i ], [ %.sroa.1013.0.copyload.i.i.i, %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c40d65d64bff782E.exit.i.i.i.i.i" ], [ %.sroa.1013.0.copyload.i.i.i, %bb.ar ]
  %.sroa.0.1.i.i = phi i64 [ 3, %.critedge.i.i.i ], [ 2, %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c40d65d64bff782E.exit.i.i.i.i.i" ], [ 2, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !668
  br label %"_ZN104_$LT$tokio_rustls..common..handshake..MidHandshake$LT$IS$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h77985b3c5a77b5ecE.exit.i.i"

.body105.thread.i.i.i:                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i101.i.i.i", %bb.ax
  call void @mi_free(ptr noundef nonnull %i.ey) #38, !noalias !691
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$rustls..vecbuf..ChunkVecBuffer$GT$17hc8a746004fcfa8beE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.n), !noalias !674
  br label %.thread161.i.i.i

bb.ay:                                            ; preds = %.thread143.i.i.i
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$rustls..vecbuf..ChunkVecBuffer$GT$17hc8a746004fcfa8beE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.n), !noalias !674
  invoke void @"_ZN4core3ptr55drop_in_place$LT$tokio..net..tcp..stream..TcpStream$GT$17hf2b40bbc15db5d32E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o) #44
          to label %.thread161.i.i.i unwind label %bb.w, !noalias !674

"_ZN104_$LT$tokio_rustls..common..handshake..MidHandshake$LT$IS$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h77985b3c5a77b5ecE.exit.thread.i.i": ; preds = %"_ZN104_$LT$tokio_rustls..server..TlsStream$LT$IO$GT$$u20$as$u20$tokio_rustls..common..handshake..IoSession$GT$7into_io17hdb32a421e8f2f4dbE.exit95.i.i.i", %"_ZN104_$LT$tokio_rustls..server..TlsStream$LT$IO$GT$$u20$as$u20$tokio_rustls..common..handshake..IoSession$GT$7into_io17hdb32a421e8f2f4dbE.exit.i.i.i", %bb.d
  %.sroa.12.2.ph.i.i = phi ptr [ %.sroa.8.0.copyload.i.i.i, %bb.d ], [ %i.cu, %"_ZN104_$LT$tokio_rustls..server..TlsStream$LT$IO$GT$$u20$as$u20$tokio_rustls..common..handshake..IoSession$GT$7into_io17hdb32a421e8f2f4dbE.exit95.i.i.i" ], [ %.sroa.6.0.i.ph.ph.i.i.i, %"_ZN104_$LT$tokio_rustls..server..TlsStream$LT$IO$GT$$u20$as$u20$tokio_rustls..common..handshake..IoSession$GT$7into_io17hdb32a421e8f2f4dbE.exit.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !668
  br label %"_ZN87_$LT$tokio_rustls..server..Accept$LT$IO$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h456e8e0fb6234ca9E.exit.thread15.i"

"_ZN104_$LT$tokio_rustls..common..handshake..MidHandshake$LT$IS$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h77985b3c5a77b5ecE.exit.thread17.i.i": ; preds = %bb.ab, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !668
  br label %"_ZN87_$LT$tokio_rustls..server..Accept$LT$IO$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h456e8e0fb6234ca9E.exit.thread.i"

"_ZN104_$LT$tokio_rustls..common..handshake..MidHandshake$LT$IS$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h77985b3c5a77b5ecE.exit.i.i": ; preds = %"_ZN4core3ptr51drop_in_place$LT$rustls..vecbuf..ChunkVecBuffer$GT$17hc8a746004fcfa8beE.exit.i.i.i", %bb.u
  %.sroa.12.2.i.i = phi ptr [ %.sroa.12.0.copyload3.i.i, %bb.u ], [ %.sroa.12.1.i.i, %"_ZN4core3ptr51drop_in_place$LT$rustls..vecbuf..ChunkVecBuffer$GT$17hc8a746004fcfa8beE.exit.i.i.i" ] ; 2 uses
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.u ], [ %.sroa.0.1.i.i, %"_ZN4core3ptr51drop_in_place$LT$rustls..vecbuf..ChunkVecBuffer$GT$17hc8a746004fcfa8beE.exit.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !668
  switch i64 %.sroa.0.2.i.i, label %"_ZN100_$LT$actix_tls..accept..rustls_0_23..AcceptFut$LT$IO$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h9b7c266ffc955d44E.exit" [
    i64 3, label %"_ZN87_$LT$tokio_rustls..server..Accept$LT$IO$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h456e8e0fb6234ca9E.exit.thread.i"
    i64 2, label %"_ZN87_$LT$tokio_rustls..server..Accept$LT$IO$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h456e8e0fb6234ca9E.exit.thread15.i"
  ]

"_ZN87_$LT$tokio_rustls..server..Accept$LT$IO$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h456e8e0fb6234ca9E.exit.thread15.i": ; preds = %"_ZN104_$LT$tokio_rustls..common..handshake..MidHandshake$LT$IS$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h77985b3c5a77b5ecE.exit.i.i", %"_ZN104_$LT$tokio_rustls..common..handshake..MidHandshake$LT$IS$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h77985b3c5a77b5ecE.exit.thread.i.i"
  %.sroa.12.215.i.i = phi ptr [ %.sroa.12.2.ph.i.i, %"_ZN104_$LT$tokio_rustls..common..handshake..MidHandshake$LT$IS$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h77985b3c5a77b5ecE.exit.thread.i.i" ], [ %.sroa.12.2.i.i, %"_ZN104_$LT$tokio_rustls..common..handshake..MidHandshake$LT$IS$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h77985b3c5a77b5ecE.exit.i.i" ] ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i.i, i64 32, i1 false), !noalias !692
  store ptr %.sroa.12.215.i.i, ptr %i.q, align 8, !noalias !692
  call void @"_ZN4core3ptr55drop_in_place$LT$tokio..net..tcp..stream..TcpStream$GT$17hf2b40bbc15db5d32E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i), !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !692
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.215.i.i) ]
  br label %"_ZN100_$LT$actix_tls..accept..rustls_0_23..AcceptFut$LT$IO$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h9b7c266ffc955d44E.exit.thread"

"_ZN87_$LT$tokio_rustls..server..Accept$LT$IO$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h456e8e0fb6234ca9E.exit.thread.i": ; preds = %"_ZN104_$LT$tokio_rustls..common..handshake..MidHandshake$LT$IS$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h77985b3c5a77b5ecE.exit.i.i", %"_ZN104_$LT$tokio_rustls..common..handshake..MidHandshake$LT$IS$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h77985b3c5a77b5ecE.exit.thread17.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i)
end_hunk_0
