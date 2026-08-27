Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/milli-dcad8bcf446596ae.milli.ae659b5d16487f95-cgu.0?download=true
inline.NumInlined: 106527
inline.NumDeleted: 43100
loop-unroll.NumCompletelyUnrolled: 378
loop-unroll.NumRuntimeUnrolled: 1730
loop-unroll.NumUnrolled: 2138
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN10rayon_core11thread_pool10ThreadPool7install28_$u7b$$u7b$closure$u7d$$u7d$17h1b01989bd6e873ecE":bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.i.i) ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i.i, i64 16
  invoke fastcc void @_ZN17crossbeam_channel7flavors2at7Channel4recv17hd491b3ee12ebfee2E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noundef nonnull align 8 %i.ff, i64 undef, i32 noundef 1000000000)
          to label %.noexc387.i unwind label %.loopexit.split-lp.i, !noalias !31201

.noexc387.i:                                      ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !31250
  br label %.noexc379.invoke.i

bb.aq:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !31247
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.i.i) ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i.i, i64 16
  invoke fastcc void @_ZN17crossbeam_channel7flavors4tick7Channel4recv17h19a0874c12556ca5E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.fg, i64 undef, i32 noundef 1000000000)
          to label %.noexc389.i unwind label %.loopexit.split-lp.i, !noalias !31201

.noexc389.i:                                      ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !31253
  br label %.noexc379.invoke.i

bb.ar:                                            ; preds = %bb.al
  invoke void @_ZN17crossbeam_channel5utils11sleep_until17h02387dc518c1953fE(i64 undef, i32 noundef 1000000000)
          to label %.noexc391.i unwind label %.loopexit484.i, !noalias !31201

.noexc384.i:                                      ; preds = %bb.ao, %bb.an, %bb.am
  %i.fh = load i64, ptr %i.h, align 8, !range !31256, !noalias !31247, !noundef !10 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, -9223372036854775793
  br i1 %i.fi, label %.noexc391.i, label %bb.as

.noexc391.i:                                      ; preds = %.noexc384.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !31247
  store i8 1, ptr %i.cn, align 8, !noalias !31201
  br label %bb.at

bb.as:                                            ; preds = %.noexc384.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %i.cn, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.6.0..sroa_idx2.i.i, i64 408, i1 false), !noalias !31201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !31247
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.noexc391.i
  %.sink.i.i = phi i64 [ %i.fh, %bb.as ], [ -9223372036854775793, %.noexc391.i ] ; 2 uses
  store i64 %.sink.i.i, ptr %i.w, align 8, !noalias !31201
  br label %bb.av

._crit_edge.i:                                    ; preds = %bb.dp, %_ZN10rayon_core5spawn5spawn17he821af4dd155f57bE.exit.i
  store i64 95, ptr %0, align 8, !alias.scope !31198, !noalias !31257
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !31198, !noalias !31257
  br label %"_ZN5milli6update15index_documents24IndexDocuments$LT$FP$GT$11execute_raw28_$u7b$$u7b$closure$u7d$$u7d$17h5c7e9c354edf67a7E.exit"

bb.au:                                            ; preds = %bb.eu, %bb.dx, %.thread471.i, %bb.dq, %bb.dn, %bb.dj, %.body429.i, %.body429.i, %.body429.i, %.loopexit.split-lp.i, %.loopexit484.i
  %.pn370.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread471.i ], [ %lpad.thr_comm.split-lp.i, %bb.eu ], [ %lpad.thr_comm.split-lp.i, %bb.dx ], [ %i.kr, %bb.dq ], [ %i.kn, %bb.dn ], [ %.pn362.i, %bb.dj ], [ %.pn362.i, %.body429.i ], [ %.pn362.i, %.body429.i ], [ %.pn362.i, %.body429.i ], [ %lpad.loopexit.i, %.loopexit484.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr170drop_in_place$LT$crossbeam_channel..channel..Receiver$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h88bbf26f993446cbE"(ptr noalias noundef align 8 dereferenceable(16) %i.ba) #107
          to label %common.resume.i unwind label %bb.cm, !noalias !31201

.loopexit484.i:                                   ; preds = %bb.ew, %_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator11pop_longest17ha049d4662eb98a15E.exit.i, %bb.ar, %bb.ao, %bb.an, %bb.am, %bb.ak, %bb.ah, %bb.ag, %bb.af, %.noexc.i, %"_ZN84_$LT$crossbeam_channel..channel..Receiver$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h48aa12a50fcf96ccE.exit.i"
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp.i:                             ; preds = %bb.dd, %bb.aq, %bb.ap, %bb.aj, %.noexc379.invoke.i, %bb.ai
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

thread-pre-split.i:                               ; preds = %bb.ah, %bb.ag, %bb.af
  %.pr.i = load i64, ptr %i.w, align 8, !noalias !31201
  br label %bb.av

bb.av:                                            ; preds = %thread-pre-split.i, %bb.at
  %i.fj = phi i64 [ %.pr.i, %thread-pre-split.i ], [ %.sink.i.i, %bb.at ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !31235
  %i.fk = icmp eq i64 %i.fj, -9223372036854775793
  br i1 %i.fk, label %._crit_edge750.i, label %bb.bf

._crit_edge750.i:                                 ; preds = %bb.av
  %.pre751.i = load i8, ptr %i.cn, align 8, !range !405, !noalias !31201
  %i.fl = trunc nuw i8 %.pre751.i to i1
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge750.i, %.thread.i
  %i.fm = phi i1 [ %i.fl, %._crit_edge750.i ], [ false, %.thread.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !31258)
  %i.fn = load ptr, ptr %i.dd, align 8, !alias.scope !31258, !noalias !31261, !nonnull !10, !noundef !10 ; 7 uses
  %i.fo = load i64, ptr %i.de, align 8, !alias.scope !31258, !noalias !31261, !noundef !10 ; 8 uses
  %.idx.i.i = mul nuw nsw i64 %i.fo, 24           ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx.i.i
  %i.fq = icmp eq i64 %i.fo, 0
  br i1 %i.fq, label %.loopexit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 24 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !31263, !noalias !31266, !noundef !10 ; 4 uses
  %i.fu = icmp ult i64 %i.ft, 22171567396285519
  call void @llvm.assume(i1 %i.fu)
  %i.fv = icmp eq i64 %i.fo, 1
  br i1 %i.fv, label %.lr.ph.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %gepdiff.i.i = add nsw i64 %.idx.i.i, -24
  %i.fw = udiv exact i64 %gepdiff.i.i, 24         ; 3 uses
  %xtraiter = and i64 %i.fw, 1
  %i.fx = icmp eq i64 %i.fo, 2
  br i1 %i.fx, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ay
  %unroll_iter = and i64 %i.fw, 1152921504606846974
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.new
  %.sroa.010.0.i.i.i.i.i = phi i64 [ 0, %.new ], [ %i.gj, %bb.az ] ; 3 uses
  %.sroa.6.0.i.i.i.i.i = phi ptr [ %i.fn, %.new ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.1, %bb.az ]
  %.sroa.07.0.i.i.i.i.i = phi i64 [ %i.ft, %.new ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.1, %bb.az ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.az ]
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %.sroa.010.0.i.i.i.i.i ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !31269, !noalias !31274, !noundef !10 ; 3 uses
  %i.gb = icmp ult i64 %i.ga, 22171567396285519
  call void @llvm.assume(i1 %i.gb)
  %i.gc = icmp ugt i64 %.sroa.07.0.i.i.i.i.i, %i.ga
  %.sroa.3.0.i.i.i.i.i.i.i.i = select i1 %i.gc, ptr %.sroa.6.0.i.i.i.i.i, ptr %i.fy
  %.sroa.0.0.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.07.0.i.i.i.i.i, i64 range(i64 0, 22171567396285519) %i.ga) ; 2 uses
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %.sroa.010.0.i.i.i.i.i ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !31269, !noalias !31274, !noundef !10 ; 3 uses
  %i.gh = icmp ult i64 %i.gg, 22171567396285519
  call void @llvm.assume(i1 %i.gh)
  %i.gi = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %i.gg
  %.sroa.3.0.i.i.i.i.i.i.i.i.1 = select i1 %i.gi, ptr %.sroa.3.0.i.i.i.i.i.i.i.i, ptr %i.ge ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.1 = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i.i, i64 range(i64 0, 22171567396285519) %i.gg) ; 2 uses
  %i.gj = add nuw i64 %.sroa.010.0.i.i.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.i.i.unr-lcssa, label %bb.az

_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.i.i.unr-lcssa: ; preds = %bb.az
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.i.i.unr-lcssa, %bb.ay
  %.sroa.010.0.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.ay ], [ %i.gj, %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.i.i.unr-lcssa ]
  %.sroa.6.0.i.i.i.i.i.epil.init = phi ptr [ %i.fn, %bb.ay ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.1, %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.i.i.unr-lcssa ]
  %.sroa.07.0.i.i.i.i.i.epil.init = phi i64 [ %i.ft, %bb.ay ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.1, %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.i.i.unr-lcssa ]
  %lcmp.mod210 = trunc i64 %i.fw to i1
  call void @llvm.assume(i1 %lcmp.mod210)
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %.sroa.010.0.i.i.i.i.i.epil.init ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !31269, !noalias !31274, !noundef !10 ; 2 uses
  %i.gn = icmp ult i64 %i.gm, 22171567396285519
  call void @llvm.assume(i1 %i.gn)
  %i.go = icmp ugt i64 %.sroa.07.0.i.i.i.i.i.epil.init, %i.gm
  %.sroa.3.0.i.i.i.i.i.i.i.i.epil = select i1 %i.go, ptr %.sroa.6.0.i.i.i.i.i.epil.init, ptr %i.gk
  br label %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.i.i

_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.i.i: ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.sroa.3.0.i.i.i.i.i.i.i.i.lcssa = phi ptr [ %.sroa.3.0.i.i.i.i.i.i.i.i.1, %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.i.i.unr-lcssa ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.epil, %.epil.preheader ]
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i.i.i.i.i.i.lcssa, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !31280, !noalias !31283
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.i.i, %bb.ax
  %i.gp = phi i64 [ %.pre.i.i, %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.i.i ], [ %i.ft, %bb.ax ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31280)
  %i.gq = icmp ult i64 %i.gp, 22171567396285519
  call void @llvm.assume(i1 %i.gq)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %.lr.ph.i.i.i
  %.sroa.02.012.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.gw, %bb.bb ] ; 4 uses
  %i.gr = phi ptr [ %i.fn, %.lr.ph.i.i.i ], [ %i.gv, %bb.bb ] ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  %.val8.i.i.i = load i64, ptr %i.gs, align 8, !noalias !31285, !noundef !10 ; 2 uses
  %i.gt = icmp ult i64 %.val8.i.i.i, 22171567396285519
  call void @llvm.assume(i1 %i.gt)
  %i.gu = icmp eq i64 %i.gp, %.val8.i.i.i
  br i1 %i.gu, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 24 ; 2 uses
  %i.gw = add nuw nsw i64 %.sroa.02.012.i.i.i, 1
  %i.gx = icmp eq ptr %i.gv, %i.fp
  br i1 %i.gx, label %.loopexit.i, label %bb.ba

bb.bc:                                            ; preds = %bb.ba
  %i.gy = icmp samesign ult i64 %.sroa.02.012.i.i.i, %i.fo
  call void @llvm.assume(i1 %i.gy)
  call void @llvm.experimental.noalias.scope.decl(metadata !31286)
  %i.gz = icmp ult i64 %i.fo, 384307168202282326
  call void @llvm.assume(i1 %i.gz)
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %.sroa.02.012.i.i.i ; 5 uses
  %.sroa.015.0.copyload.i.i = load i64, ptr %i.ha, align 8, !noalias !31289 ; 4 uses
  %.sroa.4.0..sroa_idx.i392.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i392.i, align 8, !noalias !31289 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !31289 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = xor i64 %.sroa.02.012.i.i.i, -1
  %i.hd = add nsw i64 %i.fo, %i.hc
  %i.he = mul nuw nsw i64 %i.hd, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ha, ptr nonnull align 8 %i.hb, i64 %i.he, i1 false), !noalias !31290
  %i.hf = add nsw i64 %i.fo, -1
  store i64 %i.hf, ptr %i.de, align 8, !alias.scope !31292, !noalias !31293
  %.not.i7.i.i = icmp eq i64 %.sroa.015.0.copyload.i.i, -9223372036854775808
  br i1 %.not.i7.i.i, label %.loopexit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hg = icmp ult i64 %.sroa.5.0.copyload.i.i, 22171567396285519
  call void @llvm.assume(i1 %i.hg)
  %.not1.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i.i, 0
  br i1 %.not1.i.i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9e20b9daec49e144E.exit.i.i.i.i", label %_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator11pop_longest17ha049d4662eb98a15E.exit.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9e20b9daec49e144E.exit.i.i.i.i": ; preds = %bb.bd
  %i.hh = icmp eq i64 %.sroa.015.0.copyload.i.i, 0
  br i1 %i.hh, label %.loopexit.i, label %bb.be

bb.be:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9e20b9daec49e144E.exit.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i) ]
  %i.hi = mul nuw i64 %.sroa.015.0.copyload.i.i, 416
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %i.hi, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !31294
  br label %.loopexit.i

bb.bf:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !31201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !31201
  %i.hj = icmp eq i64 %i.fj, -9223372036854775794
  br i1 %i.hj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.cn, i64 320, i1 false), !noalias !31257
  br label %bb.de

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.545.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.435.0..sroa_idx.i, i64 88, i1 false), !noalias !31201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.444.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(320) %i.cn, i64 320, i1 false), !noalias !31201
  store i64 %i.fj, ptr %i.ak, align 8, !noalias !31201
  %i.hk = xor i64 %i.fj, -9223372036854775808
  %i.hl = icmp slt i64 %i.fj, 0
  %i.hm = select i1 %i.hl, i64 %i.hk, i64 14
  switch i64 %i.hm, label %.critedge.i [
    i64 4, label %bb.bi
    i64 5, label %bb.bj
    i64 14, label %bb.bk
  ]

.critedge.i:                                      ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.al, ptr noundef nonnull align 8 dereferenceable(416) %i.ak, i64 416, i1 false), !noalias !31201
  br label %bb.dk

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !31201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.cn, i64 72, i1 false), !noalias !31201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !31201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.eh, i64 72, i1 false), !noalias !31201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !31201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.ei, i64 72, i1 false), !noalias !31201
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0644.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.748.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.748.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !31201
  invoke void @_ZN5milli6update15index_documents7helpers14grenad_helpers19as_cloneable_grenad17h306d7cb87355f1b8E(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cn)
          to label %bb.bm unwind label %bb.bl, !noalias !31201

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !31201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef nonnull align 8 dereferenceable(72) %i.cn, i64 72, i1 false), !noalias !31201
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0703.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6705.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7148.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7148.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !31201
  invoke void @_ZN5milli6update15index_documents7helpers14grenad_helpers19as_cloneable_grenad17h306d7cb87355f1b8E(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cn)
          to label %bb.cu unwind label %bb.ct, !noalias !31201

bb.bk:                                            ; preds = %bb.bh
  %i.hn = load i64, ptr %i.co, align 8, !noalias !31201, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !31201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.cp, i64 72, i1 false), !noalias !31201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !31201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !31201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !31201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef nonnull align 8 dereferenceable(96) %i.eg, i64 96, i1 false), !noalias !31201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !31201
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4503)
          to label %bb.df unwind label %bb.dh, !noalias !31201

.body.i:                                          ; preds = %bb.cj, %bb.cb, %bb.bz, %bb.bs, %bb.bq, %bb.bl
  %.pn355.pn.i = phi { ptr, i32 } [ %i.ho, %bb.bl ], [ %i.hs, %bb.bq ], [ %i.hv, %bb.bs ], [ %i.id, %bb.bz ], [ %i.ig, %bb.cb ], [ %i.iq, %bb.cj ]
  call fastcc void @"_ZN4core3ptr111drop_in_place$LT$grenad..reader..Reader$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$17hd0fa44c95bf99bf1E"(ptr noalias noundef align 8 dereferenceable(72) %i.ah) #107, !noalias !31201
  call fastcc void @"_ZN4core3ptr111drop_in_place$LT$grenad..reader..Reader$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$17hd0fa44c95bf99bf1E"(ptr noalias noundef align 8 dereferenceable(72) %i.ai) #107, !noalias !31201
  br label %.body429.i

bb.bl:                                            ; preds = %bb.bi
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bm:                                            ; preds = %bb.bi
  %i.hp = load i64, ptr %i.ag, align 8, !range !1815, !noalias !31201, !noundef !10 ; 2 uses
  %.not347.i = icmp eq i64 %i.hp, 97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.748.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false), !noalias !31201
  %.sroa.5724.0.copyload.i = load i64, ptr %.sroa.5724.0..sroa_idx.i, align 8, !noalias !31201 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.748.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6725.0..sroa_idx.i, i64 12, i1 false), !noalias !31201
  %.sroa.7726.0.copyload.i = load i8, ptr %.sroa.7726.0..sroa_idx.i, align 4, !noalias !31201 ; 3 uses
  %.sroa.8727.0.copyload.i = load i8, ptr %.sroa.8727.0..sroa_idx.i, align 1, !noalias !31201 ; 3 uses
  %.sroa.9728.0.copyload.i = load i16, ptr %.sroa.9728.0..sroa_idx.i, align 2, !noalias !31201 ; 2 uses
  br i1 %.not347.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.sroa.5227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.3230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.3230.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.5227.0..sroa_idx.i, i64 272, i1 false), !noalias !31257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !31201
  %.sroa.2229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2229.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.748.sroa.0.i, i64 16, i1 false), !noalias !31257
  %.sroa.2229.sroa.3.0..sroa.2229.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.2229.sroa.3.0..sroa.2229.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.748.sroa.8.i, i64 12, i1 false), !noalias !31257
  store i64 %i.hp, ptr %0, align 8, !alias.scope !31198, !noalias !31257
  %.sroa.2229.sroa.2.0..sroa.2229.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5724.0.copyload.i, ptr %.sroa.2229.sroa.2.0..sroa.2229.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !31198, !noalias !31257
  %.sroa.2229.sroa.4.0..sroa.2229.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.sroa.7726.0.copyload.i, ptr %.sroa.2229.sroa.4.0..sroa.2229.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !31198, !noalias !31257
  %.sroa.2229.sroa.5.0..sroa.2229.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 %.sroa.8727.0.copyload.i, ptr %.sroa.2229.sroa.5.0..sroa.2229.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !31198, !noalias !31257
  %.sroa.2229.sroa.6.0..sroa.2229.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 46
  store i16 %.sroa.9728.0.copyload.i, ptr %.sroa.2229.sroa.6.0..sroa.2229.0..sroa_idx.sroa_idx.i, align 2, !alias.scope !31198, !noalias !31257
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.748.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.748.sroa.8.i)
  br label %bb.co

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !31201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0644.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.748.sroa.0.i, i64 16, i1 false), !noalias !31201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.748.sroa.8.i, i64 12, i1 false), !noalias !31201
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.748.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.748.sroa.8.i)
  %i.hq = load i64, ptr %.sroa.24.0.copyload, align 8, !range !1428, !alias.scope !31300, !noalias !31201, !noundef !10 ; 2 uses
  %.not.i393.i = icmp eq i64 %i.hq, -9223372036854775808
  br i1 %.not.i393.i, label %bb.bp, label %"._ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3e5276f2f7f9c00fE.exit_crit_edge.i"

"._ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3e5276f2f7f9c00fE.exit_crit_edge.i": ; preds = %bb.bo
  %.pre747.i = load i64, ptr %.sroa.6.0..sroa_idx9.i.i, align 8, !alias.scope !31303, !noalias !31306 ; 2 uses
  %i.hr = icmp eq i64 %.pre747.i, %i.hq
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3e5276f2f7f9c00fE.exit.i"

bb.bp:                                            ; preds = %bb.bo
  store i64 0, ptr %.sroa.24.0.copyload, align 8, !alias.scope !31300, !noalias !31201
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.56.0..sroa_idx7.i.i, align 8, !alias.scope !31300, !noalias !31201
  store i64 0, ptr %.sroa.6.0..sroa_idx9.i.i, align 8, !alias.scope !31300, !noalias !31201
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3e5276f2f7f9c00fE.exit.i"

bb.bq:                                            ; preds = %bb.bu
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3e5276f2f7f9c00fE.exit.i": ; preds = %bb.bp, %"._ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3e5276f2f7f9c00fE.exit_crit_edge.i"
  %i.ht = phi i1 [ %i.hr, %"._ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3e5276f2f7f9c00fE.exit_crit_edge.i" ], [ true, %bb.bp ]
  %i.hu = phi i64 [ %.pre747.i, %"._ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3e5276f2f7f9c00fE.exit_crit_edge.i" ], [ 0, %bb.bp ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.0.sroa.9.0..sroa.8.0..sroa_idx62.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0644.i, i64 16, i1 false), !noalias !31201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx62.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.i, i64 12, i1 false), !noalias !31201
  store i64 2, ptr %i.af, align 8, !noalias !31201
  store i64 -9223372036854775808, ptr %.sroa.8.sroa.0.sroa.0.sroa.5.0..sroa.8.0..sroa_idx62.sroa_idx.i, align 8, !noalias !31201
  store i64 %.sroa.5724.0.copyload.i, ptr %.sroa.8.sroa.0.sroa.5.0..sroa.8.0..sroa_idx62.sroa_idx.i, align 8, !noalias !31201
  store i8 %.sroa.7726.0.copyload.i, ptr %.sroa.8.sroa.0.sroa.6.0..sroa.8.0..sroa_idx62.sroa_idx.i, align 8, !noalias !31201
  store i8 %.sroa.8727.0.copyload.i, ptr %.sroa.8.sroa.0.sroa.7.0..sroa.8.0..sroa_idx62.sroa_idx.i, align 1, !noalias !31201
  store i64 %.sroa.5724.0.copyload.i, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx62.sroa_idx.i, align 8, !noalias !31201
  store i8 %.sroa.7726.0.copyload.i, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx62.sroa_idx.i, align 4, !noalias !31201
  store i8 %.sroa.8727.0.copyload.i, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx62.sroa_idx.i, align 1, !noalias !31201
  store i16 %.sroa.9728.0.copyload.i, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx62.sroa_idx.i, align 2, !noalias !31201
  call void @llvm.experimental.noalias.scope.decl(metadata !31303)
  br i1 %i.ht, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3e5276f2f7f9c00fE.exit.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb04bca95bcf35a83E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.24.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4455)
          to label %bb.bu unwind label %bb.bs, !noalias !31306

bb.bs:                                            ; preds = %bb.br
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$grenad..reader..reader_cursor..ReaderCursor$LT$std..io..cursor..Cursor$LT$milli..update..index_documents..helpers..clonable_mmap..ClonableMmap$GT$$GT$$GT$17ha78218607b6b1c5aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(160) %i.af) #107
          to label %.body.i unwind label %bb.bt, !noalias !31308

bb.bt:                                            ; preds = %bb.bs
  %i.hw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !31309
  unreachable

bb.bu:                                            ; preds = %bb.br, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3e5276f2f7f9c00fE.exit.i"
  %i.hx = load ptr, ptr %.sroa.56.0..sroa_idx7.i.i, align 8, !alias.scope !31303, !noalias !31306, !nonnull !10, !noundef !10
  %i.hy = getelementptr inbounds nuw [160 x i8], ptr %i.hx, i64 %i.hu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.hy, ptr noundef nonnull readonly align 8 dereferenceable(160) %i.af, i64 160, i1 false), !noalias !31308
  %i.hz = add i64 %i.hu, 1
  store i64 %i.hz, ptr %.sroa.6.0..sroa_idx9.i.i, align 8, !alias.scope !31303, !noalias !31306
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0663.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6665.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.780.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.780.sroa.8.i)
end_hunk_0
begin_hunk_1_@"_ZN115_$LT$milli..update..new..indexer..document_operation..IndexedPayloadOperations$u20$as$u20$core..ops..bit..BitOr$GT$5bitor17h954301077290e663E":bb.a
  store i64 %i.hv, ptr %i.ht, align 8, !alias.scope !63036, !noalias !63037
  br label %"_ZN8indexmap5inner5entry26OccupiedEntry$LT$K$C$V$GT$12remove_index17h6fbc12538932f659E.exit.i"

"_ZN8indexmap5inner5entry26OccupiedEntry$LT$K$C$V$GT$12remove_index17h6fbc12538932f659E.exit.i": ; preds = %bb.bi, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hefa7f253a1d9b15aE.exit.i.i"
  %.sroa.0.0.i.i.i.i = phi i8 [ -1, %bb.bi ], [ -128, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hefa7f253a1d9b15aE.exit.i.i" ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.hi, align 1, !noalias !63038
  %i.hw = getelementptr i8, ptr %i.hl, i64 16
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.hw, align 1, !noalias !63038
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0143.0.copyload, i64 48 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !alias.scope !63036, !noalias !63037, !noundef !10
  %i.hz = add i64 %i.hy, -1                       ; 4 uses
  store i64 %i.hz, ptr %i.hx, align 8, !alias.scope !63036, !noalias !63037
  call void @llvm.experimental.noalias.scope.decl(metadata !63039)
  %i.ia = add i64 %.sroa.6145.0.copyload, 1       ; 8 uses
  %i.ib = load i64, ptr %i.eq, align 8, !alias.scope !63039, !noalias !63042, !noundef !10 ; 12 uses
  %i.ic = icmp ult i64 %i.ib, 144115188075855872
  call void @llvm.assume(i1 %i.ic)
  call void @llvm.experimental.noalias.scope.decl(metadata !63044)
  %i.id = load ptr, ptr %i.et, align 8, !alias.scope !63047, !noalias !63042, !nonnull !10, !noundef !10 ; 2 uses
  %i.ie = icmp ult i64 %i.ib, %i.ia
  br i1 %i.ie, label %bb.bj, label %bb.bk, !prof !1948

bb.bj:                                            ; preds = %"_ZN8indexmap5inner5entry26OccupiedEntry$LT$K$C$V$GT$12remove_index17h6fbc12538932f659E.exit.i"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ia, i64 noundef range(i64 0, 144115188075855872) %i.ib, i64 noundef %i.ib, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8274) #106
          to label %.noexc121 unwind label %.body.thread270.loopexit.split-lp

.noexc121:                                        ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %"_ZN8indexmap5inner5entry26OccupiedEntry$LT$K$C$V$GT$12remove_index17h6fbc12538932f659E.exit.i"
  %i.if = sub nuw nsw i64 %i.ib, %i.ia
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0143.0.copyload, i64 40
  %i.ih = load i64, ptr %i.ig, align 8, !alias.scope !63047, !noalias !63042, !noundef !10
  %i.ii = add i64 %i.ih, %i.hz
  %i.ij = lshr i64 %i.ii, 1
  %i.ik = icmp samesign ugt i64 %i.if, %i.ij
  br i1 %i.ik, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.il = getelementptr inbounds nuw [64 x i8], ptr %i.id, i64 %i.ia
  %spec.select.i.i.i.i.i.i.i = call noundef i64 @llvm.usub.sat.i64(i64 range(i64 0, 144115188075855872) %i.ib, i64 range(i64 0, 144115188075855872) %i.ia)
  %.not40.not.i.i.i = icmp samesign ugt i64 %i.ib, %i.ia
  br i1 %.not40.not.i.i.i, label %.lr.ph.i.i.i, label %"_ZN8indexmap5inner17Core$LT$K$C$V$GT$17decrement_indices17h50479174c0f2db2bE.exit.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.bl
  %.val.i.i.i = load ptr, ptr %i.ha, align 8, !alias.scope !63048, !noalias !63053, !nonnull !10, !noundef !10 ; 2 uses
  %.val11.i.i.i = load i64, ptr %i.hb, align 8, !alias.scope !63048, !noalias !63053, !noundef !10 ; 2 uses
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !63055)
  %i.im = icmp eq i64 %i.hz, 0
  br i1 %i.im, label %"_ZN8indexmap5inner17Core$LT$K$C$V$GT$17decrement_indices17h50479174c0f2db2bE.exit.i.i", label %.lr.ph39.preheader.i.i.i

.lr.ph39.preheader.i.i.i:                         ; preds = %bb.bm
  %i.in = load ptr, ptr %i.ha, align 8, !alias.scope !63058, !noalias !63059, !nonnull !10, !noundef !10 ; 3 uses
  %.val13.i.i.i.i.i = load <16 x i8>, ptr %i.in, align 16, !noalias !63061
  %i.io = icmp sgt <16 x i8> %.val13.i.i.i.i.i, splat (i8 -1)
  %i.ip = bitcast <16 x i1> %i.io to i16
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  br label %.lr.ph39.i.i.i

bb.bn:                                            ; preds = %_ZN8indexmap5inner12update_index17h3e07c80bae0933e6E.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.8.034.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ir, %_ZN8indexmap5inner12update_index17h3e07c80bae0933e6E.exit.i.i.i ] ; 4 uses
  %i.ir = add nuw i64 %.sroa.8.034.i.i.i, 1       ; 2 uses
  %i.is = add nuw i64 %.sroa.8.034.i.i.i, %i.ia
  %i.it = getelementptr inbounds nuw [64 x i8], ptr %i.il, i64 %.sroa.8.034.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 56
  %i.iv = load i64, ptr %i.iu, align 8, !noalias !63064, !noundef !10 ; 2 uses
  %i.iw = add i64 %.sroa.8.034.i.i.i, %.sroa.6145.0.copyload
  %i.ix = lshr i64 %i.iv, 57
  %i.iy = trunc nuw nsw i64 %i.ix to i8
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.iy, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bq, %bb.bn
  %.sroa.08.0.i.i.i.i.i.i = phi i64 [ 0, %bb.bn ], [ %i.jp, %bb.bq ]
  %.pn.i.i.i.i.i = phi i64 [ %i.iv, %bb.bn ], [ %i.jq, %bb.bq ]
  %.sroa.04.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %.val11.i.i.i ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.iz, align 1, !noalias !63065 ; 2 uses
  %i.ja = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i
  %i.jb = bitcast <16 x i1> %i.ja to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.jb, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bo, %bb.bp
  %.sroa.010.0.i33.i.i.i.i.i = phi i16 [ %i.jo, %bb.bp ], [ %i.jb, %bb.bo ] ; 3 uses
  %i.jc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.010.0.i33.i.i.i.i.i, i1 true)
  %i.jd = zext nneg i16 %i.jc to i64
  %i.je = add i64 %.sroa.04.0.i.i.i.i.i.i, %i.jd
  %i.jf = and i64 %i.je, %.val11.i.i.i
  %i.jg = sub nsw i64 0, %i.jf
  %i.jh = getelementptr inbounds [8 x i8], ptr %.val.i.i.i, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -8
  %.val2.i.i.i.i.i.i = load i64, ptr %i.ji, align 8, !noalias !63073, !noundef !10
  %i.jj = icmp eq i64 %.val2.i.i.i.i.i.i, %i.is
  br i1 %i.jj, label %_ZN8indexmap5inner12update_index17h3e07c80bae0933e6E.exit.i.i.i, label %bb.bp, !prof !119

._crit_edge.i.i.i.i.i:                            ; preds = %bb.bp, %bb.bo
  %i.jk = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.jl = bitcast <16 x i1> %i.jk to i16
  %i.jm = icmp eq i16 %i.jl, 0
  br i1 %i.jm, label %bb.bq, label %bb.br, !prof !59

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.jn = add i16 %.sroa.010.0.i33.i.i.i.i.i, -1
  %i.jo = and i16 %i.jn, %.sroa.010.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.jo, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.bq:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.jp = add i64 %.sroa.08.0.i.i.i.i.i.i, 16     ; 2 uses
  %i.jq = add i64 %.sroa.04.0.i.i.i.i.i.i, %i.jp
  br label %bb.bo

bb.br:                                            ; preds = %._crit_edge.i.i.i.i.i
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8267, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8268) #106
          to label %.noexc122 unwind label %.body.thread270.loopexit.split-lp

.noexc122:                                        ; preds = %bb.br
  unreachable

_ZN8indexmap5inner12update_index17h3e07c80bae0933e6E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.jr = getelementptr inbounds i8, ptr %i.jh, i64 -8
  store i64 %i.iw, ptr %i.jr, align 8, !noalias !63064
  %i.js = icmp ult i64 %i.ir, %spec.select.i.i.i.i.i.i.i
  br i1 %i.js, label %bb.bn, label %"_ZN8indexmap5inner17Core$LT$K$C$V$GT$17decrement_indices17h50479174c0f2db2bE.exit.i.i"

.lr.ph39.i.i.i:                                   ; preds = %bb.bs, %.lr.ph39.preheader.i.i.i
  %.sroa.013.038.i.i.i = phi ptr [ %.sroa.013.1.i.i.i, %bb.bs ], [ %i.in, %.lr.ph39.preheader.i.i.i ] ; 2 uses
  %.sroa.614.037.i.i.i = phi ptr [ %.sroa.614.1.i.i.i, %bb.bs ], [ %i.iq, %.lr.ph39.preheader.i.i.i ] ; 2 uses
  %.sroa.10.036.i.i.i = phi i16 [ %i.kb, %bb.bs ], [ %i.ip, %.lr.ph39.preheader.i.i.i ] ; 2 uses
  %.sroa.14.035.i.i.i = phi i64 [ %i.ke, %bb.bs ], [ %i.hz, %.lr.ph39.preheader.i.i.i ]
  %.not11.i.i.i.i = icmp eq i16 %.sroa.10.036.i.i.i, 0
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i118, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h3f953bdd89fe754aE.exit.i.i.i"

.lr.ph.i.i.i.i118:                                ; preds = %.lr.ph39.i.i.i, %.lr.ph.i.i.i.i118
  %i.jt = phi ptr [ %i.jx, %.lr.ph.i.i.i.i118 ], [ %.sroa.614.037.i.i.i, %.lr.ph39.i.i.i ] ; 2 uses
  %i.ju = phi ptr [ %i.jw, %.lr.ph.i.i.i.i118 ], [ %.sroa.013.038.i.i.i, %.lr.ph39.i.i.i ]
  %.val79.i.i.i.i = load <16 x i8>, ptr %i.jt, align 16, !noalias !63076
  %i.jv = icmp sgt <16 x i8> %.val79.i.i.i.i, splat (i8 -1)
  %i.jw = getelementptr inbounds i8, ptr %i.ju, i64 -128 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.jv to i16 ; 2 uses
  %.not.i.i.i.i119 = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i119, label %.lr.ph.i.i.i.i118, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h3f953bdd89fe754aE.exit.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h3f953bdd89fe754aE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i118, %.lr.ph39.i.i.i
  %.sroa.614.1.i.i.i = phi ptr [ %.sroa.614.037.i.i.i, %.lr.ph39.i.i.i ], [ %i.jx, %.lr.ph.i.i.i.i118 ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.038.i.i.i, %.lr.ph39.i.i.i ], [ %i.jw, %.lr.ph.i.i.i.i118 ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.10.036.i.i.i, %.lr.ph39.i.i.i ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i118 ] ; 3 uses
  %i.jy = add i16 %.lcssa.i.i.i.i, -1
  %i.jz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ka = zext nneg i16 %i.jz to i64
  %i.kb = and i16 %i.jy, %.lcssa.i.i.i.i
  %i.kc = sub nsw i64 0, %i.ka
  %i.kd = getelementptr inbounds [8 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.kc
  %i.ke = add i64 %.sroa.14.035.i.i.i, -1         ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %i.kd, i64 -8 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !noalias !63064, !noundef !10 ; 3 uses
  %.not10.i.i.i = icmp ule i64 %i.ia, %i.kg
  %i.kh = icmp ult i64 %i.kg, %i.ib
  %or.cond.i.i.i = and i1 %.not10.i.i.i, %i.kh
  br i1 %or.cond.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h3f953bdd89fe754aE.exit.i.i.i"
  %i.ki = icmp eq i64 %i.ke, 0
  br i1 %i.ki, label %"_ZN8indexmap5inner17Core$LT$K$C$V$GT$17decrement_indices17h50479174c0f2db2bE.exit.i.i", label %.lr.ph39.i.i.i

bb.bt:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h3f953bdd89fe754aE.exit.i.i.i"
  %i.kj = add nsw i64 %i.kg, -1
  store i64 %i.kj, ptr %i.kf, align 8, !noalias !63064
  br label %bb.bs

"_ZN8indexmap5inner17Core$LT$K$C$V$GT$17decrement_indices17h50479174c0f2db2bE.exit.i.i": ; preds = %_ZN8indexmap5inner12update_index17h3e07c80bae0933e6E.exit.i.i.i, %bb.bs, %bb.bm, %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !63079)
  %.not.i1.i.i = icmp ult i64 %.sroa.6145.0.copyload, %i.ib
  br i1 %.not.i1.i.i, label %bb.bv, label %bb.bu, !prof !119

bb.bu:                                            ; preds = %"_ZN8indexmap5inner17Core$LT$K$C$V$GT$17decrement_indices17h50479174c0f2db2bE.exit.i.i"
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %.sroa.6145.0.copyload, i64 noundef %i.ib, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8275) #106
          to label %.noexc123 unwind label %.body.thread270.loopexit.split-lp

.noexc123:                                        ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %"_ZN8indexmap5inner17Core$LT$K$C$V$GT$17decrement_indices17h50479174c0f2db2bE.exit.i.i"
  %i.kk = getelementptr inbounds nuw [64 x i8], ptr %i.id, i64 %.sroa.6145.0.copyload ; 6 uses
  %.sroa.0227.0.copyload = load i64, ptr %i.kk, align 8, !noalias !63082 ; 2 uses
  %.sroa.4228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.sroa.4228.0.copyload = load ptr, ptr %.sroa.4228.0..sroa_idx, align 8, !noalias !63082 ; 2 uses
  %.sroa.6230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %.sroa.6230.0.copyload = load i64, ptr %.sroa.6230.0..sroa_idx, align 8, !noalias !63082 ; 2 uses
  %.sroa.7231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %.sroa.7231.0.copyload = load ptr, ptr %.sroa.7231.0..sroa_idx, align 8, !noalias !63082 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 64
  %i.km = xor i64 %.sroa.6145.0.copyload, -1
  %i.kn = add nsw i64 %i.ib, %i.km
  %i.ko = shl nuw nsw i64 %i.kn, 6
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kk, ptr nonnull align 8 %i.kl, i64 %i.ko, i1 false), !noalias !63083
  %i.kp = add nsw i64 %i.ib, -1
  store i64 %i.kp, ptr %i.eq, align 8, !alias.scope !63085, !noalias !63086
  %i.kq = icmp eq i64 %.sroa.0227.0.copyload, 0
  br i1 %i.kq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h62cb4af1f55d882eE.exit", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4228.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4228.0.copyload, i64 noundef %.sroa.0227.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #101, !noalias !63087
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h62cb4af1f55d882eE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h62cb4af1f55d882eE.exit": ; preds = %bb.bv, %bb.bw, %"_ZN8indexmap5inner5entry26OccupiedEntry$LT$K$C$V$GT$6insert17h4250db846162e359E.exit"
  %.sroa.5157.0 = phi ptr [ %.sroa.5157.0.copyload159, %"_ZN8indexmap5inner5entry26OccupiedEntry$LT$K$C$V$GT$6insert17h4250db846162e359E.exit" ], [ %.sroa.7231.0.copyload, %bb.bw ], [ %.sroa.7231.0.copyload, %bb.bv ] ; 2 uses
  %.sroa.0155.0 = phi i64 [ %.sroa.0155.0.copyload156, %"_ZN8indexmap5inner5entry26OccupiedEntry$LT$K$C$V$GT$6insert17h4250db846162e359E.exit" ], [ %.sroa.6230.0.copyload, %bb.bw ], [ %.sroa.6230.0.copyload, %bb.bv ] ; 2 uses
  %i.kr = icmp eq i64 %.sroa.0155.0, 0
  br i1 %i.kr, label %"_ZN4core3ptr88drop_in_place$LT$milli..update..new..indexer..document_operation..DocumentOperations$GT$17h0012eef8a6889e3bE.exit", label %bb.bx

bb.bx:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h62cb4af1f55d882eE.exit"
  %i.ks = mul nuw i64 %.sroa.0155.0, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5157.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5157.0, i64 noundef %i.ks, i64 noundef range(i64 1, -9223372036854775807) 8) #101
  br label %"_ZN4core3ptr88drop_in_place$LT$milli..update..new..indexer..document_operation..DocumentOperations$GT$17h0012eef8a6889e3bE.exit"

"_ZN4core3ptr88drop_in_place$LT$milli..update..new..indexer..document_operation..DocumentOperations$GT$17h0012eef8a6889e3bE.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h62cb4af1f55d882eE.exit", %bb.bx, %bb.by
  %i.kt = icmp eq ptr %i.am, %i.ae
  br i1 %i.kt, label %"_ZN4core3ptr146drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$milli..update..new..indexer..document_operation..DocumentOperations$GT$$u5d$$GT$17h201a9cea5fb7b068E.exit.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h02c6e3c85cf24e41E.exit"

bb.by:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %"_ZN4core3ptr88drop_in_place$LT$milli..update..new..indexer..document_operation..DocumentOperations$GT$17h0012eef8a6889e3bE.exit"

.loopexit277:                                     ; preds = %bb.d
  %lpad.loopexit279 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.loopexit.split-lp278:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp280 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bz:                                            ; preds = %.loopexit.split-lp278, %.loopexit277
  %lpad.phi281 = phi { ptr, i32 } [ %lpad.loopexit279, %.loopexit277 ], [ %lpad.loopexit.split-lp280, %.loopexit.split-lp278 ] ; 2 uses
  %i.ku = icmp eq i64 %.sroa.7.sroa.5221.0.copyload, 0
  br i1 %i.ku, label %"_ZN4core3ptr88drop_in_place$LT$milli..update..new..indexer..document_operation..DocumentOperations$GT$17h0012eef8a6889e3bE.exit128", label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kv = mul nuw i64 %.sroa.7.sroa.5221.0.copyload, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.6.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.6.0.copyload, i64 noundef %i.kv, i64 noundef range(i64 1, -9223372036854775807) 8) #101
  br label %"_ZN4core3ptr88drop_in_place$LT$milli..update..new..indexer..document_operation..DocumentOperations$GT$17h0012eef8a6889e3bE.exit128"

bb.cb:                                            ; preds = %bb.cd, %bb.cc, %bb.q, %bb.b
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108
  unreachable

bb.cc:                                            ; preds = %.split.thread, %bb.t
  %.pn.pn.pn.pn488 = phi { ptr, i32 } [ %i.ek, %.split.thread ], [ %.pn.pn.pn, %bb.t ]
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$milli..update..new..indexer..document_operation..PayloadStats$GT$$GT$17h7979096238c83572E"(ptr noalias noundef align 8 dereferenceable(24) %i.l) #107
          to label %bb.cd unwind label %bb.cb

bb.cd:                                            ; preds = %bb.cc, %bb.aa
  %.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.el, %bb.aa ], [ %.pn.pn.pn.pn488, %bb.cc ]
  invoke void @"_ZN4core3ptr56drop_in_place$LT$milli..fields_ids_map..FieldsIdsMap$GT$17h115de42bdee40390E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m) #107
          to label %bb.cf unwind label %bb.cb

bb.ce:                                            ; preds = %bb.cf, %bb.t
  %.pn.pn.pn.pn.pn.pn263 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.ph, %bb.cf ], [ %.pn.pn.pn, %bb.t ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn263

bb.cf:                                            ; preds = %bb.cd, %bb.ac
  %.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.em, %bb.ac ], [ %.pn.pn.pn.pn.pn.ph, %bb.cd ]
  call fastcc void @"_ZN4core3ptr143drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$milli..update..new..indexer..document_operation..DocumentOperations$GT$$GT$17hc0deeffcbf0a0397E"(ptr noalias noundef align 8 dereferenceable(72) %i.n) #107
  br label %bb.ce
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7727b3f03307e43fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) initializes((8, 16)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %.sroa.4 = alloca [54 x i8], align 2            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17he5213c73c9090ddeE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(72) %1)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !10 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 540
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %.sroa.22.0.copyload
  %i.e = load i16, ptr %i.d, align 2, !noalias !63092, !noundef !10
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.22.0.copyload
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  store i16 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(54) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(54) %.sroa.4, i64 54, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 2 dereferenceable_or_null(2) ptr @"_ZN116_$LT$alloc..collections..btree..set..Intersection$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1413c31ab725c5c9E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1722, !noundef !10
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 1)
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %.preheader58
    i64 2, label %bb.c
  ]

.preheader58:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call fastcc ptr @"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h30e2a75916492b59E"(ptr noalias noundef align 8 dereferenceable(72) %i.c) ; 2 uses
  %.not64 = icmp eq ptr %i.d, null
  br i1 %.not64, label %.loopexit57, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.g

default.unreachable:                              ; preds = %bb.a
  unreachable

.loopexit:                                        ; preds = %.preheader
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc ptr @"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h30e2a75916492b59E"(ptr noalias noundef align 8 dereferenceable(72) %0) ; 2 uses
  %.not42 = icmp eq ptr %i.f, null
  br i1 %.not42, label %.loopexit57, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !align !4997, !noundef !10
  store ptr null, ptr %i.g, align 8
  br label %.loopexit57

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = tail call fastcc ptr @"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h30e2a75916492b59E"(ptr noalias noundef align 8 dereferenceable(72) %i.i) ; 2 uses
  %.not44 = icmp eq ptr %i.j, null
  br i1 %.not44, label %.loopexit57, label %.preheader.outer

.preheader.outer:                                 ; preds = %bb.d, %bb.f
  %.sroa.06.0.ph = phi ptr [ %i.m, %bb.f ], [ %i.j, %bb.d ]
  %.sroa.01.0.ph = phi ptr [ %.sroa.01.0, %bb.f ], [ %i.f, %bb.d ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.outer, %bb.e
  %.sroa.01.0 = phi ptr [ %i.l, %bb.e ], [ %.sroa.01.0.ph, %.preheader.outer ] ; 3 uses
  %.sroa.01.0.val = load i16, ptr %.sroa.01.0, align 2, !noundef !10
  %.sroa.06.0.val = load i16, ptr %.sroa.06.0.ph, align 2, !noundef !10
  %i.k = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i16(i16 %.sroa.01.0.val, i16 %.sroa.06.0.val)
  switch i8 %i.k, label %.loopexit [
    i8 -1, label %bb.e
    i8 0, label %.loopexit57
    i8 1, label %bb.f
  ]

bb.e:                                             ; preds = %.preheader
  %i.l = tail call fastcc ptr @"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h30e2a75916492b59E"(ptr noalias noundef align 8 dereferenceable(72) %0) ; 2 uses
  %.not48 = icmp eq ptr %i.l, null
  br i1 %.not48, label %.loopexit57, label %.preheader

bb.f:                                             ; preds = %.preheader
  %i.m = tail call fastcc ptr @"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h30e2a75916492b59E"(ptr noalias noundef align 8 dereferenceable(72) %i.i) ; 2 uses
  %.not46 = icmp eq ptr %i.m, null
  br i1 %.not46, label %.loopexit57, label %.preheader.outer

.loopexit57:                                      ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17hada336ae15cc2da7E.exit", %.lr.ph92, %bb.e, %.preheader, %bb.f, %.preheader58, %bb.d, %bb.b, %bb.c
  %.sroa.0.2 = phi ptr [ %i.h, %bb.c ], [ null, %bb.d ], [ null, %.preheader58 ], [ null, %bb.b ], [ null, %bb.f ], [ %i.n, %.lr.ph92 ], [ null, %bb.e ], [ %.sroa.01.0, %.preheader ], [ null, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17hada336ae15cc2da7E.exit" ]
  ret ptr %.sroa.0.2

bb.g:                                             ; preds = %.lr.ph, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17hada336ae15cc2da7E.exit"
  %i.n = phi ptr [ %i.d, %.lr.ph ], [ %i.ag, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17hada336ae15cc2da7E.exit" ] ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !nonnull !10, !align !299, !noundef !10 ; 2 uses
  %.val = load ptr, ptr %i.o, align 8, !noundef !10 ; 2 uses
  %..sroa.018.0.val = load i16, ptr %i.n, align 2
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17hada336ae15cc2da7E.exit", label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.g
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val54 = load i64, ptr %i.p, align 8
end_hunk_1
begin_hunk_2_@_ZN11candle_core6tensor6Tensor5stack17hcd8246efc6f87e4dE:bb.a
  invoke void @_ZN11candle_core5error5Error2bt17h86ab0bcb1e565b77E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.g)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit

.noexc48:                                         ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !66828
  %.sroa.083.0.copyload.i = load i64, ptr %i.h, align 8, !noalias !66828 ; 2 uses
  %.not125.i = icmp eq i64 %.sroa.083.0.copyload.i, -9223372036854775764
  br i1 %.not125.i, label %bb.aw, label %bb.bf

bb.bf:                                            ; preds = %.noexc48
  %.sroa.286.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.286.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.bn, i64 72, i1 false), !noalias !66826
  store i64 %.sroa.083.0.copyload.i, ptr %0, align 8, !alias.scope !66823, !noalias !66826
  br label %bb.ar

bb.bg:                                            ; preds = %.noexc38
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.277.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.277.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.475.0..sroa_idx.i, i64 72, i1 false), !noalias !66826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !66828
  store i64 %i.cl, ptr %0, align 8, !alias.scope !66823, !noalias !66826
  br label %bb.ar

bb.bh:                                            ; preds = %.noexc38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !66828
  %i.fa = icmp eq ptr %.sroa.0106.1236.i, %i.cb   ; 2 uses
  %.sroa.0106.1.idx.i = select i1 %i.fa, i64 0, i64 8
  %.sroa.0106.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0106.1236.i, i64 %.sroa.0106.1.idx.i
  br i1 %i.fa, label %.lr.ph242.i, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.be
  %lpad.loopexit53 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd9abc9830efee991E.exit.i"
  %lpad.loopexit56 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %"_ZN4core3ptr48drop_in_place$LT$candle_core..tensor..Tensor$GT$17h0b275bebd5bba0ccE.exit139.i", %bb.ak, %bb.af, %bb.ae, %.preheader.i._crit_edge, %bb.z, %bb.x, %bb.v
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %"_ZN4core3ptr48drop_in_place$LT$candle_core..tensor..Tensor$GT$17h0b275bebd5bba0ccE.exit.i", %bb.bc, %bb.bd
  %eh.lpad-body = phi { ptr, i32 } [ %i.ew, %bb.bd ], [ %.pn.i, %"_ZN4core3ptr48drop_in_place$LT$candle_core..tensor..Tensor$GT$17h0b275bebd5bba0ccE.exit.i" ], [ %i.ew, %bb.bc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit53, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit56, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit58, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp59, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$candle_core..tensor..Tensor$GT$$GT$17h4598c269b791cad6E"(ptr noalias noundef align 8 dereferenceable(24) %i.w) #107
          to label %common.resume unwind label %bb.bk

bb.bi:                                            ; preds = %bb.ar, %.noexc40, %bb.aa, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call fastcc void @"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$candle_core..tensor..Tensor$GT$$GT$17h4598c269b791cad6E"(ptr noalias noundef align 8 dereferenceable(24) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.b, %bb.t, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  ret void

bb.bk:                                            ; preds = %.body
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11candle_core6tensor6Tensor7squeeze17h44eff75902ad194cE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr %.0.val, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 20 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !10 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN49_$LT$usize$u20$as$u20$candle_core..shape..Dim$GT$8to_index17h456dd7959988ad93E"(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @837, i64 noundef 7)
  %i.i = load i64, ptr %i.b, align 8, !range !23625, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.i, -9223372036854775764
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 9 uses
  br i1 %.not, label %bb.c, label %bb.b

.thread25:                                        ; preds = %bb.z, %bb.u
  %.pn.pn23 = phi { ptr, i32 } [ %.pn.pn.ph, %bb.z ], [ %i.bs, %bb.u ]
  resume { ptr, i32 } %.pn.pn23

bb.b:                                             ; preds = %bb.a
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.321.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.618.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %0, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %.sroa.220.0..sroa_idx, align 8
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = icmp ult i64 %i.k, %i.h
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.k
  %i.n = load i64, ptr %i.m, align 8, !noundef !10
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.j

bb.e:                                             ; preds = %bb.c
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.k, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @838) #106
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl i64 %i.h, 3                          ; 5 uses
  %i.q = icmp ugt i64 %i.h, 2305843009213693951
  %i.r = icmp ugt i64 %i.p, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i.i.i, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !3692

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.f
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101, !noalias !66879
  %i.s = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, 129) 8) #101, !noalias !66879 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h83c404c6a999d525E.exit"

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.f
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 0, %bb.f ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8134) #106, !noalias !66887
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h83c404c6a999d525E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.f, i64 %i.p, i1 false), !noalias !66888
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !10, !noundef !10
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.x = load i64, ptr %i.w, align 8, !noundef !10 ; 9 uses
  %i.y = shl i64 %i.x, 3                          ; 5 uses
  %i.z = icmp ugt i64 %i.x, 2305843009213693951
  %i.aa = icmp ugt i64 %i.y, 9223372036854775800
  %or.cond.i.i.i.i33 = or i1 %i.z, %i.aa
  br i1 %or.cond.i.i.i.i33, label %bb.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i34, !prof !3692

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i34: ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h83c404c6a999d525E.exit"
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i34
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101, !noalias !66889
  %i.ac = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.y, i64 noundef range(i64 1, 129) 8) #101, !noalias !66889 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h83c404c6a999d525E.exit"
  %.sroa.4.0.ph.i.i39 = phi i64 [ 8, %bb.h ], [ 0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h83c404c6a999d525E.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i39, i64 %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8134) #106
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.ae = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.ab, label %bb.aa

bb.k:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.l:                                             ; preds = %bb.h, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i34
  %.sroa.10.0.i.i35 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i34 ], [ %i.ac, %bb.h ] ; 4 uses
  %.sroa.4.0.i.i36 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i34 ], [ %i.x, %bb.h ] ; 4 uses
  %i.ah = icmp samesign ule i64 %i.x, %.sroa.4.0.i.i36
  call void @llvm.assume(i1 %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i35, ptr nonnull readonly align 8 %i.v, i64 %i.y, i1 false), !noalias !66897
  %i.ai = icmp samesign ult i64 %i.h, 1152921504606846976
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.k ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = xor i64 %i.k, -1                        ; 2 uses
  %i.am = add nsw i64 %i.h, %i.al
  %i.an = shl nuw nsw i64 %i.am, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %i.ak, i64 %i.an, i1 false), !noalias !66898
  %i.ao = add nsw i64 %i.h, -1
  %i.ap = icmp samesign ult i64 %i.x, 1152921504606846976
  call void @llvm.assume(i1 %i.ap)
  %.not.i42 = icmp ult i64 %i.k, %i.x
  br i1 %.not.i42, label %bb.n, label %bb.m, !prof !119

bb.m:                                             ; preds = %bb.l
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.k, i64 noundef %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @839) #106
          to label %.noexc43 unwind label %bb.x

.noexc43:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i35, i64 %i.k ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = add nsw i64 %i.x, %i.al
  %i.at = shl nuw nsw i64 %i.as, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr nonnull align 8 %i.ar, i64 %i.at, i1 false), !noalias !66902
  %i.au = atomicrmw add ptr @_ZN11candle_core6tensor8TensorId3new7COUNTER17h55aeb3824ed1ed25E, i64 1 monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0.val, i64 128 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !10, !noundef !10
  %i.ax = atomicrmw add ptr %i.aw, i64 1 monotonic, align 8
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = add nsw i64 %i.x, -1
  %i.ba = load ptr, ptr %i.av, align 8, !nonnull !10, !noundef !10
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !10
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.val, i64 144
  %i.be = load i8, ptr %i.bd, align 8, !range !405, !noalias !66906, !noundef !10
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.bh = load i8, ptr %i.bg, align 8, !range !23645, !noalias !66906, !noundef !10
  %.not.i45 = icmp eq i8 %i.bh, 36
  br i1 %.not.i45, label %_ZN11candle_core2op10BackpropOp4new117h21e0917106272fdaE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bi = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8, !noalias !66906
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.r, label %_ZN11candle_core2op10BackpropOp4new117h21e0917106272fdaE.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

_ZN11candle_core2op10BackpropOp4new117h21e0917106272fdaE.exit: ; preds = %bb.q, %bb.p
  %.sroa.0.0.i = phi i8 [ 36, %bb.p ], [ 27, %bb.q ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.val, i64 146
  %i.bl = load i8, ptr %i.bk, align 2, !range !23646, !noundef !10
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.val, i64 145
  %i.bn = load i8, ptr %i.bm, align 1, !range !406, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %i.bp, align 8
  %.sroa.06.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.s, ptr %.sroa.06.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.ao, ptr %.sroa.06.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.4.0.i.i36, ptr %.sroa.06.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.10.0.i.i35, ptr %.sroa.06.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.az, ptr %.sroa.06.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.bc, ptr %.sroa.06.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.06.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 %.sroa.0.0.i, ptr %.sroa.06.sroa.2.0..sroa_idx, align 8
  %.sroa.06.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %.0.val, ptr %.sroa.06.sroa.4.0..sroa_idx, align 8
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %i.ba, ptr %.sroa.37.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %i.au, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 145
  store i8 %i.bn, ptr %.sroa.68.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i8 %i.bl, ptr %.sroa.7.0..sroa_idx, align 2
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101, !noalias !66909
  %i.bq = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 152, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !66909 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.t, label %bb.w, !prof !1295

bb.t:                                             ; preds = %_ZN11candle_core2op10BackpropOp4new117h21e0917106272fdaE.exit
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 152) #106
          to label %.noexc46 unwind label %bb.u

.noexc46:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr78drop_in_place$LT$alloc..sync..ArcInner$LT$candle_core..tensor..Tensor_$GT$$GT$17he0a0c986e73b3fb5E"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.a) #107
          to label %.thread25 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108
  unreachable

bb.w:                                             ; preds = %_ZN11candle_core2op10BackpropOp4new117h21e0917106272fdaE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.bq, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bq, ptr %i.bu, align 8
  store i64 -9223372036854775764, ptr %0, align 8
  br label %bb.ac

bb.x:                                             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.4.0.i.i36, 0
  br i1 %i.bw, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = shl nuw nsw i64 %.sroa.4.0.i.i36, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i35, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !66912
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.k
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.bv, %bb.x ], [ %i.bv, %bb.y ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !66915
  br label %.thread25

bb.aa:                                            ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.val, ptr %i.by, align 8
  store i64 -9223372036854775764, ptr %0, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.j
  call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.w, %bb.aa, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11candle_core6tensor6Tensor7to_vec117hc2070471f09f34a3E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [80 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 8 uses
  %i.e = alloca [80 x i8], align 8                ; 2 uses
  %i.f = alloca [80 x i8], align 8                ; 9 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !10 ; 7 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 1
  br i1 %i.k, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = tail call { ptr, ptr } @_ZN11candle_core6tensor6Tensor7storage17h9ad22359b8330b17E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 9 uses
  %i.o = load i64, ptr %i.m, align 8, !range !43234, !noundef !10
  %i.p = tail call i64 @llvm.usub.sat.i64(i64 %i.o, i64 13)
  switch i64 %i.p, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.ao
    i64 2, label %bb.aj
  ]

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.q = getelementptr i8, ptr %i.g, i64 24
  %.val22 = load ptr, ptr %i.q, align 8, !nonnull !10, !noundef !10
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 3 uses
  %i.s = icmp eq i64 %i.i, 0
  br i1 %i.s, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd9abc9830efee991E.exit", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101, !noalias !66918
  %i.t = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, 129) 8) #101, !noalias !66918 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd9abc9830efee991E.exit"

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8134) #106, !noalias !66928
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd9abc9830efee991E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.t, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i, ptr nonnull readonly align 8 %.val22, i64 %i.r, i1 false), !noalias !66929
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.i, ptr %i.x, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.443.0..sroa_idx, align 8
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.i, ptr %.sroa.544.0..sroa_idx, align 8
  store i64 -9223372036854775803, ptr %i.f, align 8
  call void @_ZN11candle_core5error5Error2bt17h86ab0bcb1e565b77E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
end_hunk_2
begin_hunk_3_@_ZN17crossbeam_channel5waker9SyncWaker10disconnect17ha952c4abecc67e44E:bb.a

._crit_edge.i:                                    ; preds = %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b4d298f29d5c2cbE.exit"
  invoke fastcc void @_ZN17crossbeam_channel5waker5Waker6notify17hb59870214dccaa55E(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_ZN17crossbeam_channel5waker5Waker10disconnect17hb4313721f375a889E.exit unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %.lr.ph.i
  %i.z = load ptr, ptr %.sroa.01.02.i, align 8, !noalias !80767, !nonnull !10, !noundef !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val.i = load ptr, ptr %i.aa, align 8, !noalias !80767, !nonnull !10, !noundef !10
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 40 ; 2 uses
  %i.ac = atomicrmw xchg ptr %i.ab, i32 1 release, align 4, !noalias !80767
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %bb.j, label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ae = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.ab)
          to label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i unwind label %.loopexit ; 0 uses

_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i: ; preds = %bb.j, %bb.i, %.lr.ph.i
  %i.af = icmp eq ptr %i.w, %i.u
  br i1 %i.af, label %._crit_edge.i, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %._crit_edge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17he4529b7a6b8adc67E"(ptr nonnull %0, i8 %.sroa.01.0.i.i) #107
          to label %common.resume unwind label %bb.r

_ZN17crossbeam_channel5waker5Waker10disconnect17hb4313721f375a889E.exit: ; preds = %._crit_edge.i
  %i.ag = load i64, ptr %i.s, align 8, !noundef !10 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN17crossbeam_channel5waker5Waker10disconnect17hb4313721f375a889E.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !10 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 384307168202282326
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 0
  %i.an = zext i1 %i.am to i8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN17crossbeam_channel5waker5Waker10disconnect17hb4313721f375a889E.exit
  %.sroa.0.0 = phi i8 [ %i.an, %bb.l ], [ 0, %_ZN17crossbeam_channel5waker5Waker10disconnect17hb4313721f375a889E.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.ao seq_cst, align 8
  br i1 %i.o, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.o, !prof !119

bb.o:                                             ; preds = %bb.n
  %i.as = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.as, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.j monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.at = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.q, label %"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17he4529b7a6b8adc67E.exit", !prof !59

bb.q:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %0)
  br label %"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17he4529b7a6b8adc67E.exit"

"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17he4529b7a6b8adc67E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.q
  ret void

bb.r:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN17crossbeam_channel5waker9SyncWaker10unregister17he59179efdfbef538E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 3, 0) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.b = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !noalias !80770
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !119

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %1), !noalias !80770
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !80770
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h7a6cd22410843514E.exit", label %bb.d, !prof !119

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !80770
  %i.h = xor i1 %i.g, true
  %i.i = zext i1 %i.h to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h7a6cd22410843514E.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h7a6cd22410843514E.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.i, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.k = load atomic i8, ptr %i.j monotonic, align 4, !noalias !80770
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b4d298f29d5c2cbE.exit", label %bb.e, !prof !119

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h7a6cd22410843514E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80773
  store ptr %1, ptr %i.a, align 8, !noalias !80773
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.l, align 8, !noalias !80773
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2087, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1193) #106
          to label %bb.g unwind label %bb.f, !noalias !80777

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr134drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$$GT$17h78fc0263b5484339E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #107
          to label %common.resume unwind label %bb.h, !noalias !80777

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !80777
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.aj, %bb.l ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b4d298f29d5c2cbE.exit": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h7a6cd22410843514E.exit"
  %i.o = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80778)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !80778, !noalias !80781, !nonnull !10, !noundef !10 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !80778, !noalias !80781, !noundef !10 ; 9 uses
  %.idx = mul nuw nsw i64 %i.s, 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.w = add nuw nsw i64 %i.z, 1
  %i.x = icmp eq ptr %i.v, %i.t
  br i1 %i.x, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b4d298f29d5c2cbE.exit", %bb.i
  %i.y = phi ptr [ %i.v, %bb.i ], [ %i.q, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b4d298f29d5c2cbE.exit" ] ; 2 uses
  %i.z = phi i64 [ %i.w, %bb.i ], [ 0, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b4d298f29d5c2cbE.exit" ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !80783, !noalias !80788, !noundef !10
  %.not.i.i = icmp eq i64 %i.ab, %2
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.j:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80793)
  %i.ac = icmp ult i64 %i.s, 384307168202282326
  tail call void @llvm.assume(i1 %i.ac)
  %.not.i5.i = icmp samesign ult i64 %i.z, %i.s
  br i1 %.not.i5.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h2e280dde446a0652E.exit.i", label %bb.k, !prof !119

bb.k:                                             ; preds = %bb.j
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.z, i64 noundef %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1191) #106
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h2e280dde446a0652E.exit.i": ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.z ; 4 uses
  %.sroa.0.0.copyload13 = load ptr, ptr %i.ad, align 8, !noalias !80778
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx14, i64 16, i1 false), !noalias !80778
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = xor i64 %i.z, -1
  %i.ag = add nsw i64 %i.s, %i.af
  %i.ah = mul nuw nsw i64 %i.ag, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ae, i64 %i.ah, i1 false), !noalias !80796
  %i.ai = add nsw i64 %i.s, -1                    ; 2 uses
  store i64 %i.ai, ptr %i.r, align 8, !alias.scope !80799, !noalias !80800
  br label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17he4529b7a6b8adc67E"(ptr nonnull %1, i8 %.sroa.01.0.i.i) #107
          to label %common.resume unwind label %bb.s

_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit: ; preds = %bb.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b4d298f29d5c2cbE.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h2e280dde446a0652E.exit.i"
  %i.ak = phi i64 [ %i.ai, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h2e280dde446a0652E.exit.i" ], [ %i.s, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b4d298f29d5c2cbE.exit" ], [ %i.s, %bb.i ] ; 2 uses
  %.sroa.0.015 = phi ptr [ %.sroa.0.0.copyload13, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h2e280dde446a0652E.exit.i" ], [ null, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b4d298f29d5c2cbE.exit" ], [ null, %bb.i ]
  %i.al = icmp ult i64 %i.ak, 384307168202282326
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !10 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 384307168202282326
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.ao, 0
  %i.ar = zext i1 %i.aq to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit
  %.sroa.0.0 = phi i8 [ %i.ar, %bb.m ], [ 0, %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.as seq_cst, align 8
  store ptr %.sroa.0.015, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br i1 %i.o, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.au = and i64 %i.at, 9223372036854775807
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.p, !prof !119

bb.p:                                             ; preds = %bb.o
  %i.aw = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.aw, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.j monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.ax = atomicrmw xchg ptr %1, i32 0 release, align 4
  %i.ay = icmp eq i32 %i.ax, 2
  br i1 %i.ay, label %bb.r, label %"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17he4529b7a6b8adc67E.exit", !prof !59

bb.r:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %1)
  br label %"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17he4529b7a6b8adc67E.exit"

"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17he4529b7a6b8adc67E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.r
  ret void

bb.s:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN17crossbeam_channel5waker9SyncWaker6notify17hfdb5c923735f1ebcE(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load atomic i8, ptr %i.c seq_cst, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17he4529b7a6b8adc67E.exit"

bb.b:                                             ; preds = %bb.a
  %i.f = cmpxchg ptr %0, i32 0, i32 1 acquire monotonic, align 4, !noalias !80801
  %i.g = extractvalue { i32, i1 } %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c, !prof !119

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %0), !noalias !80801
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !80801
  %i.i = and i64 %i.h, 9223372036854775807
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h7a6cd22410843514E.exit", label %bb.e, !prof !119

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !80801
  %i.l = xor i1 %i.k, true
  %i.m = zext i1 %i.l to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h7a6cd22410843514E.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h7a6cd22410843514E.exit": ; preds = %bb.d, %bb.e
  %.sroa.01.0.i.i = phi i8 [ %i.m, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = load atomic i8, ptr %i.n monotonic, align 4, !noalias !80801
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.k, label %bb.f, !prof !119

bb.f:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h7a6cd22410843514E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80804
  store ptr %0, ptr %i.a, align 8, !noalias !80804
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.p, align 8, !noalias !80804
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2087, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1194) #106
          to label %bb.h unwind label %bb.g, !noalias !80808

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr134drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$$GT$17h78fc0263b5484339E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #107
          to label %common.resume unwind label %bb.i, !noalias !80808

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !80808
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.s, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.u, %bb.s, %bb.n, %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$crossbeam_channel..waker..Entry$GT$$GT$17hf56b532ee8e4909eE.exit"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17he4529b7a6b8adc67E"(ptr nonnull %0, i8 %.sroa.01.0.i.i) #107
          to label %common.resume unwind label %bb.ad

bb.k:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h7a6cd22410843514E.exit"
  %i.t = trunc nuw i8 %.sroa.01.0.i.i to i1
  %i.u = load atomic i8, ptr %i.c seq_cst, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80809)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !80809, !noalias !80812, !noundef !10 ; 6 uses
  %i.z = icmp ult i64 %i.y, 384307168202282326
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$crossbeam_channel..waker..Entry$GT$$GT$17hf56b532ee8e4909eE.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN17crossbeam_channel5waker17current_thread_id9THREAD_ID29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h56d98f853236bfb5E") ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !range !405, !noalias !80814, !noundef !10
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i, label %bb.n, !prof !119

bb.n:                                             ; preds = %bb.m
  %i.af = invoke fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h0024bf7238fc202bE"(ptr noundef nonnull align 8 %i.ab, ptr noalias noundef align 8 dereferenceable_or_null(8) null)
          to label %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i unwind label %bb.j ; 0 uses

_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i: ; preds = %bb.n, %bb.m
  %.val.i.i.i = load i64, ptr %i.ab, align 8, !range !6697, !noalias !80821, !noundef !10
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !80809, !noalias !80812, !nonnull !10, !noundef !10 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.y, 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i", %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i
  %.sroa.02.015.i.i = phi i64 [ %i.bb, %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i" ], [ 0, %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i ] ; 4 uses
  %i.aj = phi ptr [ %i.ak, %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i" ], [ %i.ah, %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80822)
  %i.al = load ptr, ptr %i.aj, align 8, !alias.scope !80822, !noalias !80825, !nonnull !10, !noundef !10 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i64, ptr %i.am, align 8, !range !6697, !noalias !80829, !noundef !10
  %.not.i.i.i = icmp eq i64 %i.an, %.val.i.i.i
  br i1 %.not.i.i.i, label %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i", label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !80822, !noalias !80825, !noundef !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ar = cmpxchg ptr %i.aq, i64 0, i64 %i.ap acq_rel acquire, align 8, !noalias !80829
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.ar, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.p, label %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i"

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !80822, !noalias !80825, !noundef !10 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store atomic ptr %i.at, ptr %i.av release, align 8, !noalias !80829
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.val1.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !80829, !nonnull !10, !noundef !10
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 40 ; 2 uses
  %i.ay = atomicrmw xchg ptr %i.ax, i32 1 release, align 4, !noalias !80829
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %bb.s, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit

bb.s:                                             ; preds = %bb.r
  %i.ba = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.ax)
          to label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit unwind label %bb.j ; 0 uses

"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i": ; preds = %bb.o, %.lr.ph.i.i
  %i.bb = add nuw nsw i64 %.sroa.02.015.i.i, 1
  %i.bc = icmp eq ptr %i.ak, %i.ai
  br i1 %i.bc, label %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$crossbeam_channel..waker..Entry$GT$$GT$17hf56b532ee8e4909eE.exit", label %.lr.ph.i.i

_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit: ; preds = %bb.r, %bb.s
  %i.bd = icmp samesign ult i64 %.sroa.02.015.i.i, %i.y
  tail call void @llvm.assume(i1 %i.bd)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80830)
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.sroa.02.015.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !80809
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = xor i64 %.sroa.02.015.i.i, -1
  %i.bh = add nsw i64 %i.y, %i.bg
  %i.bi = mul nuw nsw i64 %i.bh, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull align 8 %i.bf, i64 %i.bi, i1 false), !noalias !80833
  %i.bj = add nsw i64 %i.y, -1
  store i64 %i.bj, ptr %i.x, align 8, !alias.scope !80836, !noalias !80837
  %.pr = load ptr, ptr %i.b, align 8, !alias.scope !80838 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80838)
  %i.bk = icmp eq ptr %.pr, null
  br i1 %i.bk, label %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$crossbeam_channel..waker..Entry$GT$$GT$17hf56b532ee8e4909eE.exit", label %bb.t

bb.t:                                             ; preds = %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit
  %i.bl = atomicrmw sub ptr %.pr, i64 1 release, align 8, !noalias !80841
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.u, label %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$crossbeam_channel..waker..Entry$GT$$GT$17hf56b532ee8e4909eE.exit"

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5bd5344f48960701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$crossbeam_channel..waker..Entry$GT$$GT$17hf56b532ee8e4909eE.exit" unwind label %bb.j

"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$crossbeam_channel..waker..Entry$GT$$GT$17hf56b532ee8e4909eE.exit": ; preds = %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i", %bb.l, %bb.t, %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_ZN17crossbeam_channel5waker5Waker6notify17hb59870214dccaa55E(ptr noalias noundef align 8 dereferenceable(48) %i.w)
          to label %bb.v unwind label %bb.j

bb.v:                                             ; preds = %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$crossbeam_channel..waker..Entry$GT$$GT$17hf56b532ee8e4909eE.exit"
  %i.bn = load i64, ptr %i.x, align 8, !noundef !10 ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 384307168202282326
  call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp eq i64 %i.bn, 0
  br i1 %i.bp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = load i64, ptr %i.bq, align 8, !noundef !10 ; 2 uses
  %i.bs = icmp ult i64 %i.br, 384307168202282326
  call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp eq i64 %i.br, 0
  %i.bu = zext i1 %i.bt to i8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.sroa.0.0 = phi i8 [ %i.bu, %bb.w ], [ 0, %bb.v ]
  store atomic i8 %.sroa.0.0, ptr %i.c seq_cst, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.k
  br i1 %i.t, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.bw = and i64 %i.bv, 9223372036854775807
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.aa, !prof !119

bb.aa:                                            ; preds = %bb.z
  %i.by = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.by, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store atomic i8 1, ptr %i.n monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.bz = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.ca = icmp eq i32 %i.bz, 2
  br i1 %i.ca, label %bb.ac, label %"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17he4529b7a6b8adc67E.exit", !prof !59

bb.ac:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %0)
  br label %"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17he4529b7a6b8adc67E.exit"

"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17he4529b7a6b8adc67E.exit": ; preds = %bb.ac, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.a
  ret void

bb.ad:                                            ; preds = %bb.j
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN17crossbeam_channel5waker9SyncWaker8register17h4f791fac27125f05E(ptr noundef nonnull align 8 %0, i64 noundef range(i64 3, 0) %1, ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = cmpxchg ptr %0, i32 0, i32 1 acquire monotonic, align 4, !noalias !80850
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !119

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %0), !noalias !80850
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !80850
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h7a6cd22410843514E.exit", label %bb.d, !prof !119

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !80850
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h7a6cd22410843514E.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h7a6cd22410843514E.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.j, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load atomic i8, ptr %i.k monotonic, align 4, !noalias !80850
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b4d298f29d5c2cbE.exit", label %bb.e, !prof !119

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h7a6cd22410843514E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80853
  store ptr %0, ptr %i.a, align 8, !noalias !80853
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.m, align 8, !noalias !80853
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2087, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1195) #106
          to label %bb.g unwind label %bb.f, !noalias !80857

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr134drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$$GT$17h78fc0263b5484339E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #107
          to label %common.resume unwind label %bb.h, !noalias !80857

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !80857
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.z, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b4d298f29d5c2cbE.exit": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h7a6cd22410843514E.exit"
  %i.p = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.q = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.n, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b4d298f29d5c2cbE.exit"
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.u, align 8
  store ptr %.0.val, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80858)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !80858, !noalias !80861, !noundef !10 ; 4 uses
  %i.x = load i64, ptr %i.s, align 8, !range !180, !alias.scope !80858, !noalias !80861, !noundef !10
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4db6c92e618f2e82E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1196)
          to label %bb.o unwind label %bb.k, !noalias !80861

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !80863
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.l, label %.body

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5bd5344f48960701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.m, !noalias !80858

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !80858
  unreachable

bb.n:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b4d298f29d5c2cbE.exit"
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.k, %bb.l
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17he4529b7a6b8adc67E"(ptr nonnull %0, i8 %.sroa.01.0.i.i) #107
          to label %common.resume unwind label %bb.v

bb.o:                                             ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !80858, !noalias !80861, !nonnull !10, !noundef !10
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !80858
  %i.ag = add nsw i64 %i.w, 1                     ; 2 uses
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !80858, !noalias !80861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ah = icmp slt i64 %i.w, 384307168202282325
end_hunk_3
begin_hunk_4_@"_ZN17crossbeam_channel7channel15Sender$LT$T$GT$4send17h55bd6a1644e275bdE":bb.a
  %.sroa.013.0.copyload32.i = phi i64 [ %.sroa.013.0.copyload30.i, %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$10start_send17h3a9d424f98d96acfE.exit.thread.i" ], [ %.sroa.013.0.copyload.i, %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$10start_send17h3a9d424f98d96acfE.exit.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.5.i, i64 408, i1 false), !alias.scope !80958, !noalias !80950
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %.not.i2 = icmp eq i64 %.sroa.013.0.copyload32.i, -9223372036854775793
  br i1 %.not.i2, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$5write17hb9d7862f78467d38E.exit.i"
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.6.i, i64 408, i1 false), !noalias !80945
  store i64 1, ptr %i.z, align 8, !alias.scope !80942, !noalias !80945
  %.sroa.4.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sroa.013.0.copyload32.i, ptr %.sroa.4.0..sroa_idx.i3, align 8, !alias.scope !80942, !noalias !80945
  br label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4send17h1103ab4f262aaa11E.exit"

bb.bj:                                            ; preds = %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$5write17hb9d7862f78467d38E.exit.i", %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$5write17hb9d7862f78467d38E.exit.thread.i"
  store i64 2, ptr %i.z, align 8, !alias.scope !80942, !noalias !80945
  br label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4send17h1103ab4f262aaa11E.exit"

.body.thread.i12:                                 ; preds = %.body.thread25.i, %.thread52.i.i, %bb.bg
  %eh.lpad-body23.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread25.i ], [ %lpad.phi.i.i, %.thread52.i.i ], [ %lpad.phi.i.i, %bb.bg ]
  invoke fastcc void @"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$17h7715973ed3d04e61E"(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.x) #107
          to label %common.resume unwind label %bb.bk, !noalias !80942

bb.bk:                                            ; preds = %.body.thread.i12
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !80942
  unreachable

"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4send17h1103ab4f262aaa11E.exit": ; preds = %bb.bi, %bb.bj
  %i.gi = phi i64 [ 1, %bb.bi ], [ 2, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.dr

bb.bl:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.w, ptr noundef nonnull align 8 dereferenceable(416) %1, i64 416, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80962)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1000000000, ptr %i.gj, align 8, !noalias !80964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !80964
  %i.gk = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i32 1000000000, ptr %i.gk, align 8, !noalias !80964
  %i.gl = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false), !noalias !80964
  store i32 1000000000, ptr %i.gl, align 8, !noalias !80964
  %i.gm = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  store ptr null, ptr %i.gm, align 8, !noalias !80964
  %i.gn = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !80965
  %i.go = extractvalue { i32, i1 } %i.gn, 1
  br i1 %i.go, label %.noexc.i21, label %bb.bm, !prof !119

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %.8.val)
          to label %.noexc.i21 unwind label %.split.thread.i, !noalias !80964

.noexc.i21:                                       ; preds = %bb.bm, %bb.bl
  %i.gp = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !80965
  %i.gq = and i64 %i.gp, 9223372036854775807
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %bb.bo, label %bb.bn, !prof !119

bb.bn:                                            ; preds = %.noexc.i21
  %i.gs = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc17.i unwind label %.split.thread.i, !noalias !80964

.noexc17.i:                                       ; preds = %bb.bn
  %i.gt = xor i1 %i.gs, true
  %i.gu = zext i1 %i.gt to i8
  br label %bb.bo

.body.i:                                          ; preds = %bb.ch, %bb.cg
  br i1 %.sroa.04.4.i, label %.body.thread.i20, label %common.resume

.split.thread.i:                                  ; preds = %bb.bn, %bb.bm
  %lpad.thr_comm90.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i20

bb.bo:                                            ; preds = %.noexc17.i, %.noexc.i21
  %.sroa.01.0.i.i.i22 = phi i8 [ %i.gu, %.noexc17.i ], [ 0, %.noexc.i21 ] ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
  %i.gw = load atomic i8, ptr %i.gv monotonic, align 1, !noalias !80965
  %.not76.i = icmp eq i8 %i.gw, 0
  br i1 %.not76.i, label %bb.bt, label %bb.bp, !prof !119

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !80968
  store ptr %.8.val, ptr %i.i, align 8, !noalias !80968
  %i.gx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %.sroa.01.0.i.i.i22, ptr %i.gx, align 8, !noalias !80968
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2088, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1224) #106
          to label %bb.br unwind label %bb.bq, !noalias !80972

bb.bq:                                            ; preds = %bb.bp
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$$GT$17hbf4afb3d7875b43eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #107
          to label %.body.thread.i20 unwind label %bb.bs, !noalias !80972

bb.br:                                            ; preds = %bb.bp
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !80972
  unreachable

bb.bt:                                            ; preds = %bb.bo
  %i.ha = trunc nuw i8 %.sroa.01.0.i.i.i22 to i1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80973)
  %i.hb = getelementptr inbounds nuw i8, ptr %.8.val, i64 72 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !80973, !noalias !80976, !noundef !10 ; 6 uses
  %i.hd = icmp ult i64 %i.hc, 384307168202282326
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = icmp eq i64 %i.hc, 0
  br i1 %i.he, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hf = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN17crossbeam_channel5waker17current_thread_id9THREAD_ID29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h56d98f853236bfb5E") ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load i8, ptr %i.hg, align 8, !range !405, !noalias !80978, !noundef !10
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i, label %bb.bv, !prof !119

bb.bv:                                            ; preds = %bb.bu
  %i.hj = invoke fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h0024bf7238fc202bE"(ptr noundef nonnull align 8 %i.hf, ptr noalias noundef align 8 dereferenceable_or_null(8) null)
          to label %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i unwind label %bb.dq, !noalias !80964 ; 0 uses

_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i: ; preds = %bb.bv, %bb.bu
  %.val.i.i.i.i = load i64, ptr %i.hf, align 8, !range !6697, !noalias !80985, !noundef !10
  %i.hk = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !80973, !noalias !80976, !nonnull !10, !noundef !10 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %i.hc, 24
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i", %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i
  %.sroa.02.015.i.i.i = phi i64 [ %i.if, %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i" ], [ 0, %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i ] ; 4 uses
  %i.hn = phi ptr [ %i.ho, %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i" ], [ %i.hl, %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i ] ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80986)
  %i.hp = load ptr, ptr %i.hn, align 8, !alias.scope !80986, !noalias !80989, !nonnull !10, !noundef !10 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load i64, ptr %i.hq, align 8, !range !6697, !noalias !80993, !noundef !10
  %.not.i.i.i.i24 = icmp eq i64 %i.hr, %.val.i.i.i.i
  br i1 %.not.i.i.i.i24, label %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i", label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !80986, !noalias !80989, !noundef !10
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hv = cmpxchg ptr %i.hu, i64 0, i64 %i.ht acq_rel acquire, align 8, !noalias !80993
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.hv, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.bx, label %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i"

bb.bx:                                            ; preds = %bb.bw
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !80986, !noalias !80989, !noundef !10 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  store atomic ptr %i.hx, ptr %i.hz release, align 8, !noalias !80993
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.ia, align 8, !noalias !80993, !nonnull !10, !noundef !10
  %i.ib = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 40 ; 2 uses
  %i.ic = atomicrmw xchg ptr %i.ib, i32 1 release, align 4, !noalias !80993
  %i.id = icmp eq i32 %i.ic, -1
  br i1 %i.id, label %bb.ca, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.i

bb.ca:                                            ; preds = %bb.bz
  %i.ie = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.ib)
          to label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.i unwind label %bb.dq, !noalias !80964 ; 0 uses

"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i": ; preds = %bb.bw, %.lr.ph.i.i.i
  %i.if = add nuw nsw i64 %.sroa.02.015.i.i.i, 1
  %i.ig = icmp eq ptr %i.ho, %i.hm
  br i1 %i.ig, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i, label %.lr.ph.i.i.i

_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.i: ; preds = %bb.ca, %bb.bz
  %i.ih = icmp samesign ult i64 %.sroa.02.015.i.i.i, %i.hc
  tail call void @llvm.assume(i1 %i.ih)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80994)
  %i.ii = getelementptr inbounds nuw [24 x i8], ptr %i.hl, i64 %.sroa.02.015.i.i.i ; 4 uses
  %.sroa.042.0.copyload43.i = load ptr, ptr %i.ii, align 8, !noalias !80997 ; 2 uses
  %.sroa.8.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx44.i, i64 16, i1 false), !noalias !80997
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = xor i64 %.sroa.02.015.i.i.i, -1
  %i.il = add nsw i64 %i.hc, %i.ik
  %i.im = mul nuw nsw i64 %i.il, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ii, ptr nonnull align 8 %i.ij, i64 %i.im, i1 false), !noalias !80998
  %i.in = add nsw i64 %i.hc, -1
  store i64 %i.in, ptr %i.hb, align 8, !alias.scope !81001, !noalias !81002
  %.not.i34 = icmp eq ptr %.sroa.042.0.copyload43.i, null
  br i1 %.not.i34, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i, label %bb.cb

bb.cb:                                            ; preds = %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !80964
  store ptr %.sroa.042.0.copyload43.i, ptr %i.k, align 8, !noalias !80964
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i64 16, i1 false), !noalias !80964
  %i.io = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !80964, !noundef !10
  store ptr %i.ip, ptr %i.gm, align 8, !noalias !80964
  br i1 %i.ha, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.iq = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !80964
  %i.ir = and i64 %i.iq, 9223372036854775807
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.cd, !prof !119

bb.cd:                                            ; preds = %bb.cc
  %i.it = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc20.i unwind label %bb.cg, !noalias !80964

.noexc20.i:                                       ; preds = %bb.cd
  br i1 %i.it, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %.noexc20.i
  store atomic i8 1, ptr %i.gv monotonic, align 4, !noalias !80964
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.ce, %.noexc20.i, %bb.cc, %bb.cb
  %i.iu = atomicrmw xchg ptr %.8.val, i32 0 release, align 4, !noalias !80964
  %i.iv = icmp eq i32 %i.iu, 2
  br i1 %i.iv, label %bb.cf, label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit.i", !prof !59

bb.cf:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 8 %.8.val)
          to label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit.i" unwind label %bb.cg, !noalias !80964

_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i: ; preds = %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i", %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.iw = getelementptr inbounds nuw i8, ptr %.8.val, i64 104
  %i.ix = load i8, ptr %i.iw, align 8, !range !405, !noalias !80964, !noundef !10
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.dm, label %bb.co

bb.cg:                                            ; preds = %bb.cl, %bb.ck, %bb.cf, %bb.cd
  %.sroa.04.4.i = phi i1 [ false, %bb.cl ], [ false, %bb.ck ], [ true, %bb.cf ], [ true, %bb.cd ]
  %i.iz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81003)
  call void @llvm.experimental.noalias.scope.decl(metadata !81006)
  call void @llvm.experimental.noalias.scope.decl(metadata !81009)
  call void @llvm.experimental.noalias.scope.decl(metadata !81012)
  %i.ja = load ptr, ptr %i.k, align 8, !alias.scope !81015, !noalias !80964, !nonnull !10, !noundef !10
  %i.jb = atomicrmw sub ptr %i.ja, i64 1 release, align 8, !noalias !81016
  %i.jc = icmp eq i64 %i.jb, 1
  br i1 %i.jc, label %bb.ch, label %.body.i

bb.ch:                                            ; preds = %bb.cg
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5bd5344f48960701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i unwind label %bb.cn, !noalias !80964

"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit.i": ; preds = %bb.cf, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !80964
  %.val16.i = load ptr, ptr %i.gm, align 8, !noalias !80964, !noundef !10 ; 3 uses
  %i.jd = icmp eq ptr %.val16.i, null
  br i1 %i.jd, label %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$5write17h7dae411a6a3f82baE.exit.i", label %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$5write17h7dae411a6a3f82baE.exit.thread.i"

"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$5write17h7dae411a6a3f82baE.exit.thread.i": ; preds = %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %.val16.i, ptr noundef nonnull align 8 dereferenceable(416) %i.w, i64 416, i1 false), !noalias !80959
  %i.je = getelementptr inbounds nuw i8, ptr %.val16.i, i64 416
  store atomic i8 1, ptr %i.je release, align 8, !noalias !81017
  br label %bb.ci

"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$5write17h7dae411a6a3f82baE.exit.i": ; preds = %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.j, ptr noundef nonnull align 8 dereferenceable(416) %i.w, i64 416, i1 false), !noalias !80959
  %.pr.i = load i64, ptr %i.j, align 8, !noalias !80964
  %.not8.i = icmp eq i64 %.pr.i, -9223372036854775793
  br i1 %.not8.i, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$5write17h7dae411a6a3f82baE.exit.i", %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$5write17h7dae411a6a3f82baE.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !80964
  store i64 2, ptr %i.z, align 8, !alias.scope !80959, !noalias !80962
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81030)
  %i.jf = load ptr, ptr %i.k, align 8, !alias.scope !81033, !noalias !80964, !nonnull !10, !noundef !10
  %i.jg = atomicrmw sub ptr %i.jf, i64 1 release, align 8, !noalias !81034
  %i.jh = icmp eq i64 %i.jg, 1
  br i1 %i.jh, label %bb.cj, label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit24.i"

bb.cj:                                            ; preds = %bb.ci
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5bd5344f48960701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k), !noalias !80964
  br label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit24.i"

bb.ck:                                            ; preds = %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$5write17h7dae411a6a3f82baE.exit.i"
  invoke fastcc void @"_ZN4core3ptr165drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h736f29ba1efcb56aE"(ptr noalias noundef align 8 dereferenceable(416) %i.j)
          to label %bb.cl unwind label %bb.cg, !noalias !80964

"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit24.i": ; preds = %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !80964
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$4send17h1e5af5319fd27d49E.exit"

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !80964
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1225) #106
          to label %bb.cm unwind label %bb.cg, !noalias !80964

bb.cm:                                            ; preds = %bb.cl
  unreachable

bb.cn:                                            ; preds = %.body.thread.i20, %bb.dq, %bb.ch
  %i.ji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !80959
  unreachable

bb.co:                                            ; preds = %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !81035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.h, ptr noundef nonnull align 8 dereferenceable(416) %i.w, i64 416, i1 false), !noalias !80959
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81039)
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  store ptr %.8.val, ptr %.sroa.448.0..sroa_idx.i, align 8, !noalias !81040
  %.sroa.5.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.h, i64 424
  store i8 %.sroa.01.0.i.i.i22, ptr %.sroa.5.0..sroa_idx.i25, align 8, !noalias !81040
  %.sroa.650.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  store ptr %i.l, ptr %.sroa.650.0..sroa_idx.i, align 8, !noalias !81040
  %.sroa.751.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 440
  store ptr %i.m, ptr %.sroa.751.0..sroa_idx.i, align 8, !noalias !81040
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  store ptr %.8.val, ptr %.sroa.852.0..sroa_idx.i, align 8, !noalias !81040
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %i.jj = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN17crossbeam_channel7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hda6eb156b3a9322fE") ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load i8, ptr %i.jk, align 8, !range !406, !noalias !81041, !noundef !10
  %i.jm = icmp eq i8 %i.jl, 1
  br i1 %i.jm, label %_ZN4core3ops8function6FnOnce9call_once17h2b3ae99d36808766E.exit.thread.i.i.i27, label %_ZN4core3ops8function6FnOnce9call_once17h2b3ae99d36808766E.exit.i.i.i26, !prof !119

_ZN4core3ops8function6FnOnce9call_once17h2b3ae99d36808766E.exit.i.i.i26: ; preds = %bb.co
  %i.jn = invoke fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17he50c06648912913cE"(ptr noundef nonnull align 8 %i.jj, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i.i unwind label %bb.di, !noalias !81035 ; 2 uses

.noexc.i.i:                                       ; preds = %_ZN4core3ops8function6FnOnce9call_once17h2b3ae99d36808766E.exit.i.i.i26
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hcdbbda5cae649f81E.exit.thread.i.i", label %_ZN4core3ops8function6FnOnce9call_once17h2b3ae99d36808766E.exit.thread.i.i.i27

_ZN4core3ops8function6FnOnce9call_once17h2b3ae99d36808766E.exit.thread.i.i.i27: ; preds = %.noexc.i.i, %bb.co
  %.sroa.0.0.i.i.i2.i.i.i28 = phi ptr [ %i.jn, %.noexc.i.i ], [ %i.jj, %bb.co ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !81050
  %i.jp = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i28, align 8, !noalias !81051, !noundef !10 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i28, align 8, !noalias !81051
  %.not.i.i.i25.i = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i25.i, label %bb.cp, label %bb.cy, !prof !59

bb.cp:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h2b3ae99d36808766E.exit.thread.i.i.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !81051
  %i.jq = invoke noundef nonnull ptr @_ZN17crossbeam_channel7context7Context3new17hf9705e22dd4bb6a2E()
          to label %.noexc2.i.i unwind label %bb.di, !noalias !81035 ; 2 uses

.noexc2.i.i:                                      ; preds = %bb.cp
  store ptr %i.jq, ptr %i.f, align 8, !noalias !81051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !81051
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !81051 ; 2 uses
  store i64 -9223372036854775793, ptr %i.h, align 8, !noalias !81051
  %.not14.i.i.i.i = icmp eq i64 %.sroa.03.0.copyload.i.i.i.i, -9223372036854775793
  br i1 %.not14.i.i.i.i, label %bb.cr, label %bb.cq, !prof !59

bb.cq:                                            ; preds = %.noexc2.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.03.0.copyload.i.i.i.i, ptr %i.c, align 8, !noalias !81051
  %.sroa.5.0..sroa_idx5.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %.sroa.5.0..sroa_idx5.i.i.i.i31, ptr noundef nonnull align 8 dereferenceable(448) %.sroa.5.0..sroa_idx.i.i.i.i, i64 448, i1 false), !noalias !81051
  invoke fastcc void @"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17heaaa36d5ab02c67dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(424) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(456) %i.c, ptr nonnull %i.jq)
          to label %bb.cv unwind label %bb.cs, !noalias !81050

bb.cr:                                            ; preds = %.noexc2.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1206) #106
          to label %bb.cu unwind label %bb.cs, !noalias !81051

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.jr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81054)
  call void @llvm.experimental.noalias.scope.decl(metadata !81057)
  call void @llvm.experimental.noalias.scope.decl(metadata !81060)
  %i.js = load ptr, ptr %i.f, align 8, !alias.scope !81063, !noalias !81051, !nonnull !10, !noundef !10
  %i.jt = atomicrmw sub ptr %i.js, i64 1 release, align 8, !noalias !81064
  %i.ju = icmp eq i64 %i.jt, 1
  br i1 %i.ju, label %bb.ct, label %.body.i.i

bb.ct:                                            ; preds = %bb.cs
  fence acquire
end_hunk_4
begin_hunk_5_@"_ZN17crossbeam_channel7channel15Sender$LT$T$GT$8try_send17h759574533a7c8f8eE":bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = atomicrmw or ptr %i.dk, i64 1 release, align 8, !noalias !81138 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_ZN17crossbeam_channel5waker9SyncWaker6notify17hfdb5c923735f1ebcE(ptr noundef nonnull align 8 %i.dm), !noalias !81131
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.ao

"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$5write17h9644eaf6452d1814E.exit.i.i": ; preds = %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$10start_send17h6aa8f2e037fea8beE.exit.i.i", %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$10start_send17h6aa8f2e037fea8beE.exit.thread.i.i"
  %.sroa.013.0.copyload32.i.i = phi i64 [ %.sroa.013.0.copyload30.i.i, %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$10start_send17h6aa8f2e037fea8beE.exit.thread.i.i" ], [ %.sroa.013.0.copyload.i.i, %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$10start_send17h6aa8f2e037fea8beE.exit.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !alias.scope !81139, !noalias !81131
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  %.not.i.i = icmp eq i64 %.sroa.013.0.copyload32.i.i, 2
  br i1 %.not.i.i, label %bb.ao, label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$8try_send28_$u7b$$u7b$closure$u7d$$u7d$17h09a5e5d8055e1101E.exit.i"

.body.thread.i.i:                                 ; preds = %.body.thread25.i.i, %.thread52.i.i.i, %bb.al
  %eh.lpad-body23.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread25.i.i ], [ %lpad.phi.i.i.i, %.thread52.i.i.i ], [ %lpad.phi.i.i.i, %bb.al ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h3b6092fb85cf34f7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #107
          to label %common.resume unwind label %bb.an, !noalias !81130

bb.an:                                            ; preds = %.body.thread.i.i
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !81130
  unreachable

"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$8try_send28_$u7b$$u7b$closure$u7d$$u7d$17h09a5e5d8055e1101E.exit.i": ; preds = %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$5write17h9644eaf6452d1814E.exit.i.i"
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false), !noalias !81120
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store i64 1, ptr %0, align 8, !alias.scope !81117, !noalias !81120
  %.sroa.43.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.013.0.copyload32.i.i, ptr %.sroa.43.0..sroa_idx.i3, align 8, !alias.scope !81117, !noalias !81120
  br label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$8try_send17h0012474282c991c5E.exit"

bb.ao:                                            ; preds = %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$5write17h9644eaf6452d1814E.exit.i.i", %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$5write17h9644eaf6452d1814E.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store i64 2, ptr %0, align 8, !alias.scope !81117, !noalias !81120
  br label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$8try_send17h0012474282c991c5E.exit"

"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$8try_send17h0012474282c991c5E.exit": ; preds = %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$8try_send28_$u7b$$u7b$closure$u7d$$u7d$17h09a5e5d8055e1101E.exit.i", %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bw

bb.ap:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81143)
  %i.do = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !81145
  %i.dp = extractvalue { i32, i1 } %i.do, 1
  br i1 %i.dp, label %.noexc.i6, label %bb.aq, !prof !119

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %.8.val)
          to label %.noexc.i6 unwind label %.thread59.i, !noalias !81148

.noexc.i6:                                        ; preds = %bb.aq, %bb.ap
  %i.dq = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !81145
  %i.dr = and i64 %i.dq, 9223372036854775807
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.as, label %bb.ar, !prof !119

bb.ar:                                            ; preds = %.noexc.i6
  %i.dt = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc16.i unwind label %.thread59.i, !noalias !81148

.noexc16.i:                                       ; preds = %bb.ar
  %i.du = xor i1 %i.dt, true
  %i.dv = zext i1 %i.du to i8
  br label %bb.as

.thread59.i:                                      ; preds = %bb.ar, %bb.aq
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread56.i

bb.as:                                            ; preds = %.noexc16.i, %.noexc.i6
  %.sroa.01.0.i.i.i7 = phi i8 [ %i.dv, %.noexc16.i ], [ 0, %.noexc.i6 ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
  %i.dx = load atomic i8, ptr %i.dw monotonic, align 1, !noalias !81145
  %.not65.i = icmp eq i8 %i.dx, 0
  br i1 %.not65.i, label %bb.ax, label %bb.at, !prof !119

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81149
  store ptr %.8.val, ptr %i.a, align 8, !noalias !81149
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i.i7, ptr %i.dy, align 8, !noalias !81149
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2088, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1234) #106
          to label %bb.av unwind label %bb.au, !noalias !81153

bb.au:                                            ; preds = %bb.at
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$$GT$17hbf4afb3d7875b43eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #107
          to label %.thread56.i unwind label %bb.aw, !noalias !81153

bb.av:                                            ; preds = %bb.at
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !81153
  unreachable

bb.ax:                                            ; preds = %bb.as
  %i.eb = trunc nuw i8 %.sroa.01.0.i.i.i7 to i1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.744.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81154)
  %i.ec = getelementptr inbounds nuw i8, ptr %.8.val, i64 72 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !81154, !noalias !81157, !noundef !10 ; 6 uses
  %i.ee = icmp ult i64 %i.ed, 384307168202282326
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = icmp eq i64 %i.ed, 0
  br i1 %i.ef, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN17crossbeam_channel5waker17current_thread_id9THREAD_ID29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h56d98f853236bfb5E") ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i8, ptr %i.eh, align 8, !range !405, !noalias !81159, !noundef !10
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i, label %bb.az, !prof !119

bb.az:                                            ; preds = %bb.ay
  %i.ek = invoke fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h0024bf7238fc202bE"(ptr noundef nonnull align 8 %i.eg, ptr noalias noundef align 8 dereferenceable_or_null(8) null)
          to label %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i unwind label %bb.bf, !noalias !81148 ; 0 uses

_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i: ; preds = %bb.az, %bb.ay
  %.val.i.i.i.i = load i64, ptr %i.eg, align 8, !range !6697, !noalias !81166, !noundef !10
  %i.el = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !81154, !noalias !81157, !nonnull !10, !noundef !10 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %i.ed, 24
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx.i.i
  br label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i", %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i
  %.sroa.02.015.i.i.i = phi i64 [ %i.fg, %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i" ], [ 0, %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i ] ; 4 uses
  %i.eo = phi ptr [ %i.ep, %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i" ], [ %i.em, %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81167)
  %i.eq = load ptr, ptr %i.eo, align 8, !alias.scope !81167, !noalias !81170, !nonnull !10, !noundef !10 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load i64, ptr %i.er, align 8, !range !6697, !noalias !81174, !noundef !10
  %.not.i.i.i.i = icmp eq i64 %i.es, %.val.i.i.i.i
  br i1 %.not.i.i.i.i, label %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i", label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i8
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !81167, !noalias !81170, !noundef !10
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.ew = cmpxchg ptr %i.ev, i64 0, i64 %i.eu acq_rel acquire, align 8, !noalias !81174
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ew, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.bb, label %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i"

bb.bb:                                            ; preds = %bb.ba
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !81167, !noalias !81170, !noundef !10 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  store atomic ptr %i.ey, ptr %i.fa release, align 8, !noalias !81174
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.fb, align 8, !noalias !81174, !nonnull !10, !noundef !10
  %i.fc = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 40 ; 2 uses
  %i.fd = atomicrmw xchg ptr %i.fc, i32 1 release, align 4, !noalias !81174
  %i.fe = icmp eq i32 %i.fd, -1
  br i1 %i.fe, label %bb.be, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.ff = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.fc)
          to label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.i unwind label %bb.bf, !noalias !81148 ; 0 uses

"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i": ; preds = %bb.ba, %.lr.ph.i.i.i8
  %i.fg = add nuw nsw i64 %.sroa.02.015.i.i.i, 1
  %i.fh = icmp eq ptr %i.ep, %i.en
  br i1 %i.fh, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i, label %.lr.ph.i.i.i8

bb.bf:                                            ; preds = %bb.be, %bb.az
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E"(ptr nonnull align 8 %.8.val, i8 %.sroa.01.0.i.i.i7) #107
          to label %.thread56.i unwind label %bb.bs, !noalias !81148

_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.i: ; preds = %bb.be, %bb.bd
  %i.fj = icmp samesign ult i64 %.sroa.02.015.i.i.i, %i.ed
  tail call void @llvm.assume(i1 %i.fj)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81175)
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %.sroa.02.015.i.i.i ; 4 uses
  %.sroa.042.0.copyload43.i = load ptr, ptr %i.fk, align 8, !noalias !81178 ; 2 uses
  %.sroa.744.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.744.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.744.0..sroa_idx45.i, i64 16, i1 false), !noalias !81178
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = xor i64 %.sroa.02.015.i.i.i, -1
  %i.fn = add nsw i64 %i.ed, %i.fm
  %i.fo = mul nuw nsw i64 %i.fn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fk, ptr nonnull align 8 %i.fl, i64 %i.fo, i1 false), !noalias !81179
  %i.fp = add nsw i64 %i.ed, -1
  store i64 %i.fp, ptr %i.ec, align 8, !alias.scope !81182, !noalias !81183
  %.not.i10 = icmp eq ptr %.sroa.042.0.copyload43.i, null
  br i1 %.not.i10, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !81148
  store ptr %.sroa.042.0.copyload43.i, ptr %i.c, align 8, !noalias !81148
  %.sroa.744.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.744.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.744.i, i64 16, i1 false), !noalias !81148
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !81148, !noundef !10 ; 3 uses
  br i1 %i.eb, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fs = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !81148
  %i.ft = and i64 %i.fs, 9223372036854775807
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.bi, !prof !119

bb.bi:                                            ; preds = %bb.bh
  %i.fv = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc19.i unwind label %bb.bl, !noalias !81148

.noexc19.i:                                       ; preds = %bb.bi
  br i1 %i.fv, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.noexc19.i
  store atomic i8 1, ptr %i.dw monotonic, align 4, !noalias !81148
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.bj, %.noexc19.i, %bb.bh, %bb.bg
  %i.fw = atomicrmw xchg ptr %.8.val, i32 0 release, align 4, !noalias !81148
  %i.fx = icmp eq i32 %i.fw, 2
  br i1 %i.fx, label %bb.bk, label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit.i", !prof !59

bb.bk:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 8 %.8.val)
          to label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit.i" unwind label %bb.bl, !noalias !81148

_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i: ; preds = %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i", %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.i, %bb.ax
  %i.fy = getelementptr inbounds nuw i8, ptr %.8.val, i64 104
  %i.fz = load i8, ptr %i.fy, align 8, !range !405, !noalias !81148, !noundef !10
  %. = zext nneg i8 %i.fz to i64
  %.sroa.4.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i9, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !alias.scope !81148
  store i64 %., ptr %0, align 8, !alias.scope !81140, !noalias !81143
  br i1 %i.eb, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i24.i, label %bb.bt

bb.bl:                                            ; preds = %bb.bq, %bb.bp, %bb.bk, %bb.bi
  %.sroa.04.2.i = phi i1 [ false, %bb.bq ], [ false, %bb.bp ], [ true, %bb.bk ], [ true, %bb.bi ]
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81184)
  call void @llvm.experimental.noalias.scope.decl(metadata !81187)
  call void @llvm.experimental.noalias.scope.decl(metadata !81190)
  call void @llvm.experimental.noalias.scope.decl(metadata !81193)
  %i.gb = load ptr, ptr %i.c, align 8, !alias.scope !81196, !noalias !81148, !nonnull !10, !noundef !10
  %i.gc = atomicrmw sub ptr %i.gb, i64 1 release, align 8, !noalias !81197
  %i.gd = icmp eq i64 %i.gc, 1
  br i1 %i.gd, label %bb.bm, label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit.i"

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5bd5344f48960701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit.i" unwind label %bb.bs, !noalias !81148

"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit.i": ; preds = %bb.bm, %bb.bl
  br i1 %.sroa.04.2.i, label %.thread56.i, label %common.resume

"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit.i": ; preds = %bb.bk, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !81148
  %i.ge = icmp eq ptr %i.fr, null
  br i1 %i.ge, label %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$5write17h40388cc2a8ffa1d0E.exit.i", label %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$5write17h40388cc2a8ffa1d0E.exit.thread.i"

"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$5write17h40388cc2a8ffa1d0E.exit.thread.i": ; preds = %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !81140
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  store atomic i8 1, ptr %i.gf release, align 8, !noalias !81198
  br label %bb.bn

"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$5write17h40388cc2a8ffa1d0E.exit.i": ; preds = %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !81140
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !81148
  %.not8.i = icmp eq i64 %.pr.i, 2
  br i1 %.not8.i, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$5write17h40388cc2a8ffa1d0E.exit.i", %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$5write17h40388cc2a8ffa1d0E.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !81148
  store i64 2, ptr %0, align 8, !alias.scope !81140, !noalias !81143
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81211)
  %i.gg = load ptr, ptr %i.c, align 8, !alias.scope !81214, !noalias !81148, !nonnull !10, !noundef !10
  %i.gh = atomicrmw sub ptr %i.gg, i64 1 release, align 8, !noalias !81215
  %i.gi = icmp eq i64 %i.gh, 1
  br i1 %i.gi, label %bb.bo, label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit23.i"

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5bd5344f48960701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !81148
  br label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit23.i"

bb.bp:                                            ; preds = %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$5write17h40388cc2a8ffa1d0E.exit.i"
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$$GT$17h89525281a385356dE"(ptr noalias noundef align 8 dereferenceable(24) %i.b)
          to label %bb.bq unwind label %bb.bl, !noalias !81148

"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit23.i": ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !81148
  br label %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$8try_send17hc7ee67e8f17304ecE.exit"

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !81148
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1235) #106
          to label %bb.br unwind label %bb.bl, !noalias !81148

bb.br:                                            ; preds = %bb.bq
  unreachable

bb.bs:                                            ; preds = %.thread56.i, %bb.bm, %bb.bf
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !81140
  unreachable

bb.bt:                                            ; preds = %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i
  %i.gk = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !81148
  %i.gl = and i64 %i.gk, 9223372036854775807
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i24.i, label %.noexc25.i, !prof !119

.noexc25.i:                                       ; preds = %bb.bt
  %i.gn = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !81148
  br i1 %i.gn, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i24.i, label %bb.bu

bb.bu:                                            ; preds = %.noexc25.i
  store atomic i8 1, ptr %i.dw monotonic, align 4, !noalias !81148
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i24.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i24.i: ; preds = %bb.bu, %.noexc25.i, %bb.bt, %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i
  %i.go = atomicrmw xchg ptr %.8.val, i32 0 release, align 4, !noalias !81148
  %i.gp = icmp eq i32 %i.go, 2
  br i1 %i.gp, label %bb.bv, label %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$8try_send17hc7ee67e8f17304ecE.exit", !prof !59

bb.bv:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i24.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 8 %.8.val), !noalias !81148
  br label %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$8try_send17hc7ee67e8f17304ecE.exit"

.thread56.i:                                      ; preds = %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit.i", %bb.bf, %bb.au, %.thread59.i
  %.pn52.i = phi { ptr, i32 } [ %i.dz, %bb.au ], [ %lpad.thr_comm.i, %.thread59.i ], [ %i.ga, %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit.i" ], [ %i.fi, %bb.bf ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h3b6092fb85cf34f7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #107
          to label %common.resume unwind label %bb.bs, !noalias !81140

"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$8try_send17hc7ee67e8f17304ecE.exit": ; preds = %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit23.i", %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i24.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.744.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bw

bb.bw:                                            ; preds = %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$8try_send17hc7ee67e8f17304ecE.exit", %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$8try_send17h0012474282c991c5E.exit", %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$8try_send17h03bea5cebda795e7E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN17crossbeam_channel7channel17Receiver$LT$T$GT$8try_recv17h5ef68907c7bfa0a4E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.740.i = alloca [16 x i8], align 8        ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.734.i = alloca [16 x i8], align 8        ; 4 uses
  %.sroa.419.i = alloca [16 x i8], align 8        ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.66.i = alloca [16 x i8], align 8         ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 2 uses
  %i.g = alloca [16 x i8], align 8                ; 2 uses
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.u
    i64 2, label %bb.aq
    i64 3, label %bb.cb
    i64 4, label %bb.cc
    i64 5, label %bb.cd
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81216)
  %i.h = load atomic i64, ptr %.8.val monotonic, align 8, !noalias !81219
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.m = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  br label %_ZN15crossbeam_utils7backoff7Backoff4spin17hefcbd68618ba614aE.exit17.i.i
end_hunk_5
begin_hunk_6_@"_ZN17crossbeam_channel7channel17Receiver$LT$T$GT$8try_recv17h5ef68907c7bfa0a4E":bb.a

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i2.i.i.1
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.ep, 30
  br i1 %exitcond.not.i.i.i.1, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h97174b1754f82343E.exit.sink.split.i.i", label %.lr.ph.i2.i.i

bb.am:                                            ; preds = %bb.ai
  %i.ey = icmp samesign ult i64 %i.bs, 29
  br i1 %i.ey, label %.lr.ph.i4.i.i, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h97174b1754f82343E.exit.sink.split.i.i"

.lr.ph.i4.i.i:                                    ; preds = %bb.am, %bb.ao
  %.sroa.01.04.i5.i.i = phi i64 [ %i.ez, %bb.ao ], [ %i.ec, %bb.am ] ; 2 uses
  %i.ez = add nuw nsw i64 %.sroa.01.04.i5.i.i, 1  ; 2 uses
  %i.fa = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.0.i.i, i64 %.sroa.01.04.i5.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 2 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8, !noalias !81231
  %i.fd = and i64 %i.fc, 2
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i4.i.i
  %i.ff = atomicrmw or ptr %i.fb, i64 4 acq_rel, align 8, !noalias !81231
  %i.fg = and i64 %i.ff, 2
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h63b038e169ed5790E.exit.i", label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i4.i.i
  %exitcond.not.i6.i.i = icmp eq i64 %i.ez, 30
  br i1 %exitcond.not.i6.i.i, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h97174b1754f82343E.exit.sink.split.i.i", label %.lr.ph.i4.i.i

"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h97174b1754f82343E.exit.sink.split.i.i": ; preds = %bb.ao, %bb.al, %bb.am
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.i.i, i64 noundef 1000, i64 noundef 8) #101, !noalias !81231
  br label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h63b038e169ed5790E.exit.i"

"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h63b038e169ed5790E.exit.i": ; preds = %bb.an, %bb.aj, %bb.ak, %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h97174b1754f82343E.exit.sink.split.i.i", %bb.ai
  %i.fi = icmp eq i64 %.sroa.018.0.copyload.i, 2
  br i1 %i.fi, label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h63b038e169ed5790E.exit.thread.i", label %bb.ap

"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h63b038e169ed5790E.exit.thread.i": ; preds = %bb.z, %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h63b038e169ed5790E.exit.i"
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fj, align 8, !alias.scope !81225
  br label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$8try_recv17h125bbf98644a78acE.exit"

bb.ap:                                            ; preds = %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h63b038e169ed5790E.exit.i"
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.417.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.419.i, i64 16, i1 false)
  br label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$8try_recv17h125bbf98644a78acE.exit"

"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$8try_recv17h125bbf98644a78acE.exit": ; preds = %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h63b038e169ed5790E.exit.thread.i", %bb.ap, %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$10start_recv17hf0e3f2e7af2eafe6E.exit.i"
  %storemerge.i = phi i64 [ 2, %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$10start_recv17hf0e3f2e7af2eafe6E.exit.i" ], [ %.sroa.018.0.copyload.i, %bb.ap ], [ 2, %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h63b038e169ed5790E.exit.thread.i" ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !81225
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.419.i)
  br label %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$8try_recv17ha7f69e07614781bfE.exit"

bb.aq:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81234)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.740.i)
  %i.fk = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !81237
  %i.fl = extractvalue { i32, i1 } %i.fk, 1
  br i1 %i.fl, label %bb.as, label %bb.ar, !prof !119

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %.8.val), !noalias !81237
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fm = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !81237
  %i.fn = and i64 %i.fm, 9223372036854775807
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hde90a096ff927657E.exit.i", label %bb.at, !prof !119

bb.at:                                            ; preds = %bb.as
  %i.fp = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !81237
  %i.fq = xor i1 %i.fp, true
  %i.fr = zext i1 %i.fq to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hde90a096ff927657E.exit.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hde90a096ff927657E.exit.i": ; preds = %bb.at, %bb.as
  %.sroa.01.0.i.i.i16 = phi i8 [ %i.fr, %bb.at ], [ 0, %bb.as ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
  %i.ft = load atomic i8, ptr %i.fs monotonic, align 1, !noalias !81237
  %.not47.i = icmp eq i8 %i.ft, 0
  br i1 %.not47.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6d28e89e37117914E.exit.i", label %bb.au, !prof !119

bb.au:                                            ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hde90a096ff927657E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !81240
  store ptr %.8.val, ptr %i.c, align 8, !noalias !81240
  %i.fu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i.i16, ptr %i.fu, align 8, !noalias !81240
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2088, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1233) #106
          to label %bb.aw unwind label %bb.av, !noalias !81244

bb.av:                                            ; preds = %bb.au
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$$GT$17hbf4afb3d7875b43eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #107
          to label %common.resume unwind label %bb.ax, !noalias !81244

bb.aw:                                            ; preds = %bb.au
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !81244
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6d28e89e37117914E.exit.i": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hde90a096ff927657E.exit.i"
  %i.fx = trunc nuw i8 %.sroa.01.0.i.i.i16 to i1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.734.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81245)
  %i.fy = getelementptr inbounds nuw i8, ptr %.8.val, i64 24 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !81245, !noalias !81248, !noundef !10 ; 6 uses
  %i.ga = icmp ult i64 %i.fz, 384307168202282326
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = icmp eq i64 %i.fz, 0
  br i1 %i.gb, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i, label %bb.ay

bb.ay:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6d28e89e37117914E.exit.i"
  %i.gc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN17crossbeam_channel5waker17current_thread_id9THREAD_ID29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h56d98f853236bfb5E") ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load i8, ptr %i.gd, align 8, !range !405, !noalias !81250, !noundef !10
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i, label %bb.az, !prof !119

bb.az:                                            ; preds = %bb.ay
  %i.gg = invoke fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h0024bf7238fc202bE"(ptr noundef nonnull align 8 %i.gc, ptr noalias noundef align 8 dereferenceable_or_null(8) null)
          to label %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i unwind label %bb.bf, !noalias !81234 ; 0 uses

_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i: ; preds = %bb.az, %bb.ay
  %.val.i.i.i.i = load i64, ptr %i.gc, align 8, !range !6697, !noalias !81257, !noundef !10
  %i.gh = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !81245, !noalias !81248, !nonnull !10, !noundef !10 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %i.fz, 24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.idx.i.i
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i", %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i
  %.sroa.02.015.i.i.i = phi i64 [ %i.hc, %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i" ], [ 0, %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i ] ; 4 uses
  %i.gk = phi ptr [ %i.gl, %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i" ], [ %i.gi, %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i.i ] ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81258)
  %i.gm = load ptr, ptr %i.gk, align 8, !alias.scope !81258, !noalias !81261, !nonnull !10, !noundef !10 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !range !6697, !noalias !81265, !noundef !10
  %.not.i.i.i.i = icmp eq i64 %i.go, %.val.i.i.i.i
  br i1 %.not.i.i.i.i, label %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i", label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i17
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !81258, !noalias !81261, !noundef !10
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.gs = cmpxchg ptr %i.gr, i64 0, i64 %i.gq acq_rel acquire, align 8, !noalias !81265
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.gs, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.bb, label %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i"

bb.bb:                                            ; preds = %bb.ba
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !81258, !noalias !81261, !noundef !10 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  store atomic ptr %i.gu, ptr %i.gw release, align 8, !noalias !81265
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.gx, align 8, !noalias !81265, !nonnull !10, !noundef !10
  %i.gy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 40 ; 2 uses
  %i.gz = atomicrmw xchg ptr %i.gy, i32 1 release, align 4, !noalias !81265
  %i.ha = icmp eq i32 %i.gz, -1
  br i1 %i.ha, label %bb.be, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.hb = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.gy)
          to label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.i unwind label %bb.bf, !noalias !81234 ; 0 uses

"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i": ; preds = %bb.ba, %.lr.ph.i.i.i17
  %i.hc = add nuw nsw i64 %.sroa.02.015.i.i.i, 1
  %i.hd = icmp eq ptr %i.gl, %i.gj
  br i1 %i.hd, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i, label %.lr.ph.i.i.i17

bb.bf:                                            ; preds = %bb.be, %bb.az
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E"(ptr nonnull align 8 %.8.val, i8 %.sroa.01.0.i.i.i16) #107
          to label %common.resume unwind label %bb.bw, !noalias !81234

_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.i: ; preds = %bb.be, %bb.bd
  %i.hf = icmp samesign ult i64 %.sroa.02.015.i.i.i, %i.fz
  tail call void @llvm.assume(i1 %i.hf)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81266)
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.gi, i64 %.sroa.02.015.i.i.i ; 4 uses
  %.sroa.032.0.copyload33.i = load ptr, ptr %i.hg, align 8, !noalias !81269 ; 2 uses
  %.sroa.734.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.734.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.734.0..sroa_idx35.i, i64 16, i1 false), !noalias !81269
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = xor i64 %.sroa.02.015.i.i.i, -1
  %i.hj = add nsw i64 %i.fz, %i.hi
  %i.hk = mul nuw nsw i64 %i.hj, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hg, ptr nonnull align 8 %i.hh, i64 %i.hk, i1 false), !noalias !81270
  %i.hl = add nsw i64 %i.fz, -1
  store i64 %i.hl, ptr %i.fy, align 8, !alias.scope !81273, !noalias !81274
  %.not.i = icmp eq ptr %.sroa.032.0.copyload33.i, null
  br i1 %.not.i, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !81234
  store ptr %.sroa.032.0.copyload33.i, ptr %i.d, align 8, !noalias !81234
  %.sroa.734.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.734.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.734.i, i64 16, i1 false), !noalias !81234
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !81234, !noundef !10 ; 11 uses
  br i1 %i.fx, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ho = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !81234
  %i.hp = and i64 %i.ho, 9223372036854775807
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.bi, !prof !119

bb.bi:                                            ; preds = %bb.bh
  %i.hr = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc9.i unwind label %.loopexit.split-lp.i, !noalias !81234

.noexc9.i:                                        ; preds = %bb.bi
  br i1 %i.hr, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.noexc9.i
  store atomic i8 1, ptr %i.fs monotonic, align 4, !noalias !81234
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.bj, %.noexc9.i, %bb.bh, %bb.bg
  %i.hs = atomicrmw xchg ptr %.8.val, i32 0 release, align 4, !noalias !81234
  %i.ht = icmp eq i32 %i.hs, 2
  br i1 %i.ht, label %bb.bk, label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit.i", !prof !59

bb.bk:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 8 %.8.val)
          to label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit.i" unwind label %.loopexit.split-lp.i, !noalias !81234

_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i: ; preds = %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i.i", %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6d28e89e37117914E.exit.i"
  %i.hu = getelementptr inbounds nuw i8, ptr %.8.val, i64 104
  %i.hv = load i8, ptr %i.hu, align 8, !range !405, !noalias !81234, !noundef !10
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.hv, ptr %i.hw, align 8, !alias.scope !81234
  store i64 2, ptr %0, align 8, !alias.scope !81234
  br i1 %i.fx, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i17.i, label %bb.bx

.loopexit.i:                                      ; preds = %.loopexit.i.i.i.i20
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit.split-lp.i:                             ; preds = %.invoke.i, %bb.bk, %bb.bi
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81284)
  %i.hx = load ptr, ptr %i.d, align 8, !alias.scope !81287, !noalias !81234, !nonnull !10, !noundef !10
  %i.hy = atomicrmw sub ptr %i.hx, i64 1 release, align 8, !noalias !81288
  %i.hz = icmp eq i64 %i.hy, 1
  br i1 %i.hz, label %bb.bm, label %common.resume

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5bd5344f48960701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.bw, !noalias !81234

"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit.i": ; preds = %bb.bk, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  %i.ia = icmp eq ptr %i.hn, null
  br i1 %i.ia, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit.i"
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 25
  %i.ic = load i8, ptr %i.ib, align 1, !range !405, !noalias !81289, !noundef !10
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hn, i64 24 ; 2 uses
  %i.if = load atomic i8, ptr %i.ie acquire, align 1, !noalias !81289
  %i.ig = icmp eq i8 %i.if, 0
  br i1 %i.ig, label %.lr.ph.i.i12.i, label %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h8d89cfff72858f71E.exit.i.i"

.lr.ph.i.i12.i:                                   ; preds = %bb.bo, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i.i.i21
  %.sroa.0.02.i.i.i19 = phi i32 [ %.sroa.0.1.i.i.i22, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i.i.i21 ], [ 0, %bb.bo ] ; 5 uses
  %i.ih = icmp ult i32 %.sroa.0.02.i.i.i19, 7
  br i1 %i.ih, label %.preheader.i.i.i.i24, label %.loopexit.i.i.i.i20

.loopexit.i.i.i.i20:                              ; preds = %.lr.ph.i.i12.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %.noexc13.i unwind label %.loopexit.i, !noalias !81234

.noexc13.i:                                       ; preds = %.loopexit.i.i.i.i20
  %i.ii = icmp ult i32 %.sroa.0.02.i.i.i19, 11
  br i1 %i.ii, label %.loopexit.i.thread.i.i.i23, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i.i.i21

.preheader.i.i.i.i24:                             ; preds = %.lr.ph.i.i12.i, %.preheader.i.i.i.i24
  %.sroa.0.03.i.i.i.i25 = phi i32 [ %i.ij, %.preheader.i.i.i.i24 ], [ 0, %.lr.ph.i.i12.i ]
  %i.ij = add nuw nsw i32 %.sroa.0.03.i.i.i.i25, 1 ; 2 uses
  tail call void @llvm.x86.sse2.pause() #101, !noalias !81289
  %.sroa.0.0.highbits.i.i.i.i26 = lshr i32 %i.ij, %.sroa.0.02.i.i.i19
  %i.ik = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i26, 0
  br i1 %i.ik, label %.preheader.i.i.i.i24, label %.loopexit.i.thread.i.i.i23

.loopexit.i.thread.i.i.i23:                       ; preds = %.preheader.i.i.i.i24, %.noexc13.i
  %i.il = add nuw nsw i32 %.sroa.0.02.i.i.i19, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i.i.i21

_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i.i.i21: ; preds = %.loopexit.i.thread.i.i.i23, %.noexc13.i
  %.sroa.0.1.i.i.i22 = phi i32 [ %i.il, %.loopexit.i.thread.i.i.i23 ], [ %.sroa.0.02.i.i.i19, %.noexc13.i ]
  %i.im = load atomic i8, ptr %i.ie acquire, align 1, !noalias !81289
  %i.in = icmp eq i8 %i.im, 0
  br i1 %i.in, label %.lr.ph.i.i12.i, label %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h8d89cfff72858f71E.exit.i.i"

"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h8d89cfff72858f71E.exit.i.i": ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i.i.i21, %bb.bo
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.hn, align 8, !noalias !81289 ; 2 uses
  store i64 2, ptr %i.hn, align 8, !noalias !81289
  %.not.i.i18 = icmp eq i64 %.sroa.04.0.copyload.i.i, 2
  br i1 %.not.i.i18, label %.invoke.i, label %bb.bq, !prof !59

bb.bp:                                            ; preds = %bb.bn
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.hn, align 8, !noalias !81289 ; 2 uses
  store i64 2, ptr %i.hn, align 8, !noalias !81289
  %.not11.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 2
  br i1 %.not11.i.i, label %.invoke.i, label %bb.br, !prof !59

.invoke.i:                                        ; preds = %bb.bp, %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h8d89cfff72858f71E.exit.i.i"
  %i.io = phi ptr [ @1215, %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h8d89cfff72858f71E.exit.i.i" ], [ @1216, %bb.bp ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.io) #106
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !81234

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bq:                                            ; preds = %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h8d89cfff72858f71E.exit.i.i"
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i.i, i64 16, i1 false), !noalias !81234
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 32, i64 noundef 8) #101, !noalias !81289
  br label %bb.bt

bb.br:                                            ; preds = %bb.bp
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !noalias !81234
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store atomic i8 1, ptr %i.ip release, align 8, !noalias !81289
  br label %bb.bt

bb.bs:                                            ; preds = %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit.i"
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.iq, align 8, !alias.scope !81234
  store i64 2, ptr %0, align 8, !alias.scope !81234
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br, %bb.bq
  %.sroa.039.0.ph.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.br ], [ %.sroa.04.0.copyload.i.i, %bb.bq ]
  store i64 %.sroa.039.0.ph.i, ptr %0, align 8, !alias.scope !81234
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.442.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.i, i64 16, i1 false)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81301)
  %i.ir = load ptr, ptr %i.d, align 8, !alias.scope !81304, !noalias !81234, !nonnull !10, !noundef !10
  %i.is = atomicrmw sub ptr %i.ir, i64 1 release, align 8, !noalias !81305
  %i.it = icmp eq i64 %i.is, 1
  br i1 %i.it, label %bb.bv, label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit16.i"

bb.bv:                                            ; preds = %bb.bu
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5bd5344f48960701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !81234
  br label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit16.i"

"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit16.i": ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !81234
  br label %"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$8try_recv17h1979ab2fc74a5bd9E.exit"

bb.bw:                                            ; preds = %bb.bm, %bb.bf
  %i.iu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !81234
  unreachable

bb.bx:                                            ; preds = %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread.i
  %i.iv = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !81234
  %i.iw = and i64 %i.iv, 9223372036854775807
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i17.i, label %bb.by, !prof !119

bb.by:                                            ; preds = %bb.bx
end_hunk_6
begin_hunk_7_@"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$10disconnect17hce54ea63f49c7da5E":bb.a
  br i1 %i.bc, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.o, !prof !119

bb.o:                                             ; preds = %bb.n
  %i.bd = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.bd, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.j monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %_ZN17crossbeam_channel5waker5Waker10disconnect17hb4313721f375a889E.exit15
  %i.be = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.bf = icmp eq i32 %i.be, 2
  br i1 %i.bf, label %bb.q, label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit", !prof !59

bb.q:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %0)
  br label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit"

"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.q
  ret void

bb.r:                                             ; preds = %.loopexit.split-lp
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$4recv17h095326e241358b28E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(416) %0, ptr noundef nonnull align 8 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [416 x i8], align 8               ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [416 x i8], align 8               ; 6 uses
  %.sroa.6.i = alloca [408 x i8], align 8         ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.739 = alloca [408 x i8], align 8         ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  store i64 %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %3, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 1000000000, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  store i32 1000000000, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store ptr null, ptr %i.p, align 8
  %i.q = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !noalias !81556
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %bb.c, label %bb.b, !prof !119

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %1), !noalias !81556
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !81556
  %i.t = and i64 %i.s, 9223372036854775807
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hde90a096ff927657E.exit", label %bb.d, !prof !119

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !81556
  %i.w = xor i1 %i.v, true
  %i.x = zext i1 %i.w to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hde90a096ff927657E.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hde90a096ff927657E.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.x, %bb.d ], [ 0, %bb.c ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.z = load atomic i8, ptr %i.y monotonic, align 4, !noalias !81556
  %.not75 = icmp eq i8 %i.z, 0
  br i1 %.not75, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6d28e89e37117914E.exit", label %bb.e, !prof !119

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hde90a096ff927657E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !81559
  store ptr %1, ptr %i.i, align 8, !noalias !81559
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.aa, align 8, !noalias !81559
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2088, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1217) #106
          to label %bb.g unwind label %bb.f, !noalias !81563

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$$GT$17hbf4afb3d7875b43eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #107
          to label %common.resume unwind label %bb.h, !noalias !81563

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !81563
  unreachable

common.resume:                                    ; preds = %bb.bi, %bb.u, %bb.v, %.body.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %lpad.phi, %bb.v ], [ %lpad.thr_comm.split-lp, %bb.bi ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.u ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6d28e89e37117914E.exit": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hde90a096ff927657E.exit"
  %i.ad = trunc nuw i8 %.sroa.01.0.i.i to i1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81564)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !81564, !noalias !81567, !noundef !10 ; 6 uses
  %i.ag = icmp ult i64 %i.af, 384307168202282326
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6d28e89e37117914E.exit"
  %i.ai = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN17crossbeam_channel5waker17current_thread_id9THREAD_ID29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h56d98f853236bfb5E") ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !range !405, !noalias !81569, !noundef !10
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i, label %bb.j, !prof !119

bb.j:                                             ; preds = %bb.i
  %i.am = invoke fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h0024bf7238fc202bE"(ptr noundef nonnull align 8 %i.ai, ptr noalias noundef align 8 dereferenceable_or_null(8) null)
          to label %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i unwind label %bb.bi ; 0 uses

_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i: ; preds = %bb.j, %bb.i
  %.val.i.i.i = load i64, ptr %i.ai, align 8, !range !6697, !noalias !81576, !noundef !10
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !81564, !noalias !81567, !nonnull !10, !noundef !10 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.af, 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i", %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i
  %.sroa.02.015.i.i = phi i64 [ %i.bi, %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i" ], [ 0, %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i ] ; 4 uses
  %i.aq = phi ptr [ %i.ar, %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i" ], [ %i.ao, %_ZN17crossbeam_channel5waker17current_thread_id17h102ebecbc2abf552E.exit.i ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81577)
  %i.as = load ptr, ptr %i.aq, align 8, !alias.scope !81577, !noalias !81580, !nonnull !10, !noundef !10 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i64, ptr %i.at, align 8, !range !6697, !noalias !81584, !noundef !10
  %.not.i.i.i = icmp eq i64 %i.au, %.val.i.i.i
  br i1 %.not.i.i.i, label %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i", label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !81577, !noalias !81580, !noundef !10
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.ay = cmpxchg ptr %i.ax, i64 0, i64 %i.aw acq_rel acquire, align 8, !noalias !81584
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.ay, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.l, label %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !81577, !noalias !81580, !noundef !10 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store atomic ptr %i.ba, ptr %i.bc release, align 8, !noalias !81584
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.val1.i.i.i = load ptr, ptr %i.bd, align 8, !noalias !81584, !nonnull !10, !noundef !10
  %i.be = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 40 ; 2 uses
  %i.bf = atomicrmw xchg ptr %i.be, i32 1 release, align 4, !noalias !81584
  %i.bg = icmp eq i32 %i.bf, -1
  br i1 %i.bg, label %bb.o, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit

bb.o:                                             ; preds = %bb.n
  %i.bh = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.be)
          to label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit unwind label %bb.bi ; 0 uses

"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i": ; preds = %bb.k, %.lr.ph.i.i
  %i.bi = add nuw nsw i64 %.sroa.02.015.i.i, 1
  %i.bj = icmp eq ptr %i.ar, %i.ap
  br i1 %i.bj, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread, label %.lr.ph.i.i

_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit: ; preds = %bb.n, %bb.o
  %i.bk = icmp samesign ult i64 %.sroa.02.015.i.i, %i.af
  tail call void @llvm.assume(i1 %i.bk)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81585)
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.sroa.02.015.i.i ; 4 uses
  %.sroa.033.0.copyload34 = load ptr, ptr %i.bl, align 8, !noalias !81564 ; 2 uses
  %.sroa.8.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx35, i64 16, i1 false), !noalias !81564
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = xor i64 %.sroa.02.015.i.i, -1
  %i.bo = add nsw i64 %i.af, %i.bn
  %i.bp = mul nuw nsw i64 %i.bo, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr nonnull align 8 %i.bm, i64 %i.bp, i1 false), !noalias !81588
  %i.bq = add nsw i64 %i.af, -1
  store i64 %i.bq, ptr %i.ae, align 8, !alias.scope !81591, !noalias !81592
  %.not = icmp eq ptr %.sroa.033.0.copyload34, null
  br i1 %.not, label %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %.sroa.033.0.copyload34, ptr %i.j, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !noundef !10
  store ptr %i.bs, ptr %i.p, align 8
  br i1 %i.ad, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.bu = and i64 %i.bt, 9223372036854775807
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.r, !prof !119

bb.r:                                             ; preds = %bb.q
  %i.bw = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.r
  br i1 %i.bw, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc11
  store atomic i8 1, ptr %i.y monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.s, %.noexc11, %bb.q, %bb.p
  %i.bx = atomicrmw xchg ptr %1, i32 0 release, align 4
  %i.by = icmp eq i32 %i.bx, 2
  br i1 %i.by, label %bb.t, label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit", !prof !59

bb.t:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %1)
          to label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit" unwind label %.loopexit.split-lp

_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread: ; preds = %"_ZN17crossbeam_channel5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17hb273e589c0b617b1E.exit.i.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6d28e89e37117914E.exit", %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ca = load i8, ptr %i.bz, align 8, !range !405, !noundef !10
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.bc, label %bb.ag

.loopexit:                                        ; preds = %.loopexit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %.invoke, %bb.r, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81602)
  %i.cc = load ptr, ptr %i.j, align 8, !alias.scope !81605, !nonnull !10, !noundef !10
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !81605
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.v, label %common.resume

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5bd5344f48960701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.af

"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.t
  %.val9 = load ptr, ptr %i.p, align 8, !noundef !10 ; 11 uses
  %i.cf = icmp eq ptr %.val9, null
  br i1 %i.cf, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit"
  %i.cg = getelementptr inbounds nuw i8, ptr %.val9, i64 417
  %i.ch = load i8, ptr %i.cg, align 1, !range !405, !noalias !81606, !noundef !10
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %.val9, i64 416 ; 2 uses
  %i.ck = load atomic i8, ptr %i.cj acquire, align 1, !noalias !81606
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i14, label %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit.i"

.lr.ph.i.i14:                                     ; preds = %bb.x, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i.i ], [ 0, %bb.x ] ; 5 uses
  %i.cm = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.cm, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i14
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %.noexc15 unwind label %.loopexit

.noexc15:                                         ; preds = %.loopexit.i.i.i
  %i.cn = icmp ult i32 %.sroa.0.02.i.i, 11
  br i1 %i.cn, label %.loopexit.i.thread.i.i, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i14, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.co, %.preheader.i.i.i ], [ 0, %.lr.ph.i.i14 ]
  %i.co = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause() #101, !noalias !81606
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.co, %.sroa.0.02.i.i
  %i.cp = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.cp, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.noexc15
  %i.cq = add nuw nsw i32 %.sroa.0.02.i.i, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i.i

_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.noexc15
  %.sroa.0.1.i.i = phi i32 [ %i.cq, %.loopexit.i.thread.i.i ], [ %.sroa.0.02.i.i, %.noexc15 ]
  %i.cr = load atomic i8, ptr %i.cj acquire, align 1, !noalias !81606
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i14, label %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit.i"

"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit.i": ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i.i, %bb.x
  %.sroa.04.0.copyload.i = load i64, ptr %.val9, align 8, !noalias !81606 ; 2 uses
  store i64 -9223372036854775793, ptr %.val9, align 8, !noalias !81606
  %.not.i = icmp eq i64 %.sroa.04.0.copyload.i, -9223372036854775793
  br i1 %.not.i, label %.invoke, label %bb.z, !prof !59

bb.y:                                             ; preds = %bb.w
  %.sroa.0.0.copyload.i = load i64, ptr %.val9, align 8, !noalias !81606 ; 2 uses
  store i64 -9223372036854775793, ptr %.val9, align 8, !noalias !81606
  %.not11.i = icmp eq i64 %.sroa.0.0.copyload.i, -9223372036854775793
  br i1 %.not11.i, label %.invoke, label %bb.aa, !prof !59

.invoke:                                          ; preds = %bb.y, %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit.i"
  %i.ct = phi ptr [ @1215, %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit.i" ], [ @1216, %bb.y ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #106
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.z:                                             ; preds = %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit.i"
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.739, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.56.0..sroa_idx.i, i64 408, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef 424, i64 noundef 8) #101, !noalias !81606
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.739, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.5.0..sroa_idx.i, i64 408, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %.val9, i64 416
  store atomic i8 1, ptr %i.cu release, align 8, !noalias !81606
  br label %bb.ac

bb.ab:                                            ; preds = %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit"
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cv, align 8
  store i64 -9223372036854775793, ptr %0, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z, %bb.aa
  %.sroa.038.0.ph = phi i64 [ %.sroa.0.0.copyload.i, %bb.aa ], [ %.sroa.04.0.copyload.i, %bb.z ]
  store i64 %.sroa.038.0.ph, ptr %0, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.461.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.739, i64 408, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81618)
  %i.cw = load ptr, ptr %i.j, align 8, !alias.scope !81621, !nonnull !10, !noundef !10
  %i.cx = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !noalias !81621
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.ae, label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit19"

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5bd5344f48960701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit19"

"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit19": ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit24"

bb.af:                                            ; preds = %bb.v, %bb.bi
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108
  unreachable

bb.ag:                                            ; preds = %_ZN17crossbeam_channel5waker5Waker10try_select17hae7af18c8499d04dE.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !81625
  store ptr %i.k, ptr %i.h, align 8, !noalias !81622
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
end_hunk_7
begin_hunk_8_@"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h4498de79024b5f69E":bb.a
  br i1 %.sroa.18.0.in.i.i.i, label %.thread30, label %bb.u

bb.t:                                             ; preds = %bb.r, %.split.i
  %i.bf = invoke { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.aq, i32 noundef range(i32 0, 1000000001) %i.as, i64 noundef %i.ay, i32 noundef %i.az)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc39:                                         ; preds = %bb.t
  %i.bg = extractvalue { i64, i32 } %i.bf, 0
  %i.bh = extractvalue { i64, i32 } %i.bf, 1
  invoke void @_ZN3std6thread12park_timeout17h5d1b13252e89f7a3E(i64 noundef %i.bg, i32 noundef %i.bh)
          to label %.split8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.u:                                             ; preds = %bb.s
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.be, 0
  switch i64 %.sroa.01.0.i.i.i, label %.thread34 [
    i64 0, label %bb.v
    i64 1, label %.thread30
    i64 2, label %.thread37
  ], !prof !81685

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @173, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1218) #106
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread30:                                        ; preds = %.split8.i, %.split8.us.i, %bb.s, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !10, !align !299, !noundef !10 ; 9 uses
  %i.bk = cmpxchg ptr %i.bj, i32 0, i32 1 acquire monotonic, align 4, !noalias !81686
  %i.bl = extractvalue { i32, i1 } %i.bk, 1
  br i1 %i.bl, label %.noexc42, label %bb.w, !prof !119

bb.w:                                             ; preds = %.thread30
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bj)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.w, %.thread30
  %i.bm = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !81686
  %i.bn = and i64 %i.bm, 9223372036854775807
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.aa, label %bb.x, !prof !119

bb.x:                                             ; preds = %.noexc42
  %i.bp = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %bb.x
  %i.bq = xor i1 %i.bp, true
  %i.br = zext i1 %i.bq to i8
  br label %bb.aa

.thread37:                                        ; preds = %.split8.i, %.split8.us.i, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.615)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !10, !align !299, !noundef !10 ; 9 uses
  %i.bu = cmpxchg ptr %i.bt, i32 0, i32 1 acquire monotonic, align 4, !noalias !81689
  %i.bv = extractvalue { i32, i1 } %i.bu, 1
  br i1 %i.bv, label %.noexc46, label %bb.y, !prof !119

bb.y:                                             ; preds = %.thread37
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bt)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.y, %.thread37
  %i.bw = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !81689
  %i.bx = and i64 %i.bw, 9223372036854775807
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.ax, label %bb.z, !prof !119

bb.z:                                             ; preds = %.noexc46
  %i.bz = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.z
  %i.ca = xor i1 %i.bz, true
  %i.cb = zext i1 %i.ca to i8
  br label %bb.ax

.thread34:                                        ; preds = %.split8.i, %.split8.us.i, %bb.u
  %i.cc = load atomic i8, ptr %i.j acquire, align 8
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit"

.lr.ph.i:                                         ; preds = %.thread34, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i
  %.sroa.0.02.i = phi i32 [ %.sroa.0.1.i, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i ], [ 0, %.thread34 ] ; 5 uses
  %i.ce = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.ce, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %.noexc49 unwind label %.loopexit

.noexc49:                                         ; preds = %.loopexit.i.i
  %i.cf = icmp ult i32 %.sroa.0.02.i, 11
  br i1 %i.cf, label %.loopexit.i.thread.i, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.cg, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.cg = add nuw nsw i32 %.sroa.0.03.i.i, 1      ; 2 uses
  call void @llvm.x86.sse2.pause() #101
  %.sroa.0.0.highbits.i.i = lshr i32 %i.cg, %.sroa.0.02.i
  %i.ch = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.ch, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.noexc49
  %i.ci = add nuw nsw i32 %.sroa.0.02.i, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i

_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i: ; preds = %.loopexit.i.thread.i, %.noexc49
  %.sroa.0.1.i = phi i32 [ %i.ci, %.loopexit.i.thread.i ], [ %.sroa.0.02.i, %.noexc49 ]
  %i.cj = load atomic i8, ptr %i.j acquire, align 8
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit"

bb.aa:                                            ; preds = %.noexc43, %.noexc42
  %.sroa.01.0.i.i = phi i8 [ %i.br, %.noexc43 ], [ 0, %.noexc42 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %i.cm = load atomic i8, ptr %i.cl monotonic, align 4, !noalias !81686
  %.not45 = icmp eq i8 %i.cm, 0
  br i1 %.not45, label %bb.af, label %bb.ab, !prof !119

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81692
  store ptr %i.bj, ptr %i.a, align 8, !noalias !81692
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.cn, align 8, !noalias !81692
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2088, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1219) #106
          to label %bb.ad unwind label %bb.ac, !noalias !81696

bb.ac:                                            ; preds = %bb.ab
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$$GT$17hbf4afb3d7875b43eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #107
          to label %.body unwind label %bb.ae, !noalias !81696

bb.ad:                                            ; preds = %bb.ab
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !81696
  unreachable

bb.af:                                            ; preds = %bb.aa
  %i.cq = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !81697)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !81697, !noalias !81700, !nonnull !10, !noundef !10 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 72 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !81697, !noalias !81700, !noundef !10 ; 7 uses
  %.idx83 = mul nuw nsw i64 %i.cu, 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx83
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit.thread, label %.lr.ph82

bb.ag:                                            ; preds = %.lr.ph82
  %i.cx = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  %i.cy = add nuw nsw i64 %i.db, 1
  %i.cz = icmp eq ptr %i.cx, %i.cv
  br i1 %i.cz, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit.thread, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.af, %bb.ag
  %i.da = phi ptr [ %i.cx, %bb.ag ], [ %i.cs, %bb.af ] ; 2 uses
  %i.db = phi i64 [ %i.cy, %bb.ag ], [ 0, %bb.af ] ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !81702, !noalias !81707, !noundef !10
  %.not.i.i = icmp eq i64 %i.dd, %i.h
  br i1 %.not.i.i, label %bb.ah, label %bb.ag

bb.ah:                                            ; preds = %.lr.ph82
  call void @llvm.experimental.noalias.scope.decl(metadata !81712)
  %i.de = icmp ult i64 %i.cu, 384307168202282326
  call void @llvm.assume(i1 %i.de)
  %.not.i5.i = icmp samesign ult i64 %i.db, %i.cu
  br i1 %.not.i5.i, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit, label %bb.ai, !prof !119

bb.ai:                                            ; preds = %bb.ah
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.db, i64 noundef %i.cu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1191) #106
          to label %.noexc50 unwind label %bb.aj

.noexc50:                                         ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.al, %bb.ai, %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit.thread
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E"(ptr nonnull %i.bj, i8 %.sroa.01.0.i.i) #107
          to label %.body unwind label %bb.aw

_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit: ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %i.db ; 4 uses
  %.sroa.02.0.copyload3 = load ptr, ptr %i.dg, align 8, !noalias !81697 ; 3 uses
  %.sroa.64.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.64, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.64.0..sroa_idx5, i64 16, i1 false), !noalias !81697
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = xor i64 %i.db, -1
  %i.dj = add nsw i64 %i.cu, %i.di
  %i.dk = mul nuw nsw i64 %i.dj, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr nonnull align 8 %i.dh, i64 %i.dk, i1 false), !noalias !81715
  %i.dl = add nsw i64 %i.cu, -1
  store i64 %i.dl, ptr %i.ct, align 8, !alias.scope !81718, !noalias !81719
  %.not14 = icmp eq ptr %.sroa.02.0.copyload3, null
  br i1 %.not14, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit.thread, label %bb.ak, !prof !40202

bb.ak:                                            ; preds = %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit
  store ptr %.sroa.02.0.copyload3, ptr %i.e, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.64.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.64, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64)
  %i.dm = atomicrmw sub ptr %.sroa.02.0.copyload3, i64 1 release, align 8, !noalias !81720
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.al, label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit"

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5bd5344f48960701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit" unwind label %bb.aj

_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit.thread: ; preds = %bb.ag, %bb.af, %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1220) #106
          to label %bb.c unwind label %bb.aj

"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit": ; preds = %bb.ak, %bb.al
  br i1 %i.cq, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i52, label %bb.am

bb.am:                                            ; preds = %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit"
  %i.do = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.dp = and i64 %i.do, 9223372036854775807
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i52, label %bb.an, !prof !119

bb.an:                                            ; preds = %bb.am
  %i.dr = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53:                                         ; preds = %bb.an
  br i1 %i.dr, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i52, label %bb.ao

bb.ao:                                            ; preds = %.noexc53
  store atomic i8 1, ptr %i.cl monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i52

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i52: ; preds = %bb.ao, %.noexc53, %bb.am, %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit"
  %i.ds = atomicrmw xchg ptr %i.bj, i32 0 release, align 4
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %bb.ap, label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit55", !prof !59

bb.ap:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i52
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.bj)
          to label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit55" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit55": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i52, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.du, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.bn, %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit70", %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit55"
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.bn ], [ -9223372036854775793, %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit70" ], [ -9223372036854775793, %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit55" ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 8
  %i.dv = load i64, ptr %i.f, align 8, !range !31256, !alias.scope !81729, !noundef !10
  switch i64 %i.dv, label %bb.ar [
    i64 -9223372036854775793, label %"_ZN4core3ptr174drop_in_place$LT$crossbeam_channel..flavors..zero..Packet$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h08c352761c7b9e56E.exit"
    i64 -9223372036854775794, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @"_ZN4core3ptr76drop_in_place$LT$milli..update..index_documents..typed_chunk..TypedChunk$GT$17he099d8a7bf628b54E"(ptr noalias noundef nonnull align 8 dereferenceable(424) %i.f)
  br label %"_ZN4core3ptr174drop_in_place$LT$crossbeam_channel..flavors..zero..Packet$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h08c352761c7b9e56E.exit"

bb.as:                                            ; preds = %bb.aq
  %i.dw = load i64, ptr %.sroa.410.0..sroa_idx, align 8, !range !3379, !alias.scope !81736, !noundef !10 ; 2 uses
  %i.dx = add nsw i64 %i.dw, -95
  %i.dy = icmp samesign ugt i64 %i.dw, 94
  %i.dz = select i1 %i.dy, i64 %i.dx, i64 2
  switch i64 %i.dz, label %bb.at [
    i64 0, label %bb.au
    i64 1, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  call fastcc void @"_ZN4core3ptr44drop_in_place$LT$milli..error..UserError$GT$17h13a314a155c02142E"(ptr noalias noundef nonnull align 8 dereferenceable(320) %.sroa.410.0..sroa_idx)
  br label %"_ZN4core3ptr174drop_in_place$LT$crossbeam_channel..flavors..zero..Packet$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h08c352761c7b9e56E.exit"

bb.au:                                            ; preds = %bb.as
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @"_ZN4core3ptr48drop_in_place$LT$milli..error..InternalError$GT$17haaeb9944b0a99ea3E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ea)
  br label %"_ZN4core3ptr174drop_in_place$LT$crossbeam_channel..flavors..zero..Packet$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h08c352761c7b9e56E.exit"

bb.av:                                            ; preds = %bb.as
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h311d5137e27cf60dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eb)
  br label %"_ZN4core3ptr174drop_in_place$LT$crossbeam_channel..flavors..zero..Packet$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h08c352761c7b9e56E.exit"

bb.aw:                                            ; preds = %bb.aj, %bb.bg, %bb.bq, %.body
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108
  unreachable

bb.ax:                                            ; preds = %.noexc47, %.noexc46
  %.sroa.01.0.i.i44 = phi i8 [ %i.cb, %.noexc47 ], [ 0, %.noexc46 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %i.ee = load atomic i8, ptr %i.ed monotonic, align 4, !noalias !81689
  %.not44 = icmp eq i8 %i.ee, 0
  br i1 %.not44, label %bb.bc, label %bb.ay, !prof !119

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !81741
  store ptr %i.bt, ptr %i.b, align 8, !noalias !81741
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i44, ptr %i.ef, align 8, !noalias !81741
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2088, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1221) #106
          to label %bb.ba unwind label %bb.az, !noalias !81745

bb.az:                                            ; preds = %bb.ay
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$$GT$17hbf4afb3d7875b43eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #107
          to label %.body unwind label %bb.bb, !noalias !81745

bb.ba:                                            ; preds = %bb.ay
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !81745
  unreachable

bb.bc:                                            ; preds = %bb.ax
  %i.ei = trunc nuw i8 %.sroa.01.0.i.i44 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !81746)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !81746, !noalias !81749, !nonnull !10, !noundef !10 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.bt, i64 72 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !81746, !noalias !81749, !noundef !10 ; 7 uses
  %.idx = mul nuw nsw i64 %i.em, 24
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx
  %i.eo = icmp eq i64 %i.em, 0
  br i1 %i.eo, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit64.thread, label %.lr.ph

bb.bd:                                            ; preds = %.lr.ph
  %i.ep = getelementptr inbounds nuw i8, ptr %i.es, i64 24 ; 2 uses
  %i.eq = add nuw nsw i64 %i.et, 1
  %i.er = icmp eq ptr %i.ep, %i.en
  br i1 %i.er, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit64.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bc, %bb.bd
  %i.es = phi ptr [ %i.ep, %bb.bd ], [ %i.ek, %bb.bc ] ; 2 uses
  %i.et = phi i64 [ %i.eq, %bb.bd ], [ 0, %bb.bc ] ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !81751, !noalias !81756, !noundef !10
  %.not.i.i60 = icmp eq i64 %i.ev, %i.h
  br i1 %.not.i.i60, label %bb.be, label %bb.bd

bb.be:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !81761)
  %i.ew = icmp ult i64 %i.em, 384307168202282326
  call void @llvm.assume(i1 %i.ew)
  %.not.i5.i61 = icmp samesign ult i64 %i.et, %i.em
  br i1 %.not.i5.i61, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit64, label %bb.bf, !prof !119

bb.bf:                                            ; preds = %bb.be
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.et, i64 noundef %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1191) #106
          to label %.noexc63 unwind label %bb.bg

.noexc63:                                         ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.bi, %bb.bf, %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit64.thread
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E"(ptr nonnull %i.bt, i8 %.sroa.01.0.i.i44) #107
          to label %.body unwind label %bb.aw

_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit64: ; preds = %bb.be
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.ek, i64 %i.et ; 4 uses
  %.sroa.013.0.copyload14 = load ptr, ptr %i.ey, align 8, !noalias !81746 ; 3 uses
  %.sroa.615.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.615, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.615.0..sroa_idx16, i64 16, i1 false), !noalias !81746
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = xor i64 %i.et, -1
  %i.fb = add nsw i64 %i.em, %i.fa
  %i.fc = mul nuw nsw i64 %i.fb, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ey, ptr nonnull align 8 %i.ez, i64 %i.fc, i1 false), !noalias !81764
  %i.fd = add nsw i64 %i.em, -1
  store i64 %i.fd, ptr %i.el, align 8, !alias.scope !81767, !noalias !81768
  %.not13 = icmp eq ptr %.sroa.013.0.copyload14, null
  br i1 %.not13, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit64.thread, label %bb.bh, !prof !40202

bb.bh:                                            ; preds = %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit64
  store ptr %.sroa.013.0.copyload14, ptr %i.d, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.615.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.615, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615)
  %i.fe = atomicrmw sub ptr %.sroa.013.0.copyload14, i64 1 release, align 8, !noalias !81769
  %i.ff = icmp eq i64 %i.fe, 1
  br i1 %i.ff, label %bb.bi, label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit66"

bb.bi:                                            ; preds = %bb.bh
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5bd5344f48960701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit66" unwind label %bb.bg

_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit64.thread: ; preds = %bb.bd, %bb.bc, %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit64
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #106
          to label %bb.c unwind label %bb.bg

"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit66": ; preds = %bb.bh, %bb.bi
  br i1 %i.ei, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i67, label %bb.bj

bb.bj:                                            ; preds = %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit66"
  %i.fg = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.fh = and i64 %i.fg, 9223372036854775807
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i67, label %bb.bk, !prof !119

bb.bk:                                            ; preds = %bb.bj
  %i.fj = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc68:                                         ; preds = %bb.bk
  br i1 %i.fj, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i67, label %bb.bl

bb.bl:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.ed monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i67

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i67: ; preds = %bb.bl, %.noexc68, %bb.bj, %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit66"
  %i.fk = atomicrmw xchg ptr %i.bt, i32 0 release, align 4
  %i.fl = icmp eq i32 %i.fk, 2
  br i1 %i.fl, label %bb.bm, label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit70", !prof !59

bb.bm:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i67
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.bt)
          to label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit70" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit70": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i67, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fm, align 8
  br label %bb.aq

"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit": ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i, %.thread34
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  store i64 -9223372036854775793, ptr %i.f, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775793
  br i1 %.not, label %bb.bo, label %bb.bn, !prof !59

bb.bn:                                            ; preds = %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit"
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.410.0..sroa_idx, i64 408, i1 false)
  br label %bb.aq

bb.bo:                                            ; preds = %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit"
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1223) #106
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr174drop_in_place$LT$crossbeam_channel..flavors..zero..Packet$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h08c352761c7b9e56E.exit": ; preds = %bb.av, %bb.au, %bb.at, %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.bp:                                            ; preds = %bb.bq, %bb.b
  resume { ptr, i32 } %.pn

bb.bq:                                            ; preds = %bb.b
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val21 = load i8, ptr %i.fn, align 8, !range !405, !noundef !10
  invoke fastcc void @"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E"(ptr nonnull %i.l, i8 %.val21) #107
          to label %bb.bp unwind label %bb.aw
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17heaaa36d5ab02c67dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(424) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(456) %1, ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.614 = alloca [16 x i8], align 8          ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.63 = alloca [16 x i8], align 8           ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [424 x i8], align 8               ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !align !299, !noundef !10
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 417
  store i8 1, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 416 ; 3 uses
  store i8 0, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.f, ptr noundef nonnull align 8 dereferenceable(416) %1, i64 416, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !10, !align !299, !noundef !10 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.n = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.c

bb.b:                                             ; preds = %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit76.thread, %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit.thread, %bb.u
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.r, align 8
  store ptr %.0.val, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !81778)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !81778, !noalias !81781, !noundef !10 ; 3 uses
  %i.u = load i64, ptr %i.p, align 8, !range !180, !alias.scope !81778, !noalias !81781, !noundef !10
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4db6c92e618f2e82E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1196)
          to label %bb.i unwind label %bb.e, !noalias !81781

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !81783
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5bd5344f48960701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.g, !noalias !81778

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !81778
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ay, %bb.ab, %bb.f, %bb.e, %bb.ai, %bb.bf
  %.sroa.019.2 = phi i1 [ false, %bb.bf ], [ false, %bb.ai ], [ false, %bb.ab ], [ true, %bb.e ], [ false, %bb.ay ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.019.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.ey, %bb.bf ], [ %i.dg, %bb.ai ], [ %i.cp, %bb.ab ], [ %i.w, %bb.e ], [ %i.eh, %bb.ay ], [ %i.w, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit45, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit51, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr174drop_in_place$LT$crossbeam_channel..flavors..zero..Packet$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h08c352761c7b9e56E"(ptr noalias noundef align 8 dereferenceable(424) %i.f) #107
          to label %bb.bn unwind label %bb.av

.loopexit:                                        ; preds = %.loopexit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.o
  %lpad.loopexit45 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.p, %bb.s, %.noexc51
  %lpad.loopexit51 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.i, %bb.u, %bb.l, %bb.n, %bb.v, %bb.w, %bb.x, %bb.y, %bb.am, %bb.ao, %bb.bj, %bb.bl
  %.sroa.019.3.ph.ph.ph = phi i1 [ false, %bb.am ], [ false, %bb.x ], [ false, %bb.u ], [ false, %bb.l ], [ false, %bb.v ], [ false, %bb.bj ], [ false, %bb.y ], [ false, %bb.n ], [ false, %bb.bl ], [ false, %.invoke ], [ false, %bb.w ], [ true, %bb.i ], [ false, %bb.ao ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !81778, !noalias !81781, !nonnull !10, !noundef !10
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !81778
  %i.ad = add i64 %i.t, 1
  store i64 %i.ad, ptr %i.s, align 8, !alias.scope !81778, !noalias !81781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  invoke fastcc void @_ZN17crossbeam_channel5waker5Waker6notify17hb59870214dccaa55E(ptr noalias noundef align 8 dereferenceable(48) %i.ae)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 424
end_hunk_8
begin_hunk_9_@"_ZN17crossbeam_channel7flavors4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17heaaa36d5ab02c67dE":bb.a
  br i1 %.sroa.18.0.in.i.i.i, label %.thread, label %bb.t

bb.s:                                             ; preds = %bb.q, %.split.i
  %i.bg = invoke { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.ar, i32 noundef range(i32 0, 1000000001) %i.at, i64 noundef %i.az, i32 noundef %i.ba)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.s
  %i.bh = extractvalue { i64, i32 } %i.bg, 0
  %i.bi = extractvalue { i64, i32 } %i.bg, 1
  invoke void @_ZN3std6thread12park_timeout17h5d1b13252e89f7a3E(i64 noundef %i.bh, i32 noundef %i.bi)
          to label %.split8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.t:                                             ; preds = %bb.r
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bf, 0
  switch i64 %.sroa.01.0.i.i.i, label %.thread29 [
    i64 0, label %bb.u
    i64 1, label %.thread
    i64 2, label %.thread32
  ], !prof !81685

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @173, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1226) #106
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split8.i, %.split8.us.i, %bb.r, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !10, !align !299, !noundef !10 ; 9 uses
  %i.bl = cmpxchg ptr %i.bk, i32 0, i32 1 acquire monotonic, align 4, !noalias !81792
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %.noexc54, label %bb.v, !prof !119

bb.v:                                             ; preds = %.thread
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bk)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.v, %.thread
  %i.bn = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !81792
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.z, label %bb.w, !prof !119

bb.w:                                             ; preds = %.noexc54
  %i.bq = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %bb.w
  %i.br = xor i1 %i.bq, true
  %i.bs = zext i1 %i.br to i8
  br label %bb.z

.thread32:                                        ; preds = %.split8.i, %.split8.us.i, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !10, !align !299, !noundef !10 ; 9 uses
  %i.bv = cmpxchg ptr %i.bu, i32 0, i32 1 acquire monotonic, align 4, !noalias !81795
  %i.bw = extractvalue { i32, i1 } %i.bv, 1
  br i1 %i.bw, label %.noexc58, label %bb.x, !prof !119

bb.x:                                             ; preds = %.thread32
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bu)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.x, %.thread32
  %i.bx = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !81795
  %i.by = and i64 %i.bx, 9223372036854775807
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.aw, label %bb.y, !prof !119

bb.y:                                             ; preds = %.noexc58
  %i.ca = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.y
  %i.cb = xor i1 %i.ca, true
  %i.cc = zext i1 %i.cb to i8
  br label %bb.aw

.thread29:                                        ; preds = %.split8.i, %.split8.us.i, %bb.t
  %i.cd = load atomic i8, ptr %i.k acquire, align 8
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit.loopexit"

.lr.ph.i:                                         ; preds = %.thread29, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i
  %.sroa.0.02.i = phi i32 [ %.sroa.0.1.i, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i ], [ 0, %.thread29 ] ; 5 uses
  %i.cf = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.cf, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %.noexc61 unwind label %.loopexit

.noexc61:                                         ; preds = %.loopexit.i.i
  %i.cg = icmp ult i32 %.sroa.0.02.i, 11
  br i1 %i.cg, label %.loopexit.i.thread.i, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.ch, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.ch = add nuw nsw i32 %.sroa.0.03.i.i, 1      ; 2 uses
  call void @llvm.x86.sse2.pause() #101
  %.sroa.0.0.highbits.i.i = lshr i32 %i.ch, %.sroa.0.02.i
  %i.ci = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.ci, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.noexc61
  %i.cj = add nuw nsw i32 %.sroa.0.02.i, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i

_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i: ; preds = %.loopexit.i.thread.i, %.noexc61
  %.sroa.0.1.i = phi i32 [ %i.cj, %.loopexit.i.thread.i ], [ %.sroa.0.02.i, %.noexc61 ]
  %i.ck = load atomic i8, ptr %i.k acquire, align 8
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit.loopexit"

bb.z:                                             ; preds = %.noexc55, %.noexc54
  %.sroa.01.0.i.i = phi i8 [ %i.bs, %.noexc55 ], [ 0, %.noexc54 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.cn = load atomic i8, ptr %i.cm monotonic, align 4, !noalias !81792
  %.not44 = icmp eq i8 %i.cn, 0
  br i1 %.not44, label %bb.ae, label %bb.aa, !prof !119

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81798
  store ptr %i.bk, ptr %i.a, align 8, !noalias !81798
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.co, align 8, !noalias !81798
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2088, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1227) #106
          to label %bb.ac unwind label %bb.ab, !noalias !81802

bb.ab:                                            ; preds = %bb.aa
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$$GT$17hbf4afb3d7875b43eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #107
          to label %.body unwind label %bb.ad, !noalias !81802

bb.ac:                                            ; preds = %bb.aa
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !81802
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.cr = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !81803)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !81803, !noalias !81806, !nonnull !10, !noundef !10 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !81803, !noalias !81806, !noundef !10 ; 7 uses
  %.idx83 = mul nuw nsw i64 %i.cv, 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx83
  %i.cx = icmp eq i64 %i.cv, 0
  br i1 %i.cx, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit.thread, label %.lr.ph82

bb.af:                                            ; preds = %.lr.ph82
  %i.cy = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %i.cz = add nuw nsw i64 %i.dc, 1
  %i.da = icmp eq ptr %i.cy, %i.cw
  br i1 %i.da, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit.thread, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.ae, %bb.af
  %i.db = phi ptr [ %i.cy, %bb.af ], [ %i.ct, %bb.ae ] ; 2 uses
  %i.dc = phi i64 [ %i.cz, %bb.af ], [ 0, %bb.ae ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !81808, !noalias !81813, !noundef !10
  %.not.i.i = icmp eq i64 %i.de, %i.i
  br i1 %.not.i.i, label %bb.ag, label %bb.af

bb.ag:                                            ; preds = %.lr.ph82
  call void @llvm.experimental.noalias.scope.decl(metadata !81818)
  %i.df = icmp ult i64 %i.cv, 384307168202282326
  call void @llvm.assume(i1 %i.df)
  %.not.i5.i = icmp samesign ult i64 %i.dc, %i.cv
  br i1 %.not.i5.i, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit, label %bb.ah, !prof !119

bb.ah:                                            ; preds = %bb.ag
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.dc, i64 noundef %i.cv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1191) #106
          to label %.noexc62 unwind label %bb.ai

.noexc62:                                         ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ak, %bb.ah, %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit.thread
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E"(ptr nonnull %i.bk, i8 %.sroa.01.0.i.i) #107
          to label %.body unwind label %bb.av

_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit: ; preds = %bb.ag
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.dc ; 4 uses
  %.sroa.01.0.copyload2 = load ptr, ptr %i.dh, align 8, !noalias !81803 ; 3 uses
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.0..sroa_idx4, i64 16, i1 false), !noalias !81803
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = xor i64 %i.dc, -1
  %i.dk = add nsw i64 %i.cv, %i.dj
  %i.dl = mul nuw nsw i64 %i.dk, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dh, ptr nonnull align 8 %i.di, i64 %i.dl, i1 false), !noalias !81821
  %i.dm = add nsw i64 %i.cv, -1
  store i64 %i.dm, ptr %i.cu, align 8, !alias.scope !81824, !noalias !81825
  %.not25 = icmp eq ptr %.sroa.01.0.copyload2, null
  br i1 %.not25, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit.thread, label %bb.aj, !prof !40202

bb.aj:                                            ; preds = %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit
  store ptr %.sroa.01.0.copyload2, ptr %i.e, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63)
  %i.dn = atomicrmw sub ptr %.sroa.01.0.copyload2, i64 1 release, align 8, !noalias !81826
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.ak, label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit"

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5bd5344f48960701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit" unwind label %bb.ai

_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit.thread: ; preds = %bb.af, %bb.ae, %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1228) #106
          to label %bb.b unwind label %bb.ai

"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit": ; preds = %bb.aj, %bb.ak
  br i1 %i.cr, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i64, label %bb.al

bb.al:                                            ; preds = %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit"
  %i.dp = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.dq = and i64 %i.dp, 9223372036854775807
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i64, label %bb.am, !prof !119

bb.am:                                            ; preds = %bb.al
  %i.ds = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc65:                                         ; preds = %bb.am
  br i1 %i.ds, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i64, label %bb.an

bb.an:                                            ; preds = %.noexc65
  store atomic i8 1, ptr %i.cm monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i64

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i64: ; preds = %bb.an, %.noexc65, %bb.al, %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit"
  %i.dt = atomicrmw xchg ptr %i.bk, i32 0 release, align 4
  %i.du = icmp eq i32 %i.dt, 2
  br i1 %i.du, label %bb.ao, label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit67", !prof !59

bb.ao:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i64
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.bk)
          to label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit67" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit67": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i64, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  store i64 -9223372036854775793, ptr %i.f, align 8
  %.not26 = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775793
  br i1 %.not26, label %.invoke, label %bb.ap, !prof !59

bb.ap:                                            ; preds = %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit67"
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.5.0..sroa_idx, i64 408, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.46.0..sroa_idx, align 8
  br label %"_ZN4core3ptr174drop_in_place$LT$crossbeam_channel..flavors..zero..Packet$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h08c352761c7b9e56E.exit"

.invoke:                                          ; preds = %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit82", %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit67"
  %i.dv = phi ptr [ @1229, %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit67" ], [ @1232, %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit82" ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv) #106
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit.loopexit": ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i, %.thread29
  store i64 2, ptr %0, align 8
  %.pre = load i64, ptr %i.f, align 8, !range !31256, !alias.scope !81835
  switch i64 %.pre, label %bb.aq [
    i64 -9223372036854775793, label %"_ZN4core3ptr174drop_in_place$LT$crossbeam_channel..flavors..zero..Packet$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h08c352761c7b9e56E.exit"
    i64 -9223372036854775794, label %bb.ar
  ]

bb.aq:                                            ; preds = %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit.loopexit"
  call fastcc void @"_ZN4core3ptr76drop_in_place$LT$milli..update..index_documents..typed_chunk..TypedChunk$GT$17he099d8a7bf628b54E"(ptr noalias noundef nonnull align 8 dereferenceable(424) %i.f)
  br label %"_ZN4core3ptr174drop_in_place$LT$crossbeam_channel..flavors..zero..Packet$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h08c352761c7b9e56E.exit"

bb.ar:                                            ; preds = %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit.loopexit"
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !range !3379, !alias.scope !81842, !noundef !10 ; 2 uses
  %i.dy = add nsw i64 %i.dx, -95
  %i.dz = icmp samesign ugt i64 %i.dx, 94
  %i.ea = select i1 %i.dz, i64 %i.dy, i64 2
  switch i64 %i.ea, label %bb.as [
    i64 0, label %bb.at
    i64 1, label %bb.au
  ]

bb.as:                                            ; preds = %bb.ar
  call fastcc void @"_ZN4core3ptr44drop_in_place$LT$milli..error..UserError$GT$17h13a314a155c02142E"(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.dw)
  br label %"_ZN4core3ptr174drop_in_place$LT$crossbeam_channel..flavors..zero..Packet$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h08c352761c7b9e56E.exit"

bb.at:                                            ; preds = %bb.ar
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @"_ZN4core3ptr48drop_in_place$LT$milli..error..InternalError$GT$17haaeb9944b0a99ea3E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.eb)
  br label %"_ZN4core3ptr174drop_in_place$LT$crossbeam_channel..flavors..zero..Packet$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h08c352761c7b9e56E.exit"

bb.au:                                            ; preds = %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h311d5137e27cf60dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ec)
  br label %"_ZN4core3ptr174drop_in_place$LT$crossbeam_channel..flavors..zero..Packet$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h08c352761c7b9e56E.exit"

bb.av:                                            ; preds = %bb.ai, %bb.bf, %bb.bp, %.body
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108
  unreachable

bb.aw:                                            ; preds = %.noexc59, %.noexc58
  %.sroa.01.0.i.i56 = phi i8 [ %i.cc, %.noexc59 ], [ 0, %.noexc58 ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %i.ef = load atomic i8, ptr %i.ee monotonic, align 4, !noalias !81795
  %.not43 = icmp eq i8 %i.ef, 0
  br i1 %.not43, label %bb.bb, label %bb.ax, !prof !119

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !81847
  store ptr %i.bu, ptr %i.b, align 8, !noalias !81847
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i56, ptr %i.eg, align 8, !noalias !81847
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2088, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1230) #106
          to label %bb.az unwind label %bb.ay, !noalias !81851

bb.ay:                                            ; preds = %bb.ax
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$$GT$17hbf4afb3d7875b43eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #107
          to label %.body unwind label %bb.ba, !noalias !81851

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !81851
  unreachable

bb.bb:                                            ; preds = %bb.aw
  %i.ej = trunc nuw i8 %.sroa.01.0.i.i56 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !81852)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !81852, !noalias !81855, !nonnull !10, !noundef !10 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !81852, !noalias !81855, !noundef !10 ; 7 uses
  %.idx = mul nuw nsw i64 %i.en, 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx
  %i.ep = icmp eq i64 %i.en, 0
  br i1 %i.ep, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit76.thread, label %.lr.ph

bb.bc:                                            ; preds = %.lr.ph
  %i.eq = getelementptr inbounds nuw i8, ptr %i.et, i64 24 ; 2 uses
  %i.er = add nuw nsw i64 %i.eu, 1
  %i.es = icmp eq ptr %i.eq, %i.eo
  br i1 %i.es, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit76.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bb, %bb.bc
  %i.et = phi ptr [ %i.eq, %bb.bc ], [ %i.el, %bb.bb ] ; 2 uses
  %i.eu = phi i64 [ %i.er, %bb.bc ], [ 0, %bb.bb ] ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !81857, !noalias !81862, !noundef !10
  %.not.i.i72 = icmp eq i64 %i.ew, %i.i
  br i1 %.not.i.i72, label %bb.bd, label %bb.bc

bb.bd:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !81867)
  %i.ex = icmp ult i64 %i.en, 384307168202282326
  call void @llvm.assume(i1 %i.ex)
  %.not.i5.i73 = icmp samesign ult i64 %i.eu, %i.en
  br i1 %.not.i5.i73, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit76, label %bb.be, !prof !119

bb.be:                                            ; preds = %bb.bd
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.eu, i64 noundef %i.en, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1191) #106
          to label %.noexc75 unwind label %bb.bf

.noexc75:                                         ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.bh, %bb.be, %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit76.thread
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E"(ptr nonnull %i.bu, i8 %.sroa.01.0.i.i56) #107
          to label %.body unwind label %bb.av

_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit76: ; preds = %bb.bd
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.eu ; 4 uses
  %.sroa.012.0.copyload13 = load ptr, ptr %i.ez, align 8, !noalias !81852 ; 3 uses
  %.sroa.614.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.614, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.614.0..sroa_idx15, i64 16, i1 false), !noalias !81852
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = xor i64 %i.eu, -1
  %i.fc = add nsw i64 %i.en, %i.fb
  %i.fd = mul nuw nsw i64 %i.fc, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ez, ptr nonnull align 8 %i.fa, i64 %i.fd, i1 false), !noalias !81870
  %i.fe = add nsw i64 %i.en, -1
  store i64 %i.fe, ptr %i.em, align 8, !alias.scope !81873, !noalias !81874
  %.not = icmp eq ptr %.sroa.012.0.copyload13, null
  br i1 %.not, label %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit76.thread, label %bb.bg, !prof !40202

bb.bg:                                            ; preds = %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit76
  store ptr %.sroa.012.0.copyload13, ptr %i.d, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.614.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.614, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614)
  %i.ff = atomicrmw sub ptr %.sroa.012.0.copyload13, i64 1 release, align 8, !noalias !81875
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.bh, label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit78"

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5bd5344f48960701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit78" unwind label %bb.bf

_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit76.thread: ; preds = %bb.bc, %bb.bb, %_ZN17crossbeam_channel5waker5Waker10unregister17h663566122414acc6E.exit76
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1231) #106
          to label %bb.b unwind label %bb.bf

"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit78": ; preds = %bb.bg, %bb.bh
  br i1 %i.ej, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i79, label %bb.bi

bb.bi:                                            ; preds = %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit78"
  %i.fh = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.fi = and i64 %i.fh, 9223372036854775807
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i79, label %bb.bj, !prof !119

bb.bj:                                            ; preds = %bb.bi
  %i.fk = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc80:                                         ; preds = %bb.bj
  br i1 %i.fk, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i79, label %bb.bk

bb.bk:                                            ; preds = %.noexc80
  store atomic i8 1, ptr %i.ee monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i79

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i79: ; preds = %bb.bk, %.noexc80, %bb.bi, %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17hdb569a8750ee43a5E.exit78"
  %i.fl = atomicrmw xchg ptr %i.bu, i32 0 release, align 4
  %i.fm = icmp eq i32 %i.fl, 2
  br i1 %i.fm, label %bb.bl, label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit82", !prof !59

bb.bl:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i79
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.bu)
          to label %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit82" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit82": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i79, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.08.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  store i64 -9223372036854775793, ptr %i.f, align 8
  %.not24 = icmp eq i64 %.sroa.08.0.copyload, -9223372036854775793
  br i1 %.not24, label %.invoke, label %bb.bm, !prof !59

bb.bm:                                            ; preds = %"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E.exit82"
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.510.0..sroa_idx, i64 408, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.08.0.copyload, ptr %.sroa.417.0..sroa_idx, align 8
  br label %"_ZN4core3ptr174drop_in_place$LT$crossbeam_channel..flavors..zero..Packet$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h08c352761c7b9e56E.exit"

"_ZN4core3ptr174drop_in_place$LT$crossbeam_channel..flavors..zero..Packet$LT$core..result..Result$LT$milli..update..index_documents..typed_chunk..TypedChunk$C$milli..error..Error$GT$$GT$$GT$17h08c352761c7b9e56E.exit": ; preds = %bb.ap, %bb.bm, %bb.au, %bb.at, %bb.as, %bb.aq, %"_ZN17crossbeam_channel7flavors4zero15Packet$LT$T$GT$10wait_ready17h04039c2f566033a7E.exit.loopexit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.bn:                                            ; preds = %.body
  br i1 %.sroa.019.2, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %bb.bn
  resume { ptr, i32 } %.pn

bb.bp:                                            ; preds = %bb.bn
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.val33 = load i8, ptr %i.fn, align 8, !range !405, !noundef !10
  invoke fastcc void @"_ZN4core3ptr104drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17hcf7c9b7e3477f599E"(ptr nonnull %i.m, i8 %.val33) #107
          to label %bb.bo unwind label %bb.av
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$4recv17h23d629f992d1692eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(416) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [416 x i8], align 8               ; 6 uses
  %.sroa.4 = alloca [408 x i8], align 8           ; 2 uses
  %i.h = alloca [72 x i8], align 8                ; 11 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i32 %3, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 1000000000, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  store i32 1000000000, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN17crossbeam_channel7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hda6eb156b3a9322fE") ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.0.013 = phi i32 [ 0, %bb.a ], [ %.sroa.0.013.be, %.backedge ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81884)
  %i.w = load atomic i64, ptr %1 monotonic, align 128, !noalias !81884
  br label %_ZN15crossbeam_utils7backoff7Backoff4spin17hefcbd68618ba614aE.exit17.i

_ZN15crossbeam_utils7backoff7Backoff4spin17hefcbd68618ba614aE.exit17.i: ; preds = %_ZN15crossbeam_utils7backoff7Backoff4spin17hefcbd68618ba614aE.exit17.i.backedge, %bb.b
  %.sroa.0.023.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.023.i.be, %_ZN15crossbeam_utils7backoff7Backoff4spin17hefcbd68618ba614aE.exit17.i.backedge ] ; 11 uses
  %.sroa.01.0.i = phi i64 [ %i.w, %bb.b ], [ %.sroa.01.0.i.be, %_ZN15crossbeam_utils7backoff7Backoff4spin17hefcbd68618ba614aE.exit17.i.backedge ] ; 7 uses
  %i.x = load i64, ptr %i.o, align 16, !noalias !81884, !noundef !10
  %i.y = add i64 %i.x, -1
  %i.z = and i64 %i.y, %.sroa.01.0.i              ; 3 uses
  %i.aa = load i64, ptr %i.p, align 8, !noalias !81884, !noundef !10
  %i.ab = sub i64 0, %i.aa
  %i.ac = and i64 %.sroa.01.0.i, %i.ab
  %i.ad = load ptr, ptr %i.q, align 8, !noalias !81884, !nonnull !10, !align !299, !noundef !10
  %i.ae = load i64, ptr %i.r, align 32, !noalias !81884, !noundef !10
  %i.af = icmp ult i64 %i.z, %i.ae
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw [424 x i8], ptr %i.ad, i64 %i.z ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 416
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8, !noalias !81884 ; 3 uses
  %i.aj = add i64 %.sroa.01.0.i, 1
  %i.ak = icmp eq i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15crossbeam_utils7backoff7Backoff4spin17hefcbd68618ba614aE.exit17.i
  %i.al = icmp eq i64 %i.ai, %.sroa.01.0.i
  br i1 %i.al, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_ZN15crossbeam_utils7backoff7Backoff4spin17hefcbd68618ba614aE.exit17.i
  %i.am = add nuw i64 %i.z, 1
  %i.an = load i64, ptr %i.t, align 128, !noalias !81884, !noundef !10
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.ap = icmp ult i32 %.sroa.0.023.i, 7
  br i1 %i.ap, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.e
  call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !81884
  %i.aq = icmp ult i32 %.sroa.0.023.i, 11
  br i1 %i.aq, label %.loopexit.i.thread.i, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.ar, %.preheader.i.i ], [ 0, %bb.e ]
  %i.ar = add nuw nsw i32 %.sroa.0.03.i.i, 1      ; 2 uses
  call void @llvm.x86.sse2.pause() #101, !noalias !81884
  %.sroa.0.0.highbits.i.i = lshr i32 %i.ar, %.sroa.0.023.i
  %i.as = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.as, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.at = add nuw nsw i32 %.sroa.0.023.i, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i

_ZN15crossbeam_utils7backoff7Backoff6snooze17h6d48599c0921e210E.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.2.i = phi i32 [ %i.at, %.loopexit.i.thread.i ], [ %.sroa.0.023.i, %.loopexit.i.i ]
  %i.au = load atomic i64, ptr %1 monotonic, align 128, !noalias !81884
  br label %_ZN15crossbeam_utils7backoff7Backoff4spin17hefcbd68618ba614aE.exit17.i.backedge

bb.f:                                             ; preds = %bb.c
  fence seq_cst
  %i.av = load atomic i64, ptr %i.s monotonic, align 128, !noalias !81884 ; 2 uses
  %i.aw = load i64, ptr %i.o, align 16, !noalias !81884, !noundef !10 ; 2 uses
  %i.ax = xor i64 %i.aw, -1
  %i.ay = and i64 %i.av, %i.ax
  %i.az = icmp eq i64 %i.ay, %.sroa.01.0.i
  br i1 %i.az, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.i.i.i = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.023.i, i32 6)
end_hunk_9
begin_hunk_10_@_ZN4core4iter6traits8iterator8Iterator8try_fold17h929500e7b47ac4dfE:bb.a
  %i.api = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$milli..dynamic_search_rules..RuleAction$GT$17h1283f128d4142c8dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %.sroa.2.0..sroa_idx.i.i.i) #107, !noalias !145723
  br label %common.resume

bb.or:                                            ; preds = %.noexc
  %i.apj = load i32, ptr %i.hd, align 4, !range !2759, !noalias !145717, !noundef !10
  %i.apk = load i32, ptr %i.he, align 8, !noalias !145717 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !145717
  %i.apl = trunc nuw i32 %i.apj to i1
  br i1 %i.apl, label %bb.ou, label %.thread

.thread:                                          ; preds = %"_ZN5milli20dynamic_search_rules10RuleAction15active_document28_$u7b$$u7b$closure$u7d$$u7d$17h0e0f34d112f9e8c2E.exit.i", %bb.og, %bb.ot, %bb.or
  %.sroa.14.0147 = phi i64 [ %.sroa.9.sroa.0.0.insert.insert.i, %bb.ot ], [ undef, %bb.or ], [ undef, %bb.og ], [ undef, %"_ZN5milli20dynamic_search_rules10RuleAction15active_document28_$u7b$$u7b$closure$u7d$$u7d$17h0e0f34d112f9e8c2E.exit.i" ] ; 2 uses
  %.sroa.7.sroa.5.0.i.i.i.i.i = phi i32 [ %.sroa.795.12.extract.trunc, %bb.ot ], [ undef, %bb.or ], [ undef, %bb.og ], [ undef, %"_ZN5milli20dynamic_search_rules10RuleAction15active_document28_$u7b$$u7b$closure$u7d$$u7d$17h0e0f34d112f9e8c2E.exit.i" ] ; 2 uses
  %.sroa.7.sroa.0.0.i.i.i.i.i = phi i32 [ %.sroa.795.8.extract.trunc, %bb.ot ], [ undef, %bb.or ], [ undef, %bb.og ], [ undef, %"_ZN5milli20dynamic_search_rules10RuleAction15active_document28_$u7b$$u7b$closure$u7d$$u7d$17h0e0f34d112f9e8c2E.exit.i" ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.022.0.i, %bb.ot ], [ 98, %bb.or ], [ 98, %bb.og ], [ 98, %"_ZN5milli20dynamic_search_rules10RuleAction15active_document28_$u7b$$u7b$closure$u7d$$u7d$17h0e0f34d112f9e8c2E.exit.i" ] ; 2 uses
  switch i64 %i.aon, label %bb.os [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i"
  ]

bb.os:                                            ; preds = %.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aoo) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aoo, i64 noundef %i.aon, i64 noundef range(i64 1, -9223372036854775807) 1) #101, !noalias !145724
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.os, %.thread, %.thread
  %i.apm = icmp eq i64 %.sroa.10.1154.i.i.i, 0
  br i1 %i.apm, label %"_ZN5milli20dynamic_search_rules22DynamicSearchRulesView9find_pins28_$u7b$$u7b$closure$u7d$$u7d$17h1355003727061150E.exit.i.i.i.i.i", label %"_ZN4core3ptr60drop_in_place$LT$milli..dynamic_search_rules..RuleAction$GT$17h1283f128d4142c8dE.exit.sink.split.i.i.i.i.i.i"

bb.ot:                                            ; preds = %bb.op, %bb.om
  %.sroa.523.1.i = phi i64 [ %i.aph, %bb.om ], [ %.sroa.523.0.i, %bb.op ] ; 2 uses
  %.sroa.022.0.i = phi i64 [ 96, %bb.om ], [ %.sink.i.i, %bb.op ]
  %.sroa.9.sroa.0.0.insert.insert.i = phi i64 [ 0, %bb.om ], [ %.sroa.9.sroa.6.0.i, %bb.op ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !145717
  %.sroa.795.8.extract.trunc = trunc i64 %.sroa.523.1.i to i32
  %.sroa.795.12.extract.shift = lshr i64 %.sroa.523.1.i, 32
  %.sroa.795.12.extract.trunc = trunc nuw i64 %.sroa.795.12.extract.shift to i32
  br label %.thread

bb.ou:                                            ; preds = %bb.or
  %.sroa.7.sroa.0.0.extract.trunc.i.i.i.i.i = trunc nuw nsw i64 %.sroa.21.1147.i.i.i to i32 ; 2 uses
  switch i64 %i.aon, label %bb.ov [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i"
  ]

bb.ov:                                            ; preds = %bb.ou
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aoo) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aoo, i64 noundef %i.aon, i64 noundef range(i64 1, -9223372036854775807) 1) #101, !noalias !145738
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i": ; preds = %bb.ov, %bb.ou, %bb.ou
  %i.apn = icmp eq i64 %.sroa.10.1154.i.i.i, 0
  br i1 %i.apn, label %"_ZN104_$LT$itertools..adaptors..FilterMapOk$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha8446b9a83bc3cb7E.exit.i.i.i.i", label %"_ZN4core3ptr60drop_in_place$LT$milli..dynamic_search_rules..RuleAction$GT$17h1283f128d4142c8dE.exit.sink.split.i.i.i.i.i.i"

"_ZN4core3ptr60drop_in_place$LT$milli..dynamic_search_rules..RuleAction$GT$17h1283f128d4142c8dE.exit.sink.split.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i"
  %.sroa.7.sroa.5.1.i.i.i.i.i = phi i32 [ 0, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i" ], [ %.sroa.7.sroa.5.0.i.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i" ]
  %.sroa.7.sroa.0.1.i.i.i.i.i = phi i32 [ %.sroa.7.sroa.0.0.extract.trunc.i.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i" ], [ %.sroa.7.sroa.0.0.i.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i" ]
  %.sroa.12.1.i.i.i.i.i = phi i32 [ %i.apk, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i" ]
  %.sroa.11.1.i.i.i.i.i = phi i32 [ %i.aop, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i" ]
  %.sroa.10.1.i.i.i.i.i = phi i64 [ %.sroa.23.1146.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i" ], [ %.sroa.14.0147, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i" ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 97, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i" ], [ %.sroa.0.0.i.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aom) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aom, i64 noundef %.sroa.10.1154.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #101, !noalias !145749
  br label %"_ZN5milli20dynamic_search_rules22DynamicSearchRulesView9find_pins28_$u7b$$u7b$closure$u7d$$u7d$17h1355003727061150E.exit.i.i.i.i.i"

"_ZN5milli20dynamic_search_rules22DynamicSearchRulesView9find_pins28_$u7b$$u7b$closure$u7d$$u7d$17h1355003727061150E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr60drop_in_place$LT$milli..dynamic_search_rules..RuleAction$GT$17h1283f128d4142c8dE.exit.sink.split.i.i.i.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i"
  %.sroa.7.sroa.5.2.i.i.i.i.i = phi i32 [ %.sroa.7.sroa.5.0.i.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.7.sroa.5.1.i.i.i.i.i, %"_ZN4core3ptr60drop_in_place$LT$milli..dynamic_search_rules..RuleAction$GT$17h1283f128d4142c8dE.exit.sink.split.i.i.i.i.i.i" ]
  %.sroa.7.sroa.0.2.i.i.i.i.i = phi i32 [ %.sroa.7.sroa.0.0.i.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.7.sroa.0.1.i.i.i.i.i, %"_ZN4core3ptr60drop_in_place$LT$milli..dynamic_search_rules..RuleAction$GT$17h1283f128d4142c8dE.exit.sink.split.i.i.i.i.i.i" ]
  %.sroa.12.2.i.i.i.i.i = phi i32 [ 0, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.12.1.i.i.i.i.i, %"_ZN4core3ptr60drop_in_place$LT$milli..dynamic_search_rules..RuleAction$GT$17h1283f128d4142c8dE.exit.sink.split.i.i.i.i.i.i" ]
  %.sroa.11.2.i.i.i.i.i = phi i32 [ 0, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.11.1.i.i.i.i.i, %"_ZN4core3ptr60drop_in_place$LT$milli..dynamic_search_rules..RuleAction$GT$17h1283f128d4142c8dE.exit.sink.split.i.i.i.i.i.i" ]
  %.sroa.10.2.i.i.i.i.i = phi i64 [ %.sroa.14.0147, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.1.i.i.i.i.i, %"_ZN4core3ptr60drop_in_place$LT$milli..dynamic_search_rules..RuleAction$GT$17h1283f128d4142c8dE.exit.sink.split.i.i.i.i.i.i" ]
  %.sroa.0.2.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i.i, %"_ZN4core3ptr60drop_in_place$LT$milli..dynamic_search_rules..RuleAction$GT$17h1283f128d4142c8dE.exit.sink.split.i.i.i.i.i.i" ] ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i64 %.sroa.0.2.i.i.i.i.i, 98
  br i1 %.not3.i.i.i.i.i, label %bb.ow, label %"_ZN104_$LT$itertools..adaptors..FilterMapOk$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha8446b9a83bc3cb7E.exit.i.i.i.i"

"_ZN104_$LT$itertools..adaptors..FilterMapOk$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha8446b9a83bc3cb7E.exit.i.i.i.i": ; preds = %"_ZN5milli20dynamic_search_rules22DynamicSearchRulesView9find_pins28_$u7b$$u7b$closure$u7d$$u7d$17h1355003727061150E.exit.i.i.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i"
  %.sroa.0.216.i.i.i.i.i = phi i64 [ %.sroa.0.2.i.i.i.i.i, %"_ZN5milli20dynamic_search_rules22DynamicSearchRulesView9find_pins28_$u7b$$u7b$closure$u7d$$u7d$17h1355003727061150E.exit.i.i.i.i.i" ], [ 97, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i" ]
  %.sroa.10.215.i.i.i.i.i = phi i64 [ %.sroa.10.2.i.i.i.i.i, %"_ZN5milli20dynamic_search_rules22DynamicSearchRulesView9find_pins28_$u7b$$u7b$closure$u7d$$u7d$17h1355003727061150E.exit.i.i.i.i.i" ], [ %.sroa.23.1146.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i" ]
  %.sroa.11.214.i.i.i.i.i = phi i32 [ %.sroa.11.2.i.i.i.i.i, %"_ZN5milli20dynamic_search_rules22DynamicSearchRulesView9find_pins28_$u7b$$u7b$closure$u7d$$u7d$17h1355003727061150E.exit.i.i.i.i.i" ], [ %i.aop, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i" ]
  %.sroa.12.213.i.i.i.i.i = phi i32 [ %.sroa.12.2.i.i.i.i.i, %"_ZN5milli20dynamic_search_rules22DynamicSearchRulesView9find_pins28_$u7b$$u7b$closure$u7d$$u7d$17h1355003727061150E.exit.i.i.i.i.i" ], [ %i.apk, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i" ]
  %.sroa.7.sroa.0.212.i.i.i.i.i = phi i32 [ %.sroa.7.sroa.0.2.i.i.i.i.i, %"_ZN5milli20dynamic_search_rules22DynamicSearchRulesView9find_pins28_$u7b$$u7b$closure$u7d$$u7d$17h1355003727061150E.exit.i.i.i.i.i" ], [ %.sroa.7.sroa.0.0.extract.trunc.i.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i" ]
  %.sroa.7.sroa.5.211.i.i.i.i.i = phi i32 [ %.sroa.7.sroa.5.2.i.i.i.i.i, %"_ZN5milli20dynamic_search_rules22DynamicSearchRulesView9find_pins28_$u7b$$u7b$closure$u7d$$u7d$17h1355003727061150E.exit.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h226616aa97d4ee88E.exit.i.i40.i.i.i.i.i.i" ]
  %.sroa.7.sroa.5.0.insert.ext.i.i.i.i.i = zext i32 %.sroa.7.sroa.5.211.i.i.i.i.i to i64
  %.sroa.7.sroa.5.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.7.sroa.5.0.insert.ext.i.i.i.i.i, 32
  %.sroa.7.sroa.0.0.insert.ext.i.i.i.i.i = zext i32 %.sroa.7.sroa.0.212.i.i.i.i.i to i64
  %.sroa.7.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.7.sroa.5.0.insert.shift.i.i.i.i.i, %.sroa.7.sroa.0.0.insert.ext.i.i.i.i.i
  br label %bb.ox

bb.ow:                                            ; preds = %"_ZN5milli20dynamic_search_rules22DynamicSearchRulesView9find_pins28_$u7b$$u7b$closure$u7d$$u7d$17h1355003727061150E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !145702
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26.i.i.i)
  br label %bb.b

bb.ox:                                            ; preds = %"_ZN104_$LT$itertools..adaptors..FilterMapOk$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha8446b9a83bc3cb7E.exit.i.i.i.i", %"_ZN104_$LT$itertools..adaptors..FilterMapOk$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha8446b9a83bc3cb7E.exit.thread.i.i.i.i"
  %.sroa.7.125.i.i.i.i = phi i64 [ %.sroa.037.1156.i.i.i, %"_ZN104_$LT$itertools..adaptors..FilterMapOk$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha8446b9a83bc3cb7E.exit.thread.i.i.i.i" ], [ %.sroa.0.216.i.i.i.i.i, %"_ZN104_$LT$itertools..adaptors..FilterMapOk$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha8446b9a83bc3cb7E.exit.i.i.i.i" ] ; 4 uses
  %.sroa.9.124.i.i.i.i = phi i64 [ %.sroa.10.1154.i.i.i, %"_ZN104_$LT$itertools..adaptors..FilterMapOk$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha8446b9a83bc3cb7E.exit.thread.i.i.i.i" ], [ %.sroa.7.sroa.0.0.insert.insert.i.i.i.i.i, %"_ZN104_$LT$itertools..adaptors..FilterMapOk$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha8446b9a83bc3cb7E.exit.i.i.i.i" ] ; 7 uses
  %.sroa.10.123.i.i.i.i = phi i64 [ %.sroa.13.1153.i.i.i, %"_ZN104_$LT$itertools..adaptors..FilterMapOk$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha8446b9a83bc3cb7E.exit.thread.i.i.i.i" ], [ %.sroa.10.215.i.i.i.i.i, %"_ZN104_$LT$itertools..adaptors..FilterMapOk$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha8446b9a83bc3cb7E.exit.i.i.i.i" ] ; 4 uses
  %.sroa.11.122.i.i.i.i = phi i32 [ %i.aot, %"_ZN104_$LT$itertools..adaptors..FilterMapOk$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha8446b9a83bc3cb7E.exit.thread.i.i.i.i" ], [ %.sroa.11.214.i.i.i.i.i, %"_ZN104_$LT$itertools..adaptors..FilterMapOk$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha8446b9a83bc3cb7E.exit.i.i.i.i" ] ; 4 uses
  %.sroa.12.121.i.i.i.i = phi i32 [ %i.aos, %"_ZN104_$LT$itertools..adaptors..FilterMapOk$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha8446b9a83bc3cb7E.exit.thread.i.i.i.i" ], [ %.sroa.12.213.i.i.i.i.i, %"_ZN104_$LT$itertools..adaptors..FilterMapOk$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17ha8446b9a83bc3cb7E.exit.i.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !145702
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1276)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.1276, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.13.i.i.i.i, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !145750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !145753
  store i64 %.sroa.7.125.i.i.i.i, ptr %i.p, align 8, !noalias !145756
  store i64 %.sroa.9.124.i.i.i.i, ptr %.sroa.566.8..sroa_idx, align 8, !noalias !145756
  store i64 %.sroa.10.123.i.i.i.i, ptr %.sroa.667.8..sroa_idx, align 8, !noalias !145756
  store i32 %.sroa.11.122.i.i.i.i, ptr %.sroa.1070.8..sroa_idx, align 8, !noalias !145756
  store i32 %.sroa.12.121.i.i.i.i, ptr %.sroa.1173.8..sroa_idx, align 4, !noalias !145756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.1276.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.1276, i64 288, i1 false), !noalias !145756
  call void @llvm.experimental.noalias.scope.decl(metadata !145757)
  %.not.i.i.i = icmp eq i64 %.sroa.7.125.i.i.i.i, 97
  br i1 %.not.i.i.i, label %bb.oy, label %bb.pg

bb.oy:                                            ; preds = %bb.ox
  %.val.i.i = load ptr, ptr %i.hf, align 8, !noalias !145760, !nonnull !10, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !145763)
  %i.apo = lshr i32 %.sroa.12.121.i.i.i.i, 16
  %i.app = trunc nuw i32 %i.apo to i16            ; 3 uses
  %i.apq = trunc i32 %.sroa.12.121.i.i.i.i to i16
  %i.apr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.aps = load ptr, ptr %i.apr, align 8, !alias.scope !145763, !noalias !145760, !nonnull !10, !noundef !10 ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 2 uses
  %i.apu = load i64, ptr %i.apt, align 8, !alias.scope !145763, !noalias !145760, !noundef !10 ; 8 uses
  switch i64 %i.apu, label %.lr.ph.i.i.i.i.i.i [
    i64 0, label %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5b00475923cbca8fE.exit.sink.split"
    i64 1, label %._crit_edge.i.i.i.i.i.i
  ]

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.oy
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.oy ], [ %i.aqf, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %i.apv = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, %i.apu
  call void @llvm.assume(i1 %i.apv)
  %i.apw = getelementptr inbounds nuw [32 x i8], ptr %i.aps, i64 %.sroa.05.0.lcssa.i.i.i.i.i.i ; 7 uses
  %i.apx = getelementptr i8, ptr %i.apw, i64 24
  %.val20.i.i.i.i.i.i = load i16, ptr %i.apx, align 8, !alias.scope !145766, !noalias !145771, !noundef !10 ; 2 uses
  %i.apy = icmp eq i16 %.val20.i.i.i.i.i.i, %i.app
  br i1 %i.apy, label %bb.pa, label %bb.oz

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.oy, %.lr.ph.i.i.i.i.i.i
  %.sroa.01.025.i.i.i.i.i.i = phi i64 [ %i.aqg, %.lr.ph.i.i.i.i.i.i ], [ %i.apu, %bb.oy ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i.i = phi i64 [ %i.aqf, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.oy ] ; 2 uses
  %i.apz = lshr i64 %.sroa.01.025.i.i.i.i.i.i, 1  ; 2 uses
  %i.aqa = add i64 %i.apz, %.sroa.05.024.i.i.i.i.i.i ; 3 uses
  %i.aqb = icmp ult i64 %i.aqa, %i.apu
  call void @llvm.assume(i1 %i.aqb)
  %i.aqc = getelementptr inbounds nuw [32 x i8], ptr %i.aps, i64 %i.aqa
  %i.aqd = getelementptr i8, ptr %i.aqc, i64 24
  %.val22.i.i.i.i.i.i = load i16, ptr %i.aqd, align 8, !alias.scope !145766, !noalias !145771, !noundef !10
  %i.aqe = icmp ugt i16 %.val22.i.i.i.i.i.i, %i.app
  %i.aqf = select i1 %i.aqe, i64 %.sroa.05.024.i.i.i.i.i.i, i64 %i.aqa, !unpredictable !10 ; 2 uses
  %i.aqg = sub nuw i64 %.sroa.01.025.i.i.i.i.i.i, %i.apz ; 2 uses
  %i.aqh = icmp ugt i64 %i.aqg, 1
  br i1 %i.aqh, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

bb.oz:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aqi = icmp ult i16 %.val20.i.i.i.i.i.i, %i.app
  %i.aqj = zext i1 %i.aqi to i64
  %i.aqk = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, %i.aqj
  %i.aql = icmp ule i64 %i.aqk, %i.apu
  call void @llvm.assume(i1 %i.aql)
  br label %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5b00475923cbca8fE.exit.sink.split"

bb.pa:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aqm = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.apw, i16 noundef %i.apq)
          to label %.noexc.i.i unwind label %bb.pm, !noalias !145760

.noexc.i.i:                                       ; preds = %bb.pa
  br i1 %i.aqm, label %bb.pb, label %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5b00475923cbca8fE.exit.sink.split"

bb.pb:                                            ; preds = %.noexc.i.i
  %i.aqn = load i64, ptr %i.apw, align 8, !range !1428, !noalias !145773, !noundef !10 ; 3 uses
  %i.aqo = icmp eq i64 %i.aqn, -9223372036854775808
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.apw, i64 16
  %i.aqq = load i64, ptr %i.aqp, align 8, !noalias !145773, !noundef !10 ; 2 uses
  br i1 %i.aqo, label %bb.pd, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.aqr = icmp ult i64 %i.aqq, 4611686018427387904
  call void @llvm.assume(i1 %i.aqr)
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb
  %.sroa.03.0.in.i.i.i.i = icmp eq i64 %i.aqq, 0
  br i1 %.sroa.03.0.in.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i.i.i.i", label %bb.pl

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i.i.i.i": ; preds = %bb.pd
  call void @llvm.experimental.noalias.scope.decl(metadata !145774)
  %i.aqs = icmp ult i64 %i.apu, 288230376151711744
  call void @llvm.assume(i1 %i.aqs)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !145777 ; 4 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.apw, i64 32
  %i.aqu = xor i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -1
  %i.aqv = add nsw i64 %i.apu, %i.aqu
  %i.aqw = shl nuw nsw i64 %i.aqv, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.apw, ptr nonnull align 8 %i.aqt, i64 %i.aqw, i1 false), !noalias !145778
  %i.aqx = add nsw i64 %i.apu, -1
  store i64 %i.aqx, ptr %i.apt, align 8, !alias.scope !145780, !noalias !145781
  switch i64 %i.aqn, label %bb.pe [
    i64 -9223372036854775808, label %bb.pf
    i64 0, label %bb.pl
  ]

bb.pe:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i.i.i.i"
  %i.aqy = shl nuw i64 %i.aqn, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i, i64 noundef %i.aqy, i64 noundef range(i64 1, -9223372036854775807) 2) #101, !noalias !145773
  br label %bb.pl

bb.pf:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i, i64 noundef 8192, i64 noundef 8) #101, !noalias !145773
  br label %bb.pl

.body.i.i:                                        ; preds = %bb.pk, %bb.pj, %bb.pi
  %i.aqz = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.125.i.i.i.i, ptr %.val7.i.i, align 8, !noalias !145782
  %.sroa.516.0..8.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  store i64 %.sroa.9.124.i.i.i.i, ptr %.sroa.516.0..8.val.sroa_idx.i.i.i.i, align 8, !noalias !145782
  %.sroa.6.0..8.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  store i64 %.sroa.10.123.i.i.i.i, ptr %.sroa.6.0..8.val.sroa_idx.i.i.i.i, align 8, !noalias !145756
  %.sroa.1070.24..sroa.6.0..8.val.sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 24
  store i32 %.sroa.11.122.i.i.i.i, ptr %.sroa.1070.24..sroa.6.0..8.val.sroa_idx.i.i.i.i.sroa_idx, align 8, !noalias !145756
  %.sroa.1173.24..sroa.6.0..8.val.sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 28
  store i32 %.sroa.12.121.i.i.i.i, ptr %.sroa.1173.24..sroa.6.0..8.val.sroa_idx.i.i.i.i.sroa_idx, align 4, !noalias !145756
  %.sroa.7.0..8.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.7.0..8.val.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.1276, i64 288, i1 false), !noalias !145756
  br label %common.resume

bb.pg:                                            ; preds = %bb.ox
  %.val6.i.i = load ptr, ptr %i.hg, align 8, !alias.scope !145789, !noalias !145790, !nonnull !10, !align !299, !noundef !10 ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val7.i.i = load ptr, ptr %i.ara, align 8, !alias.scope !145789, !noalias !145790, !nonnull !10, !noundef !10 ; 16 uses
  %i.arb = load i64, ptr %.val6.i.i, align 8, !noalias !145791, !noundef !10
  %i.arc = add i64 %i.arb, -1
  store i64 %i.arc, ptr %.val6.i.i, align 8, !noalias !145791
  %i.ard = load i64, ptr %.val7.i.i, align 8, !range !1815, !alias.scope !145792, !noalias !145782, !noundef !10 ; 3 uses
  %i.are = icmp eq i64 %i.ard, 97
  br i1 %i.are, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.thread.i.i.i", label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.arf = add nsw i64 %i.ard, -95
  %i.arg = icmp samesign ugt i64 %i.ard, 94
  %i.arh = select i1 %i.arg, i64 %i.arf, i64 2
  switch i64 %i.arh, label %bb.pi [
    i64 0, label %bb.pj
    i64 1, label %bb.pk
  ]

bb.pi:                                            ; preds = %bb.ph
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$milli..error..UserError$GT$17h13a314a155c02142E"(ptr noalias noundef nonnull align 8 dereferenceable(320) %.val7.i.i)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.thread.i.i.i" unwind label %.body.i.i, !noalias !145782

bb.pj:                                            ; preds = %bb.ph
  %i.ari = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  invoke void @"_ZN4core3ptr48drop_in_place$LT$milli..error..InternalError$GT$17haaeb9944b0a99ea3E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ari)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.thread.i.i.i" unwind label %.body.i.i, !noalias !145782

bb.pk:                                            ; preds = %bb.ph
  %i.arj = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h311d5137e27cf60dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.arj)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.thread.i.i.i" unwind label %.body.i.i, !noalias !145782

bb.pl:                                            ; preds = %bb.pf, %bb.pe, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i.i.i.i", %bb.pd
  %i.ark = load i64, ptr %.val6.i.i160, align 8, !noalias !145795, !noundef !10
  %i.arl = add i64 %i.ark, -1                     ; 3 uses
  store i64 %i.arl, ptr %.val6.i.i160, align 8, !noalias !145795
  %.not.i6.i.i.i.i = icmp eq i64 %.sroa.9.124.i.i.i.i, 2
  br i1 %.not.i6.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.thread18.i.i.i", label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.i.i.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.i.i.i": ; preds = %bb.pl
  %i.arm = icmp ne i64 %i.arl, 0
  %.not.i.i.i.i4 = icmp eq i64 %.sroa.9.124.i.i.i.i, 3
  %or.cond = select i1 %i.arm, i1 %.not.i.i.i.i4, i1 false
  br i1 %or.cond, label %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5b00475923cbca8fE.exit.sink.split", label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf0111a269d4c91a8E.exit"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.thread18.i.i.i": ; preds = %bb.pl
  %i.arn = icmp eq i64 %i.arl, 0
  br i1 %i.arn, label %.loopexit214.sink.split, label %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5b00475923cbca8fE.exit.sink.split"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.thread.i.i.i": ; preds = %bb.pk, %bb.pj, %bb.pi, %bb.pg
  store i64 %.sroa.7.125.i.i.i.i, ptr %.val7.i.i, align 8, !noalias !145782
  %.sroa.516.0..8.val.sroa_idx17.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  store i64 %.sroa.9.124.i.i.i.i, ptr %.sroa.516.0..8.val.sroa_idx17.i.i.i.i, align 8, !noalias !145782
  %.sroa.6.0..8.val.sroa_idx19.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  store i64 %.sroa.10.123.i.i.i.i, ptr %.sroa.6.0..8.val.sroa_idx19.i.i.i.i, align 8, !noalias !145756
  %.sroa.1070.24..sroa.6.0..8.val.sroa_idx19.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 24
  store i32 %.sroa.11.122.i.i.i.i, ptr %.sroa.1070.24..sroa.6.0..8.val.sroa_idx19.i.i.i.i.sroa_idx, align 8, !noalias !145756
  %.sroa.1173.24..sroa.6.0..8.val.sroa_idx19.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 28
  store i32 %.sroa.12.121.i.i.i.i, ptr %.sroa.1173.24..sroa.6.0..8.val.sroa_idx19.i.i.i.i.sroa_idx, align 4, !noalias !145756
  %.sroa.7.0..8.val.sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.7.0..8.val.sroa_idx20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.1276, i64 288, i1 false), !noalias !145756
  br label %.loopexit214.sink.split

bb.pm:                                            ; preds = %bb.pa
  %i.aro = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$core..result..Result$LT$milli..search..PinDoc$C$milli..error..Error$GT$$GT$17hae5193a3fee20aa7E"(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.p) #107
          to label %common.resume unwind label %bb.pn, !noalias !145797

bb.pn:                                            ; preds = %bb.pm
  %i.arp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !145797
  unreachable

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf0111a269d4c91a8E.exit": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !145753
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1276)
  %.not.i = icmp eq i64 %.sroa.9.124.i.i.i.i, 4
  br i1 %.not.i, label %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5b00475923cbca8fE.exit.backedge", label %.loopexit214

bb.po:                                            ; preds = %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb885a7b28af7aae8E.exit.thread.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i.i)
  store i64 4, ptr %0, align 8, !alias.scope !145798
  br label %bb.pp

.loopexit214.sink.split:                          ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.thread18.i.i.i", %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.thread.i.i.i"
  %.sroa.057.0.ph.ph = phi i64 [ 2, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.thread.i.i.i" ], [ 3, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.thread18.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !145753
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1276)
  br label %.loopexit214

.loopexit214:                                     ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf0111a269d4c91a8E.exit", %.loopexit214.sink.split
  %.sroa.057.0.ph = phi i64 [ %.sroa.057.0.ph.ph, %.loopexit214.sink.split ], [ %.sroa.9.124.i.i.i.i, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf0111a269d4c91a8E.exit" ]
  %.sroa.759.sroa.0.0.ph = phi i64 [ undef, %.loopexit214.sink.split ], [ %.sroa.10.123.i.i.i.i, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf0111a269d4c91a8E.exit" ]
  %.sroa.759.sroa.5.0.ph = phi i32 [ undef, %.loopexit214.sink.split ], [ %.sroa.11.122.i.i.i.i, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf0111a269d4c91a8E.exit" ]
  %.sroa.759.sroa.6.0.ph = phi i32 [ undef, %.loopexit214.sink.split ], [ %.sroa.12.121.i.i.i.i, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf0111a269d4c91a8E.exit" ]
  store i64 %.sroa.057.0.ph, ptr %0, align 8, !alias.scope !145801
  %.sroa.278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.759.sroa.0.0.ph, ptr %.sroa.278.0..sroa_idx, align 8, !alias.scope !145801
  %.sroa.278.sroa.2.0..sroa.278.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.759.sroa.5.0.ph, ptr %.sroa.278.sroa.2.0..sroa.278.0..sroa_idx.sroa_idx, align 8, !alias.scope !145801
  %.sroa.278.sroa.3.0..sroa.278.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.759.sroa.6.0.ph, ptr %.sroa.278.sroa.3.0..sroa.278.0..sroa_idx.sroa_idx, align 4, !alias.scope !145801
  br label %bb.pp

"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5b00475923cbca8fE.exit.sink.split": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.thread18.i.i.i", %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h956b841d9318e3efE.exit.i.i.i", %bb.oz, %bb.oy, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !145753
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1276)
  br label %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5b00475923cbca8fE.exit.backedge"

"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5b00475923cbca8fE.exit.backedge": ; preds = %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5b00475923cbca8fE.exit.sink.split", %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf0111a269d4c91a8E.exit"
  br label %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5b00475923cbca8fE.exit"

bb.pp:                                            ; preds = %bb.po, %.loopexit214
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN4core4iter6traits8iterator8Iterator8try_fold17ha34c2efb67f8a8eeE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !145805, !nonnull !10, !noundef !10 ; 4 uses
  %.promoted = load ptr, ptr %0, align 8, !alias.scope !145805
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted16 = load i64, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.d = phi i64 [ %.promoted16, %bb.a ], [ %i.v, %bb.d ]
  %i.e = phi ptr [ %.promoted, %bb.a ], [ %i.s, %bb.d ] ; 7 uses
  %.sroa.01.0 = phi i64 [ %1, %bb.a ], [ %i.w, %bb.d ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145805)
  %i.f = ptrtoint ptr %i.e to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145808)
  %i.g = icmp eq ptr %i.e, %i.b
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !alias.scope !145811
  %i.i = load i8, ptr %i.e, align 1, !noalias !145814, !noundef !10 ; 3 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.d, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ee3f49cd5c0cc15E.exit12.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ee3f49cd5c0cc15E.exit12.i.i": ; preds = %bb.c
  %i.k = icmp ne ptr %i.h, %i.b
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !alias.scope !145815
  %i.m = icmp samesign ugt i8 %i.i, -33
  br i1 %i.m, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ee3f49cd5c0cc15E.exit14.i.i", label %bb.d

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ee3f49cd5c0cc15E.exit14.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ee3f49cd5c0cc15E.exit12.i.i"
  %i.n = icmp ne ptr %i.l, %i.b
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !alias.scope !145818
  %i.p = icmp samesign ugt i8 %i.i, -17
  br i1 %i.p, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ee3f49cd5c0cc15E.exit16.i.i", label %bb.d

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ee3f49cd5c0cc15E.exit16.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ee3f49cd5c0cc15E.exit14.i.i"
end_hunk_10
begin_hunk_11_@"_ZN5arroy8parallel23ImmutableLeafs$LT$D$GT$6sample17h4364e5cf5dc32cdbE":bb.a
  %.sroa.09.0.i100 = phi i64 [ %i.kb, %.noexc104 ], [ 0, %bb.ak ] ; 2 uses
  %.sroa.07.0.i101 = phi i64 [ %i.ka, %.noexc104 ], [ 0, %bb.ak ]
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %.sroa.09.0.i100
  %.val19.i102 = load i64, ptr %i.jw, align 8, !alias.scope !195694, !noalias !195697, !noundef !10
  %i.jx = invoke noundef zeroext i1 @"_ZN7roaring7treemap8inherent50_$LT$impl$u20$roaring..treemap..RoaringTreemap$GT$8contains17h4d10c12dfb79bf94E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, i64 noundef %.val19.i102)
          to label %.noexc104 unwind label %.loopexit.split-lp381.loopexit

.noexc104:                                        ; preds = %.preheader384
  %i.jy = xor i1 %i.jx, true
  %i.jz = zext i1 %i.jy to i64
  %i.ka = add i64 %.sroa.07.0.i101, %i.jz         ; 2 uses
  %i.kb = add nuw i64 %.sroa.09.0.i100, 1         ; 2 uses
  %i.kc = icmp eq i64 %i.kb, %i.ju
  br i1 %i.kc, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h009739aef7fb5d34E.exit", label %.preheader384

select.unfold.invoke:                             ; preds = %bb.af, %.noexc95, %bb.ad, %._crit_edge.i.i97
  %i.kd = phi ptr [ @2636, %bb.ad ], [ @2637, %._crit_edge.i.i97 ], [ @2637, %bb.af ], [ @2636, %.noexc95 ]
  store i64 %i.gd, ptr %i.fu, align 8
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kd) #106
          to label %select.unfold.cont unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold.cont:                               ; preds = %select.unfold.invoke
  unreachable

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h009739aef7fb5d34E.exit": ; preds = %.noexc104, %bb.ak
  %.sroa.04.0.i103 = phi i64 [ 0, %bb.ak ], [ %i.ka, %.noexc104 ]
  %i.ke = invoke noundef i64 @"_ZN7roaring7treemap8inherent50_$LT$impl$u20$roaring..treemap..RoaringTreemap$GT$3len17h02be63801495c015E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.al unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit

bb.al:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h009739aef7fb5d34E.exit"
  %i.kf = add i64 %i.ke, %.sroa.04.0.i103
  %i.kg = icmp ugt i64 %i.kf, %i.at
  br i1 %i.kg, label %bb.am, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111.thread"

bb.am:                                            ; preds = %bb.al
  %i.kh = load ptr, ptr %.sroa.429.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.ki = load i64, ptr %.sroa.530.0..sroa_idx, align 8, !noundef !10 ; 5 uses
  %i.kj = icmp eq i64 %i.ki, 0
  br i1 %i.kj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111.thread", label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.am
  %min.iters.check = icmp ult i64 %i.ki, 5
  br i1 %min.iters.check, label %.preheader.preheader710, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.kk = and i64 %i.ki, 3                        ; 2 uses
  %i.kl = icmp eq i64 %i.kk, 0
  %i.km = select i1 %i.kl, i64 4, i64 %i.kk
  %n.vec = sub i64 %i.ki, %i.km                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ld, %vector.body ]
  %vec.phi680 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.le, %vector.body ]
  %i.kn = getelementptr inbounds nuw [32 x i8], ptr %i.kh, i64 %index
  %i.ko = getelementptr inbounds nuw [32 x i8], ptr %i.kh, i64 %index
  %i.kp = getelementptr inbounds nuw [32 x i8], ptr %i.kh, i64 %index
  %i.kq = getelementptr inbounds nuw [32 x i8], ptr %i.kh, i64 %index
  %i.kr = getelementptr i8, ptr %i.kn, i64 16
  %i.ks = getelementptr i8, ptr %i.ko, i64 48
  %i.kt = getelementptr i8, ptr %i.kp, i64 80
  %i.ku = getelementptr i8, ptr %i.kq, i64 112
  %i.kv = load i64, ptr %i.kr, align 8
  %i.kw = load i64, ptr %i.ks, align 8
  %i.kx = insertelement <2 x i64> poison, i64 %i.kv, i64 0
  %i.ky = insertelement <2 x i64> %i.kx, i64 %i.kw, i64 1
  %i.kz = load i64, ptr %i.kt, align 8
  %i.la = load i64, ptr %i.ku, align 8
  %i.lb = insertelement <2 x i64> poison, i64 %i.kz, i64 0
  %i.lc = insertelement <2 x i64> %i.lb, i64 %i.la, i64 1
  %i.ld = add <2 x i64> %i.ky, %vec.phi           ; 2 uses
  %i.le = add <2 x i64> %i.lc, %vec.phi680        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lf = icmp eq i64 %index.next, %n.vec
  br i1 %i.lf, label %middle.block, label %vector.body, !llvm.loop !195700

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.le, %i.ld
  %i.lg = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader710

.preheader.preheader710:                          ; preds = %.preheader.preheader, %middle.block
  %.sroa.09.0.i105.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i106.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.lg, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader710, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i109"
  %.sroa.09.0.i105 = phi i64 [ %i.lm, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i109" ], [ %.sroa.09.0.i105.ph, %.preheader.preheader710 ] ; 2 uses
  %.sroa.07.0.i106 = phi i64 [ %i.ll, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i109" ], [ %.sroa.07.0.i106.ph, %.preheader.preheader710 ]
  %i.lh = getelementptr inbounds nuw [32 x i8], ptr %i.kh, i64 %.sroa.09.0.i105 ; 2 uses
  %.val.i107 = load i64, ptr %i.lh, align 8, !range !1428, !noundef !10
  %i.li = getelementptr i8, ptr %i.lh, i64 16
  %.val19.i108 = load i64, ptr %i.li, align 8     ; 2 uses
  %i.lj = icmp eq i64 %.val.i107, -9223372036854775808
  br i1 %i.lj, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i109", label %bb.an

bb.an:                                            ; preds = %.preheader
  %i.lk = icmp ult i64 %.val19.i108, 4611686018427387904
  call void @llvm.assume(i1 %i.lk)
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i109"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i109": ; preds = %bb.an, %.preheader
  %i.ll = add i64 %.val19.i108, %.sroa.07.0.i106  ; 2 uses
  %i.lm = add nuw i64 %.sroa.09.0.i105, 1         ; 2 uses
  %i.ln = icmp eq i64 %i.lm, %i.ki
  br i1 %i.ln, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111", label %.preheader, !llvm.loop !195701

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111.thread": ; preds = %bb.am, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111", %bb.al
  %i.lo = load ptr, ptr %i.jr, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.lp = load i64, ptr %i.jt, align 8, !noundef !10 ; 2 uses
  %.idx = shl nuw nsw i64 %i.lp, 3
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 %.idx
  %i.lr = icmp eq i64 %i.lp, 0
  br i1 %i.lr, label %"_ZN7roaring7treemap4iter109_$LT$impl$u20$core..iter..traits..collect..Extend$LT$u64$GT$$u20$for$u20$roaring..treemap..RoaringTreemap$GT$6extend17h08f697470ae3f3deE.exit", label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111.thread", %.noexc113
  %.sroa.0.08.i = phi ptr [ %i.lt, %.noexc113 ], [ %i.lo, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111.thread" ] ; 2 uses
  %.val.i.i = load i64, ptr %.sroa.0.08.i, align 8, !noalias !195702, !noundef !10
  %i.ls = invoke noundef zeroext i1 @"_ZN7roaring7treemap8inherent50_$LT$impl$u20$roaring..treemap..RoaringTreemap$GT$6insert17ha7d97329bc5fc48cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.val.i.i)
          to label %.noexc113 unwind label %.loopexit380 ; 0 uses

.noexc113:                                        ; preds = %.lr.ph.i112
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8 ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.lq
  br i1 %i.lu, label %"_ZN7roaring7treemap4iter109_$LT$impl$u20$core..iter..traits..collect..Extend$LT$u64$GT$$u20$for$u20$roaring..treemap..RoaringTreemap$GT$6extend17h08f697470ae3f3deE.exit", label %.lr.ph.i112

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i109"
  %i.lv = icmp ugt i64 %i.ll, 199
  br i1 %i.lv, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111._crit_edge", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111.thread"

"_ZN7roaring7treemap4iter109_$LT$impl$u20$core..iter..traits..collect..Extend$LT$u64$GT$$u20$for$u20$roaring..treemap..RoaringTreemap$GT$6extend17h08f697470ae3f3deE.exit": ; preds = %.noexc113, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111.thread"
  %i.lw = invoke fastcc noundef zeroext i1 @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h94eafc541148e8c7E"(ptr noalias noundef align 8 dereferenceable(24) %i.i, i32 noundef %i.it)
          to label %bb.ao unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.ao:                                            ; preds = %"_ZN7roaring7treemap4iter109_$LT$impl$u20$core..iter..traits..collect..Extend$LT$u64$GT$$u20$for$u20$roaring..treemap..RoaringTreemap$GT$6extend17h08f697470ae3f3deE.exit"
  %cond = icmp eq i64 %i.gd, 1
  br i1 %cond, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.ao
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.ao ], [ %i.mg, %.lr.ph.i.i.i ] ; 3 uses
  %i.lx = getelementptr inbounds nuw [32 x i8], ptr %i.fy, i64 %.sroa.05.0.lcssa.i.i.i ; 7 uses
  %i.ly = getelementptr i8, ptr %i.lx, i64 24
  %.val20.i.i.i = load i16, ptr %i.ly, align 8, !alias.scope !195707, !noalias !195712, !noundef !10 ; 2 uses
  %i.lz = icmp eq i16 %.val20.i.i.i, %i.ip
  br i1 %i.lz, label %bb.aq, label %bb.ap

.lr.ph.i.i.i:                                     ; preds = %bb.ao, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.mh, %.lr.ph.i.i.i ], [ %i.gd, %bb.ao ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.mg, %.lr.ph.i.i.i ], [ 0, %bb.ao ] ; 2 uses
  %i.ma = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.mb = add nuw nsw i64 %i.ma, %.sroa.05.024.i.i.i ; 3 uses
  %i.mc = icmp ult i64 %i.mb, %i.gd
  call void @llvm.assume(i1 %i.mc)
  %i.md = getelementptr inbounds nuw [32 x i8], ptr %i.fy, i64 %i.mb
  %i.me = getelementptr i8, ptr %i.md, i64 24
  %.val22.i.i.i = load i16, ptr %i.me, align 8, !alias.scope !195707, !noalias !195712, !noundef !10
  %i.mf = icmp ugt i16 %.val22.i.i.i, %i.ip
  %i.mg = select i1 %i.mf, i64 %.sroa.05.024.i.i.i, i64 %i.mb, !unpredictable !10 ; 2 uses
  %i.mh = sub nuw nsw i64 %.sroa.01.025.i.i.i, %i.ma ; 2 uses
  %i.mi = icmp ugt i64 %i.mh, 1
  br i1 %i.mi, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i
  %i.mj = icmp ult i16 %.val20.i.i.i, %i.ip
  %i.mk = zext i1 %i.mj to i64
  %i.ml = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i, %i.mk
  %i.mm = icmp ule i64 %i.ml, %i.gd
  call void @llvm.assume(i1 %i.mm)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  %i.mn = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.lx, i16 noundef %i.in)
          to label %.noexc116 unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc116:                                        ; preds = %bb.aq
  br i1 %i.mn, label %bb.ar, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.ar:                                            ; preds = %.noexc116
  %i.mo = load i64, ptr %i.lx, align 8, !range !1428, !noalias !195716, !noundef !10 ; 3 uses
  %i.mp = icmp eq i64 %i.mo, -9223372036854775808
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.mr = load i64, ptr %i.mq, align 8, !noalias !195716, !noundef !10 ; 2 uses
  br i1 %i.mp, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ms = icmp ult i64 %i.mr, 4611686018427387904
  call void @llvm.assume(i1 %i.ms)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.03.0.in.i = icmp eq i64 %i.mr, 0
  br i1 %.sroa.03.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i": ; preds = %bb.at
  %.sroa.4.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i115, align 8, !noalias !195717 ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.mu = xor i64 %.sroa.05.0.lcssa.i.i.i, -1
  %i.mv = add nsw i64 %i.gd, %i.mu
  %i.mw = shl nuw nsw i64 %i.mv, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lx, ptr nonnull align 8 %i.mt, i64 %i.mw, i1 false), !noalias !195720
  %i.mx = add nsw i64 %i.gd, -1                   ; 3 uses
  switch i64 %i.mo, label %bb.au [
    i64 -9223372036854775808, label %bb.av
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  ]

bb.au:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i"
  %i.my = shl nuw i64 %i.mo, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.my, i64 noundef range(i64 1, -9223372036854775807) 2) #101, !noalias !195716
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.av:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef 8192, i64 noundef 8) #101, !noalias !195716
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit": ; preds = %bb.ap, %.noexc116, %bb.at, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i", %bb.au, %bb.av
  %i.mz = phi i64 [ %i.mx, %bb.av ], [ %i.gd, %bb.ap ], [ %i.gd, %.noexc116 ], [ %i.gd, %bb.at ], [ %i.mx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i" ], [ %i.mx, %bb.au ] ; 3 uses
  %i.na = icmp ult i64 %i.mz, 288230376151711744
  call void @llvm.assume(i1 %i.na)
  %i.nb = icmp eq i64 %i.mz, 0
  br i1 %i.nb, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111._crit_edge", label %bb.u

bb.aw:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111._crit_edge"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @"_ZN7roaring7treemap4iter104_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$roaring..treemap..RoaringTreemap$GT$9into_iter17ha53b11600104a194E"(ptr noalias noundef nonnull sret([360 x i8]) align 8 captures(address) dereferenceable(360) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.ax unwind label %bb.w

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.e, ptr noundef nonnull align 8 dereferenceable(360) %i.g, i64 360, i1 false)
  %i.nc = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.nd = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.nf = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %.loopexit372

.loopexit372:                                     ; preds = %.loopexit372.backedge, %bb.ax
  %i.ng = invoke { i64, i64 } @"_ZN91_$LT$roaring..treemap..iter..IntoIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfeba166cf90dc39dE"(ptr noalias noundef nonnull align 8 dereferenceable(360) %i.e)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit ; 2 uses

.loopexit375:                                     ; preds = %bb.cq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.loopexit372
  %lpad.loopexit376 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.invoke
  %lpad.loopexit.split-lp377 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit375
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit375 ], [ %lpad.loopexit376, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp377, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.nh = load i64, ptr %i.e, align 8, !range !1339, !alias.scope !195722, !noundef !10
  %i.ni = icmp eq i64 %i.nh, 2
  br i1 %i.ni, label %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i", label %bb.ay

bb.ay:                                            ; preds = %.loopexit.split-lp
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$GT$17hfb9d5a81603516f4E"(ptr noalias noundef nonnull align 8 dereferenceable(360) %i.e)
          to label %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i" unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.nj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !range !1598, !alias.scope !195733, !noundef !10
  %i.nm = icmp eq i64 %i.nl, 5
  br i1 %i.nm, label %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit.i.i.i", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @"_ZN4core3ptr52drop_in_place$LT$roaring..bitmap..iter..IntoIter$GT$17hcf48aeb194840538E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.nk)
  br label %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit.i.i.i"

"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i": ; preds = %bb.ay, %.loopexit.split-lp
  %i.nn = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.no = load i64, ptr %i.nn, align 8, !range !1598, !alias.scope !195736, !noundef !10
  %i.np = icmp eq i64 %i.no, 5
  br i1 %i.np, label %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit2.i.i.i", label %bb.bb

bb.bb:                                            ; preds = %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i"
  call void @"_ZN4core3ptr52drop_in_place$LT$roaring..bitmap..iter..IntoIter$GT$17hcf48aeb194840538E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.nn)
  br label %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit2.i.i.i"

"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit.i.i.i": ; preds = %bb.ba, %bb.az
  %i.nq = getelementptr inbounds nuw i8, ptr %i.e, i64 216 ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !range !1598, !alias.scope !195739, !noundef !10
  %i.ns = icmp eq i64 %i.nr, 5
  br i1 %i.ns, label %.body, label %bb.bc

bb.bc:                                            ; preds = %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit.i.i.i"
  call void @"_ZN4core3ptr52drop_in_place$LT$roaring..bitmap..iter..IntoIter$GT$17hcf48aeb194840538E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.nq)
  br label %.body

"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit2.i.i.i": ; preds = %bb.bb, %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i"
  %i.nt = getelementptr inbounds nuw i8, ptr %i.e, i64 216 ; 2 uses
  %i.nu = load i64, ptr %i.nt, align 8, !range !1598, !alias.scope !195742, !noundef !10
  %i.nv = icmp eq i64 %i.nu, 5
  br i1 %i.nv, label %bb.cx, label %bb.bd

bb.bd:                                            ; preds = %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit2.i.i.i"
  call void @"_ZN4core3ptr52drop_in_place$LT$roaring..bitmap..iter..IntoIter$GT$17hcf48aeb194840538E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.nt)
  br label %bb.cx

bb.be:                                            ; preds = %.loopexit372
  %i.nw = extractvalue { i64, i64 } %i.ng, 0
  %i.nx = trunc nuw i64 %i.nw to i1
  br i1 %i.nx, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.ny = extractvalue { i64, i64 } %i.ng, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !195745)
  %i.nz = load i64, ptr %i.nc, align 8, !alias.scope !195745, !noundef !10
  %i.oa = icmp eq i64 %i.nz, 0
  br i1 %i.oa, label %.loopexit.invoke, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !195748)
  call void @llvm.experimental.noalias.scope.decl(metadata !195751)
  %i.ob = lshr i64 %i.ny, 57
  %i.oc = trunc nuw nsw i64 %i.ob to i8
  %i.od = load i64, ptr %i.nd, align 8, !alias.scope !195754, !noalias !195755, !noundef !10 ; 2 uses
  %i.oe = load ptr, ptr %i.p, align 8, !alias.scope !195754, !noalias !195755, !nonnull !10, !noundef !10 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.oc, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bj, %bb.bg
  %.sroa.9.0.i.i.i117 = phi i64 [ 0, %bb.bg ], [ %i.ov, %bb.bj ]
  %.pn.i.i118 = phi i64 [ %i.ny, %bb.bg ], [ %i.ow, %bb.bj ]
  %.sroa.01.0.i.i.i119 = and i64 %.pn.i.i118, %i.od ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %.sroa.01.0.i.i.i119
  %.sroa.0.0.copyload.i26.i.i120 = load <16 x i8>, ptr %i.of, align 1, !noalias !195758 ; 2 uses
  %i.og = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i120, %.sroa.0.15.vec.insert.i.i.i
  %i.oh = bitcast <16 x i1> %i.og to i16          ; 2 uses
  %.not.i.not32.i.i121 = icmp eq i16 %i.oh, 0
  br i1 %.not.i.not32.i.i121, label %._crit_edge.i.i126, label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %bb.bh, %bb.bi
  %.sroa.06.0.i33.i.i123 = phi i16 [ %i.ou, %bb.bi ], [ %i.oh, %bb.bh ] ; 3 uses
  %i.oi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i123, i1 true)
  %i.oj = zext nneg i16 %i.oi to i64
  %i.ok = add i64 %.sroa.01.0.i.i.i119, %i.oj
  %i.ol = and i64 %i.ok, %i.od
  %i.om = sub nsw i64 0, %i.ol
  %i.on = getelementptr inbounds [32 x i8], ptr %i.oe, i64 %i.om ; 3 uses
  %i.oo = getelementptr inbounds i8, ptr %i.on, i64 -32
  %.val3.i.i.i124 = load i64, ptr %i.oo, align 8, !noalias !195761, !noundef !10
  %i.op = icmp eq i64 %i.ny, %.val3.i.i.i124
  br i1 %i.op, label %bb.ci, label %bb.bi, !prof !119

._crit_edge.i.i126:                               ; preds = %bb.bi, %bb.bh
  %i.oq = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i120, splat (i8 -1)
  %i.or = bitcast <16 x i1> %i.oq to i16
  %i.os = icmp eq i16 %i.or, 0
  br i1 %i.os, label %bb.bj, label %.loopexit.invoke, !prof !59

bb.bi:                                            ; preds = %.lr.ph.i.i122
  %i.ot = add i16 %.sroa.06.0.i33.i.i123, -1
  %i.ou = and i16 %i.ot, %.sroa.06.0.i33.i.i123   ; 2 uses
  %.not.i.not.i.i125 = icmp eq i16 %i.ou, 0
  br i1 %.not.i.not.i.i125, label %._crit_edge.i.i126, label %.lr.ph.i.i122

bb.bj:                                            ; preds = %._crit_edge.i.i126
  %i.ov = add i64 %.sroa.9.0.i.i.i117, 16         ; 2 uses
  %i.ow = add i64 %.sroa.01.0.i.i.i119, %i.ov
  br label %bb.bh

bb.bk:                                            ; preds = %bb.be
  %i.ox = load i64, ptr %i.e, align 8, !range !1339, !alias.scope !195764, !noundef !10
  %i.oy = icmp eq i64 %i.ox, 2
  br i1 %i.oy, label %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i132", label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$GT$17hfb9d5a81603516f4E"(ptr noalias noundef nonnull align 8 dereferenceable(360) %i.e)
          to label %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i132" unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.oz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.pb = load i64, ptr %i.pa, align 8, !range !1598, !alias.scope !195775, !noundef !10
  %i.pc = icmp eq i64 %i.pb, 5
  br i1 %i.pc, label %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit.i.i.i130", label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @"_ZN4core3ptr52drop_in_place$LT$roaring..bitmap..iter..IntoIter$GT$17hcf48aeb194840538E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.pa)
  br label %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit.i.i.i130"

"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i132": ; preds = %bb.bl, %bb.bk
  %i.pd = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
end_hunk_11
begin_hunk_12_@"_ZN5arroy8parallel23ImmutableLeafs$LT$D$GT$6sample17hdc4d766e1d9ebfb8E":bb.a
  %.sroa.09.0.i100 = phi i64 [ %i.kb, %.noexc104 ], [ 0, %bb.ak ] ; 2 uses
  %.sroa.07.0.i101 = phi i64 [ %i.ka, %.noexc104 ], [ 0, %bb.ak ]
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %.sroa.09.0.i100
  %.val19.i102 = load i64, ptr %i.jw, align 8, !alias.scope !196138, !noalias !196141, !noundef !10
  %i.jx = invoke noundef zeroext i1 @"_ZN7roaring7treemap8inherent50_$LT$impl$u20$roaring..treemap..RoaringTreemap$GT$8contains17h4d10c12dfb79bf94E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, i64 noundef %.val19.i102)
          to label %.noexc104 unwind label %.loopexit.split-lp381.loopexit

.noexc104:                                        ; preds = %.preheader384
  %i.jy = xor i1 %i.jx, true
  %i.jz = zext i1 %i.jy to i64
  %i.ka = add i64 %.sroa.07.0.i101, %i.jz         ; 2 uses
  %i.kb = add nuw i64 %.sroa.09.0.i100, 1         ; 2 uses
  %i.kc = icmp eq i64 %i.kb, %i.ju
  br i1 %i.kc, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb22200f5800b65f3E.exit", label %.preheader384

select.unfold.invoke:                             ; preds = %bb.af, %.noexc95, %bb.ad, %._crit_edge.i.i97
  %i.kd = phi ptr [ @2636, %bb.ad ], [ @2637, %._crit_edge.i.i97 ], [ @2637, %bb.af ], [ @2636, %.noexc95 ]
  store i64 %i.gd, ptr %i.fu, align 8
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kd) #106
          to label %select.unfold.cont unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold.cont:                               ; preds = %select.unfold.invoke
  unreachable

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb22200f5800b65f3E.exit": ; preds = %.noexc104, %bb.ak
  %.sroa.04.0.i103 = phi i64 [ 0, %bb.ak ], [ %i.ka, %.noexc104 ]
  %i.ke = invoke noundef i64 @"_ZN7roaring7treemap8inherent50_$LT$impl$u20$roaring..treemap..RoaringTreemap$GT$3len17h02be63801495c015E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.al unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit

bb.al:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb22200f5800b65f3E.exit"
  %i.kf = add i64 %i.ke, %.sroa.04.0.i103
  %i.kg = icmp ugt i64 %i.kf, %i.at
  br i1 %i.kg, label %bb.am, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111.thread"

bb.am:                                            ; preds = %bb.al
  %i.kh = load ptr, ptr %.sroa.429.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.ki = load i64, ptr %.sroa.530.0..sroa_idx, align 8, !noundef !10 ; 5 uses
  %i.kj = icmp eq i64 %i.ki, 0
  br i1 %i.kj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111.thread", label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.am
  %min.iters.check = icmp ult i64 %i.ki, 5
  br i1 %min.iters.check, label %.preheader.preheader710, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.kk = and i64 %i.ki, 3                        ; 2 uses
  %i.kl = icmp eq i64 %i.kk, 0
  %i.km = select i1 %i.kl, i64 4, i64 %i.kk
  %n.vec = sub i64 %i.ki, %i.km                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ld, %vector.body ]
  %vec.phi680 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.le, %vector.body ]
  %i.kn = getelementptr inbounds nuw [32 x i8], ptr %i.kh, i64 %index
  %i.ko = getelementptr inbounds nuw [32 x i8], ptr %i.kh, i64 %index
  %i.kp = getelementptr inbounds nuw [32 x i8], ptr %i.kh, i64 %index
  %i.kq = getelementptr inbounds nuw [32 x i8], ptr %i.kh, i64 %index
  %i.kr = getelementptr i8, ptr %i.kn, i64 16
  %i.ks = getelementptr i8, ptr %i.ko, i64 48
  %i.kt = getelementptr i8, ptr %i.kp, i64 80
  %i.ku = getelementptr i8, ptr %i.kq, i64 112
  %i.kv = load i64, ptr %i.kr, align 8
  %i.kw = load i64, ptr %i.ks, align 8
  %i.kx = insertelement <2 x i64> poison, i64 %i.kv, i64 0
  %i.ky = insertelement <2 x i64> %i.kx, i64 %i.kw, i64 1
  %i.kz = load i64, ptr %i.kt, align 8
  %i.la = load i64, ptr %i.ku, align 8
  %i.lb = insertelement <2 x i64> poison, i64 %i.kz, i64 0
  %i.lc = insertelement <2 x i64> %i.lb, i64 %i.la, i64 1
  %i.ld = add <2 x i64> %i.ky, %vec.phi           ; 2 uses
  %i.le = add <2 x i64> %i.lc, %vec.phi680        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lf = icmp eq i64 %index.next, %n.vec
  br i1 %i.lf, label %middle.block, label %vector.body, !llvm.loop !196144

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.le, %i.ld
  %i.lg = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader710

.preheader.preheader710:                          ; preds = %.preheader.preheader, %middle.block
  %.sroa.09.0.i105.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i106.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.lg, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader710, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i109"
  %.sroa.09.0.i105 = phi i64 [ %i.lm, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i109" ], [ %.sroa.09.0.i105.ph, %.preheader.preheader710 ] ; 2 uses
  %.sroa.07.0.i106 = phi i64 [ %i.ll, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i109" ], [ %.sroa.07.0.i106.ph, %.preheader.preheader710 ]
  %i.lh = getelementptr inbounds nuw [32 x i8], ptr %i.kh, i64 %.sroa.09.0.i105 ; 2 uses
  %.val.i107 = load i64, ptr %i.lh, align 8, !range !1428, !noundef !10
  %i.li = getelementptr i8, ptr %i.lh, i64 16
  %.val19.i108 = load i64, ptr %i.li, align 8     ; 2 uses
  %i.lj = icmp eq i64 %.val.i107, -9223372036854775808
  br i1 %i.lj, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i109", label %bb.an

bb.an:                                            ; preds = %.preheader
  %i.lk = icmp ult i64 %.val19.i108, 4611686018427387904
  call void @llvm.assume(i1 %i.lk)
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i109"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i109": ; preds = %bb.an, %.preheader
  %i.ll = add i64 %.val19.i108, %.sroa.07.0.i106  ; 2 uses
  %i.lm = add nuw i64 %.sroa.09.0.i105, 1         ; 2 uses
  %i.ln = icmp eq i64 %i.lm, %i.ki
  br i1 %i.ln, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111", label %.preheader, !llvm.loop !196145

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111.thread": ; preds = %bb.am, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111", %bb.al
  %i.lo = load ptr, ptr %i.jr, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.lp = load i64, ptr %i.jt, align 8, !noundef !10 ; 2 uses
  %.idx = shl nuw nsw i64 %i.lp, 3
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 %.idx
  %i.lr = icmp eq i64 %i.lp, 0
  br i1 %i.lr, label %"_ZN7roaring7treemap4iter109_$LT$impl$u20$core..iter..traits..collect..Extend$LT$u64$GT$$u20$for$u20$roaring..treemap..RoaringTreemap$GT$6extend17h19d3ec092e3319c1E.exit", label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111.thread", %.noexc113
  %.sroa.0.08.i = phi ptr [ %i.lt, %.noexc113 ], [ %i.lo, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111.thread" ] ; 2 uses
  %.val.i.i = load i64, ptr %.sroa.0.08.i, align 8, !noalias !196146, !noundef !10
  %i.ls = invoke noundef zeroext i1 @"_ZN7roaring7treemap8inherent50_$LT$impl$u20$roaring..treemap..RoaringTreemap$GT$6insert17ha7d97329bc5fc48cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.val.i.i)
          to label %.noexc113 unwind label %.loopexit380 ; 0 uses

.noexc113:                                        ; preds = %.lr.ph.i112
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8 ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.lq
  br i1 %i.lu, label %"_ZN7roaring7treemap4iter109_$LT$impl$u20$core..iter..traits..collect..Extend$LT$u64$GT$$u20$for$u20$roaring..treemap..RoaringTreemap$GT$6extend17h19d3ec092e3319c1E.exit", label %.lr.ph.i112

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i109"
  %i.lv = icmp ugt i64 %i.ll, 199
  br i1 %i.lv, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111._crit_edge", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111.thread"

"_ZN7roaring7treemap4iter109_$LT$impl$u20$core..iter..traits..collect..Extend$LT$u64$GT$$u20$for$u20$roaring..treemap..RoaringTreemap$GT$6extend17h19d3ec092e3319c1E.exit": ; preds = %.noexc113, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111.thread"
  %i.lw = invoke fastcc noundef zeroext i1 @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h94eafc541148e8c7E"(ptr noalias noundef align 8 dereferenceable(24) %i.i, i32 noundef %i.it)
          to label %bb.ao unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.ao:                                            ; preds = %"_ZN7roaring7treemap4iter109_$LT$impl$u20$core..iter..traits..collect..Extend$LT$u64$GT$$u20$for$u20$roaring..treemap..RoaringTreemap$GT$6extend17h19d3ec092e3319c1E.exit"
  %cond = icmp eq i64 %i.gd, 1
  br i1 %cond, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.ao
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.ao ], [ %i.mg, %.lr.ph.i.i.i ] ; 3 uses
  %i.lx = getelementptr inbounds nuw [32 x i8], ptr %i.fy, i64 %.sroa.05.0.lcssa.i.i.i ; 7 uses
  %i.ly = getelementptr i8, ptr %i.lx, i64 24
  %.val20.i.i.i = load i16, ptr %i.ly, align 8, !alias.scope !196151, !noalias !196156, !noundef !10 ; 2 uses
  %i.lz = icmp eq i16 %.val20.i.i.i, %i.ip
  br i1 %i.lz, label %bb.aq, label %bb.ap

.lr.ph.i.i.i:                                     ; preds = %bb.ao, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.mh, %.lr.ph.i.i.i ], [ %i.gd, %bb.ao ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.mg, %.lr.ph.i.i.i ], [ 0, %bb.ao ] ; 2 uses
  %i.ma = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.mb = add nuw nsw i64 %i.ma, %.sroa.05.024.i.i.i ; 3 uses
  %i.mc = icmp ult i64 %i.mb, %i.gd
  call void @llvm.assume(i1 %i.mc)
  %i.md = getelementptr inbounds nuw [32 x i8], ptr %i.fy, i64 %i.mb
  %i.me = getelementptr i8, ptr %i.md, i64 24
  %.val22.i.i.i = load i16, ptr %i.me, align 8, !alias.scope !196151, !noalias !196156, !noundef !10
  %i.mf = icmp ugt i16 %.val22.i.i.i, %i.ip
  %i.mg = select i1 %i.mf, i64 %.sroa.05.024.i.i.i, i64 %i.mb, !unpredictable !10 ; 2 uses
  %i.mh = sub nuw nsw i64 %.sroa.01.025.i.i.i, %i.ma ; 2 uses
  %i.mi = icmp ugt i64 %i.mh, 1
  br i1 %i.mi, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i
  %i.mj = icmp ult i16 %.val20.i.i.i, %i.ip
  %i.mk = zext i1 %i.mj to i64
  %i.ml = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i, %i.mk
  %i.mm = icmp ule i64 %i.ml, %i.gd
  call void @llvm.assume(i1 %i.mm)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  %i.mn = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.lx, i16 noundef %i.in)
          to label %.noexc116 unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc116:                                        ; preds = %bb.aq
  br i1 %i.mn, label %bb.ar, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.ar:                                            ; preds = %.noexc116
  %i.mo = load i64, ptr %i.lx, align 8, !range !1428, !noalias !196160, !noundef !10 ; 3 uses
  %i.mp = icmp eq i64 %i.mo, -9223372036854775808
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.mr = load i64, ptr %i.mq, align 8, !noalias !196160, !noundef !10 ; 2 uses
  br i1 %i.mp, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ms = icmp ult i64 %i.mr, 4611686018427387904
  call void @llvm.assume(i1 %i.ms)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.03.0.in.i = icmp eq i64 %i.mr, 0
  br i1 %.sroa.03.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i": ; preds = %bb.at
  %.sroa.4.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i115, align 8, !noalias !196161 ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.mu = xor i64 %.sroa.05.0.lcssa.i.i.i, -1
  %i.mv = add nsw i64 %i.gd, %i.mu
  %i.mw = shl nuw nsw i64 %i.mv, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lx, ptr nonnull align 8 %i.mt, i64 %i.mw, i1 false), !noalias !196164
  %i.mx = add nsw i64 %i.gd, -1                   ; 3 uses
  switch i64 %i.mo, label %bb.au [
    i64 -9223372036854775808, label %bb.av
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  ]

bb.au:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i"
  %i.my = shl nuw i64 %i.mo, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.my, i64 noundef range(i64 1, -9223372036854775807) 2) #101, !noalias !196160
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.av:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef 8192, i64 noundef 8) #101, !noalias !196160
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit": ; preds = %bb.ap, %.noexc116, %bb.at, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i", %bb.au, %bb.av
  %i.mz = phi i64 [ %i.mx, %bb.av ], [ %i.gd, %bb.ap ], [ %i.gd, %.noexc116 ], [ %i.gd, %bb.at ], [ %i.mx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i" ], [ %i.mx, %bb.au ] ; 3 uses
  %i.na = icmp ult i64 %i.mz, 288230376151711744
  call void @llvm.assume(i1 %i.na)
  %i.nb = icmp eq i64 %i.mz, 0
  br i1 %i.nb, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111._crit_edge", label %bb.u

bb.aw:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit111._crit_edge"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @"_ZN7roaring7treemap4iter104_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$roaring..treemap..RoaringTreemap$GT$9into_iter17ha53b11600104a194E"(ptr noalias noundef nonnull sret([360 x i8]) align 8 captures(address) dereferenceable(360) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.ax unwind label %bb.w

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.e, ptr noundef nonnull align 8 dereferenceable(360) %i.g, i64 360, i1 false)
  %i.nc = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.nd = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.nf = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %.loopexit372

.loopexit372:                                     ; preds = %.loopexit372.backedge, %bb.ax
  %i.ng = invoke { i64, i64 } @"_ZN91_$LT$roaring..treemap..iter..IntoIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfeba166cf90dc39dE"(ptr noalias noundef nonnull align 8 dereferenceable(360) %i.e)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit ; 2 uses

.loopexit375:                                     ; preds = %bb.cq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.loopexit372
  %lpad.loopexit376 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.invoke
  %lpad.loopexit.split-lp377 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit375
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit375 ], [ %lpad.loopexit376, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp377, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.nh = load i64, ptr %i.e, align 8, !range !1339, !alias.scope !196166, !noundef !10
  %i.ni = icmp eq i64 %i.nh, 2
  br i1 %i.ni, label %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i", label %bb.ay

bb.ay:                                            ; preds = %.loopexit.split-lp
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$GT$17hfb9d5a81603516f4E"(ptr noalias noundef nonnull align 8 dereferenceable(360) %i.e)
          to label %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i" unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.nj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !range !1598, !alias.scope !196177, !noundef !10
  %i.nm = icmp eq i64 %i.nl, 5
  br i1 %i.nm, label %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit.i.i.i", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @"_ZN4core3ptr52drop_in_place$LT$roaring..bitmap..iter..IntoIter$GT$17hcf48aeb194840538E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.nk)
  br label %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit.i.i.i"

"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i": ; preds = %bb.ay, %.loopexit.split-lp
  %i.nn = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.no = load i64, ptr %i.nn, align 8, !range !1598, !alias.scope !196180, !noundef !10
  %i.np = icmp eq i64 %i.no, 5
  br i1 %i.np, label %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit2.i.i.i", label %bb.bb

bb.bb:                                            ; preds = %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i"
  call void @"_ZN4core3ptr52drop_in_place$LT$roaring..bitmap..iter..IntoIter$GT$17hcf48aeb194840538E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.nn)
  br label %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit2.i.i.i"

"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit.i.i.i": ; preds = %bb.ba, %bb.az
  %i.nq = getelementptr inbounds nuw i8, ptr %i.e, i64 216 ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !range !1598, !alias.scope !196183, !noundef !10
  %i.ns = icmp eq i64 %i.nr, 5
  br i1 %i.ns, label %.body, label %bb.bc

bb.bc:                                            ; preds = %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit.i.i.i"
  call void @"_ZN4core3ptr52drop_in_place$LT$roaring..bitmap..iter..IntoIter$GT$17hcf48aeb194840538E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.nq)
  br label %.body

"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit2.i.i.i": ; preds = %bb.bb, %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i"
  %i.nt = getelementptr inbounds nuw i8, ptr %i.e, i64 216 ; 2 uses
  %i.nu = load i64, ptr %i.nt, align 8, !range !1598, !alias.scope !196186, !noundef !10
  %i.nv = icmp eq i64 %i.nu, 5
  br i1 %i.nv, label %bb.cx, label %bb.bd

bb.bd:                                            ; preds = %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit2.i.i.i"
  call void @"_ZN4core3ptr52drop_in_place$LT$roaring..bitmap..iter..IntoIter$GT$17hcf48aeb194840538E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.nt)
  br label %bb.cx

bb.be:                                            ; preds = %.loopexit372
  %i.nw = extractvalue { i64, i64 } %i.ng, 0
  %i.nx = trunc nuw i64 %i.nw to i1
  br i1 %i.nx, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.ny = extractvalue { i64, i64 } %i.ng, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !196189)
  %i.nz = load i64, ptr %i.nc, align 8, !alias.scope !196189, !noundef !10
  %i.oa = icmp eq i64 %i.nz, 0
  br i1 %i.oa, label %.loopexit.invoke, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !196192)
  call void @llvm.experimental.noalias.scope.decl(metadata !196195)
  %i.ob = lshr i64 %i.ny, 57
  %i.oc = trunc nuw nsw i64 %i.ob to i8
  %i.od = load i64, ptr %i.nd, align 8, !alias.scope !196198, !noalias !196199, !noundef !10 ; 2 uses
  %i.oe = load ptr, ptr %i.p, align 8, !alias.scope !196198, !noalias !196199, !nonnull !10, !noundef !10 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.oc, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bj, %bb.bg
  %.sroa.9.0.i.i.i117 = phi i64 [ 0, %bb.bg ], [ %i.ov, %bb.bj ]
  %.pn.i.i118 = phi i64 [ %i.ny, %bb.bg ], [ %i.ow, %bb.bj ]
  %.sroa.01.0.i.i.i119 = and i64 %.pn.i.i118, %i.od ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %.sroa.01.0.i.i.i119
  %.sroa.0.0.copyload.i26.i.i120 = load <16 x i8>, ptr %i.of, align 1, !noalias !196202 ; 2 uses
  %i.og = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i120, %.sroa.0.15.vec.insert.i.i.i
  %i.oh = bitcast <16 x i1> %i.og to i16          ; 2 uses
  %.not.i.not32.i.i121 = icmp eq i16 %i.oh, 0
  br i1 %.not.i.not32.i.i121, label %._crit_edge.i.i126, label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %bb.bh, %bb.bi
  %.sroa.06.0.i33.i.i123 = phi i16 [ %i.ou, %bb.bi ], [ %i.oh, %bb.bh ] ; 3 uses
  %i.oi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i123, i1 true)
  %i.oj = zext nneg i16 %i.oi to i64
  %i.ok = add i64 %.sroa.01.0.i.i.i119, %i.oj
  %i.ol = and i64 %i.ok, %i.od
  %i.om = sub nsw i64 0, %i.ol
  %i.on = getelementptr inbounds [32 x i8], ptr %i.oe, i64 %i.om ; 3 uses
  %i.oo = getelementptr inbounds i8, ptr %i.on, i64 -32
  %.val3.i.i.i124 = load i64, ptr %i.oo, align 8, !noalias !196205, !noundef !10
  %i.op = icmp eq i64 %i.ny, %.val3.i.i.i124
  br i1 %i.op, label %bb.ci, label %bb.bi, !prof !119

._crit_edge.i.i126:                               ; preds = %bb.bi, %bb.bh
  %i.oq = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i120, splat (i8 -1)
  %i.or = bitcast <16 x i1> %i.oq to i16
  %i.os = icmp eq i16 %i.or, 0
  br i1 %i.os, label %bb.bj, label %.loopexit.invoke, !prof !59

bb.bi:                                            ; preds = %.lr.ph.i.i122
  %i.ot = add i16 %.sroa.06.0.i33.i.i123, -1
  %i.ou = and i16 %i.ot, %.sroa.06.0.i33.i.i123   ; 2 uses
  %.not.i.not.i.i125 = icmp eq i16 %i.ou, 0
  br i1 %.not.i.not.i.i125, label %._crit_edge.i.i126, label %.lr.ph.i.i122

bb.bj:                                            ; preds = %._crit_edge.i.i126
  %i.ov = add i64 %.sroa.9.0.i.i.i117, 16         ; 2 uses
  %i.ow = add i64 %.sroa.01.0.i.i.i119, %i.ov
  br label %bb.bh

bb.bk:                                            ; preds = %bb.be
  %i.ox = load i64, ptr %i.e, align 8, !range !1339, !alias.scope !196208, !noundef !10
  %i.oy = icmp eq i64 %i.ox, 2
  br i1 %i.oy, label %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i132", label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$GT$17hfb9d5a81603516f4E"(ptr noalias noundef nonnull align 8 dereferenceable(360) %i.e)
          to label %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i132" unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.oz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.pb = load i64, ptr %i.pa, align 8, !range !1598, !alias.scope !196219, !noundef !10
  %i.pc = icmp eq i64 %i.pb, 5
  br i1 %i.pc, label %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit.i.i.i130", label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @"_ZN4core3ptr52drop_in_place$LT$roaring..bitmap..iter..IntoIter$GT$17hcf48aeb194840538E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.pa)
  br label %"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$roaring..treemap..iter..To64IntoIter$GT$$GT$17hd6ea55aa3a70602cE.exit.i.i.i130"

"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..IntoIter$LT$u32$C$roaring..bitmap..RoaringBitmap$GT$$C$fn$LP$$LP$u32$C$roaring..bitmap..RoaringBitmap$RP$$RP$$u20$.$GT$$u20$roaring..treemap..iter..To64IntoIter$GT$$GT$$GT$17h616323cfa3c53ef2E.exit.i.i.i132": ; preds = %bb.bl, %bb.bk
  %i.pd = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
end_hunk_12
begin_hunk_13_@"_ZN5milli6search6hybrid39_$LT$impl$u20$milli..search..Search$GT$14execute_hybrid28_$u7b$$u7b$closure$u7d$$u7d$17h417ff9162fb6d00bE":bb.a
  tail call void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.d = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.g = icmp ult i64 %i.f, 6
  tail call void @llvm.assume(i1 %i.g)
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @"_ZN5milli6search6hybrid39_$LT$impl$u20$milli..search..Search$GT$14execute_hybrid10__CALLSITE17h47bb0bedc05ff01aE", align 8, !nonnull !10, !align !299, !noundef !10 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !10, !align !1504, !noundef !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !10
  store i64 1, ptr %i.b, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.l, ptr %.sroa.7.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !10, !nonnull !10
  %i.r = call noundef zeroext i1 %i.q(ptr noundef align 1 %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull align 1 %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 dereferenceable(496) ptr @_ZN5milli6search7similar7Similar6filter17h74bf8beef71a2392E(ptr noalias noundef returned align 8 dereferenceable(496) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(392) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !99115, !alias.scope !238219, !noundef !10
  %i.c = icmp eq i64 %i.b, 9
  br i1 %i.c, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$milli..search..facet..filter..index_filter..IndexFilter$GT$$GT$17hff383ffc3bd93e89E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$filter_parser..IndexFilterCondition$GT$17h7ce0ef5bee415333E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.a)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$milli..search..facet..filter..index_filter..IndexFilter$GT$$GT$17hff383ffc3bd93e89E.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.a, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 392, i1 false)
  resume { ptr, i32 } %i.d

"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$milli..search..facet..filter..index_filter..IndexFilter$GT$$GT$17hff383ffc3bd93e89E.exit": ; preds = %bb.a, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.a, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 392, i1 false)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_ZN5milli6search7similar7Similar7execute17h7ea3cd0a2d1a5610E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 8 captures(none) dereferenceable(320) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [320 x i8], align 8               ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [320 x i8], align 8               ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [320 x i8], align 8               ; 7 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !10, !align !299, !noundef !10 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !10, !align !299, !noundef !10 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !10, !align !299, !noundef !10
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !10, !align !299, !noundef !10
  call void @_ZN5milli6search3new17filtered_universe17h0e42599942ae712aE(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
  %i.z = load i64, ptr %i.o, align 8, !range !1815, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.z, 97
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.396.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.593.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.295.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  store i64 %i.z, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bl

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.ac = load i32, ptr %i.ab, align 8, !noundef !10 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238222)
  %i.ad = lshr i32 %i.ac, 16
  %i.ae = trunc nuw i32 %i.ad to i16              ; 3 uses
  %i.af = trunc i32 %i.ac to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !238222, !nonnull !10, !noundef !10 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !238222, !noundef !10 ; 8 uses
  switch i64 %i.aj, label %.lr.ph.i.i.i [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %i.au, %.lr.ph.i.i.i ] ; 4 uses
  %i.ak = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.aj
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %.sroa.05.0.lcssa.i.i.i ; 7 uses
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %.val20.i.i.i = load i16, ptr %i.am, align 8, !alias.scope !238225, !noalias !238230, !noundef !10 ; 2 uses
  %i.an = icmp eq i16 %.val20.i.i.i, %i.ae
  br i1 %i.an, label %bb.e, label %bb.d

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.ao = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.05.024.i.i.i      ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %i.aj
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ap
  %i.as = getelementptr i8, ptr %i.ar, i64 24
  %.val22.i.i.i = load i16, ptr %i.as, align 8, !alias.scope !238225, !noalias !238230, !noundef !10
  %i.at = icmp ugt i16 %.val22.i.i.i, %i.ae
  %i.au = select i1 %i.at, i64 %.sroa.05.024.i.i.i, i64 %i.ap, !unpredictable !10 ; 2 uses
  %i.av = sub nuw i64 %.sroa.01.025.i.i.i, %i.ao  ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 1
  br i1 %i.aw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ax = icmp ult i16 %.val20.i.i.i, %i.ae
  %i.ay = zext i1 %i.ax to i64
  %i.az = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.ay
  %i.ba = icmp ule i64 %i.az, %i.aj
  tail call void @llvm.assume(i1 %i.ba)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.al, i16 noundef %i.af)
          to label %.noexc unwind label %bb.ce

.noexc:                                           ; preds = %bb.e
  br i1 %i.bb, label %bb.f, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.f:                                             ; preds = %.noexc
  %i.bc = load i64, ptr %i.al, align 8, !range !1428, !noalias !238222, !noundef !10 ; 3 uses
  %i.bd = icmp eq i64 %i.bc, -9223372036854775808
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noalias !238222, !noundef !10 ; 2 uses
  br i1 %i.bd, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = icmp ult i64 %i.bf, 4611686018427387904
  tail call void @llvm.assume(i1 %i.bg)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.03.0.in.i = icmp eq i64 %i.bf, 0
  br i1 %.sroa.03.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i": ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238232)
  %i.bh = icmp ult i64 %i.aj, 288230376151711744
  tail call void @llvm.assume(i1 %i.bh)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !238235 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.bj = xor i64 %.sroa.05.0.lcssa.i.i.i, -1
  %i.bk = add nsw i64 %i.aj, %i.bj
  %i.bl = shl nuw nsw i64 %i.bk, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 8 %i.bi, i64 %i.bl, i1 false), !noalias !238236
  %i.bm = add nsw i64 %i.aj, -1
  store i64 %i.bm, ptr %i.ai, align 8, !alias.scope !238235, !noalias !238238
  switch i64 %i.bc, label %bb.i [
    i64 -9223372036854775808, label %bb.j
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  ]

bb.i:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i"
  %i.bn = shl nuw i64 %i.bc, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 2) #101, !noalias !238222
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.j:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef 8192, i64 noundef 8) #101, !noalias !238222
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit": ; preds = %bb.j, %bb.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i", %bb.h, %.noexc, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 360
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 368
  %i.br = load i32, ptr %i.bq, align 8, !noundef !10
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !10, !noundef !10
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !10
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17hd8c3391ad890b6d3E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, i64 %i.bp, i32 %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bu, i64 noundef %i.bw)
          to label %_ZN5milli6vector2db21IndexEmbeddingConfigs11embedder_id17hf153e2c37d2e510bE.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.s, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit", %bb.z, %bb.w, %bb.u
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.thread284.sink.split

_ZN5milli6vector2db21IndexEmbeddingConfigs11embedder_id17hf153e2c37d2e510bE.exit: ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  %i.by = load i32, ptr %i.m, align 8, !range !22789, !noundef !10 ; 3 uses
  %.not183 = icmp eq i32 %i.by, 5
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ca = load i8, ptr %i.bz, align 4             ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %i.cc = load i8, ptr %i.cb, align 1             ; 2 uses
  br i1 %.not183, label %bb.t, label %bb.l

bb.l:                                             ; preds = %_ZN5milli6vector2db21IndexEmbeddingConfigs11embedder_id17hf153e2c37d2e510bE.exit
  %.sroa.6104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.6104.0..sroa_idx, i64 18, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i32 %i.by, ptr %i.a, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.ca, ptr %.sroa.232.0..sroa_idx, align 4
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.cc, ptr %.sroa.333.0..sroa_idx, align 1
  switch i32 %i.by, label %default.unreachable [
    i32 0, label %bb.p
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %bb.s
  ]

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.cd = load i32, ptr %.sroa.232.0..sroa_idx, align 4, !range !25462, !alias.scope !238239, !noalias !238242, !noundef !10 ; 2 uses
  switch i32 %i.cd, label %bb.q [
    i32 6, label %bb.s
    i32 7, label %bb.r
  ]

bb.n:                                             ; preds = %bb.l
  br label %bb.s

bb.o:                                             ; preds = %bb.l
  br label %bb.s

bb.p:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !238239, !noalias !238242, !nonnull !10, !noundef !10
  %i.cg = ptrtoint ptr %i.cf to i64
  br label %"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E.exit"

bb.q:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !alias.scope !238239, !noalias !238242
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l
  %.sroa.9270.sroa.0.0 = phi i32 [ %i.cd, %bb.q ], [ undef, %bb.m ], [ undef, %bb.r ], [ 1, %bb.n ], [ 0, %bb.o ], [ undef, %bb.l ]
  %.sroa.9270.sroa.6.0 = phi i32 [ %i.ci, %bb.q ], [ undef, %bb.m ], [ undef, %bb.r ], [ 0, %bb.n ], [ 0, %bb.o ], [ undef, %bb.l ]
  %.sroa.5269.0 = phi i64 [ -9223372036854775794, %bb.q ], [ undef, %bb.m ], [ undef, %bb.r ], [ -9223372036854775795, %bb.n ], [ -9223372036854775795, %bb.o ], [ undef, %bb.l ]
  %.sink.i = phi i64 [ 95, %bb.q ], [ 54, %bb.m ], [ 55, %bb.r ], [ 95, %bb.n ], [ 95, %bb.o ], [ 52, %bb.l ]
  invoke void @"_ZN4core3ptr32drop_in_place$LT$heed..Error$GT$17h5c98466bbbcc9938E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.a)
          to label %"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E.exit" unwind label %bb.k

bb.t:                                             ; preds = %_ZN5milli6vector2db21IndexEmbeddingConfigs11embedder_id17hf153e2c37d2e510bE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cj = trunc nuw i8 %i.ca to i1
  br i1 %i.cj, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2785)
          to label %bb.v unwind label %bb.k

bb.v:                                             ; preds = %bb.u
  %.sroa.4106.8.copyload = load i8, ptr %i.b, align 8
  %.sroa.6107.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5119.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6107.8..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 73, ptr %0, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.4106.8.copyload, ptr %.sroa.4118.0..sroa_idx, align 8
  br label %bb.ca

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_ZN5milli5index5Index16get_vector_store17h5cf37e6b9dd37484E(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.x unwind label %bb.k

bb.x:                                             ; preds = %bb.w
  %i.ck = load i64, ptr %i.l, align 8, !range !1815, !noundef !10 ; 2 uses
  %.not186 = icmp eq i64 %i.ck, 97
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cm = load i8, ptr %i.cl, align 8             ; 3 uses
  br i1 %.not186, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %.sroa.3128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(311) %.sroa.3128.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(311) %.sroa.5125.0..sroa_idx, i64 311, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.ck, ptr %0, align 8
  %.sroa.2127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.cm, ptr %.sroa.2127.0..sroa_idx, align 8
  br label %bb.ca

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not188 = icmp eq i8 %i.cm, 2
  %..sroa.743.0 = select i1 %.not188, i8 0, i8 %i.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.r, i64 376
  %i.co = load i64, ptr %i.cn, align 8, !noundef !10
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 384
  %i.cq = load i32, ptr %i.cp, align 8, !noundef !10
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.cs = load i8, ptr %i.cr, align 4, !range !405, !noundef !10
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  store i8 %..sroa.743.0, ptr %i.ct, align 1
  store i64 %i.co, ptr %i.k, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %i.cq, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i8 %i.cc, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  store i8 %i.cs, ptr %i.cw, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !10 ; 11 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.da = load i64, ptr %i.cz, align 8, !noundef !10 ; 2 uses
  %i.db = add i64 %i.cy, 1
  %i.dc = add i64 %i.db, %i.da
  invoke void @_ZN5milli6vector5store11VectorStore11nns_by_item17haaf0e28219ba0520E(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, i32 noundef %i.ac, i64 noundef %i.dc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.n)
          to label %bb.aa unwind label %bb.k

bb.aa:                                            ; preds = %bb.z
  %i.dd = load i64, ptr %i.j, align 8, !range !1815, !noundef !10 ; 2 uses
  %.not189 = icmp eq i64 %i.dd, 97
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0271.0.copyload = load i64, ptr %i.de, align 8 ; 7 uses
  %.sroa.4272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4272.0.copyload = load ptr, ptr %.sroa.4272.0..sroa_idx, align 8 ; 8 uses
  %.sroa.5273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.5273.0.copyload = load i64, ptr %.sroa.5273.0..sroa_idx, align 8 ; 3 uses
  br i1 %.not189, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.3137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.3137.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.5134.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.dd, ptr %0, align 8
  %.sroa.2136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0271.0.copyload, ptr %.sroa.2136.0..sroa_idx, align 8
  %.sroa.2136.sroa.2.0..sroa.2136.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4272.0.copyload, ptr %.sroa.2136.sroa.2.0..sroa.2136.0..sroa_idx.sroa_idx, align 8
end_hunk_13
begin_hunk_14_@_ZN5milli6update15clear_documents14ClearDocuments7execute17hcacbce35def5957cE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  br label %bb.hb

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.experimental.noalias.scope.decl(metadata !238532)
  %i.ky = load i64, ptr %i.dk, align 8, !range !1339, !alias.scope !238532, !noalias !238535, !noundef !10
  %.not.i.i = icmp eq i64 %i.ky, 2
  br i1 %.not.i.i, label %.noexc600, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.kz = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.kz)
          to label %.noexc600 unwind label %.thread.thread

.noexc600:                                        ; preds = %bb.hd, %bb.hc
  %i.la = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !238535
  %i.lb = icmp eq i8 %i.la, 0
  br i1 %i.lb, label %bb.he, label %.sink.split

bb.he:                                            ; preds = %.noexc600
  %i.lc = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.ld = load ptr, ptr %i.lc, align 8, !alias.scope !238532, !noalias !238535, !align !299, !noundef !10 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.ld, null
  br i1 %.not4.i.i, label %.sink.split, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !238538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !238538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !238538
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !238535, !nonnull !10, !align !1504, !noundef !10
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lh = load i64, ptr %i.lg, align 8, !noalias !238535, !noundef !10
  store ptr %i.lf, ptr %i.a, align 8, !noalias !238538
  %i.li = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.lh, ptr %i.li, align 8, !noalias !238538
  store ptr %i.a, ptr %i.b, align 8, !noalias !238538
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7161a4ae6baa41a7E", ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !238538
  store ptr @7765, ptr %i.c, align 8, !noalias !238538
  %i.lj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.lj, align 8, !noalias !238538
  %i.lk = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.lk, align 8, !noalias !238538
  %i.ll = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.b, ptr %i.ll, align 8, !noalias !238538
  %i.lm = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %i.lm, align 8, !noalias !238538
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dk, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @7766, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %.noexc601 unwind label %.thread.thread

.noexc601:                                        ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !238538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !238538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !238538
  br label %.sink.split

bb.hg:                                            ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17he1240568ffa8c1d8E"(ptr nonnull %i.dk) #107
          to label %.thread unwind label %bb.s

.thread.thread765:                                ; preds = %bb.l, %bb.hh, %.thread
  %.pn481763 = phi { ptr, i32 } [ %.pn481764, %bb.hh ], [ %.pn479, %.thread ], [ %i.dz, %bb.l ]
  resume { ptr, i32 } %.pn481763

bb.hh:                                            ; preds = %.thread.thread, %.thread
  %.pn481764 = phi { ptr, i32 } [ %i.ku, %.thread.thread ], [ %.pn479, %.thread ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hc006cc220f5cdd50E"(ptr noalias noundef align 8 dereferenceable(40) %i.dk) #107
          to label %.thread.thread765 unwind label %bb.s
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator11pop_longest17ha049d4662eb98a15E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 8 uses
  %.idx = mul nuw nsw i64 %i.d, 24                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !238539, !noalias !238542, !noundef !10 ; 4 uses
  %i.j = icmp ult i64 %i.i, 22171567396285519
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.d, 1
  br i1 %i.k, label %.lr.ph.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %gepdiff = add nsw i64 %.idx, -24
  %i.l = udiv exact i64 %gepdiff, 24              ; 3 uses
  %xtraiter = and i64 %i.l, 1
  %i.m = icmp eq i64 %i.d, 2
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %i.l, 1152921504606846974
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %.sroa.010.0.i.i.i = phi i64 [ 0, %.new ], [ %i.y, %bb.d ] ; 3 uses
  %.sroa.6.0.i.i.i = phi ptr [ %i.b, %.new ], [ %.sroa.3.0.i.i.i.i.i.i.1, %bb.d ]
  %.sroa.07.0.i.i.i = phi i64 [ %i.i, %.new ], [ %.sroa.0.0.i.i.i.i.i.i.1, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.010.0.i.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !238545, !noalias !238550, !noundef !10 ; 3 uses
  %i.q = icmp ult i64 %i.p, 22171567396285519
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ugt i64 %.sroa.07.0.i.i.i, %i.p
  %.sroa.3.0.i.i.i.i.i.i = select i1 %i.r, ptr %.sroa.6.0.i.i.i, ptr %i.n
  %.sroa.0.0.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.07.0.i.i.i, i64 range(i64 0, 22171567396285519) %i.p) ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.010.0.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !238545, !noalias !238550, !noundef !10 ; 3 uses
  %i.w = icmp ult i64 %i.v, 22171567396285519
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i, %i.v
  %.sroa.3.0.i.i.i.i.i.i.1 = select i1 %i.x, ptr %.sroa.3.0.i.i.i.i.i.i, ptr %i.t ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 range(i64 0, 22171567396285519) %i.v) ; 2 uses
  %i.y = add nuw i64 %.sroa.010.0.i.i.i, 2        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.unr-lcssa, label %bb.d

_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.unr-lcssa, %bb.c
  %.sroa.010.0.i.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %i.y, %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.unr-lcssa ]
  %.sroa.6.0.i.i.i.epil.init = phi ptr [ %i.b, %bb.c ], [ %.sroa.3.0.i.i.i.i.i.i.1, %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.unr-lcssa ]
  %.sroa.07.0.i.i.i.epil.init = phi i64 [ %i.i, %bb.c ], [ %.sroa.0.0.i.i.i.i.i.i.1, %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.unr-lcssa ]
  %lcmp.mod39 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.010.0.i.i.i.epil.init ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !238545, !noalias !238550, !noundef !10 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 22171567396285519
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp ugt i64 %.sroa.07.0.i.i.i.epil.init, %i.ab
  %.sroa.3.0.i.i.i.i.i.i.epil = select i1 %i.ad, ptr %.sroa.6.0.i.i.i.epil.init, ptr %i.z
  br label %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge

_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge: ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.unr-lcssa, %.epil.preheader
  %.sroa.3.0.i.i.i.i.i.i.lcssa = phi ptr [ %.sroa.3.0.i.i.i.i.i.i.1, %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge.unr-lcssa ], [ %.sroa.3.0.i.i.i.i.i.i.epil, %.epil.preheader ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i.i.i.i.lcssa, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !238556, !noalias !238559
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge, %bb.b
  %i.ae = phi i64 [ %.pre, %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit..lr.ph.i_crit_edge ], [ %i.i, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238556)
  %i.af = icmp ult i64 %i.ae, 22171567396285519
  tail call void @llvm.assume(i1 %i.af)
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.02.012.i = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %bb.f ] ; 4 uses
  %i.ag = phi ptr [ %i.b, %.lr.ph.i ], [ %i.ak, %bb.f ] ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %.val8.i = load i64, ptr %i.ah, align 8, !noalias !238561, !noundef !10 ; 2 uses
  %i.ai = icmp ult i64 %.val8.i, 22171567396285519
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ae, %.val8.i
  br i1 %i.aj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.02.012.i, 1
  %i.am = icmp eq ptr %i.ak, %i.e
  br i1 %i.am, label %.thread, label %bb.e

_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit.thread: ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$6filter17hb0445629615884c2E.exit"

"_ZN4core6option15Option$LT$T$GT$6filter17hb0445629615884c2E.exit": ; preds = %bb.j, %"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$milli..update..index_documents..typed_chunk..TypedChunk$GT$$GT$17h4b5e2091e393d0baE.exit.i", %.thread, %_ZN4core4iter6traits8iterator8Iterator6reduce17h21f19b83eb7c9923E.exit.thread
  ret void

bb.g:                                             ; preds = %bb.e
  %i.an = icmp samesign ult i64 %.sroa.02.012.i, %i.d
  tail call void @llvm.assume(i1 %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238562)
  %i.ao = icmp ult i64 %i.d, 384307168202282326
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.02.012.i ; 5 uses
  %.sroa.015.0.copyload = load i64, ptr %i.ap, align 8, !noalias !238562 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !238562 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !238562 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = xor i64 %.sroa.02.012.i, -1
  %i.as = add nsw i64 %i.d, %i.ar
  %i.at = mul nuw nsw i64 %i.as, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.aq, i64 %i.at, i1 false), !noalias !238565
  %i.au = add nsw i64 %i.d, -1
  store i64 %i.au, ptr %i.c, align 8, !alias.scope !238562, !noalias !238567
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238571)
  %.not.i7 = icmp eq i64 %.sroa.015.0.copyload, -9223372036854775808
  br i1 %.not.i7, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.f, %bb.g
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !238568, !noalias !238571
  br label %"_ZN4core6option15Option$LT$T$GT$6filter17hb0445629615884c2E.exit"

bb.h:                                             ; preds = %bb.g
  %i.av = icmp ult i64 %.sroa.5.0.copyload, 22171567396285519
  tail call void @llvm.assume(i1 %i.av)
  %.not1.i = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not1.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9e20b9daec49e144E.exit.i.i", label %bb.j

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9e20b9daec49e144E.exit.i.i": ; preds = %bb.h
  %i.aw = icmp eq i64 %.sroa.015.0.copyload, 0
  br i1 %i.aw, label %"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$milli..update..index_documents..typed_chunk..TypedChunk$GT$$GT$17h4b5e2091e393d0baE.exit.i", label %bb.i

bb.i:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9e20b9daec49e144E.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.ax = mul nuw i64 %.sroa.015.0.copyload, 416
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !238573
  br label %"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$milli..update..index_documents..typed_chunk..TypedChunk$GT$$GT$17h4b5e2091e393d0baE.exit.i"

"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$milli..update..index_documents..typed_chunk..TypedChunk$GT$$GT$17h4b5e2091e393d0baE.exit.i": ; preds = %bb.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9e20b9daec49e144E.exit.i.i"
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !238568, !noalias !238571
  br label %"_ZN4core6option15Option$LT$T$GT$6filter17hb0445629615884c2E.exit"

bb.j:                                             ; preds = %bb.h
  store i64 %.sroa.015.0.copyload, ptr %0, align 8, !alias.scope !238576
  %.sroa.610.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.610.0..sroa_idx11, align 8, !alias.scope !238576
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.7.0..sroa_idx13, align 8, !alias.scope !238576
  br label %"_ZN4core6option15Option$LT$T$GT$6filter17hb0445629615884c2E.exit"
}

; Function Attrs: nonlazybind uwtable
define void @_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert17hda1d51321bb009faE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(416) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [416 x i8], align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 6 uses
  %.idx = mul nuw nsw i64 %i.f, 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238577)
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = load i64, ptr %1, align 8, !range !31354, !alias.scope !238577, !noalias !238580 ; 2 uses
  %i.j = xor i64 %i.i, -9223372036854775808
  %i.k = icmp slt i64 %i.i, 0
  %i.l = select i1 %i.k, i64 %i.j, i64 14
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !238577, !noalias !238580 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !238577, !noalias !238580, !nonnull !10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !238577, !noalias !238580
  br label %bb.b

bb.b:                                             ; preds = %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i", %.lr.ph.i
  %.sroa.02.028.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i" ] ; 3 uses
  %i.q = phi ptr [ %i.d, %.lr.ph.i ], [ %i.r, %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i" ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 8
  %.val8.i = load ptr, ptr %i.s, align 8, !noalias !238582 ; 18 uses
  %i.t = getelementptr i8, ptr %i.q, i64 16
  %.val9.i = load i64, ptr %i.t, align 8, !noalias !238582, !noundef !10
  %.not.i.i = icmp eq i64 %.val9.i, 0
  br i1 %.not.i.i, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238583)
  switch i64 %i.l, label %bb.d [
    i64 0, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.i"
    i64 1, label %.split25.i
    i64 2, label %.split24.i
    i64 3, label %.split23.i
    i64 4, label %.split22.i
    i64 5, label %.split21.i
    i64 6, label %.split20.i
    i64 7, label %.split19.i
    i64 8, label %.split18.i
    i64 9, label %.split17.i
    i64 10, label %.split16.i
    i64 11, label %.split15.i
    i64 12, label %.split14.i
    i64 14, label %bb.e
    i64 13, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

.split25.i:                                       ; preds = %bb.c
  %i.u = load i64, ptr %.val8.i, align 8, !range !31354, !alias.scope !238583, !noalias !238586, !noundef !10
  %i.v = icmp eq i64 %i.u, -9223372036854775807
  br i1 %i.v, label %bb.g, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

.split24.i:                                       ; preds = %bb.c
  %i.w = load i64, ptr %.val8.i, align 8, !range !31354, !alias.scope !238583, !noalias !238586, !noundef !10
  %i.x = icmp eq i64 %i.w, -9223372036854775806
  br i1 %i.x, label %bb.g, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

.split23.i:                                       ; preds = %bb.c
  %i.y = load i64, ptr %.val8.i, align 8, !range !31354, !alias.scope !238583, !noalias !238586, !noundef !10
  %i.z = icmp eq i64 %i.y, -9223372036854775805
  br i1 %i.z, label %bb.g, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

.split22.i:                                       ; preds = %bb.c
  %i.aa = load i64, ptr %.val8.i, align 8, !range !31354, !alias.scope !238583, !noalias !238586, !noundef !10
  %i.ab = icmp eq i64 %i.aa, -9223372036854775804
  br i1 %i.ab, label %bb.g, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

.split21.i:                                       ; preds = %bb.c
  %i.ac = load i64, ptr %.val8.i, align 8, !range !31354, !alias.scope !238583, !noalias !238586, !noundef !10
  %i.ad = icmp eq i64 %i.ac, -9223372036854775803
  br i1 %i.ad, label %bb.g, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

.split20.i:                                       ; preds = %bb.c
  %i.ae = load i64, ptr %.val8.i, align 8, !range !31354, !alias.scope !238583, !noalias !238586, !noundef !10
  %i.af = icmp eq i64 %i.ae, -9223372036854775802
  br i1 %i.af, label %bb.g, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

.split19.i:                                       ; preds = %bb.c
  %i.ag = load i64, ptr %.val8.i, align 8, !range !31354, !alias.scope !238583, !noalias !238586, !noundef !10
  %i.ah = icmp eq i64 %i.ag, -9223372036854775801
  br i1 %i.ah, label %bb.g, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

.split18.i:                                       ; preds = %bb.c
  %i.ai = load i64, ptr %.val8.i, align 8, !range !31354, !alias.scope !238583, !noalias !238586, !noundef !10
  %i.aj = icmp eq i64 %i.ai, -9223372036854775800
  br i1 %i.aj, label %bb.g, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

.split17.i:                                       ; preds = %bb.c
  %i.ak = load i64, ptr %.val8.i, align 8, !range !31354, !alias.scope !238583, !noalias !238586, !noundef !10
  %i.al = icmp eq i64 %i.ak, -9223372036854775799
  br i1 %i.al, label %bb.g, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

.split16.i:                                       ; preds = %bb.c
  %i.am = load i64, ptr %.val8.i, align 8, !range !31354, !alias.scope !238583, !noalias !238586, !noundef !10
  %i.an = icmp eq i64 %i.am, -9223372036854775798
  br i1 %i.an, label %bb.g, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

.split15.i:                                       ; preds = %bb.c
  %i.ao = load i64, ptr %.val8.i, align 8, !range !31354, !alias.scope !238583, !noalias !238586, !noundef !10
  %i.ap = icmp eq i64 %i.ao, -9223372036854775797
  br i1 %i.ap, label %bb.g, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

.split14.i:                                       ; preds = %bb.c
  %i.aq = load i64, ptr %.val8.i, align 8, !range !31354, !alias.scope !238583, !noalias !238586, !noundef !10
  %i.ar = icmp eq i64 %i.aq, -9223372036854775796
  br i1 %i.ar, label %bb.g, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

bb.e:                                             ; preds = %bb.c
  %i.as = load i64, ptr %.val8.i, align 8, !range !31354, !alias.scope !238583, !noalias !238586, !noundef !10
  %i.at = icmp sgt i64 %i.as, -1
  br i1 %i.at, label %bb.f, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %.val3.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !238583, !noalias !238586, !noundef !10
  %.not.i.i.i.i.i = icmp eq i64 %.val1.i.i.i, %.val3.i.i.i
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcd032fab5197535bE.exit.i.i.i", label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcd032fab5197535bE.exit.i.i.i": ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %.val2.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !238583, !noalias !238586, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i, i64 %.val1.i.i.i), !alias.scope !238588, !noalias !238592
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %.split.i, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

.split.i:                                         ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcd032fab5197535bE.exit.i.i.i"
  %i.ax = getelementptr inbounds nuw i8, ptr %.val8.i, i64 408
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !238583, !noalias !238586, !noundef !10
  %i.az = icmp eq i64 %i.p, %i.ay
  br i1 %i.az, label %bb.g, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.i": ; preds = %bb.c
  %i.ba = load i64, ptr %.val8.i, align 8, !range !31354, !alias.scope !238583, !noalias !238586, !noundef !10
  %i.bb = icmp eq i64 %i.ba, -9223372036854775808
  br i1 %i.bb, label %bb.g, label %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i"

"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.thread.i": ; preds = %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.i", %.split.i, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcd032fab5197535bE.exit.i.i.i", %bb.f, %bb.e, %.split14.i, %.split15.i, %.split16.i, %.split17.i, %.split18.i, %.split19.i, %.split20.i, %.split21.i, %.split22.i, %.split23.i, %.split24.i, %.split25.i, %bb.c, %bb.b
  %i.bc = add nuw nsw i64 %.sroa.02.028.i, 1
  %i.bd = icmp eq ptr %i.r, %i.g
  br i1 %i.bd, label %.loopexit, label %bb.b

bb.g:                                             ; preds = %"_ZN5milli6update15index_documents11typed_chunk16ChunkAccumulator6insert28_$u7b$$u7b$closure$u7d$$u7d$17hcb5240fbca3eaed2E.exit.i", %.split.i, %.split14.i, %.split15.i, %.split16.i, %.split17.i, %.split18.i, %.split19.i, %.split20.i, %.split21.i, %.split22.i, %.split23.i, %.split24.i, %.split25.i
  %i.be = icmp ult i64 %.sroa.02.028.i, %i.f
end_hunk_14
begin_hunk_15_@_ZN5milli6update15index_documents11typed_chunk28write_typed_chunk_into_index17h410fb18217e5b5c3E:bb.a
  br label %.thread5801

bb.auo:                                           ; preds = %bb.aum
  %i.dam = getelementptr inbounds nuw i8, ptr %.sroa.52482.0.copyload, i64 %i.dah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pa)
  call void @llvm.experimental.noalias.scope.decl(metadata !239969)
  call void @llvm.experimental.noalias.scope.decl(metadata !239972)
  %i.dan = icmp ugt i32 %i.dai, 7
  br i1 %i.dan, label %bb.aup, label %.invoke8729

bb.aup:                                           ; preds = %bb.auo
  %i.dao = icmp ult i32 %i.dai, 16
  br i1 %i.dao, label %.invoke8729, label %bb.auy

.thread5801:                                      ; preds = %bb.aui, %bb.aum, %bb.aun, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !239974)
  br label %bb.auq

bb.auq:                                           ; preds = %bb.aux, %.thread5801
  %i.dap = phi i64 [ %i.dbc, %bb.aux ], [ 0, %.thread5801 ] ; 4 uses
  %i.daq = icmp eq i64 %i.dap, -1
  br i1 %i.daq, label %.thread5806.backedge, label %bb.aur

bb.aur:                                           ; preds = %bb.auq
  %i.dar = add nuw i64 %i.dap, 1                  ; 3 uses
  %.not.not.i.i.i.i.i.i4312 = icmp ult i64 %i.dap, %.sroa.62483.0.copyload
  br i1 %.not.not.i.i.i.i.i.i4312, label %bb.aus, label %.thread5806.backedge

bb.aus:                                           ; preds = %bb.aur
  %i.das = getelementptr inbounds nuw i8, ptr %.sroa.52482.0.copyload, i64 %i.dap
  %.sroa.03.0.copyload.i.i.i.i.i.i.i4315 = load i8, ptr %i.das, align 1, !alias.scope !239977, !noalias !239980 ; 3 uses
  %switch.i.i.i.i.i.i.i4316 = icmp ult i8 %.sroa.03.0.copyload.i.i.i.i.i.i.i4315, 2
  br i1 %switch.i.i.i.i.i.i.i4316, label %bb.auu, label %bb.aut, !prof !21829

bb.aut:                                           ; preds = %bb.aus
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !240000
  store i8 %.sroa.03.0.copyload.i.i.i.i.i.i.i4315, ptr %i.ab, align 1, !noalias !240000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !240000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !240000
  store ptr %i.ab, ptr %i.z, align 8, !noalias !240000
  br label %.invoke8731

.invoke8731:                                      ; preds = %bb.auk, %bb.aut
  %.sink8743.sroa.phi = phi ptr [ %.sink8743.sroa.gep, %bb.auk ], [ %.sink8743.sroa.gep10684, %bb.aut ]
  %.sink8743 = phi ptr [ %i.ad, %bb.auk ], [ %i.z, %bb.aut ]
  %.sink8742.sroa.phi = phi ptr [ %.sink8742.sroa.gep, %bb.auk ], [ %.sink8742.sroa.gep10674, %bb.aut ]
  %.sink8742.sroa.phi10675 = phi ptr [ %.sink8742.sroa.gep10676, %bb.auk ], [ %.sink8742.sroa.gep10677, %bb.aut ]
  %.sink8742.sroa.phi10678 = phi ptr [ %.sink8742.sroa.gep10679, %bb.auk ], [ %.sink8742.sroa.gep10680, %bb.aut ]
  %.sink8742.sroa.phi10681 = phi ptr [ %.sink8742.sroa.gep10682, %bb.auk ], [ %.sink8742.sroa.gep10683, %bb.aut ]
  %.sink8742 = phi ptr [ %i.ae, %bb.auk ], [ %i.aa, %bb.aut ] ; 2 uses
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E", ptr %.sink8743.sroa.phi, align 8, !noalias !10
  store ptr @6002, ptr %.sink8742, align 8, !noalias !10
  store i64 1, ptr %.sink8742.sroa.phi, align 8, !noalias !10
  store ptr null, ptr %.sink8742.sroa.phi10675, align 8, !noalias !10
  store ptr %.sink8743, ptr %.sink8742.sroa.phi10678, align 8, !noalias !10
  store i64 1, ptr %.sink8742.sroa.phi10681, align 8, !noalias !10
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink8742, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6003) #106
          to label %.cont8732 unwind label %.loopexit.split-lp6225.loopexit.split-lp

.cont8732:                                        ; preds = %.invoke8731
  unreachable

bb.auu:                                           ; preds = %bb.aus
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !240000
  store i32 0, ptr %i.ac, align 4, !noalias !240000
  %i.dat = sub nuw i64 %.sroa.62483.0.copyload, %i.dar
  %i.dau = getelementptr inbounds nuw i8, ptr %.sroa.52482.0.copyload, i64 %i.dar
  %i.dav = invoke { i64, i64 } @_ZN4obkv6varint15varint_decode3217h75f985768505db00E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dau, i64 noundef %i.dat, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.ac)
          to label %.noexc4323 unwind label %.loopexit6224 ; 2 uses

.noexc4323:                                       ; preds = %bb.auu
  %i.daw = extractvalue { i64, i64 } %i.dav, 0
  %i.dax = trunc nuw i64 %i.daw to i1
  br i1 %i.dax, label %bb.auv, label %bb.auw

bb.auv:                                           ; preds = %.noexc4323
  %i.day = extractvalue { i64, i64 } %i.dav, 1
  %i.daz = add i64 %i.day, %i.dar                 ; 3 uses
  %i.dba = load i32, ptr %i.ac, align 4, !noalias !240000, !noundef !10 ; 3 uses
  %i.dbb = zext i32 %i.dba to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !240000
  %i.dbc = add i64 %i.daz, %i.dbb                 ; 3 uses
  %i.dbd = icmp ult i64 %i.dbc, %i.daz
  %.not35.i.i.i.i.i.i4318 = icmp ugt i64 %i.dbc, %.sroa.62483.0.copyload
  %or.cond.i.i.i.i.i.i4319 = or i1 %i.dbd, %.not35.i.i.i.i.i.i4318
  br i1 %or.cond.i.i.i.i.i.i4319, label %.thread5806.backedge, label %bb.aux

bb.auw:                                           ; preds = %.noexc4323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !240000
  br label %.thread5806.backedge

.thread5806.backedge:                             ; preds = %bb.auv, %bb.auq, %bb.aur, %bb.auw, %bb.avk
  br label %.thread5806

bb.aux:                                           ; preds = %bb.auv
  %i.dbe = icmp eq i8 %.sroa.03.0.copyload.i.i.i.i.i.i.i4315, 1
  br i1 %i.dbe, label %bb.avh, label %bb.auq

bb.auy:                                           ; preds = %bb.aup
  store i32 %i.daa, ptr %i.czq, align 8, !alias.scope !239969, !noalias !239972
  %i.dbf = load <2 x double>, ptr %i.dam, align 1, !alias.scope !239972, !noalias !239969 ; 3 uses
  %i.dbg = extractelement <2 x double> %i.dbf, i64 0
  %i.dbh = fmul double %i.dbg, f0x3F91DF46A2529D39
  %i.dbi = extractelement <2 x double> %i.dbf, i64 1
  %i.dbj = fmul double %i.dbi, f0x3F91DF46A2529D39
  %sincos.i.i = call { double, double } @llvm.sincos.f64(double %i.dbh) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1 ; 2 uses
  %sincos6.i.i = call { double, double } @llvm.sincos.f64(double %i.dbj) ; 2 uses
  %sin7.i.i = extractvalue { double, double } %sincos6.i.i, 0
  %cos8.i.i = extractvalue { double, double } %sincos6.i.i, 1
  %i.dbk = fmul double %cos.i.i, %cos8.i.i
  %i.dbl = fmul double %cos.i.i, %sin7.i.i
  store double %i.dbk, ptr %i.pa, align 8, !alias.scope !239969, !noalias !239972
  store double %i.dbl, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !239969, !noalias !239972
  store double %sin.i.i, ptr %.sroa.314.0..sroa_idx.i, align 8, !alias.scope !239969, !noalias !239972
  store <2 x double> %i.dbf, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !239969, !noalias !239972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oz)
  invoke fastcc void @"_ZN5rstar5rtree23RTree$LT$T$C$Params$GT$6remove17hffbbb7eb89838b27E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.oz, ptr noalias noundef align 8 dereferenceable(80) %i.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pa)
          to label %bb.auz unwind label %.loopexit.split-lp6225.loopexit

bb.auz:                                           ; preds = %bb.auy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oz)
  call void @llvm.experimental.noalias.scope.decl(metadata !240001)
  %i.dbm = lshr i32 %i.daa, 16
  %i.dbn = trunc nuw i32 %i.dbm to i16            ; 3 uses
  %i.dbo = trunc i32 %i.daa to i16
  %i.dbp = load ptr, ptr %.sroa.45006.0..sroa_idx, align 8, !alias.scope !240001, !nonnull !10, !noundef !10 ; 2 uses
  %i.dbq = load i64, ptr %.sroa.55007.0..sroa_idx, align 8, !alias.scope !240001, !noundef !10 ; 8 uses
  switch i64 %i.dbq, label %.lr.ph.i.i.i4328 [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i4328, %bb.auz
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.auz ], [ %i.dcb, %.lr.ph.i.i.i4328 ] ; 4 uses
  %i.dbr = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.dbq
  call void @llvm.assume(i1 %i.dbr)
  %i.dbs = getelementptr inbounds nuw [32 x i8], ptr %i.dbp, i64 %.sroa.05.0.lcssa.i.i.i ; 7 uses
  %i.dbt = getelementptr i8, ptr %i.dbs, i64 24
  %.val20.i.i.i = load i16, ptr %i.dbt, align 8, !alias.scope !240004, !noalias !240009, !noundef !10 ; 2 uses
  %i.dbu = icmp eq i16 %.val20.i.i.i, %i.dbn
  br i1 %i.dbu, label %bb.avb, label %bb.ava

.lr.ph.i.i.i4328:                                 ; preds = %bb.auz, %.lr.ph.i.i.i4328
  %.sroa.01.025.i.i.i = phi i64 [ %i.dcc, %.lr.ph.i.i.i4328 ], [ %i.dbq, %bb.auz ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.dcb, %.lr.ph.i.i.i4328 ], [ 0, %bb.auz ] ; 2 uses
  %i.dbv = lshr i64 %.sroa.01.025.i.i.i, 1        ; 2 uses
  %i.dbw = add i64 %i.dbv, %.sroa.05.024.i.i.i    ; 3 uses
  %i.dbx = icmp ult i64 %i.dbw, %i.dbq
  call void @llvm.assume(i1 %i.dbx)
  %i.dby = getelementptr inbounds nuw [32 x i8], ptr %i.dbp, i64 %i.dbw
  %i.dbz = getelementptr i8, ptr %i.dby, i64 24
  %.val22.i.i.i = load i16, ptr %i.dbz, align 8, !alias.scope !240004, !noalias !240009, !noundef !10
  %i.dca = icmp ugt i16 %.val22.i.i.i, %i.dbn
  %i.dcb = select i1 %i.dca, i64 %.sroa.05.024.i.i.i, i64 %i.dbw, !unpredictable !10 ; 2 uses
  %i.dcc = sub nuw i64 %.sroa.01.025.i.i.i, %i.dbv ; 2 uses
  %i.dcd = icmp ugt i64 %i.dcc, 1
  br i1 %i.dcd, label %.lr.ph.i.i.i4328, label %._crit_edge.i.i.i

bb.ava:                                           ; preds = %._crit_edge.i.i.i
  %i.dce = icmp ult i16 %.val20.i.i.i, %i.dbn
  %i.dcf = zext i1 %i.dce to i64
  %i.dcg = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.dcf
  %i.dch = icmp ule i64 %i.dcg, %i.dbq
  call void @llvm.assume(i1 %i.dch)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.avb:                                           ; preds = %._crit_edge.i.i.i
  %i.dci = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dbs, i16 noundef %i.dbo)
          to label %.noexc4329 unwind label %.loopexit.split-lp6225.loopexit

.noexc4329:                                       ; preds = %bb.avb
  br i1 %i.dci, label %bb.avc, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.avc:                                           ; preds = %.noexc4329
  %i.dcj = load i64, ptr %i.dbs, align 8, !range !1428, !noalias !240001, !noundef !10 ; 3 uses
  %i.dck = icmp eq i64 %i.dcj, -9223372036854775808
  %i.dcl = getelementptr inbounds nuw i8, ptr %i.dbs, i64 16
  %i.dcm = load i64, ptr %i.dcl, align 8, !noalias !240001, !noundef !10 ; 2 uses
  br i1 %i.dck, label %bb.ave, label %bb.avd

bb.avd:                                           ; preds = %bb.avc
  %i.dcn = icmp ult i64 %i.dcm, 4611686018427387904
  call void @llvm.assume(i1 %i.dcn)
  br label %bb.ave

bb.ave:                                           ; preds = %bb.avd, %bb.avc
  %.sroa.03.0.in.i = icmp eq i64 %i.dcm, 0
  br i1 %.sroa.03.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i": ; preds = %bb.ave
  call void @llvm.experimental.noalias.scope.decl(metadata !240011)
  %i.dco = icmp ult i64 %i.dbq, 288230376151711744
  call void @llvm.assume(i1 %i.dco)
  %.sroa.4.0..sroa_idx.i4326 = getelementptr inbounds nuw i8, ptr %i.dbs, i64 8
  %.sroa.4.0.copyload.i4327 = load ptr, ptr %.sroa.4.0..sroa_idx.i4326, align 8, !noalias !240014 ; 4 uses
  %i.dcp = getelementptr inbounds nuw i8, ptr %i.dbs, i64 32
  %i.dcq = xor i64 %.sroa.05.0.lcssa.i.i.i, -1
  %i.dcr = add nsw i64 %i.dbq, %i.dcq
  %i.dcs = shl nuw nsw i64 %i.dcr, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dbs, ptr nonnull align 8 %i.dcp, i64 %i.dcs, i1 false), !noalias !240015
  %i.dct = add nsw i64 %i.dbq, -1
  store i64 %i.dct, ptr %.sroa.55007.0..sroa_idx, align 8, !alias.scope !240014, !noalias !240017
  switch i64 %i.dcj, label %bb.avf [
    i64 -9223372036854775808, label %bb.avg
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  ]

bb.avf:                                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i"
  %i.dcu = shl nuw i64 %i.dcj, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i4327) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i4327, i64 noundef %i.dcu, i64 noundef range(i64 1, -9223372036854775807) 2) #101, !noalias !240001
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.avg:                                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i4327) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i4327, i64 noundef 8192, i64 noundef 8) #101, !noalias !240001
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit": ; preds = %bb.avg, %bb.avf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i", %bb.ave, %.noexc4329, %bb.ava, %bb.auz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pa)
  br label %.thread5801

bb.avh:                                           ; preds = %bb.aux
  %i.dcv = getelementptr inbounds nuw i8, ptr %.sroa.52482.0.copyload, i64 %i.daz
  call void @llvm.experimental.noalias.scope.decl(metadata !240018)
  call void @llvm.experimental.noalias.scope.decl(metadata !240021)
  %i.dcw = icmp ugt i32 %i.dba, 7
  br i1 %i.dcw, label %bb.avi, label %.invoke8729

bb.avi:                                           ; preds = %bb.avh
  %i.dcx = icmp ult i32 %i.dba, 16
  br i1 %i.dcx, label %.invoke8729, label %bb.avj

.invoke8729:                                      ; preds = %bb.avi, %bb.avh, %bb.aup, %bb.auo
  %i.dcy = phi ptr [ @4436, %bb.avh ], [ @4437, %bb.aup ], [ @4436, %bb.auo ], [ @4437, %bb.avi ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dcy) #106
          to label %.cont8730 unwind label %.loopexit.split-lp6225.loopexit.split-lp

.cont8730:                                        ; preds = %.invoke8729
  unreachable

bb.avj:                                           ; preds = %bb.avi
  store i32 %i.daa, ptr %i.czr, align 8, !alias.scope !240018, !noalias !240021
  %i.dcz = load <2 x double>, ptr %i.dcv, align 1, !alias.scope !240021, !noalias !240018 ; 3 uses
  %i.dda = extractelement <2 x double> %i.dcz, i64 0
  %i.ddb = fmul double %i.dda, f0x3F91DF46A2529D39
  %i.ddc = extractelement <2 x double> %i.dcz, i64 1
  %i.ddd = fmul double %i.ddc, f0x3F91DF46A2529D39
  %sincos.i.i4332 = call { double, double } @llvm.sincos.f64(double %i.ddb) ; 2 uses
  %sin.i.i4333 = extractvalue { double, double } %sincos.i.i4332, 0
  %cos.i.i4334 = extractvalue { double, double } %sincos.i.i4332, 1 ; 2 uses
  %sincos6.i.i4335 = call { double, double } @llvm.sincos.f64(double %i.ddd) ; 2 uses
  %sin7.i.i4336 = extractvalue { double, double } %sincos6.i.i4335, 0
  %cos8.i.i4337 = extractvalue { double, double } %sincos6.i.i4335, 1
  %i.dde = fmul double %cos.i.i4334, %cos8.i.i4337
  %i.ddf = fmul double %cos.i.i4334, %sin7.i.i4336
  store double %i.dde, ptr %i.oy, align 8, !alias.scope !240018, !noalias !240021
  store double %i.ddf, ptr %.sroa.2.0..sroa_idx.i4338, align 8, !alias.scope !240018, !noalias !240021
  store double %sin.i.i4333, ptr %.sroa.314.0..sroa_idx.i4339, align 8, !alias.scope !240018, !noalias !240021
  store <2 x double> %i.dcz, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i4340, align 8, !alias.scope !240018, !noalias !240021
  invoke fastcc void @"_ZN100_$LT$rstar..algorithm..rstar..RStarInsertionStrategy$u20$as$u20$rstar..params..InsertionStrategy$GT$6insert17hd4f041305df29681E"(ptr noalias noundef align 8 dereferenceable(80) %i.ph, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.oy)
          to label %bb.avk unwind label %.loopexit.split-lp6225.loopexit

bb.avk:                                           ; preds = %bb.avj
  %i.ddg = load i64, ptr %i.czs, align 8, !noundef !10
  %i.ddh = add i64 %i.ddg, 1
  store i64 %i.ddh, ptr %i.czs, align 8
  %i.ddi = invoke fastcc noundef zeroext i1 @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h94eafc541148e8c7E"(ptr noalias noundef align 8 dereferenceable(24) %i.pf, i32 noundef %i.daa)
          to label %.thread5806.backedge unwind label %.loopexit.split-lp6225.loopexit ; 0 uses

bb.avl:                                           ; preds = %bb.aug
  %i.ddj = load i32, ptr %i.ox, align 8, !range !22789, !noundef !10 ; 2 uses
  %.not3144 = icmp eq i32 %i.ddj, 5
  br i1 %.not3144, label %bb.avn, label %bb.avm

bb.avm:                                           ; preds = %bb.avl
  %.sroa.42501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  %.sroa.21042.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.21042.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.42501.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ox)
  store i32 %i.ddj, ptr %i.kd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kc)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.kc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.kd)
          to label %bb.avv unwind label %.loopexit.split-lp6225.loopexit.split-lp

bb.avn:                                           ; preds = %bb.avl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ox)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ow)
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17hc370bfee084adc8dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ow, i64 %i.cza, i32 %i.czc, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3886, i64 noundef 25, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pf)
          to label %_ZN5milli5index5Index29put_geo_faceted_documents_ids17hf69962e1522da22fE.exit unwind label %.loopexit.split-lp6225.loopexit.split-lp

_ZN5milli5index5Index29put_geo_faceted_documents_ids17hf69962e1522da22fE.exit: ; preds = %bb.avn
  %i.ddk = load i32, ptr %i.ow, align 8, !range !22789, !noundef !10 ; 2 uses
  %.not3146 = icmp eq i32 %i.ddk, 5
  br i1 %.not3146, label %bb.avp, label %bb.avo

bb.avo:                                           ; preds = %_ZN5milli5index5Index29put_geo_faceted_documents_ids17hf69962e1522da22fE.exit
  %.sroa.42505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  %.sroa.21048.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.21048.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.42505.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ow)
  store i32 %i.ddk, ptr %i.kb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ka)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.ka, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.kb)
          to label %bb.avt unwind label %.loopexit.split-lp6225.loopexit.split-lp

bb.avp:                                           ; preds = %_ZN5milli5index5Index29put_geo_faceted_documents_ids17hf69962e1522da22fE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ow)
  call fastcc void @"_ZN4core3ptr185drop_in_place$LT$grenad..merger..MergerIter$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$C$milli..update..index_documents..helpers..merge_functions..KeepFirst$GT$$GT$17h4ad0305f5b25ae6dE"(ptr noalias noundef align 8 dereferenceable(96) %i.pe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pe)
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E"(ptr noalias noundef align 8 dereferenceable(24) %i.pf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pf)
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17haa3e870982769d17E"(ptr noalias noundef align 8 dereferenceable(80) %i.ph)
          to label %bb.avq unwind label %bb.atf

bb.avq:                                           ; preds = %bb.avp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ph)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pi)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17he1240568ffa8c1d8E"(ptr nonnull %i.pp)
          to label %bb.avr unwind label %bb.asz

bb.avr:                                           ; preds = %bb.avq
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hc006cc220f5cdd50E"(ptr noalias noundef align 8 dereferenceable(40) %i.pp)
          to label %bb.avs unwind label %bb.c

bb.avs:                                           ; preds = %bb.avr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pp)
  br label %bb.cu

bb.avt:                                           ; preds = %bb.avo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.ka, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ka)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kb)
  br label %bb.avu

bb.avu:                                           ; preds = %"_ZN96_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$grenad..error..Error$LT$E$GT$$GT$$GT$4from17h4ad495cb2b1960c6E.exit4296", %bb.avv, %bb.avt
  call fastcc void @"_ZN4core3ptr185drop_in_place$LT$grenad..merger..MergerIter$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$C$milli..update..index_documents..helpers..merge_functions..KeepFirst$GT$$GT$17h4ad0305f5b25ae6dE"(ptr noalias noundef align 8 dereferenceable(96) %i.pe)
  br label %bb.avw

bb.avv:                                           ; preds = %bb.avm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.kc, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kd)
  br label %bb.avu

"_ZN96_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$grenad..error..Error$LT$E$GT$$GT$$GT$4from17h4ad495cb2b1960c6E.exit4296": ; preds = %bb.aud, %bb.auc, %bb.aub, %bb.atz
  %.sroa.05026.0 = phi i64 [ 96, %bb.aub ], [ %i.czt, %bb.auc ], [ 95, %bb.aud ], [ 95, %bb.atz ]
  %.sroa.75027.0 = phi i64 [ %i.czy, %bb.aub ], [ %i.czz, %bb.auc ], [ -9223372036854775801, %bb.aud ], [ -9223372036854775802, %bb.atz ]
  %.sroa.115028.0 = phi i64 [ undef, %bb.aub ], [ %.sroa.42481.0.copyload, %bb.auc ], [ undef, %bb.aud ], [ undef, %bb.atz ]
  %.sroa.125029.0 = phi ptr [ undef, %bb.aub ], [ %.sroa.52482.0.copyload, %bb.auc ], [ undef, %bb.aud ], [ undef, %bb.atz ]
  %.sroa.135030.0 = phi i64 [ undef, %bb.aub ], [ %.sroa.62483.0.copyload, %bb.auc ], [ undef, %bb.aud ], [ undef, %bb.atz ]
  store i64 %.sroa.05026.0, ptr %0, align 8
  %.sroa.75027.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.75027.0, ptr %.sroa.75027.0..sroa_idx, align 8
  %.sroa.115028.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.115028.0, ptr %.sroa.115028.0..sroa_idx, align 8
  %.sroa.125029.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.125029.0, ptr %.sroa.125029.0..sroa_idx, align 8
  %.sroa.135030.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.135030.0, ptr %.sroa.135030.0..sroa_idx, align 8
  %.sroa.145031.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.145031.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.145031, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.145031)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.105025)
  br label %bb.avu

bb.avw:                                           ; preds = %bb.avu, %"_ZN96_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$grenad..error..Error$LT$E$GT$$GT$$GT$4from17h20058ebaa25e253bE.exit4295"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pe)
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E"(ptr noalias noundef align 8 dereferenceable(24) %i.pf)
  br label %bb.avx

"_ZN96_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$grenad..error..Error$LT$E$GT$$GT$$GT$4from17h20058ebaa25e253bE.exit4295": ; preds = %bb.atw, %bb.atu, %bb.att
  %.sroa.45018.0 = phi i64 [ %i.czo, %bb.atu ], [ -9223372036854775801, %bb.atw ], [ -9223372036854775802, %bb.att ]
  %.sink.i4292 = phi i64 [ 96, %bb.atu ], [ 95, %bb.atw ], [ 95, %bb.att ]
  store i64 %.sink.i4292, ptr %0, align 8
  %.sroa.45018.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.45018.0, ptr %.sroa.45018.0..sroa_idx, align 8
  br label %bb.avw

bb.avx:                                           ; preds = %bb.avw, %bb.awb
  %.sroa.01576.4 = phi i8 [ 1, %bb.awb ], [ 0, %bb.avw ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pf)
  call void @llvm.experimental.noalias.scope.decl(metadata !240023)
  call void @llvm.experimental.noalias.scope.decl(metadata !240026)
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5862575a8691e08E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.ph)
          to label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17ha1b08b3fe5c07246E.exit.i.i" unwind label %bb.avy, !inline_history !100164

bb.avy:                                           ; preds = %bb.avx
  %i.ddl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.ph, align 8, !range !180, !alias.scope !240029, !noundef !10 ; 2 uses
  %i.ddm = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ddm, label %.body4347, label %bb.avz

bb.avz:                                           ; preds = %bb.avy
  %i.ddn = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %.val3.i.i.i = load ptr, ptr %i.ddn, align 8, !alias.scope !240029, !nonnull !10, !noundef !10
end_hunk_15
begin_hunk_16_@_ZN5milli6update3new6merger20merge_and_send_rtree17h67cda443a4d5c1acE:bb.a
  store double %i.ht, ptr %i.v, align 8, !alias.scope !259077, !noalias !259080
  store double %i.hu, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !259077, !noalias !259080
  store double %sin.i.i, ptr %.sroa.32.0..sroa_idx.i, align 8, !alias.scope !259077, !noalias !259080
  store <2 x double> %.sroa.4446.sroa.0.0..sroa.4446.sroa.0.0., ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !259077, !noalias !259080
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4446.sroa.0)
  invoke fastcc void @"_ZN100_$LT$rstar..algorithm..rstar..RStarInsertionStrategy$u20$as$u20$rstar..params..InsertionStrategy$GT$6insert17hd4f041305df29681E"(ptr noalias noundef align 8 dereferenceable(80) %i.ag, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.v)
          to label %bb.dj unwind label %.loopexit

bb.dj:                                            ; preds = %bb.di
  %i.hv = load i64, ptr %i.de, align 8, !noundef !10
  %i.hw = add i64 %i.hv, 1
  store i64 %i.hw, ptr %i.de, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.hx = invoke fastcc noundef zeroext i1 @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h94eafc541148e8c7E"(ptr noalias noundef align 8 dereferenceable(24) %i.ae, i32 noundef %.sroa.11393.sroa.0.0.insert.insert648)
          to label %bb.dk unwind label %.loopexit ; 0 uses

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14394)
  %.pre750 = load ptr, ptr %.sroa.371.sroa.2.0..sroa.371.0..sroa_idx.sroa_idx, align 8, !alias.scope !258991, !noalias !259010
  br label %bb.cw

"_ZN4core3ptr478drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$milli..update..new..extract..geo..ExtractedGeoPoint$GT$$GT$$C$core..result..Result$LT$milli..update..new..extract..geo..ExtractedGeoPoint$C$std..io..error..Error$GT$..Ok$GT$$C$core..iter..sources..from_fn..FromFn$LT$milli..update..new..extract..geo..iterator_over_spilled_geopoints..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hbe19a1c4733bcf00E.exit328": ; preds = %"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17hceaf83544cb4dac4E.exit.i.i.i.i.i326", %bb.dg, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$17hd842694df78d6d49E.exit.i333"

"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$17hd842694df78d6d49E.exit.i333": ; preds = %bb.cf, %"_ZN4core3ptr478drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$milli..update..new..extract..geo..ExtractedGeoPoint$GT$$GT$$C$core..result..Result$LT$milli..update..new..extract..geo..ExtractedGeoPoint$C$std..io..error..Error$GT$..Ok$GT$$C$core..iter..sources..from_fn..FromFn$LT$milli..update..new..extract..geo..iterator_over_spilled_geopoints..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hbe19a1c4733bcf00E.exit343", %bb.cu, %"_ZN4core3ptr478drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$milli..update..new..extract..geo..ExtractedGeoPoint$GT$$GT$$C$core..result..Result$LT$milli..update..new..extract..geo..ExtractedGeoPoint$C$std..io..error..Error$GT$..Ok$GT$$C$core..iter..sources..from_fn..FromFn$LT$milli..update..new..extract..geo..iterator_over_spilled_geopoints..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hbe19a1c4733bcf00E.exit328"
  call void @llvm.experimental.noalias.scope.decl(metadata !259082)
  call void @llvm.experimental.noalias.scope.decl(metadata !259085)
  %i.hy = load ptr, ptr %i.da, align 8, !alias.scope !259088, !noundef !10 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17hef313783c482d06cE.exit338", label %bb.dl

bb.dl:                                            ; preds = %"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$17hd842694df78d6d49E.exit.i333"
  call void @llvm.experimental.noalias.scope.decl(metadata !259089)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %.val3.i.i1.i334 = load i64, ptr %i.ia, align 8, !alias.scope !259092, !noundef !10 ; 2 uses
  %i.ib = icmp eq i64 %.val3.i.i1.i334, 0
  br i1 %i.ib, label %"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17hceaf83544cb4dac4E.exit.i3.i336", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i2.i335"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i2.i335": ; preds = %bb.dl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hy, i64 noundef %.val3.i.i1.i334, i64 noundef 1) #101, !noalias !259092
  br label %"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17hceaf83544cb4dac4E.exit.i3.i336"

"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17hceaf83544cb4dac4E.exit.i3.i336": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i2.i335", %bb.dl
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %.val.i.i4.i337 = load i32, ptr %i.ic, align 8, !range !1937, !alias.scope !259092, !noundef !10
  %i.id = call noundef i32 @close(i32 noundef %.val.i.i4.i337) #101, !noalias !259092 ; 0 uses
  br label %"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17hef313783c482d06cE.exit338"

bb.dm:                                            ; preds = %bb.cl
  store ptr %i.fb, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !258858, !noalias !258861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !258942
  store i64 96, ptr %0, align 8
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fx, ptr %.sroa.4173.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.experimental.noalias.scope.decl(metadata !259093)
  call void @llvm.experimental.noalias.scope.decl(metadata !259096)
  %i.ie = load i64, ptr %i.z, align 8, !range !2111, !alias.scope !259099, !noundef !10
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %"_ZN4core3ptr478drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$milli..update..new..extract..geo..ExtractedGeoPoint$GT$$GT$$C$core..result..Result$LT$milli..update..new..extract..geo..ExtractedGeoPoint$C$std..io..error..Error$GT$..Ok$GT$$C$core..iter..sources..from_fn..FromFn$LT$milli..update..new..extract..geo..iterator_over_spilled_geopoints..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hbe19a1c4733bcf00E.exit343", label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !259100)
  call void @llvm.experimental.noalias.scope.decl(metadata !259103)
  call void @llvm.experimental.noalias.scope.decl(metadata !259106)
  %i.ig = load ptr, ptr %.sroa.246.0..sroa_idx, align 8, !alias.scope !259109, !noundef !10 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %"_ZN4core3ptr478drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$milli..update..new..extract..geo..ExtractedGeoPoint$GT$$GT$$C$core..result..Result$LT$milli..update..new..extract..geo..ExtractedGeoPoint$C$std..io..error..Error$GT$..Ok$GT$$C$core..iter..sources..from_fn..FromFn$LT$milli..update..new..extract..geo..iterator_over_spilled_geopoints..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hbe19a1c4733bcf00E.exit343", label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.experimental.noalias.scope.decl(metadata !259110)
  %.val3.i.i.i.i.i.i339 = load i64, ptr %.sroa.347.0..sroa_idx, align 8, !alias.scope !259113, !noundef !10 ; 2 uses
  %i.ii = icmp eq i64 %.val3.i.i.i.i.i.i339, 0
  br i1 %i.ii, label %"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17hceaf83544cb4dac4E.exit.i.i.i.i.i341", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i340"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i340": ; preds = %bb.do
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ig, i64 noundef %.val3.i.i.i.i.i.i339, i64 noundef 1) #101, !noalias !259113
  br label %"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17hceaf83544cb4dac4E.exit.i.i.i.i.i341"

"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17hceaf83544cb4dac4E.exit.i.i.i.i.i341": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i340", %bb.do
  %.val.i.i.i.i.i.i342 = load i32, ptr %i.cx, align 8, !range !1937, !alias.scope !259113, !noundef !10
  %i.ij = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i342) #101, !noalias !259113 ; 0 uses
  br label %"_ZN4core3ptr478drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$milli..update..new..extract..geo..ExtractedGeoPoint$GT$$GT$$C$core..result..Result$LT$milli..update..new..extract..geo..ExtractedGeoPoint$C$std..io..error..Error$GT$..Ok$GT$$C$core..iter..sources..from_fn..FromFn$LT$milli..update..new..extract..geo..iterator_over_spilled_geopoints..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hbe19a1c4733bcf00E.exit343"

bb.dp:                                            ; preds = %.thread560, %bb.cm
  %.sroa.11386.sroa.0.0.insert.insert573 = phi i32 [ %.sroa.6.i.sroa.0.0.copyload, %.thread560 ], [ %.sroa.07.0.copyload.i.i.i.i.i, %bb.cm ] ; 3 uses
  %.sroa.17.1549572 = phi i64 [ %.sroa.10438.1.insert.ext, %.thread560 ], [ %.sroa.17.2.insert.ext, %bb.cm ]
  %.sroa.15.1550571 = phi ptr [ %.sroa.6.i.sroa.5.0.copyload, %.thread560 ], [ %.sroa.15.2.copyload, %bb.cm ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.249.sroa.2, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4448.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %.sroa.4448.sroa.0, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.249.sroa.2, i64 3, i1 false)
  %.sroa.10.1.extract.trunc = trunc nuw i64 %.sroa.17.1549572 to i40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %.sroa.15.1550571, ptr %.sroa.4448.sroa.0.3..sroa_idx881, align 1
  store i40 %.sroa.10.1.extract.trunc, ptr %.sroa.4448.sroa.0.11..sroa_idx882, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !259114)
  call void @llvm.experimental.noalias.scope.decl(metadata !259117)
  store i32 %.sroa.11386.sroa.0.0.insert.insert573, ptr %i.cw, align 8, !alias.scope !259114, !noalias !259117
  %.sroa.4448.sroa.0.0..sroa.4448.sroa.0.0. = load <2 x double>, ptr %.sroa.4448.sroa.0, align 16, !alias.scope !259117, !noalias !259114 ; 3 uses
  %i.ik = extractelement <2 x double> %.sroa.4448.sroa.0.0..sroa.4448.sroa.0.0., i64 0
  %i.il = fmul double %i.ik, f0x3F91DF46A2529D39
  %i.im = extractelement <2 x double> %.sroa.4448.sroa.0.0..sroa.4448.sroa.0.0., i64 1
  %i.in = fmul double %i.im, f0x3F91DF46A2529D39
  %sincos.i.i344 = call { double, double } @llvm.sincos.f64(double %i.il) ; 2 uses
  %sin.i.i345 = extractvalue { double, double } %sincos.i.i344, 0
  %cos.i.i346 = extractvalue { double, double } %sincos.i.i344, 1 ; 2 uses
  %sincos6.i.i347 = call { double, double } @llvm.sincos.f64(double %i.in) ; 2 uses
  %sin7.i.i348 = extractvalue { double, double } %sincos6.i.i347, 0
  %cos8.i.i349 = extractvalue { double, double } %sincos6.i.i347, 1
  %i.io = fmul double %cos.i.i346, %cos8.i.i349
  %i.ip = fmul double %cos.i.i346, %sin7.i.i348
  store double %i.io, ptr %i.x, align 8, !alias.scope !259114, !noalias !259117
  store double %i.ip, ptr %.sroa.2.0..sroa_idx.i350, align 8, !alias.scope !259114, !noalias !259117
  store double %sin.i.i345, ptr %.sroa.32.0..sroa_idx.i351, align 8, !alias.scope !259114, !noalias !259117
  store <2 x double> %.sroa.4448.sroa.0.0..sroa.4448.sroa.0.0., ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i352, align 8, !alias.scope !259114, !noalias !259117
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4448.sroa.0)
  invoke fastcc void @"_ZN5rstar5rtree23RTree$LT$T$C$Params$GT$6remove17hffbbb7eb89838b27E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.y, ptr noalias noundef align 8 dereferenceable(80) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x)
          to label %bb.dq unwind label %.loopexit671

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !259119)
  %i.iq = lshr i32 %.sroa.11386.sroa.0.0.insert.insert573, 16
  %i.ir = trunc nuw i32 %i.iq to i16              ; 3 uses
  %i.is = trunc i32 %.sroa.11386.sroa.0.0.insert.insert573 to i16
  %i.it = load ptr, ptr %.sroa.4419.0..sroa_idx, align 8, !alias.scope !259119, !nonnull !10, !noundef !10 ; 2 uses
  %i.iu = load i64, ptr %.sroa.5420.0..sroa_idx, align 8, !alias.scope !259119, !noundef !10 ; 8 uses
  switch i64 %i.iu, label %.lr.ph.i.i.i [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.dq
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.dq ], [ %i.jf, %.lr.ph.i.i.i ] ; 4 uses
  %i.iv = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.iu
  call void @llvm.assume(i1 %i.iv)
  %i.iw = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %.sroa.05.0.lcssa.i.i.i ; 7 uses
  %i.ix = getelementptr i8, ptr %i.iw, i64 24
  %.val20.i.i.i = load i16, ptr %i.ix, align 8, !alias.scope !259122, !noalias !259127, !noundef !10 ; 2 uses
  %i.iy = icmp eq i16 %.val20.i.i.i, %i.ir
  br i1 %i.iy, label %bb.ds, label %bb.dr

.lr.ph.i.i.i:                                     ; preds = %bb.dq, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.jg, %.lr.ph.i.i.i ], [ %i.iu, %bb.dq ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.jf, %.lr.ph.i.i.i ], [ 0, %bb.dq ] ; 2 uses
  %i.iz = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.ja = add i64 %i.iz, %.sroa.05.024.i.i.i      ; 3 uses
  %i.jb = icmp ult i64 %i.ja, %i.iu
  call void @llvm.assume(i1 %i.jb)
  %i.jc = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %i.ja
  %i.jd = getelementptr i8, ptr %i.jc, i64 24
  %.val22.i.i.i = load i16, ptr %i.jd, align 8, !alias.scope !259122, !noalias !259127, !noundef !10
  %i.je = icmp ugt i16 %.val22.i.i.i, %i.ir
  %i.jf = select i1 %i.je, i64 %.sroa.05.024.i.i.i, i64 %i.ja, !unpredictable !10 ; 2 uses
  %i.jg = sub nuw i64 %.sroa.01.025.i.i.i, %i.iz  ; 2 uses
  %i.jh = icmp ugt i64 %i.jg, 1
  br i1 %i.jh, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.dr:                                            ; preds = %._crit_edge.i.i.i
  %i.ji = icmp ult i16 %.val20.i.i.i, %i.ir
  %i.jj = zext i1 %i.ji to i64
  %i.jk = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.jj
  %i.jl = icmp ule i64 %i.jk, %i.iu
  call void @llvm.assume(i1 %i.jl)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.ds:                                            ; preds = %._crit_edge.i.i.i
  %i.jm = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.iw, i16 noundef %i.is)
          to label %.noexc356 unwind label %.loopexit671

.noexc356:                                        ; preds = %bb.ds
  br i1 %i.jm, label %bb.dt, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.dt:                                            ; preds = %.noexc356
  %i.jn = load i64, ptr %i.iw, align 8, !range !1428, !noalias !259119, !noundef !10 ; 3 uses
  %i.jo = icmp eq i64 %i.jn, -9223372036854775808
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.jq = load i64, ptr %i.jp, align 8, !noalias !259119, !noundef !10 ; 2 uses
  br i1 %i.jo, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.jr = icmp ult i64 %i.jq, 4611686018427387904
  call void @llvm.assume(i1 %i.jr)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.sroa.03.0.in.i = icmp eq i64 %i.jq, 0
  br i1 %.sroa.03.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i": ; preds = %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !259129)
  %i.js = icmp ult i64 %i.iu, 288230376151711744
  call void @llvm.assume(i1 %i.js)
  %.sroa.4.0..sroa_idx.i354 = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %.sroa.4.0.copyload.i355 = load ptr, ptr %.sroa.4.0..sroa_idx.i354, align 8, !noalias !259132 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %i.ju = xor i64 %.sroa.05.0.lcssa.i.i.i, -1
  %i.jv = add nsw i64 %i.iu, %i.ju
  %i.jw = shl nuw nsw i64 %i.jv, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iw, ptr nonnull align 8 %i.jt, i64 %i.jw, i1 false), !noalias !259133
  %i.jx = add nsw i64 %i.iu, -1
  store i64 %i.jx, ptr %.sroa.5420.0..sroa_idx, align 8, !alias.scope !259132, !noalias !259135
  switch i64 %i.jn, label %bb.dw [
    i64 -9223372036854775808, label %bb.dx
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  ]

bb.dw:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i"
  %i.jy = shl nuw i64 %i.jn, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i355) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i355, i64 noundef %i.jy, i64 noundef range(i64 1, -9223372036854775807) 2) #101, !noalias !259119
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.dx:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i355) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i355, i64 noundef 8192, i64 noundef 8) #101, !noalias !259119
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit": ; preds = %bb.dx, %bb.dw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i", %bb.dv, %.noexc356, %bb.dr, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %.pre = load ptr, ptr %.sroa.347.sroa.2.0..sroa.347.0..sroa_idx.sroa_idx, align 8, !alias.scope !258900, !noalias !258919
  br label %bb.ch

"_ZN4core3ptr478drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$milli..update..new..extract..geo..ExtractedGeoPoint$GT$$GT$$C$core..result..Result$LT$milli..update..new..extract..geo..ExtractedGeoPoint$C$std..io..error..Error$GT$..Ok$GT$$C$core..iter..sources..from_fn..FromFn$LT$milli..update..new..extract..geo..iterator_over_spilled_geopoints..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hbe19a1c4733bcf00E.exit343": ; preds = %"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17hceaf83544cb4dac4E.exit.i.i.i.i.i341", %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$17hd842694df78d6d49E.exit.i333"

"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17hef313783c482d06cE.exit338": ; preds = %"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17hceaf83544cb4dac4E.exit.i3.i336", %"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$17hd842694df78d6d49E.exit.i333", %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.dy

bb.dy:                                            ; preds = %"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17hef313783c482d06cE.exit338", %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6381)
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17h4c7e88f33d9996ccE"(ptr noalias noundef align 8 dereferenceable(32) %i.ad)
          to label %bb.dz unwind label %bb.al

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.bp

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit": ; preds = %bb.bs, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i", %"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E.exit"
  %.sroa.0125.8 = phi i8 [ 1, %"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E.exit" ], [ 0, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i" ], [ 0, %bb.bs ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.experimental.noalias.scope.decl(metadata !259136)
  call void @llvm.experimental.noalias.scope.decl(metadata !259139)
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5862575a8691e08E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.ag)
          to label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17ha1b08b3fe5c07246E.exit.i.i" unwind label %bb.ea, !inline_history !100164

bb.ea:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit"
  %i.jz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.ag, align 8, !range !180, !alias.scope !259142, !noundef !10 ; 2 uses
  %i.ka = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ka, label %.body359, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val3.i.i.i357 = load ptr, ptr %i.kb, align 8, !alias.scope !259142, !nonnull !10, !noundef !10
  %i.kc = mul nuw i64 %.val2.i.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i357, i64 noundef %i.kc, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !259145, !inline_history !100169
  br label %.body359

"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17ha1b08b3fe5c07246E.exit.i.i": ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit"
  %.val.i.i.i358 = load i64, ptr %i.ag, align 8, !range !180, !alias.scope !259142, !noundef !10 ; 2 uses
  %i.kd = icmp eq i64 %.val.i.i.i358, 0
  br i1 %i.kd, label %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17haa3e870982769d17E.exit", label %bb.ec

bb.ec:                                            ; preds = %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17ha1b08b3fe5c07246E.exit.i.i"
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ke, align 8, !alias.scope !259142, !nonnull !10, !noundef !10
  %i.kf = mul nuw i64 %.val.i.i.i358, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.kf, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !259145, !inline_history !100169
  br label %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17haa3e870982769d17E.exit"

"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E.exit": ; preds = %bb.ad, %bb.aj
  %.sroa.9431.sroa.0.1 = phi i64 [ %.sroa.9431.sroa.0.0, %bb.aj ], [ 0, %bb.ad ]
  %.sroa.9431.sroa.6.1 = phi i64 [ %.sroa.9431.sroa.6.0, %bb.aj ], [ 0, %bb.ad ]
  %.sroa.5430.1 = phi i64 [ %.sroa.5430.0, %bb.aj ], [ %i.dj, %bb.ad ]
  %.sroa.0429.0 = phi i64 [ %.sink.i268, %bb.aj ], [ 96, %bb.ad ]
  store i64 %.sroa.0429.0, ptr %0, align 8
  %.sroa.5430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5430.1, ptr %.sroa.5430.0..sroa_idx, align 8
  %.sroa.9431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.9431.sroa.6.0.insert.ext = shl i64 %.sroa.9431.sroa.6.1, 32
  %.sroa.9431.sroa.0.0.insert.insert = or disjoint i64 %.sroa.9431.sroa.6.0.insert.ext, %.sroa.9431.sroa.0.1
  store i64 %.sroa.9431.sroa.0.0.insert.insert, ptr %.sroa.9431.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit"

"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17haa3e870982769d17E.exit": ; preds = %bb.ec, %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17ha1b08b3fe5c07246E.exit.i.i", %bb.u
  %.sroa.0125.9 = phi i8 [ 1, %bb.u ], [ %.sroa.0125.8, %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17ha1b08b3fe5c07246E.exit.i.i" ], [ %.sroa.0125.8, %bb.ec ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.kg = trunc nuw i8 %.sroa.0117.2 to i1
  br i1 %i.kg, label %bb.ed, label %bb.eh

bb.ed:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17haa3e870982769d17E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !259146)
  %i.kh = load i64, ptr %i.al, align 8, !range !1339, !alias.scope !259146, !noalias !259149, !noundef !10
  %.not.i.i361 = icmp eq i64 %i.kh, 2
  br i1 %.not.i.i361, label %.noexc362, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ki = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ki)
          to label %.noexc362 unwind label %.thread.thread

.noexc362:                                        ; preds = %bb.ee, %bb.ed
  %i.kj = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !259149
  %i.kk = icmp eq i8 %i.kj, 0
  br i1 %i.kk, label %bb.ef, label %.thread670

bb.ef:                                            ; preds = %.noexc362
  %i.kl = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.km = load ptr, ptr %i.kl, align 8, !alias.scope !259146, !noalias !259149, !align !299, !noundef !10 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.km, null
  br i1 %.not4.i.i, label %.thread670, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !259152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !259152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !259152
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !259149, !nonnull !10, !align !1504, !noundef !10
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.kq = load i64, ptr %i.kp, align 8, !noalias !259149, !noundef !10
  store ptr %i.ko, ptr %i.b, align 8, !noalias !259152
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.kq, ptr %i.kr, align 8, !noalias !259152
  store ptr %i.b, ptr %i.c, align 8, !noalias !259152
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7161a4ae6baa41a7E", ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !259152
  store ptr @7765, ptr %i.d, align 8, !noalias !259152
  %i.ks = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %i.ks, align 8, !noalias !259152
  %i.kt = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.kt, align 8, !noalias !259152
  %i.ku = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.ku, align 8, !noalias !259152
  %i.kv = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %i.kv, align 8, !noalias !259152
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @7766, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %.noexc363 unwind label %.thread.thread

.noexc363:                                        ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !259152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !259152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !259152
  br label %.thread670

bb.eh:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17haa3e870982769d17E.exit", %.thread670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.kw = trunc nuw i8 %.sroa.0125.9 to i1
  br i1 %i.kw, label %bb.ei, label %bb.bm

.thread670:                                       ; preds = %.noexc362, %bb.ef, %.noexc363
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hc006cc220f5cdd50E"(ptr noalias noundef align 8 dereferenceable(40) %i.al)
          to label %bb.eh unwind label %bb.bl

bb.ei:                                            ; preds = %bb.eh
  call fastcc void @"_ZN4core3ptr121drop_in_place$LT$alloc..vec..Vec$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17ha9da58853ddc8ed2E"(ptr noalias noundef align 8 dereferenceable(24) %1)
  br label %bb.bm

bb.ej:                                            ; preds = %.body359
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17he1240568ffa8c1d8E"(ptr nonnull %i.al) #107
          to label %.thread unwind label %bb.r

bb.ek:                                            ; preds = %.thread.thread, %.thread
  %.pn252497 = phi { ptr, i32 } [ %i.en, %.thread.thread ], [ %.pn250, %.thread ]
  %.sroa.0125.4496 = phi i8 [ %.sroa.0125.5, %.thread.thread ], [ %.sroa.0125.0, %.thread ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hc006cc220f5cdd50E"(ptr noalias noundef align 8 dereferenceable(40) %i.al) #107
          to label %bb.bk unwind label %bb.r

bb.el:                                            ; preds = %.thread502, %bb.bk
  %.pn254505 = phi { ptr, i32 } [ %.pn254506, %.thread502 ], [ %.pn254, %bb.bk ]
  resume { ptr, i32 } %.pn254505

.thread502:                                       ; preds = %bb.k, %bb.bk
  %.pn254506 = phi { ptr, i32 } [ %.pn254, %bb.bk ], [ %i.bb, %bb.k ]
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$alloc..vec..Vec$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17ha9da58853ddc8ed2E"(ptr noalias noundef align 8 dereferenceable(24) %1) #107
          to label %bb.el unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5milli6update3new6merger21merge_and_send_docids17h3fa8c31d41831404E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(320) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2, i32 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %4, ptr noundef nonnull align 8 %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [320 x i8], align 8               ; 10 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
end_hunk_16
begin_hunk_17_@_ZN5milli6vector5store11VectorStore11nns_by_item17haaf0e28219ba0520E:bb.a
  %i.vl = shl nuw i64 %.val61.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val62.i.i.i.i.ph, i64 noundef %i.vl, i64 noundef range(i64 1, -9223372036854775807) 4) #101, !noalias !302655
  br label %bb.fq

bb.fp:                                            ; preds = %"_ZN4core3ptr99drop_in_place$LT$alloc..borrow..Cow$LT$hannoy..unaligned_vector..UnalignedVector$LT$f32$GT$$GT$$GT$17hc39294507e14b4b6E.exit.i.i.i.i"
  %.val64.i.i.i.i = load ptr, ptr %.sroa.424.0..sroa_idx.i.i.i.i, align 8, !noalias !302644, !nonnull !10, !noundef !10
  %i.vm = shl nuw i64 %.val63.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val64.i.i.i.i, i64 noundef %i.vm, i64 noundef range(i64 1, -9223372036854775807) 4) #101, !noalias !302655
  br label %.body.i.i.i

bb.fq:                                            ; preds = %bb.fo, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !302644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !302623
  %.sroa.16.sroa.0.0.extract.trunc114.i.i = trunc i64 %.sroa.028.0.copyload.i.i.i.i to i32
  %.sroa.16.sroa.16.0.extract.shift125.i.i = lshr i64 %.sroa.028.0.copyload.i.i.i.i, 32
  %.sroa.16.sroa.16.0.extract.trunc126.i.i = trunc nuw i64 %.sroa.16.sroa.16.0.extract.shift125.i.i to i32
  %.sroa.30.sroa.0.0.extract.trunc29.i.i = trunc i64 %.sroa.77.sroa.8.i.sroa.0.0.copyload457.i.i.i to i8
  %.sroa.30.sroa.14.0.extract.shift46.i.i = lshr i64 %.sroa.77.sroa.8.i.sroa.0.0.copyload457.i.i.i, 8
  %.sroa.30.sroa.14.0.extract.trunc47.i.i = trunc i64 %.sroa.30.sroa.14.0.extract.shift46.i.i to i8
  %.sroa.30.sroa.15.0.extract.shift66.i.i = lshr i64 %.sroa.77.sroa.8.i.sroa.0.0.copyload457.i.i.i, 16
  %.sroa.30.sroa.15.0.extract.trunc67.i.i = trunc i64 %.sroa.30.sroa.15.0.extract.shift66.i.i to i16
  %.sroa.30.sroa.16.0.extract.shift86.i.i = lshr i64 %.sroa.77.sroa.8.i.sroa.0.0.copyload457.i.i.i, 32
  %.sroa.30.sroa.16.0.extract.trunc87.i.i = trunc i64 %.sroa.30.sroa.16.0.extract.shift86.i.i to i16
  %.sroa.30.sroa.17.0.extract.shift106.i.i = lshr i64 %.sroa.77.sroa.8.i.sroa.0.0.copyload457.i.i.i, 48
  %.sroa.30.sroa.17.0.extract.trunc107.i.i = trunc nuw i64 %.sroa.30.sroa.17.0.extract.shift106.i.i to i16
  %i.vn = ptrtoint ptr %.sroa.77.sroa.8.i.sroa.6.0.copyload460.i.i.i to i64
  br label %bb.fr

.loopexit565.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !302644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !302623
  %.sroa.30.sroa.0.0.extract.trunc28.i.i = trunc i64 %.sroa.04.0.copyload.i.i.i.i to i8
  %.sroa.30.sroa.14.0.extract.shift44.i.i = lshr i64 %.sroa.04.0.copyload.i.i.i.i, 8
  %.sroa.30.sroa.14.0.extract.trunc45.i.i = trunc i64 %.sroa.30.sroa.14.0.extract.shift44.i.i to i8
  %.sroa.30.sroa.15.0.extract.shift64.i.i = lshr i64 %.sroa.04.0.copyload.i.i.i.i, 16
  %.sroa.30.sroa.15.0.extract.trunc65.i.i = trunc i64 %.sroa.30.sroa.15.0.extract.shift64.i.i to i16
  %.sroa.30.sroa.16.0.extract.shift84.i.i = lshr i64 %.sroa.04.0.copyload.i.i.i.i, 32
  %.sroa.30.sroa.16.0.extract.trunc85.i.i = trunc i64 %.sroa.30.sroa.16.0.extract.shift84.i.i to i16
  %.sroa.30.sroa.17.0.extract.shift104.i.i = lshr i64 %.sroa.04.0.copyload.i.i.i.i, 48
  %.sroa.30.sroa.17.0.extract.trunc105.i.i = trunc nuw i64 %.sroa.30.sroa.17.0.extract.shift104.i.i to i16
  %i.vo = ptrtoint ptr %.val62.i.i.i.i.ph to i64
  br label %bb.fr

bb.fr:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit324.i.i.i", %.loopexit565.i.i.i, %bb.fq
  %.sroa.16.sroa.16.1.i.i = phi i32 [ %.sroa.16.sroa.16.0.i.i, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit324.i.i.i" ], [ %.sroa.16.sroa.16.0.extract.trunc126.i.i, %bb.fq ], [ 0, %.loopexit565.i.i.i ] ; 2 uses
  %.sroa.16.sroa.0.1.i.i = phi i32 [ %.sroa.16.sroa.0.0.i.i, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit324.i.i.i" ], [ %.sroa.16.sroa.0.0.extract.trunc114.i.i, %bb.fq ], [ 0, %.loopexit565.i.i.i ] ; 2 uses
  %.sroa.30.sroa.17.1.i.i = phi i16 [ %.sroa.30.sroa.17.0.i.i, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit324.i.i.i" ], [ %.sroa.30.sroa.17.0.extract.trunc107.i.i, %bb.fq ], [ %.sroa.30.sroa.17.0.extract.trunc105.i.i, %.loopexit565.i.i.i ] ; 2 uses
  %.sroa.30.sroa.16.1.i.i = phi i16 [ %.sroa.30.sroa.16.0.i.i, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit324.i.i.i" ], [ %.sroa.30.sroa.16.0.extract.trunc87.i.i, %bb.fq ], [ %.sroa.30.sroa.16.0.extract.trunc85.i.i, %.loopexit565.i.i.i ] ; 2 uses
  %.sroa.30.sroa.15.1.i.i = phi i16 [ %.sroa.30.sroa.15.0.i.i, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit324.i.i.i" ], [ %.sroa.30.sroa.15.0.extract.trunc67.i.i, %bb.fq ], [ %.sroa.30.sroa.15.0.extract.trunc65.i.i, %.loopexit565.i.i.i ] ; 2 uses
  %.sroa.30.sroa.14.1.i.i = phi i8 [ %.sroa.30.sroa.14.0.i.i, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit324.i.i.i" ], [ %.sroa.30.sroa.14.0.extract.trunc47.i.i, %bb.fq ], [ %.sroa.30.sroa.14.0.extract.trunc45.i.i, %.loopexit565.i.i.i ] ; 2 uses
  %.sroa.30.sroa.0.1.i.i = phi i8 [ %.sroa.30.sroa.0.0.i.i, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit324.i.i.i" ], [ %.sroa.30.sroa.0.0.extract.trunc29.i.i, %bb.fq ], [ %.sroa.30.sroa.0.0.extract.trunc28.i.i, %.loopexit565.i.i.i ] ; 2 uses
  %.sroa.47.1.i.i = phi i64 [ %.sroa.47.0.i.i, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit324.i.i.i" ], [ %.sroa.737.0.copyload.i.i.i.i, %bb.fq ], [ %.sroa.65.0.copyload.i.i.i.i.ph, %.loopexit565.i.i.i ] ; 2 uses
  %.sroa.41.1.i.i = phi i64 [ %.sroa.41.0.i.i, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit324.i.i.i" ], [ %i.vn, %bb.fq ], [ %i.vo, %.loopexit565.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0.i82.i, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit324.i.i.i" ], [ %i.sy, %bb.fq ], [ -9223372036854775796, %.loopexit565.i.i.i ] ; 2 uses
  %.val259.i.i.i = load i64, ptr %i.bp, align 8, !range !1428, !noalias !302623, !noundef !10 ; 2 uses
  %switch556.i.i.i = icmp sgt i64 %.val259.i.i.i, 0
  br i1 %switch556.i.i.i, label %bb.fs, label %"_ZN6hannoy6reader15Reader$LT$D$GT$11nns_by_item17h5b3a22057b14b374E.exit.i.i"

bb.fs:                                            ; preds = %bb.fr
  %.val260.i.i.i = load ptr, ptr %i.my, align 8, !noalias !302623, !nonnull !10, !noundef !10
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val260.i.i.i, i64 noundef %.val259.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #101, !noalias !302704
  br label %"_ZN6hannoy6reader15Reader$LT$D$GT$11nns_by_item17h5b3a22057b14b374E.exit.i.i"

"_ZN4core6option15Option$LT$T$GT$6filter17h199547ea8a968049E.exit.thread.i.i.i": ; preds = %"_ZN6hannoy6reader15Reader$LT$D$GT$11nns_by_item28_$u7b$$u7b$closure$u7d$$u7d$17h71c03e5b75821534E.exit.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit.i.i.i.i.i.i", %bb.ee
  %..i.i.i = phi ptr [ %5, %"_ZN6hannoy6reader15Reader$LT$D$GT$11nns_by_item28_$u7b$$u7b$closure$u7d$$u7d$17h71c03e5b75821534E.exit.i.i.i.i" ], [ %5, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit.i.i.i.i.i.i" ], [ %i.lk, %bb.ee ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !302623
  store i64 0, ptr %i.bo, align 8, !noalias !302623
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4112.0..sroa_idx.i.i.i, align 8, !noalias !302623
  store i64 0, ptr %.sroa.5113.0..sroa_idx.i.i.i, align 8, !noalias !302623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !302623
  invoke void @"_ZN7roaring6bitmap8inherent79_$LT$impl$u20$core..clone..Clone$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$5clone17h13885d2b824b4693E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %..i.i.i)
          to label %bb.fx unwind label %bb.fw, !noalias !302624

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit": ; preds = %bb.gh, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i", %bb.fw
  %.pn242.pn.i.i.i = phi { ptr, i32 } [ %i.vx, %bb.fw ], [ %.pn242.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i" ], [ %.pn242.i.i.i, %bb.gh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302707)
  call void @llvm.experimental.noalias.scope.decl(metadata !302710), !noalias !302624
  %.val4.i.i817 = load ptr, ptr %.sroa.4112.0..sroa_idx.i.i.i, align 8, !alias.scope !302713, !noalias !302624, !nonnull !10, !noundef !10 ; 2 uses
  %.val5.i.i818 = load i64, ptr %.sroa.5113.0..sroa_idx.i.i.i, align 8, !alias.scope !302713, !noalias !302624, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302714), !noalias !302624
  %i.vp = icmp eq i64 %.val5.i.i818, 0
  br i1 %i.vp, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i824", label %.lr.ph.i.i.i.i819

.lr.ph.i.i.i.i819:                                ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit", %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i823"
  %.sroa.0.010.i.i.i.i820 = phi i64 [ %i.vr, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i823" ], [ 0, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit" ] ; 2 uses
  %i.vq = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i817, i64 %.sroa.0.010.i.i.i.i820 ; 2 uses
  %i.vr = add nuw i64 %.sroa.0.010.i.i.i.i820, 1  ; 2 uses
  %.val8.i.i.i.i821 = load i64, ptr %i.vq, align 8, !range !1428, !alias.scope !302714, !noalias !302717, !noundef !10 ; 2 uses
  %i.vs = getelementptr i8, ptr %i.vq, i64 8
  %.val9.i.i.i.i822 = load ptr, ptr %i.vs, align 8, !alias.scope !302714, !noalias !302717 ; 4 uses
  switch i64 %.val8.i.i.i.i821, label %bb.ft [
    i64 -9223372036854775808, label %bb.fu
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i823"
  ]

bb.ft:                                            ; preds = %.lr.ph.i.i.i.i819
  %i.vt = shl nuw i64 %.val8.i.i.i.i821, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i822) ], !noalias !302624
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i822, i64 noundef %i.vt, i64 noundef range(i64 1, -9223372036854775807) 2) #101, !noalias !302718
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i823"

bb.fu:                                            ; preds = %.lr.ph.i.i.i.i819
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i822) ], !noalias !302624
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i822, i64 noundef 8192, i64 noundef 8) #101, !noalias !302718
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i823"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i823": ; preds = %bb.fu, %bb.ft, %.lr.ph.i.i.i.i819
  %i.vu = icmp eq i64 %i.vr, %.val5.i.i818
  br i1 %i.vu, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i824", label %.lr.ph.i.i.i.i819

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i824": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i823", %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit"
  %.val.i.i825 = load i64, ptr %i.bo, align 8, !range !180, !alias.scope !302713, !noalias !302624, !noundef !10 ; 2 uses
  %i.vv = icmp eq i64 %.val.i.i825, 0
  br i1 %i.vv, label %.body.i.i.i, label %bb.fv

bb.fv:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i824"
  %i.vw = shl nuw i64 %.val.i.i825, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i817, i64 noundef %i.vw, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !302717
  br label %.body.i.i.i

bb.fw:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6filter17h199547ea8a968049E.exit.thread.i.i.i"
  %i.vx = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit"

bb.fx:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6filter17h199547ea8a968049E.exit.thread.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !302719)
  %i.vy = load ptr, ptr %i.md, align 8, !alias.scope !302719, !noalias !302623, !nonnull !10, !noundef !10 ; 2 uses
  %i.vz = load i64, ptr %i.me, align 8, !alias.scope !302719, !noalias !302623, !noundef !10 ; 8 uses
  switch i64 %i.vz, label %.lr.ph.i.i.i288.i.i.i [
    i64 0, label %bb.gi
    i64 1, label %._crit_edge.i.i.i286.i.i.i
  ]

._crit_edge.i.i.i286.i.i.i:                       ; preds = %.lr.ph.i.i.i288.i.i.i, %bb.fx
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.fx ], [ %i.wk, %.lr.ph.i.i.i288.i.i.i ] ; 4 uses
  %i.wa = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, %i.vz
  call void @llvm.assume(i1 %i.wa)
  %i.wb = getelementptr inbounds nuw [32 x i8], ptr %i.vy, i64 %.sroa.05.0.lcssa.i.i.i.i.i.i ; 7 uses
  %i.wc = getelementptr i8, ptr %i.wb, i64 24
  %.val20.i.i.i.i.i.i = load i16, ptr %i.wc, align 8, !alias.scope !302722, !noalias !302727, !noundef !10 ; 2 uses
  %i.wd = icmp eq i16 %.val20.i.i.i.i.i.i, %i.mb
  br i1 %i.wd, label %bb.fz, label %bb.fy

.lr.ph.i.i.i288.i.i.i:                            ; preds = %bb.fx, %.lr.ph.i.i.i288.i.i.i
  %.sroa.01.025.i.i.i.i.i.i = phi i64 [ %i.wl, %.lr.ph.i.i.i288.i.i.i ], [ %i.vz, %bb.fx ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i.i = phi i64 [ %i.wk, %.lr.ph.i.i.i288.i.i.i ], [ 0, %bb.fx ] ; 2 uses
  %i.we = lshr i64 %.sroa.01.025.i.i.i.i.i.i, 1   ; 2 uses
  %i.wf = add i64 %i.we, %.sroa.05.024.i.i.i.i.i.i ; 3 uses
  %i.wg = icmp ult i64 %i.wf, %i.vz
  call void @llvm.assume(i1 %i.wg)
  %i.wh = getelementptr inbounds nuw [32 x i8], ptr %i.vy, i64 %i.wf
  %i.wi = getelementptr i8, ptr %i.wh, i64 24
  %.val22.i.i.i.i.i.i = load i16, ptr %i.wi, align 8, !alias.scope !302722, !noalias !302727, !noundef !10
  %i.wj = icmp ugt i16 %.val22.i.i.i.i.i.i, %i.mb
  %i.wk = select i1 %i.wj, i64 %.sroa.05.024.i.i.i.i.i.i, i64 %i.wf, !unpredictable !10 ; 2 uses
  %i.wl = sub nuw i64 %.sroa.01.025.i.i.i.i.i.i, %i.we ; 2 uses
  %i.wm = icmp ugt i64 %i.wl, 1
  br i1 %i.wm, label %.lr.ph.i.i.i288.i.i.i, label %._crit_edge.i.i.i286.i.i.i

bb.fy:                                            ; preds = %._crit_edge.i.i.i286.i.i.i
  %i.wn = icmp ult i16 %.val20.i.i.i.i.i.i, %i.mb
  %i.wo = zext i1 %i.wn to i64
  %i.wp = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, %i.wo
  %i.wq = icmp ule i64 %i.wp, %i.vz
  call void @llvm.assume(i1 %i.wq)
  br label %bb.gi

bb.fz:                                            ; preds = %._crit_edge.i.i.i286.i.i.i
  %i.wr = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.wb, i16 noundef %i.mc)
          to label %.noexc289.i.i.i unwind label %.loopexit65.i, !noalias !302624

.noexc289.i.i.i:                                  ; preds = %bb.fz
  br i1 %i.wr, label %bb.ga, label %bb.gi

bb.ga:                                            ; preds = %.noexc289.i.i.i
  %i.ws = load i64, ptr %i.wb, align 8, !range !1428, !noalias !302729, !noundef !10 ; 3 uses
  %i.wt = icmp eq i64 %i.ws, -9223372036854775808
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  %i.wv = load i64, ptr %i.wu, align 8, !noalias !302729, !noundef !10 ; 2 uses
  br i1 %i.wt, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ww = icmp ult i64 %i.wv, 4611686018427387904
  call void @llvm.assume(i1 %i.ww)
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.sroa.03.0.in.i.i.i.i = icmp eq i64 %i.wv, 0
  br i1 %.sroa.03.0.in.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i.i.i.i", label %bb.gi

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i.i.i.i": ; preds = %bb.gc
  call void @llvm.experimental.noalias.scope.decl(metadata !302730)
  %i.wx = icmp ult i64 %i.vz, 288230376151711744
  call void @llvm.assume(i1 %i.wx)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !302733 ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wb, i64 32
  %i.wz = xor i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -1
  %i.xa = add nsw i64 %i.vz, %i.wz
  %i.xb = shl nuw nsw i64 %i.xa, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wb, ptr nonnull align 8 %i.wy, i64 %i.xb, i1 false), !noalias !302734
  %i.xc = add nsw i64 %i.vz, -1
  store i64 %i.xc, ptr %i.me, align 8, !alias.scope !302736, !noalias !302737
  switch i64 %i.ws, label %bb.gd [
    i64 -9223372036854775808, label %bb.ge
    i64 0, label %bb.gi
  ]

bb.gd:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i.i.i.i"
  %i.xd = shl nuw i64 %i.ws, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i, i64 noundef %i.xd, i64 noundef range(i64 1, -9223372036854775807) 2) #101, !noalias !302729
  br label %bb.gi

bb.ge:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i, i64 noundef 8192, i64 noundef 8) #101, !noalias !302729
  br label %bb.gi

"_ZN4core3ptr44drop_in_place$LT$hannoy..reader..Visitor$GT$17h59c02ffe08f0f3c7E.exit.i.i.i": ; preds = %.thread501.i.i.body.i, %.loopexit.split-lp66.i, %.loopexit65.i
  %.pn242.i.i.i = phi { ptr, i32 } [ %.pn240507.i.i.i, %.thread501.i.i.body.i ], [ %lpad.loopexit67.i, %.loopexit65.i ], [ %lpad.loopexit.split-lp68.i, %.loopexit.split-lp66.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302738)
  call void @llvm.experimental.noalias.scope.decl(metadata !302741), !noalias !302624
  %.val4.i.i = load ptr, ptr %i.md, align 8, !alias.scope !302744, !noalias !302624, !nonnull !10, !noundef !10 ; 2 uses
  %.val5.i.i = load i64, ptr %i.me, align 8, !alias.scope !302744, !noalias !302624, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302745), !noalias !302624
  %i.xe = icmp eq i64 %.val5.i.i, 0
  br i1 %i.xe, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr44drop_in_place$LT$hannoy..reader..Visitor$GT$17h59c02ffe08f0f3c7E.exit.i.i.i", %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.xg, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i" ], [ 0, %"_ZN4core3ptr44drop_in_place$LT$hannoy..reader..Visitor$GT$17h59c02ffe08f0f3c7E.exit.i.i.i" ] ; 2 uses
  %i.xf = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.xg = add nuw i64 %.sroa.0.010.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.xf, align 8, !range !1428, !alias.scope !302745, !noalias !302748, !noundef !10 ; 2 uses
  %i.xh = getelementptr i8, ptr %i.xf, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.xh, align 8, !alias.scope !302745, !noalias !302748 ; 4 uses
  switch i64 %.val8.i.i.i.i, label %bb.gf [
    i64 -9223372036854775808, label %bb.gg
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i"
  ]

bb.gf:                                            ; preds = %.lr.ph.i.i.i.i
  %i.xi = shl nuw i64 %.val8.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ], !noalias !302624
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.xi, i64 noundef range(i64 1, -9223372036854775807) 2) #101, !noalias !302749
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i"

bb.gg:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ], !noalias !302624
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef 8192, i64 noundef 8) #101, !noalias !302749
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i": ; preds = %bb.gg, %bb.gf, %.lr.ph.i.i.i.i
  %i.xj = icmp eq i64 %i.xg, %.val5.i.i
  br i1 %i.xj, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i", %"_ZN4core3ptr44drop_in_place$LT$hannoy..reader..Visitor$GT$17h59c02ffe08f0f3c7E.exit.i.i.i"
  %.val.i.i816 = load i64, ptr %i.bn, align 8, !range !180, !alias.scope !302744, !noalias !302624, !noundef !10 ; 2 uses
  %i.xk = icmp eq i64 %.val.i.i816, 0
  br i1 %i.xk, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit", label %bb.gh

bb.gh:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i"
  %i.xl = shl nuw i64 %.val.i.i816, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef %i.xl, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !302748
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit"

.loopexit65.i:                                    ; preds = %bb.fz
  %lpad.loopexit67.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr44drop_in_place$LT$hannoy..reader..Visitor$GT$17h59c02ffe08f0f3c7E.exit.i.i.i"

.loopexit.split-lp66.i:                           ; preds = %bb.gj
  %lpad.loopexit.split-lp68.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr44drop_in_place$LT$hannoy..reader..Visitor$GT$17h59c02ffe08f0f3c7E.exit.i.i.i"

bb.gi:                                            ; preds = %bb.ge, %bb.gd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i.i.i.i", %bb.gc, %.noexc289.i.i.i, %bb.fy, %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !302623
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101, !noalias !302624
  %i.xm = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef 4) #101, !noalias !302624 ; 12 uses
  %i.xn = icmp eq ptr %i.xm, null
  br i1 %i.xn, label %bb.gj, label %bb.gk, !prof !59

bb.gj:                                            ; preds = %bb.gi
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 4, i64 noundef 4) #106
          to label %bb.ja unwind label %.loopexit.split-lp66.i, !noalias !302624

bb.gk:                                            ; preds = %bb.gi
  store i32 %3, ptr %i.xm, align 4, !noalias !302624
  store i64 1, ptr %i.bm, align 8, !noalias !302623
  store ptr %i.xm, ptr %.sroa.4.0..sroa_idx.i.i.i140, align 8, !noalias !302623
  store i64 1, ptr %.sroa.5330.0..sroa_idx.i.i.i, align 8, !noalias !302623
  store i64 0, ptr %i.mf, align 8, !noalias !302623
  store i64 %.sroa.0.0.i77.i, ptr %i.mg, align 8, !noalias !302623
  store ptr %i.bn, ptr %i.mh, align 8, !noalias !302623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !302623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !302623
  invoke fastcc void @_ZN6hannoy6reader7Visitor5visit17h3607fc147918bafcE(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef align 8 dereferenceable(24) %i.bo)
          to label %bb.gl unwind label %.thread501.i.i.i, !noalias !302750

.thread501.i.i.body.i:                            ; preds = %bb.hf, %.body145.i, %bb.hc, %.body.i.i, %.thread501.i.i.i
  %.pn240507.i.i.i = phi { ptr, i32 } [ %.pn238.i.i.i, %.body145.i ], [ %.pn238.i.i.i, %bb.hf ], [ %i.xo, %.thread501.i.i.i ], [ %eh.lpad-body.i.i, %bb.hc ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %.val272384505.i.i.i = phi ptr [ %.val272385.i.i.i, %.body145.i ], [ %.val272385.i.i.i, %bb.hf ], [ %i.xm, %.thread501.i.i.i ], [ %i.xm, %bb.hc ], [ %i.xm, %.body.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val272384505.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val272384505.i.i.i, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #101, !noalias !302751
  br label %"_ZN4core3ptr44drop_in_place$LT$hannoy..reader..Visitor$GT$17h59c02ffe08f0f3c7E.exit.i.i.i"

.thread501.i.i.i:                                 ; preds = %bb.gk
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %.thread501.i.i.body.i

bb.gl:                                            ; preds = %bb.gk
  %i.xp = load i64, ptr %i.bk, align 8, !range !25532, !noalias !302623, !noundef !10 ; 2 uses
  %.not227.i.i.i = icmp eq i64 %i.xp, -9223372036854775796
  %.sroa.0442.0.copyload.i.i.i = load i64, ptr %i.mi, align 8, !noalias !302623 ; 3 uses
  %.sroa.4443.0.copyload.i.i.i = load i64, ptr %.sroa.4443.0..sroa_idx.i.i.i, align 8, !noalias !302623 ; 8 uses
  %.sroa.5444.0.copyload.i.i.i = load ptr, ptr %.sroa.5444.0..sroa_idx.i.i.i, align 8, !noalias !302623 ; 3 uses
  %.sroa.6445.0.copyload.i.i.i = load i64, ptr %.sroa.6445.0..sroa_idx.i.i.i, align 8, !noalias !302623 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !302623
  br i1 %.not227.i.i.i, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %.sroa.16.sroa.0.0.extract.trunc112.i.i = trunc i64 %.sroa.0442.0.copyload.i.i.i to i32
  %.sroa.16.sroa.16.0.extract.shift121.i.i = lshr i64 %.sroa.0442.0.copyload.i.i.i, 32
  %.sroa.16.sroa.16.0.extract.trunc122.i.i = trunc nuw i64 %.sroa.16.sroa.16.0.extract.shift121.i.i to i32
  %.sroa.30.sroa.0.0.extract.trunc26.i.i = trunc i64 %.sroa.4443.0.copyload.i.i.i to i8
  %.sroa.30.sroa.14.0.extract.shift40.i.i = lshr i64 %.sroa.4443.0.copyload.i.i.i, 8
  %.sroa.30.sroa.14.0.extract.trunc41.i.i = trunc i64 %.sroa.30.sroa.14.0.extract.shift40.i.i to i8
  %.sroa.30.sroa.15.0.extract.shift60.i.i = lshr i64 %.sroa.4443.0.copyload.i.i.i, 16
  %.sroa.30.sroa.15.0.extract.trunc61.i.i = trunc i64 %.sroa.30.sroa.15.0.extract.shift60.i.i to i16
  %.sroa.30.sroa.16.0.extract.shift80.i.i = lshr i64 %.sroa.4443.0.copyload.i.i.i, 32
  %.sroa.30.sroa.16.0.extract.trunc81.i.i = trunc i64 %.sroa.30.sroa.16.0.extract.shift80.i.i to i16
  %.sroa.30.sroa.17.0.extract.shift100.i.i = lshr i64 %.sroa.4443.0.copyload.i.i.i, 48
  %.sroa.30.sroa.17.0.extract.trunc101.i.i = trunc nuw i64 %.sroa.30.sroa.17.0.extract.shift100.i.i to i16
  %i.xq = ptrtoint ptr %.sroa.5444.0.copyload.i.i.i to i64
  br label %bb.jm

bb.gn:                                            ; preds = %bb.gl
  %i.xr = trunc nuw i64 %.sroa.0442.0.copyload.i.i.i to i1
  br i1 %i.xr, label %bb.go, label %bb.he

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !302754
  store i64 %.sroa.4443.0.copyload.i.i.i, ptr %i.av, align 8, !noalias !302758
  store ptr %.sroa.5444.0.copyload.i.i.i, ptr %.sroa.7160.8..sroa_idx161.i.i, align 8, !noalias !302758
  store i64 %.sroa.6445.0.copyload.i.i.i, ptr %.sroa.8.8..sroa_idx163.i.i, align 8, !noalias !302758
  call void @llvm.experimental.noalias.scope.decl(metadata !302759)
  call void @llvm.experimental.noalias.scope.decl(metadata !302762), !noalias !302765
  call void @llvm.experimental.noalias.scope.decl(metadata !302766), !noalias !302765
  call void @llvm.experimental.noalias.scope.decl(metadata !302769), !noalias !302765
  call void @llvm.experimental.noalias.scope.decl(metadata !302772), !noalias !302765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !302775
  br i1 %i.mr, label %_ZN4core4iter6traits8iterator8Iterator7collect17h357db1a071465e51E.exit.i.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !302781
  invoke fastcc void @"_ZN90_$LT$min_max_heap..DrainAsc$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h69e85afd1ac8c8d2E"(ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.aq, ptr nonnull align 8 dereferenceable(24) %i.av)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.gq, !noalias !302787

.noexc.i.i.i.i.i.i:                               ; preds = %bb.gp
  %i.xs = load i32, ptr %i.aq, align 4, !range !2759, !noalias !302781, !noundef !10
  %i.xt = trunc nuw i32 %i.xs to i1
  br i1 %i.xt, label %bb.gr, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e47773737f5c48bE.exit.i.i.i.i.i.i"

bb.gq:                                            ; preds = %bb.gp
  %i.xu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e47773737f5c48bE.exit.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !302781
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h357db1a071465e51E.exit.i.i

bb.gr:                                            ; preds = %.noexc.i.i.i.i.i.i
  %i.xv = load float, ptr %i.mz, align 4, !noalias !302781, !noundef !10
  %i.xw = load i32, ptr %i.na, align 4, !noalias !302781, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !302781
  br i1 %i.mv, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, label %bb.gt

bb.gs:                                            ; preds = %bb.gu
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.gt:                                            ; preds = %bb.gr
  %i.xy = load i64, ptr %.sroa.8.8..sroa_idx163.i.i, align 8, !alias.scope !302788, !noalias !302789, !noundef !10 ; 2 uses
  %i.xz = icmp ult i64 %i.xy, 1152921504606846976
  call void @llvm.assume(i1 %i.xz), !noalias !302765
  %.sroa.0.0.i.i.i.i.i.i.i166.i = call i64 @llvm.umin.i64(i64 %i.ms, i64 %i.xy) ; 2 uses
  %i.ya = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i166.i, i64 3)
  %i.yb = add nuw nsw i64 %i.ya, 1                ; 2 uses
  %i.yc = shl nuw i64 %i.yb, 3                    ; 2 uses
  %i.yd = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i166.i, 1152921504606846975
  br i1 %i.yd, label %bb.gu, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !72614

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.gt, %bb.gr
  %i.ye = phi i64 [ %i.yc, %bb.gt ], [ 32, %bb.gr ] ; 2 uses
  %.sroa.0.0.i.sink.i26.i.i.i.i.i.i = phi i64 [ %i.yb, %bb.gt ], [ 4, %bb.gr ]
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101, !noalias !302796
end_hunk_17
begin_hunk_18_@_ZN5milli6vector5store11VectorStore11nns_by_item17haaf0e28219ba0520E:bb.a
  %i.aqk = shl nuw i64 %.val61.i.i.i.i721, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val62.i.i.i.i669.ph, i64 noundef %i.aqk, i64 noundef range(i64 1, -9223372036854775807) 4) #101, !noalias !303191
  br label %bb.mt

bb.ms:                                            ; preds = %"_ZN4core3ptr81drop_in_place$LT$hannoy..node..Item$LT$hannoy..distance..hamming..Hamming$GT$$GT$17hd751dba9279c1c1eE.exit.i.i.i.i"
  %.val64.i.i.i.i672 = load ptr, ptr %.sroa.424.0..sroa_idx.i.i.i.i190, align 8, !noalias !303180, !nonnull !10, !noundef !10
  %i.aql = shl nuw i64 %.val63.i.i.i.i671, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val64.i.i.i.i672, i64 noundef %i.aql, i64 noundef range(i64 1, -9223372036854775807) 4) #101, !noalias !303191
  br label %.body.i.i.i314

bb.mt:                                            ; preds = %bb.mr, %bb.lz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !303180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !303159
  %.sroa.16.sroa.0.0.extract.trunc114.i.i722 = trunc i64 %.sroa.028.0.copyload.i.i.i.i734 to i32
  %.sroa.16.sroa.16.0.extract.shift125.i.i723 = lshr i64 %.sroa.028.0.copyload.i.i.i.i734, 32
  %.sroa.16.sroa.16.0.extract.trunc126.i.i724 = trunc nuw i64 %.sroa.16.sroa.16.0.extract.shift125.i.i723 to i32
  %.sroa.30.sroa.0.0.extract.trunc29.i.i725 = trunc i64 %.sroa.77.sroa.8.i.sroa.0.0.copyload455.i.i.i to i8
  %.sroa.30.sroa.14.0.extract.shift46.i.i726 = lshr i64 %.sroa.77.sroa.8.i.sroa.0.0.copyload455.i.i.i, 8
  %.sroa.30.sroa.14.0.extract.trunc47.i.i727 = trunc i64 %.sroa.30.sroa.14.0.extract.shift46.i.i726 to i8
  %.sroa.30.sroa.15.0.extract.shift66.i.i728 = lshr i64 %.sroa.77.sroa.8.i.sroa.0.0.copyload455.i.i.i, 16
  %.sroa.30.sroa.15.0.extract.trunc67.i.i729 = trunc i64 %.sroa.30.sroa.15.0.extract.shift66.i.i728 to i16
  %.sroa.30.sroa.16.0.extract.shift86.i.i730 = lshr i64 %.sroa.77.sroa.8.i.sroa.0.0.copyload455.i.i.i, 32
  %.sroa.30.sroa.16.0.extract.trunc87.i.i731 = trunc i64 %.sroa.30.sroa.16.0.extract.shift86.i.i730 to i16
  %.sroa.30.sroa.17.0.extract.shift106.i.i732 = lshr i64 %.sroa.77.sroa.8.i.sroa.0.0.copyload455.i.i.i, 48
  %.sroa.30.sroa.17.0.extract.trunc107.i.i733 = trunc nuw i64 %.sroa.30.sroa.17.0.extract.shift106.i.i732 to i16
  %i.aqm = ptrtoint ptr %.sroa.77.sroa.8.i.sroa.6.0.copyload458.i.i.i to i64
  br label %bb.mu

.loopexit557.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i676, %middle.block4764, %.loopexit.i.i.i.i674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !303180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !303159
  %.sroa.30.sroa.0.0.extract.trunc28.i.i679 = trunc i64 %.sroa.04.0.copyload.i.i.i.i673 to i8
  %.sroa.30.sroa.14.0.extract.shift44.i.i680 = lshr i64 %.sroa.04.0.copyload.i.i.i.i673, 8
  %.sroa.30.sroa.14.0.extract.trunc45.i.i681 = trunc i64 %.sroa.30.sroa.14.0.extract.shift44.i.i680 to i8
  %.sroa.30.sroa.15.0.extract.shift64.i.i682 = lshr i64 %.sroa.04.0.copyload.i.i.i.i673, 16
  %.sroa.30.sroa.15.0.extract.trunc65.i.i683 = trunc i64 %.sroa.30.sroa.15.0.extract.shift64.i.i682 to i16
  %.sroa.30.sroa.16.0.extract.shift84.i.i684 = lshr i64 %.sroa.04.0.copyload.i.i.i.i673, 32
  %.sroa.30.sroa.16.0.extract.trunc85.i.i685 = trunc i64 %.sroa.30.sroa.16.0.extract.shift84.i.i684 to i16
  %.sroa.30.sroa.17.0.extract.shift104.i.i686 = lshr i64 %.sroa.04.0.copyload.i.i.i.i673, 48
  %.sroa.30.sroa.17.0.extract.trunc105.i.i687 = trunc nuw i64 %.sroa.30.sroa.17.0.extract.shift104.i.i686 to i16
  %i.aqn = ptrtoint ptr %.val62.i.i.i.i669.ph to i64
  br label %bb.mu

bb.mu:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit322.i.i.i", %.loopexit557.i.i.i, %bb.mt
  %.sroa.16.sroa.16.1.i.i365 = phi i32 [ %.sroa.16.sroa.16.0.i.i346, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit322.i.i.i" ], [ %.sroa.16.sroa.16.0.extract.trunc126.i.i724, %bb.mt ], [ 0, %.loopexit557.i.i.i ] ; 2 uses
  %.sroa.16.sroa.0.1.i.i366 = phi i32 [ %.sroa.16.sroa.0.0.i.i347, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit322.i.i.i" ], [ %.sroa.16.sroa.0.0.extract.trunc114.i.i722, %bb.mt ], [ 0, %.loopexit557.i.i.i ] ; 2 uses
  %.sroa.30.sroa.17.1.i.i367 = phi i16 [ %.sroa.30.sroa.17.0.i.i348, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit322.i.i.i" ], [ %.sroa.30.sroa.17.0.extract.trunc107.i.i733, %bb.mt ], [ %.sroa.30.sroa.17.0.extract.trunc105.i.i687, %.loopexit557.i.i.i ] ; 2 uses
  %.sroa.30.sroa.16.1.i.i368 = phi i16 [ %.sroa.30.sroa.16.0.i.i349, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit322.i.i.i" ], [ %.sroa.30.sroa.16.0.extract.trunc87.i.i731, %bb.mt ], [ %.sroa.30.sroa.16.0.extract.trunc85.i.i685, %.loopexit557.i.i.i ] ; 2 uses
  %.sroa.30.sroa.15.1.i.i369 = phi i16 [ %.sroa.30.sroa.15.0.i.i350, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit322.i.i.i" ], [ %.sroa.30.sroa.15.0.extract.trunc67.i.i729, %bb.mt ], [ %.sroa.30.sroa.15.0.extract.trunc65.i.i683, %.loopexit557.i.i.i ] ; 2 uses
  %.sroa.30.sroa.14.1.i.i370 = phi i8 [ %.sroa.30.sroa.14.0.i.i351, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit322.i.i.i" ], [ %.sroa.30.sroa.14.0.extract.trunc47.i.i727, %bb.mt ], [ %.sroa.30.sroa.14.0.extract.trunc45.i.i681, %.loopexit557.i.i.i ] ; 2 uses
  %.sroa.30.sroa.0.1.i.i371 = phi i8 [ %.sroa.30.sroa.0.0.i.i352, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit322.i.i.i" ], [ %.sroa.30.sroa.0.0.extract.trunc29.i.i725, %bb.mt ], [ %.sroa.30.sroa.0.0.extract.trunc28.i.i679, %.loopexit557.i.i.i ] ; 2 uses
  %.sroa.47.1.i.i372 = phi i64 [ %.sroa.47.0.i.i353, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit322.i.i.i" ], [ %.sroa.737.0.copyload.i.i.i.i720, %bb.mt ], [ %.sroa.65.0.copyload.i.i.i.i668.ph, %.loopexit557.i.i.i ] ; 2 uses
  %.sroa.41.1.i.i373 = phi i64 [ %.sroa.41.0.i.i354, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit322.i.i.i" ], [ %i.aqm, %bb.mt ], [ %i.aqn, %.loopexit557.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i374 = phi i64 [ %.sroa.0.0.i82.i355, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit322.i.i.i" ], [ %i.aoc, %bb.mt ], [ -9223372036854775796, %.loopexit557.i.i.i ] ; 2 uses
  %.val259.i.i.i375 = load i64, ptr %i.aa, align 8, !range !1428, !noalias !303159, !noundef !10 ; 2 uses
  %switch549.i.i.i = icmp sgt i64 %.val259.i.i.i375, 0
  br i1 %switch549.i.i.i, label %bb.mv, label %"_ZN6hannoy6reader15Reader$LT$D$GT$11nns_by_item17hefd0f487a965de2aE.exit.i.i"

bb.mv:                                            ; preds = %bb.mu
  %.val260.i.i.i425 = load ptr, ptr %i.aif, align 8, !noalias !303159, !nonnull !10, !noundef !10
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val260.i.i.i425, i64 noundef %.val259.i.i.i375, i64 noundef range(i64 1, -9223372036854775807) 1) #101, !noalias !303237
  br label %"_ZN6hannoy6reader15Reader$LT$D$GT$11nns_by_item17hefd0f487a965de2aE.exit.i.i"

"_ZN4core6option15Option$LT$T$GT$6filter17ha05b2b9ff38b09f2E.exit.thread.i.i.i": ; preds = %"_ZN6hannoy6reader15Reader$LT$D$GT$11nns_by_item28_$u7b$$u7b$closure$u7d$$u7d$17h3f36389436c4d029E.exit.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit.i.i.i.i.i.i326", %.noexc86.i311
  %..i.i.i327 = phi ptr [ %5, %"_ZN6hannoy6reader15Reader$LT$D$GT$11nns_by_item28_$u7b$$u7b$closure$u7d$$u7d$17h3f36389436c4d029E.exit.i.i.i.i" ], [ %5, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit.i.i.i.i.i.i326" ], [ %i.agv, %.noexc86.i311 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !303159
  store i64 0, ptr %i.z, align 8, !noalias !303159
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4112.0..sroa_idx.i.i.i199, align 8, !noalias !303159
  store i64 0, ptr %.sroa.5113.0..sroa_idx.i.i.i200, align 8, !noalias !303159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !303159
  invoke void @"_ZN7roaring6bitmap8inherent79_$LT$impl$u20$core..clone..Clone$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$5clone17h13885d2b824b4693E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %..i.i.i327)
          to label %bb.na unwind label %bb.mz, !noalias !303160

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit848": ; preds = %bb.nk, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i846", %bb.mz
  %.pn242.pn.i.i.i328 = phi { ptr, i32 } [ %i.aqw, %bb.mz ], [ %.pn242.i.i.i332, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i846" ], [ %.pn242.i.i.i332, %bb.nk ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !303240)
  call void @llvm.experimental.noalias.scope.decl(metadata !303243), !noalias !303160
  %.val4.i.i849 = load ptr, ptr %.sroa.4112.0..sroa_idx.i.i.i199, align 8, !alias.scope !303246, !noalias !303160, !nonnull !10, !noundef !10 ; 2 uses
  %.val5.i.i850 = load i64, ptr %.sroa.5113.0..sroa_idx.i.i.i200, align 8, !alias.scope !303246, !noalias !303160, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !303247), !noalias !303160
  %i.aqo = icmp eq i64 %.val5.i.i850, 0
  br i1 %i.aqo, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i856", label %.lr.ph.i.i.i.i851

.lr.ph.i.i.i.i851:                                ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit848", %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i855"
  %.sroa.0.010.i.i.i.i852 = phi i64 [ %i.aqq, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i855" ], [ 0, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit848" ] ; 2 uses
  %i.aqp = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i849, i64 %.sroa.0.010.i.i.i.i852 ; 2 uses
  %i.aqq = add nuw i64 %.sroa.0.010.i.i.i.i852, 1 ; 2 uses
  %.val8.i.i.i.i853 = load i64, ptr %i.aqp, align 8, !range !1428, !alias.scope !303247, !noalias !303250, !noundef !10 ; 2 uses
  %i.aqr = getelementptr i8, ptr %i.aqp, i64 8
  %.val9.i.i.i.i854 = load ptr, ptr %i.aqr, align 8, !alias.scope !303247, !noalias !303250 ; 4 uses
  switch i64 %.val8.i.i.i.i853, label %bb.mw [
    i64 -9223372036854775808, label %bb.mx
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i855"
  ]

bb.mw:                                            ; preds = %.lr.ph.i.i.i.i851
  %i.aqs = shl nuw i64 %.val8.i.i.i.i853, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i854) ], !noalias !303160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i854, i64 noundef %i.aqs, i64 noundef range(i64 1, -9223372036854775807) 2) #101, !noalias !303251
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i855"

bb.mx:                                            ; preds = %.lr.ph.i.i.i.i851
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i854) ], !noalias !303160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i854, i64 noundef 8192, i64 noundef 8) #101, !noalias !303251
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i855"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i855": ; preds = %bb.mx, %bb.mw, %.lr.ph.i.i.i.i851
  %i.aqt = icmp eq i64 %i.aqq, %.val5.i.i850
  br i1 %i.aqt, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i856", label %.lr.ph.i.i.i.i851

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i856": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i855", %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit848"
  %.val.i.i857 = load i64, ptr %i.z, align 8, !range !180, !alias.scope !303246, !noalias !303160, !noundef !10 ; 2 uses
  %i.aqu = icmp eq i64 %.val.i.i857, 0
  br i1 %i.aqu, label %.body.i.i.i314, label %bb.my

bb.my:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i856"
  %i.aqv = shl nuw i64 %.val.i.i857, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i849, i64 noundef %i.aqv, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !303250
  br label %.body.i.i.i314

bb.mz:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6filter17ha05b2b9ff38b09f2E.exit.thread.i.i.i"
  %i.aqw = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit848"

bb.na:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6filter17ha05b2b9ff38b09f2E.exit.thread.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !303252)
  %i.aqx = load ptr, ptr %i.ahk, align 8, !alias.scope !303252, !noalias !303159, !nonnull !10, !noundef !10 ; 2 uses
  %i.aqy = load i64, ptr %i.ahl, align 8, !alias.scope !303252, !noalias !303159, !noundef !10 ; 8 uses
  switch i64 %i.aqy, label %.lr.ph.i.i.i287.i.i.i [
    i64 0, label %bb.nl
    i64 1, label %._crit_edge.i.i.i285.i.i.i
  ]

._crit_edge.i.i.i285.i.i.i:                       ; preds = %.lr.ph.i.i.i287.i.i.i, %bb.na
  %.sroa.05.0.lcssa.i.i.i.i.i.i329 = phi i64 [ 0, %bb.na ], [ %i.arj, %.lr.ph.i.i.i287.i.i.i ] ; 4 uses
  %i.aqz = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i.i.i329, %i.aqy
  call void @llvm.assume(i1 %i.aqz)
  %i.ara = getelementptr inbounds nuw [32 x i8], ptr %i.aqx, i64 %.sroa.05.0.lcssa.i.i.i.i.i.i329 ; 7 uses
  %i.arb = getelementptr i8, ptr %i.ara, i64 24
  %.val20.i.i.i.i.i.i330 = load i16, ptr %i.arb, align 8, !alias.scope !303255, !noalias !303260, !noundef !10 ; 2 uses
  %i.arc = icmp eq i16 %.val20.i.i.i.i.i.i330, %i.ahi
  br i1 %i.arc, label %bb.nc, label %bb.nb

.lr.ph.i.i.i287.i.i.i:                            ; preds = %bb.na, %.lr.ph.i.i.i287.i.i.i
  %.sroa.01.025.i.i.i.i.i.i659 = phi i64 [ %i.ark, %.lr.ph.i.i.i287.i.i.i ], [ %i.aqy, %bb.na ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i.i660 = phi i64 [ %i.arj, %.lr.ph.i.i.i287.i.i.i ], [ 0, %bb.na ] ; 2 uses
  %i.ard = lshr i64 %.sroa.01.025.i.i.i.i.i.i659, 1 ; 2 uses
  %i.are = add i64 %i.ard, %.sroa.05.024.i.i.i.i.i.i660 ; 3 uses
  %i.arf = icmp ult i64 %i.are, %i.aqy
  call void @llvm.assume(i1 %i.arf)
  %i.arg = getelementptr inbounds nuw [32 x i8], ptr %i.aqx, i64 %i.are
  %i.arh = getelementptr i8, ptr %i.arg, i64 24
  %.val22.i.i.i.i.i.i661 = load i16, ptr %i.arh, align 8, !alias.scope !303255, !noalias !303260, !noundef !10
  %i.ari = icmp ugt i16 %.val22.i.i.i.i.i.i661, %i.ahi
  %i.arj = select i1 %i.ari, i64 %.sroa.05.024.i.i.i.i.i.i660, i64 %i.are, !unpredictable !10 ; 2 uses
  %i.ark = sub nuw i64 %.sroa.01.025.i.i.i.i.i.i659, %i.ard ; 2 uses
  %i.arl = icmp ugt i64 %i.ark, 1
  br i1 %i.arl, label %.lr.ph.i.i.i287.i.i.i, label %._crit_edge.i.i.i285.i.i.i

bb.nb:                                            ; preds = %._crit_edge.i.i.i285.i.i.i
  %i.arm = icmp ult i16 %.val20.i.i.i.i.i.i330, %i.ahi
  %i.arn = zext i1 %i.arm to i64
  %i.aro = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i.i.i329, %i.arn
  %i.arp = icmp ule i64 %i.aro, %i.aqy
  call void @llvm.assume(i1 %i.arp)
  br label %bb.nl

bb.nc:                                            ; preds = %._crit_edge.i.i.i285.i.i.i
  %i.arq = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ara, i16 noundef %i.ahj)
          to label %.noexc288.i.i.i unwind label %.loopexit65.i653, !noalias !303160

.noexc288.i.i.i:                                  ; preds = %bb.nc
  br i1 %i.arq, label %bb.nd, label %bb.nl

bb.nd:                                            ; preds = %.noexc288.i.i.i
  %i.arr = load i64, ptr %i.ara, align 8, !range !1428, !noalias !303262, !noundef !10 ; 3 uses
  %i.ars = icmp eq i64 %i.arr, -9223372036854775808
  %i.art = getelementptr inbounds nuw i8, ptr %i.ara, i64 16
  %i.aru = load i64, ptr %i.art, align 8, !noalias !303262, !noundef !10 ; 2 uses
  br i1 %i.ars, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.arv = icmp ult i64 %i.aru, 4611686018427387904
  call void @llvm.assume(i1 %i.arv)
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %.sroa.03.0.in.i.i.i.i655 = icmp eq i64 %i.aru, 0
  br i1 %.sroa.03.0.in.i.i.i.i655, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i.i.i.i656", label %bb.nl

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i.i.i.i656": ; preds = %bb.nf
  call void @llvm.experimental.noalias.scope.decl(metadata !303263)
  %i.arw = icmp ult i64 %i.aqy, 288230376151711744
  call void @llvm.assume(i1 %i.arw)
  %.sroa.4.0..sroa_idx.i.i.i.i657 = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  %.sroa.4.0.copyload.i.i.i.i658 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i657, align 8, !noalias !303266 ; 4 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %i.ara, i64 32
  %i.ary = xor i64 %.sroa.05.0.lcssa.i.i.i.i.i.i329, -1
  %i.arz = add nsw i64 %i.aqy, %i.ary
  %i.asa = shl nuw nsw i64 %i.arz, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ara, ptr nonnull align 8 %i.arx, i64 %i.asa, i1 false), !noalias !303267
  %i.asb = add nsw i64 %i.aqy, -1
  store i64 %i.asb, ptr %i.ahl, align 8, !alias.scope !303269, !noalias !303270
  switch i64 %i.arr, label %bb.ng [
    i64 -9223372036854775808, label %bb.nh
    i64 0, label %bb.nl
  ]

bb.ng:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i.i.i.i656"
  %i.asc = shl nuw i64 %i.arr, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i658) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i658, i64 noundef %i.asc, i64 noundef range(i64 1, -9223372036854775807) 2) #101, !noalias !303262
  br label %bb.nl

bb.nh:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i.i.i.i656"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i658) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i658, i64 noundef 8192, i64 noundef 8) #101, !noalias !303262
  br label %bb.nl

"_ZN4core3ptr44drop_in_place$LT$hannoy..reader..Visitor$GT$17h59c02ffe08f0f3c7E.exit.i.i.i331": ; preds = %.thread494.i.i.body.i, %.loopexit.split-lp66.i651, %.loopexit65.i653
  %.pn242.i.i.i332 = phi { ptr, i32 } [ %.pn240500.i.i.i, %.thread494.i.i.body.i ], [ %lpad.loopexit67.i654, %.loopexit65.i653 ], [ %lpad.loopexit.split-lp68.i652, %.loopexit.split-lp66.i651 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !303271)
  call void @llvm.experimental.noalias.scope.decl(metadata !303274), !noalias !303160
  %.val4.i.i839 = load ptr, ptr %i.ahk, align 8, !alias.scope !303277, !noalias !303160, !nonnull !10, !noundef !10 ; 2 uses
  %.val5.i.i840 = load i64, ptr %i.ahl, align 8, !alias.scope !303277, !noalias !303160, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !303278), !noalias !303160
  %i.asd = icmp eq i64 %.val5.i.i840, 0
  br i1 %i.asd, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i846", label %.lr.ph.i.i.i.i841

.lr.ph.i.i.i.i841:                                ; preds = %"_ZN4core3ptr44drop_in_place$LT$hannoy..reader..Visitor$GT$17h59c02ffe08f0f3c7E.exit.i.i.i331", %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i845"
  %.sroa.0.010.i.i.i.i842 = phi i64 [ %i.asf, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i845" ], [ 0, %"_ZN4core3ptr44drop_in_place$LT$hannoy..reader..Visitor$GT$17h59c02ffe08f0f3c7E.exit.i.i.i331" ] ; 2 uses
  %i.ase = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i839, i64 %.sroa.0.010.i.i.i.i842 ; 2 uses
  %i.asf = add nuw i64 %.sroa.0.010.i.i.i.i842, 1 ; 2 uses
  %.val8.i.i.i.i843 = load i64, ptr %i.ase, align 8, !range !1428, !alias.scope !303278, !noalias !303281, !noundef !10 ; 2 uses
  %i.asg = getelementptr i8, ptr %i.ase, i64 8
  %.val9.i.i.i.i844 = load ptr, ptr %i.asg, align 8, !alias.scope !303278, !noalias !303281 ; 4 uses
  switch i64 %.val8.i.i.i.i843, label %bb.ni [
    i64 -9223372036854775808, label %bb.nj
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i845"
  ]

bb.ni:                                            ; preds = %.lr.ph.i.i.i.i841
  %i.ash = shl nuw i64 %.val8.i.i.i.i843, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i844) ], !noalias !303160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i844, i64 noundef %i.ash, i64 noundef range(i64 1, -9223372036854775807) 2) #101, !noalias !303282
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i845"

bb.nj:                                            ; preds = %.lr.ph.i.i.i.i841
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i844) ], !noalias !303160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i844, i64 noundef 8192, i64 noundef 8) #101, !noalias !303282
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i845"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i845": ; preds = %bb.nj, %bb.ni, %.lr.ph.i.i.i.i841
  %i.asi = icmp eq i64 %i.asf, %.val5.i.i840
  br i1 %i.asi, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i846", label %.lr.ph.i.i.i.i841

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i846": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE.exit.i.i.i.i845", %"_ZN4core3ptr44drop_in_place$LT$hannoy..reader..Visitor$GT$17h59c02ffe08f0f3c7E.exit.i.i.i331"
  %.val.i.i847 = load i64, ptr %i.y, align 8, !range !180, !alias.scope !303277, !noalias !303160, !noundef !10 ; 2 uses
  %i.asj = icmp eq i64 %.val.i.i847, 0
  br i1 %i.asj, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit848", label %bb.nk

bb.nk:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h644353cdfceca5ecE.exit.i.i846"
  %i.ask = shl nuw i64 %.val.i.i847, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i839, i64 noundef %i.ask, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !303281
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E.exit848"

.loopexit65.i653:                                 ; preds = %bb.nc
  %lpad.loopexit67.i654 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr44drop_in_place$LT$hannoy..reader..Visitor$GT$17h59c02ffe08f0f3c7E.exit.i.i.i331"

.loopexit.split-lp66.i651:                        ; preds = %bb.nm
  %lpad.loopexit.split-lp68.i652 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr44drop_in_place$LT$hannoy..reader..Visitor$GT$17h59c02ffe08f0f3c7E.exit.i.i.i331"

bb.nl:                                            ; preds = %bb.nh, %bb.ng, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i.i.i.i656", %bb.nf, %.noexc288.i.i.i, %bb.nb, %bb.na
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !303159
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101, !noalias !303160
  %i.asl = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef 4) #101, !noalias !303160 ; 12 uses
  %i.asm = icmp eq ptr %i.asl, null
  br i1 %i.asm, label %bb.nm, label %bb.nn, !prof !59

bb.nm:                                            ; preds = %bb.nl
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 4, i64 noundef 4) #106
          to label %bb.qd unwind label %.loopexit.split-lp66.i651, !noalias !303160

bb.nn:                                            ; preds = %bb.nl
  store i32 %3, ptr %i.asl, align 4, !noalias !303160
  store i64 1, ptr %i.x, align 8, !noalias !303159
  store ptr %i.asl, ptr %.sroa.4.0..sroa_idx.i.i.i201, align 8, !noalias !303159
  store i64 1, ptr %.sroa.5328.0..sroa_idx.i.i.i, align 8, !noalias !303159
  store i64 0, ptr %i.ahm, align 8, !noalias !303159
  store i64 %.sroa.0.0.i77.i183, ptr %i.ahn, align 8, !noalias !303159
  store ptr %i.y, ptr %i.aho, align 8, !noalias !303159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !303159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !303159
  invoke fastcc void @_ZN6hannoy6reader7Visitor5visit17hb52e147b93b0d694E(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef align 8 dereferenceable(24) %i.z)
          to label %bb.no unwind label %.thread494.i.i.i, !noalias !303283

.thread494.i.i.body.i:                            ; preds = %bb.oi, %.body145.i428, %bb.of, %.body.i.i612, %.thread494.i.i.i
  %.pn240500.i.i.i = phi { ptr, i32 } [ %.pn238.i.i.i430, %.body145.i428 ], [ %.pn238.i.i.i430, %bb.oi ], [ %i.asn, %.thread494.i.i.i ], [ %eh.lpad-body.i.i613, %bb.of ], [ %eh.lpad-body.i.i613, %.body.i.i612 ]
  %.val272382498.i.i.i = phi ptr [ %.val272383.i.i.i429, %.body145.i428 ], [ %.val272383.i.i.i429, %bb.oi ], [ %i.asl, %.thread494.i.i.i ], [ %i.asl, %bb.of ], [ %i.asl, %.body.i.i612 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val272382498.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val272382498.i.i.i, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #101, !noalias !303284
  br label %"_ZN4core3ptr44drop_in_place$LT$hannoy..reader..Visitor$GT$17h59c02ffe08f0f3c7E.exit.i.i.i331"

.thread494.i.i.i:                                 ; preds = %bb.nn
  %i.asn = landingpad { ptr, i32 }
          cleanup
  br label %.thread494.i.i.body.i

bb.no:                                            ; preds = %bb.nn
  %i.aso = load i64, ptr %i.v, align 8, !range !25532, !noalias !303159, !noundef !10 ; 2 uses
  %.not227.i.i.i333 = icmp eq i64 %i.aso, -9223372036854775796
  %.sroa.0440.0.copyload.i.i.i = load i64, ptr %i.ahp, align 8, !noalias !303159 ; 3 uses
  %.sroa.4441.0.copyload.i.i.i = load i64, ptr %.sroa.4441.0..sroa_idx.i.i.i, align 8, !noalias !303159 ; 8 uses
  %.sroa.5442.0.copyload.i.i.i = load ptr, ptr %.sroa.5442.0..sroa_idx.i.i.i, align 8, !noalias !303159 ; 3 uses
  %.sroa.6443.0.copyload.i.i.i = load i64, ptr %.sroa.6443.0..sroa_idx.i.i.i, align 8, !noalias !303159 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !303159
  br i1 %.not227.i.i.i333, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %.sroa.16.sroa.0.0.extract.trunc112.i.i334 = trunc i64 %.sroa.0440.0.copyload.i.i.i to i32
  %.sroa.16.sroa.16.0.extract.shift121.i.i335 = lshr i64 %.sroa.0440.0.copyload.i.i.i, 32
  %.sroa.16.sroa.16.0.extract.trunc122.i.i336 = trunc nuw i64 %.sroa.16.sroa.16.0.extract.shift121.i.i335 to i32
  %.sroa.30.sroa.0.0.extract.trunc26.i.i337 = trunc i64 %.sroa.4441.0.copyload.i.i.i to i8
  %.sroa.30.sroa.14.0.extract.shift40.i.i338 = lshr i64 %.sroa.4441.0.copyload.i.i.i, 8
  %.sroa.30.sroa.14.0.extract.trunc41.i.i339 = trunc i64 %.sroa.30.sroa.14.0.extract.shift40.i.i338 to i8
  %.sroa.30.sroa.15.0.extract.shift60.i.i340 = lshr i64 %.sroa.4441.0.copyload.i.i.i, 16
  %.sroa.30.sroa.15.0.extract.trunc61.i.i341 = trunc i64 %.sroa.30.sroa.15.0.extract.shift60.i.i340 to i16
  %.sroa.30.sroa.16.0.extract.shift80.i.i342 = lshr i64 %.sroa.4441.0.copyload.i.i.i, 32
  %.sroa.30.sroa.16.0.extract.trunc81.i.i343 = trunc i64 %.sroa.30.sroa.16.0.extract.shift80.i.i342 to i16
  %.sroa.30.sroa.17.0.extract.shift100.i.i344 = lshr i64 %.sroa.4441.0.copyload.i.i.i, 48
  %.sroa.30.sroa.17.0.extract.trunc101.i.i345 = trunc nuw i64 %.sroa.30.sroa.17.0.extract.shift100.i.i344 to i16
  %i.asp = ptrtoint ptr %.sroa.5442.0.copyload.i.i.i to i64
  br label %bb.qp

bb.nq:                                            ; preds = %bb.no
  %i.asq = trunc nuw i64 %.sroa.0440.0.copyload.i.i.i to i1
  br i1 %i.asq, label %bb.nr, label %bb.oh

bb.nr:                                            ; preds = %bb.nq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !303287
  store i64 %.sroa.4441.0.copyload.i.i.i, ptr %i.g, align 8, !noalias !303291
  store ptr %.sroa.5442.0.copyload.i.i.i, ptr %.sroa.7160.8..sroa_idx161.i.i218, align 8, !noalias !303291
  store i64 %.sroa.6443.0.copyload.i.i.i, ptr %.sroa.8.8..sroa_idx163.i.i219, align 8, !noalias !303291
  call void @llvm.experimental.noalias.scope.decl(metadata !303292)
  call void @llvm.experimental.noalias.scope.decl(metadata !303295), !noalias !303298
  call void @llvm.experimental.noalias.scope.decl(metadata !303299), !noalias !303298
  call void @llvm.experimental.noalias.scope.decl(metadata !303302), !noalias !303298
  call void @llvm.experimental.noalias.scope.decl(metadata !303305), !noalias !303298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !303308
  br i1 %i.ahy, label %_ZN4core4iter6traits8iterator8Iterator7collect17hb46e6233350b0fd2E.exit.i.i, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !303314
  invoke fastcc void @"_ZN90_$LT$min_max_heap..DrainAsc$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h69e85afd1ac8c8d2E"(ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.b, ptr nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc.i.i.i.i.i.i616 unwind label %bb.nt, !noalias !303320

.noexc.i.i.i.i.i.i616:                            ; preds = %bb.ns
  %i.asr = load i32, ptr %i.b, align 4, !range !2759, !noalias !303314, !noundef !10
  %i.ass = trunc nuw i32 %i.asr to i1
  br i1 %i.ass, label %bb.nu, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h03dc49b86397fb7cE.exit.i.i.i.i.i.i"

bb.nt:                                            ; preds = %bb.ns
  %i.ast = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i612

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h03dc49b86397fb7cE.exit.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !303314
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hb46e6233350b0fd2E.exit.i.i

bb.nu:                                            ; preds = %.noexc.i.i.i.i.i.i616
  %i.asu = load float, ptr %i.aig, align 4, !noalias !303314, !noundef !10
  %i.asv = load i32, ptr %i.aih, align 4, !noalias !303314, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !303314
  br i1 %i.aic, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i632, label %bb.nw

bb.nv:                                            ; preds = %bb.nx
  %i.asw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i612

bb.nw:                                            ; preds = %bb.nu
  %i.asx = load i64, ptr %.sroa.8.8..sroa_idx163.i.i219, align 8, !alias.scope !303321, !noalias !303322, !noundef !10 ; 2 uses
  %i.asy = icmp ult i64 %i.asx, 1152921504606846976
  call void @llvm.assume(i1 %i.asy), !noalias !303298
  %.sroa.0.0.i.i.i.i.i.i.i166.i631 = call i64 @llvm.umin.i64(i64 %i.ahz, i64 %i.asx) ; 2 uses
  %i.asz = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i166.i631, i64 3)
  %i.ata = add nuw nsw i64 %i.asz, 1              ; 2 uses
  %i.atb = shl nuw i64 %i.ata, 3                  ; 2 uses
  %i.atc = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i166.i631, 1152921504606846975
  br i1 %i.atc, label %bb.nx, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i632, !prof !72614

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i632: ; preds = %bb.nw, %bb.nu
  %i.atd = phi i64 [ %i.atb, %bb.nw ], [ 32, %bb.nu ] ; 2 uses
  %.sroa.0.0.i.sink.i26.i.i.i.i.i.i633 = phi i64 [ %i.ata, %bb.nw ], [ 4, %bb.nu ]
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101, !noalias !303329
end_hunk_18
begin_hunk_19_@_ZN5milli9documents8geo_sort11next_bucket17habb0ac4a3bec081cE:bb.a
bb.l:                                             ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.thread"
  br i1 %i.ak, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$8pop_back17h58f0ad9eef5d7359E.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i64, ptr %i.m, align 8, !alias.scope !323312, !noalias !323315, !noundef !10 ; 2 uses
  %i.as = add i64 %i.ar, 1                        ; 2 uses
  %i.at = load i64, ptr %8, align 8, !range !180, !alias.scope !323312, !noalias !323315, !noundef !10 ; 4 uses
  %.not.i76 = icmp ult i64 %i.as, %i.at
  %i.au = select i1 %.not.i76, i64 0, i64 %i.at
  %.sroa.0.0.i = sub nuw i64 %i.as, %i.au         ; 2 uses
  store i64 %.sroa.0.0.i, ptr %i.m, align 8, !alias.scope !323312, !noalias !323315
  %i.av = add i64 %i.aj, -1                       ; 3 uses
  store i64 %i.av, ptr %i.l, align 8, !alias.scope !323312, !noalias !323315
  %i.aw = icmp ult i64 %i.av, %i.at
  call void @llvm.assume(i1 %i.aw)
  br label %bb.n

.loopexit.loopexit:                               ; preds = %bb.p, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$8pop_back17h58f0ad9eef5d7359E.exit"
  %lpad.loopexit388 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp.loopexit:             ; preds = %bb.ae, %bb.q, %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp.loopexit.split-lp:    ; preds = %bb.t, %bb.w
  %lpad.loopexit.split-lp391 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %bb.ba, %bb.ar, %bb.at
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp.loopexit.split-lp, %.loopexit.loopexit.split-lp.loopexit, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit388, %.loopexit.loopexit ], [ %lpad.loopexit, %.loopexit.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp391, %.loopexit.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #107
  br label %bb.d

bb.n:                                             ; preds = %bb.k, %bb.m
  %.sroa.01.0.i.sink = phi i64 [ %.sroa.01.0.i, %bb.k ], [ %i.ar, %bb.m ]
  %i.ax = phi i64 [ %i.ao, %bb.k ], [ %.sroa.0.0.i, %bb.m ] ; 2 uses
  %i.ay = phi i64 [ %i.am, %bb.k ], [ %i.at, %bb.m ] ; 3 uses
  %i.az = phi i64 [ %i.al, %bb.k ], [ %i.av, %bb.m ] ; 3 uses
  %i.ba = load ptr, ptr %i.n, align 8, !noalias !10, !nonnull !10, !noundef !10 ; 3 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.sroa.01.0.i.sink ; 2 uses
  %.sroa.8.0.ph = load i32, ptr %i.bb, align 8, !noalias !10 ; 6 uses
  %.sroa.11.sroa.7.0.ph.in = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bc = load <2 x double>, ptr %.sroa.11.sroa.7.0.ph.in, align 8, !noalias !10 ; 6 uses
  %i.bd = lshr i32 %.sroa.8.0.ph, 16
  %i.be = trunc nuw i32 %i.bd to i16              ; 9 uses
  %i.bf = trunc i32 %.sroa.8.0.ph to i16          ; 3 uses
  switch i64 %.ph386, label %.lr.ph.i.i.i [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.thread.backedge"
    i64 1, label %._crit_edge.i.i.i
  ]

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.thread.backedge": ; preds = %bb.n, %bb.o, %bb.ax, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit"
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.thread"

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.n
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.n ], [ %i.bq, %.lr.ph.i.i.i ] ; 3 uses
  %i.bg = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %.ph386
  call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %.val20.i.i.i = load i16, ptr %i.bi, align 8, !alias.scope !323317, !noalias !323322, !noundef !10 ; 2 uses
  %i.bj = icmp eq i16 %.val20.i.i.i, %i.be
  br i1 %i.bj, label %bb.p, label %bb.o

.lr.ph.i.i.i:                                     ; preds = %bb.n, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i ], [ %.ph386, %bb.n ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.bk = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, %.sroa.05.024.i.i.i ; 3 uses
  %i.bm = icmp ult i64 %i.bl, %.ph386
  call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.bn, i64 24
  %.val22.i.i.i = load i16, ptr %i.bo, align 8, !alias.scope !323317, !noalias !323322, !noundef !10
  %i.bp = icmp ugt i16 %.val22.i.i.i, %i.be
  %i.bq = select i1 %i.bp, i64 %.sroa.05.024.i.i.i, i64 %i.bl, !unpredictable !10 ; 2 uses
  %i.br = sub nuw nsw i64 %.sroa.01.025.i.i.i, %i.bk ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bt = icmp ult i16 %.val20.i.i.i, %i.be
  %i.bu = zext i1 %i.bt to i64
  %i.bv = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i, %i.bu
  %i.bw = icmp ule i64 %i.bv, %.ph386
  call void @llvm.assume(i1 %i.bw)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.thread.backedge"

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.bx = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container8contains17h29a1f91ea813ef1eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh, i16 noundef %i.bf)
          to label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit" unwind label %.loopexit.loopexit

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$8pop_back17h58f0ad9eef5d7359E.exit": ; preds = %bb.j, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN5milli9documents8geo_sort10fill_cache17hff97630c6badc74cE(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i64 noundef %i.u, i64 noundef %i.w, i1 noundef zeroext %4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %5, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %6, ptr noalias noundef nonnull align 8 dereferenceable(80) %7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.av unwind label %.loopexit.loopexit

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit": ; preds = %bb.p
  br i1 %i.bx, label %bb.q, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.thread.backedge"

bb.q:                                             ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !323324
  store <2 x double> %i.p, ptr %i.b, align 16, !noalias !323324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !323324
  store <2 x double> %i.bc, ptr %i.a, align 16, !noalias !323324
  %i.by = invoke noundef double @_ZN8geoutils8Location21haversine_distance_to17h1bd7f8abd5ef8adfE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.r unwind label %.loopexit.loopexit.split-lp.loopexit ; 2 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !323324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !323324
  br i1 %.ph385, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = fsub double %.ph.ph, %i.by
  %i.ca = call double @llvm.fabs.f64(double %i.bz)
  %i.cb = fcmp ogt double %i.ca, %i.t
  br i1 %i.cb, label %bb.af, label %bb.ae

bb.t:                                             ; preds = %bb.r
  %i.cc = extractelement <2 x double> %i.bc, i64 0
  %i.cd = invoke fastcc noundef zeroext i1 @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h94eafc541148e8c7E"(ptr noalias noundef align 8 dereferenceable(24) %i.e, i32 noundef %.sroa.8.0.ph)
          to label %bb.u unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !323328)
  %cond158 = icmp eq i64 %.ph386, 1
  br i1 %cond158, label %._crit_edge.i.i.i80, label %.lr.ph.i.i.i84

._crit_edge.i.i.i80:                              ; preds = %.lr.ph.i.i.i84, %bb.u
  %.sroa.05.0.lcssa.i.i.i81 = phi i64 [ 0, %bb.u ], [ %i.cn, %.lr.ph.i.i.i84 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i81 ; 7 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 24
  %.val20.i.i.i82 = load i16, ptr %i.cf, align 8, !alias.scope !323331, !noalias !323336, !noundef !10 ; 2 uses
  %i.cg = icmp eq i16 %.val20.i.i.i82, %i.be
  br i1 %i.cg, label %bb.w, label %bb.v

.lr.ph.i.i.i84:                                   ; preds = %bb.u, %.lr.ph.i.i.i84
  %.sroa.01.025.i.i.i85 = phi i64 [ %i.co, %.lr.ph.i.i.i84 ], [ %.ph386, %bb.u ] ; 2 uses
  %.sroa.05.024.i.i.i86 = phi i64 [ %i.cn, %.lr.ph.i.i.i84 ], [ 0, %bb.u ] ; 2 uses
  %i.ch = lshr i64 %.sroa.01.025.i.i.i85, 1       ; 2 uses
  %i.ci = add nuw nsw i64 %i.ch, %.sroa.05.024.i.i.i86 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %.ph386
  call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %i.ci
  %i.cl = getelementptr i8, ptr %i.ck, i64 24
  %.val22.i.i.i87 = load i16, ptr %i.cl, align 8, !alias.scope !323331, !noalias !323336, !noundef !10
  %i.cm = icmp ugt i16 %.val22.i.i.i87, %i.be
  %i.cn = select i1 %i.cm, i64 %.sroa.05.024.i.i.i86, i64 %i.ci, !unpredictable !10 ; 2 uses
  %i.co = sub nuw nsw i64 %.sroa.01.025.i.i.i85, %i.ch ; 2 uses
  %i.cp = icmp ugt i64 %i.co, 1
  br i1 %i.cp, label %.lr.ph.i.i.i84, label %._crit_edge.i.i.i80

bb.v:                                             ; preds = %._crit_edge.i.i.i80
  %i.cq = icmp ult i16 %.val20.i.i.i82, %i.be
  %i.cr = zext i1 %i.cq to i64
  %i.cs = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i81, %i.cr
  %i.ct = icmp ule i64 %i.cs, %.ph386
  call void @llvm.assume(i1 %i.ct)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.w:                                             ; preds = %._crit_edge.i.i.i80
  %i.cu = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ce, i16 noundef %i.bf)
          to label %.noexc88 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc88:                                         ; preds = %bb.w
  br i1 %i.cu, label %bb.x, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.x:                                             ; preds = %.noexc88
  %i.cv = load i64, ptr %i.ce, align 8, !range !1428, !noalias !323328, !noundef !10 ; 3 uses
  %i.cw = icmp eq i64 %i.cv, -9223372036854775808
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !323328, !noundef !10 ; 2 uses
  br i1 %i.cw, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = icmp ult i64 %i.cy, 4611686018427387904
  call void @llvm.assume(i1 %i.cz)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.03.0.in.i = icmp eq i64 %i.cy, 0
  br i1 %.sroa.03.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i": ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !323338)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !323341 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.db = xor i64 %.sroa.05.0.lcssa.i.i.i81, -1
  %i.dc = add nsw i64 %.ph386, %i.db
  %i.dd = shl nuw nsw i64 %i.dc, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr nonnull align 8 %i.da, i64 %i.dd, i1 false), !noalias !323342
  %i.de = add nsw i64 %.ph386, -1                 ; 7 uses
  store i64 %i.de, ptr %i.h, align 8, !alias.scope !323341, !noalias !323344
  switch i64 %i.cv, label %bb.aa [
    i64 -9223372036854775808, label %bb.ab
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  ]

bb.aa:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i"
  %i.df = shl nuw i64 %i.cv, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.df, i64 noundef range(i64 1, -9223372036854775807) 2) #101, !noalias !323328
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.ab:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef 8192, i64 noundef 8) #101, !noalias !323328
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit": ; preds = %bb.ab, %bb.aa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i", %bb.z, %.noexc88, %bb.v
  %.val5.i.i.pre253 = phi i64 [ %i.de, %bb.ab ], [ %i.de, %bb.aa ], [ %i.de, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i" ], [ %.val5.i.i.pre256.ph, %bb.z ], [ %.val5.i.i.pre256.ph, %.noexc88 ], [ %.val5.i.i.pre256.ph, %bb.v ] ; 2 uses
  %i.dg = phi i64 [ %i.de, %bb.ab ], [ %i.de, %bb.aa ], [ %i.de, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i" ], [ %.ph386, %bb.z ], [ %.ph386, %.noexc88 ], [ %.ph386, %bb.v ]
  %i.dh = load ptr, ptr %.sroa.462.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.di = load i64, ptr %.sroa.563.0..sroa_idx, align 8, !noundef !10 ; 5 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit", label %.preheader161.preheader

.preheader161.preheader:                          ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  %min.iters.check371 = icmp ult i64 %i.di, 5
  br i1 %min.iters.check371, label %.preheader161.preheader384, label %vector.ph372

vector.ph372:                                     ; preds = %.preheader161.preheader
  %i.dk = and i64 %i.di, 3                        ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = select i1 %i.dl, i64 4, i64 %i.dk
  %n.vec373 = sub i64 %i.di, %i.dm                ; 2 uses
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph372
  %index375 = phi i64 [ 0, %vector.ph372 ], [ %index.next378, %vector.body374 ] ; 5 uses
  %vec.phi376 = phi <2 x i64> [ zeroinitializer, %vector.ph372 ], [ %i.ed, %vector.body374 ]
  %vec.phi377 = phi <2 x i64> [ zeroinitializer, %vector.ph372 ], [ %i.ee, %vector.body374 ]
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dh, i64 %index375
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dh, i64 %index375
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.dh, i64 %index375
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.dh, i64 %index375
  %i.dr = getelementptr i8, ptr %i.dn, i64 16
  %i.ds = getelementptr i8, ptr %i.do, i64 48
  %i.dt = getelementptr i8, ptr %i.dp, i64 80
  %i.du = getelementptr i8, ptr %i.dq, i64 112
  %i.dv = load i64, ptr %i.dr, align 8
  %i.dw = load i64, ptr %i.ds, align 8
  %i.dx = insertelement <2 x i64> poison, i64 %i.dv, i64 0
  %i.dy = insertelement <2 x i64> %i.dx, i64 %i.dw, i64 1
  %i.dz = load i64, ptr %i.dt, align 8
  %i.ea = load i64, ptr %i.du, align 8
  %i.eb = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %i.ec = insertelement <2 x i64> %i.eb, i64 %i.ea, i64 1
  %i.ed = add <2 x i64> %i.dy, %vec.phi376        ; 2 uses
  %i.ee = add <2 x i64> %i.ec, %vec.phi377        ; 2 uses
  %index.next378 = add nuw i64 %index375, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next378, %n.vec373
  br i1 %i.ef, label %middle.block379, label %vector.body374, !llvm.loop !323345

middle.block379:                                  ; preds = %vector.body374
  %bin.rdx380 = add <2 x i64> %i.ee, %i.ed
  %i.eg = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx380)
  br label %.preheader161.preheader384

.preheader161.preheader384:                       ; preds = %.preheader161.preheader, %middle.block379
  %.sroa.09.0.i.ph = phi i64 [ 0, %.preheader161.preheader ], [ %n.vec373, %middle.block379 ]
  %.sroa.07.0.i.ph = phi i64 [ 0, %.preheader161.preheader ], [ %i.eg, %middle.block379 ]
  br label %.preheader161

.preheader161:                                    ; preds = %.preheader161.preheader384, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i"
  %.sroa.09.0.i = phi i64 [ %i.em, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i" ], [ %.sroa.09.0.i.ph, %.preheader161.preheader384 ] ; 2 uses
  %.sroa.07.0.i = phi i64 [ %i.el, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i" ], [ %.sroa.07.0.i.ph, %.preheader161.preheader384 ]
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.dh, i64 %.sroa.09.0.i ; 2 uses
  %.val.i = load i64, ptr %i.eh, align 8, !range !1428, !noundef !10
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  %.val19.i = load i64, ptr %i.ei, align 8        ; 2 uses
  %i.ej = icmp eq i64 %.val.i, -9223372036854775808
  br i1 %i.ej, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i", label %bb.ac

bb.ac:                                            ; preds = %.preheader161
  %i.ek = icmp ult i64 %.val19.i, 4611686018427387904
  call void @llvm.assume(i1 %i.ek)
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i": ; preds = %bb.ac, %.preheader161
  %i.el = add i64 %.val19.i, %.sroa.07.0.i        ; 2 uses
  %i.em = add nuw i64 %.sroa.09.0.i, 1            ; 2 uses
  %i.en = icmp eq i64 %i.em, %i.di
  br i1 %i.en, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit", label %.preheader161, !llvm.loop !323346

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i", %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  %.sroa.04.0.i = phi i64 [ 0, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit" ], [ %i.el, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i" ]
  %i.eo = icmp eq i64 %.sroa.04.0.i, %i.r
  %i.ep = extractelement <2 x double> %i.bc, i64 1
  br i1 %i.eo, label %bb.ad, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.thread.outer.outer"

bb.ad:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit"
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x double> %i.bc, ptr %.sroa.538.0..sroa_idx, align 8
  store i64 97, ptr %0, align 8
  br label %bb.f

bb.ae:                                            ; preds = %bb.s
  %i.er = invoke fastcc noundef zeroext i1 @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h94eafc541148e8c7E"(ptr noalias noundef align 8 dereferenceable(24) %i.e, i32 noundef %.sroa.8.0.ph)
          to label %bb.ag unwind label %.loopexit.loopexit.split-lp.loopexit ; 0 uses

bb.af:                                            ; preds = %bb.s
  %i.es = icmp eq i64 %i.az, %i.ay                ; 2 uses
  br i1 %4, label %bb.as, label %bb.aq

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !323347)
  %cond = icmp eq i64 %.ph386, 1
  br i1 %cond, label %._crit_edge.i.i.i89, label %.lr.ph.i.i.i97

._crit_edge.i.i.i89:                              ; preds = %.lr.ph.i.i.i97, %bb.ag
  %.sroa.05.0.lcssa.i.i.i90 = phi i64 [ 0, %bb.ag ], [ %i.fc, %.lr.ph.i.i.i97 ] ; 3 uses
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i90 ; 7 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 24
  %.val20.i.i.i91 = load i16, ptr %i.eu, align 8, !alias.scope !323350, !noalias !323355, !noundef !10 ; 2 uses
  %i.ev = icmp eq i16 %.val20.i.i.i91, %i.be
  br i1 %i.ev, label %bb.ai, label %bb.ah

.lr.ph.i.i.i97:                                   ; preds = %bb.ag, %.lr.ph.i.i.i97
  %.sroa.01.025.i.i.i98 = phi i64 [ %i.fd, %.lr.ph.i.i.i97 ], [ %.ph386, %bb.ag ] ; 2 uses
  %.sroa.05.024.i.i.i99 = phi i64 [ %i.fc, %.lr.ph.i.i.i97 ], [ 0, %bb.ag ] ; 2 uses
  %i.ew = lshr i64 %.sroa.01.025.i.i.i98, 1       ; 2 uses
  %i.ex = add nuw nsw i64 %i.ew, %.sroa.05.024.i.i.i99 ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %.ph386
  call void @llvm.assume(i1 %i.ey)
  %i.ez = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %i.ex
  %i.fa = getelementptr i8, ptr %i.ez, i64 24
  %.val22.i.i.i100 = load i16, ptr %i.fa, align 8, !alias.scope !323350, !noalias !323355, !noundef !10
  %i.fb = icmp ugt i16 %.val22.i.i.i100, %i.be
  %i.fc = select i1 %i.fb, i64 %.sroa.05.024.i.i.i99, i64 %i.ex, !unpredictable !10 ; 2 uses
  %i.fd = sub nuw nsw i64 %.sroa.01.025.i.i.i98, %i.ew ; 2 uses
  %i.fe = icmp ugt i64 %i.fd, 1
  br i1 %i.fe, label %.lr.ph.i.i.i97, label %._crit_edge.i.i.i89

bb.ah:                                            ; preds = %._crit_edge.i.i.i89
  %i.ff = icmp ult i16 %.val20.i.i.i91, %i.be
  %i.fg = zext i1 %i.ff to i64
  %i.fh = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i90, %i.fg
  %i.fi = icmp ule i64 %i.fh, %.ph386
  call void @llvm.assume(i1 %i.fi)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit102"

bb.ai:                                            ; preds = %._crit_edge.i.i.i89
  %i.fj = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.et, i16 noundef %i.bf)
          to label %.noexc101 unwind label %.loopexit.loopexit.split-lp.loopexit

.noexc101:                                        ; preds = %bb.ai
  br i1 %i.fj, label %bb.aj, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit102"

bb.aj:                                            ; preds = %.noexc101
  %i.fk = load i64, ptr %i.et, align 8, !range !1428, !noalias !323347, !noundef !10 ; 3 uses
  %i.fl = icmp eq i64 %i.fk, -9223372036854775808
  %i.fm = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !323347, !noundef !10 ; 2 uses
  br i1 %i.fl, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fo = icmp ult i64 %i.fn, 4611686018427387904
  call void @llvm.assume(i1 %i.fo)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.03.0.in.i93 = icmp eq i64 %i.fn, 0
  br i1 %.sroa.03.0.in.i93, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i94", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit102"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i94": ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !323357)
  %.sroa.4.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.sroa.4.0.copyload.i96 = load ptr, ptr %.sroa.4.0..sroa_idx.i95, align 8, !noalias !323360 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.fq = xor i64 %.sroa.05.0.lcssa.i.i.i90, -1
  %i.fr = add nsw i64 %.ph386, %i.fq
  %i.fs = shl nuw nsw i64 %i.fr, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.et, ptr nonnull align 8 %i.fp, i64 %i.fs, i1 false), !noalias !323361
  %i.ft = add nsw i64 %.ph386, -1                 ; 7 uses
  store i64 %i.ft, ptr %i.h, align 8, !alias.scope !323360, !noalias !323363
  switch i64 %i.fk, label %bb.am [
    i64 -9223372036854775808, label %bb.an
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit102"
  ]

bb.am:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i94"
  %i.fu = shl nuw i64 %i.fk, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i96) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i96, i64 noundef %i.fu, i64 noundef range(i64 1, -9223372036854775807) 2) #101, !noalias !323347
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit102"

bb.an:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i94"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i96) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i96, i64 noundef 8192, i64 noundef 8) #101, !noalias !323347
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit102"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit102": ; preds = %bb.an, %bb.am, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i94", %bb.al, %.noexc101, %bb.ah
  %.val5.i.i.pre254 = phi i64 [ %i.ft, %bb.an ], [ %i.ft, %bb.am ], [ %i.ft, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i94" ], [ %.val5.i.i.pre256.ph, %bb.al ], [ %.val5.i.i.pre256.ph, %.noexc101 ], [ %.val5.i.i.pre256.ph, %bb.ah ] ; 2 uses
  %i.fv = phi i64 [ %i.ft, %bb.an ], [ %i.ft, %bb.am ], [ %i.ft, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit.i94" ], [ %.ph386, %bb.al ], [ %.ph386, %.noexc101 ], [ %.ph386, %bb.ah ]
  %i.fw = load ptr, ptr %.sroa.462.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.fx = load i64, ptr %.sroa.563.0..sroa_idx, align 8, !noundef !10 ; 5 uses
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit109", label %.preheader.preheader

.preheader.preheader:                             ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit102"
  %min.iters.check = icmp ult i64 %i.fx, 5
  br i1 %min.iters.check, label %.preheader.preheader383, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.fz = and i64 %i.fx, 3                        ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 0
  %i.gb = select i1 %i.ga, i64 4, i64 %i.fz
  %n.vec = sub i64 %i.fx, %i.gb                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gs, %vector.body ]
  %vec.phi369 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gt, %vector.body ]
  %i.gc = getelementptr inbounds nuw [32 x i8], ptr %i.fw, i64 %index
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %i.fw, i64 %index
  %i.ge = getelementptr inbounds nuw [32 x i8], ptr %i.fw, i64 %index
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %i.fw, i64 %index
  %i.gg = getelementptr i8, ptr %i.gc, i64 16
  %i.gh = getelementptr i8, ptr %i.gd, i64 48
  %i.gi = getelementptr i8, ptr %i.ge, i64 80
  %i.gj = getelementptr i8, ptr %i.gf, i64 112
  %i.gk = load i64, ptr %i.gg, align 8
  %i.gl = load i64, ptr %i.gh, align 8
  %i.gm = insertelement <2 x i64> poison, i64 %i.gk, i64 0
  %i.gn = insertelement <2 x i64> %i.gm, i64 %i.gl, i64 1
  %i.go = load i64, ptr %i.gi, align 8
  %i.gp = load i64, ptr %i.gj, align 8
  %i.gq = insertelement <2 x i64> poison, i64 %i.go, i64 0
  %i.gr = insertelement <2 x i64> %i.gq, i64 %i.gp, i64 1
  %i.gs = add <2 x i64> %i.gn, %vec.phi           ; 2 uses
  %i.gt = add <2 x i64> %i.gr, %vec.phi369        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %middle.block, label %vector.body, !llvm.loop !323364

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.gt, %i.gs
  %i.gv = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader383

.preheader.preheader383:                          ; preds = %.preheader.preheader, %middle.block
  %.sroa.09.0.i103.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i104.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.gv, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader383, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i107"
  %.sroa.09.0.i103 = phi i64 [ %i.hb, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i107" ], [ %.sroa.09.0.i103.ph, %.preheader.preheader383 ] ; 2 uses
  %.sroa.07.0.i104 = phi i64 [ %i.ha, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i107" ], [ %.sroa.07.0.i104.ph, %.preheader.preheader383 ]
  %i.gw = getelementptr inbounds nuw [32 x i8], ptr %i.fw, i64 %.sroa.09.0.i103 ; 2 uses
  %.val.i105 = load i64, ptr %i.gw, align 8, !range !1428, !noundef !10
  %i.gx = getelementptr i8, ptr %i.gw, i64 16
  %.val19.i106 = load i64, ptr %i.gx, align 8     ; 2 uses
  %i.gy = icmp eq i64 %.val.i105, -9223372036854775808
  br i1 %i.gy, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i107", label %bb.ao

bb.ao:                                            ; preds = %.preheader
  %i.gz = icmp ult i64 %.val19.i106, 4611686018427387904
  call void @llvm.assume(i1 %i.gz)
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i107"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i107": ; preds = %bb.ao, %.preheader
  %i.ha = add i64 %.val19.i106, %.sroa.07.0.i104  ; 2 uses
  %i.hb = add nuw i64 %.sroa.09.0.i103, 1         ; 2 uses
  %i.hc = icmp eq i64 %i.hb, %i.fx
  br i1 %i.hc, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit109", label %.preheader, !llvm.loop !323365

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit109": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i107", %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit102"
  %.sroa.04.0.i108 = phi i64 [ 0, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit102" ], [ %i.ha, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddc29640e70a2f77E.exit.i107" ]
  %i.hd = icmp eq i64 %.sroa.04.0.i108, %i.r
  br i1 %i.hd, label %bb.ap, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.thread.outer"

bb.ap:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h12f05a19f652573bE.exit109"
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.he, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.11.sroa.7.0.ph182.ph.ph, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.526.sroa.4.0..sroa.526.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sroa.11.sroa.8.0.ph189.ph.ph, ptr %.sroa.526.sroa.4.0..sroa.526.0..sroa_idx.sroa_idx, align 8
  store i64 97, ptr %0, align 8
  br label %bb.f

bb.aq:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !323366)
  br i1 %i.es, label %bb.ar, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17hb4c0a90ff32ca7afE.exit"

bb.ar:                                            ; preds = %bb.aq
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h0b56cd9ab9b7c651E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5795)
          to label %.noexc112 unwind label %.loopexit.split-lp

.noexc112:                                        ; preds = %bb.ar
  %.pre.i = load i64, ptr %i.l, align 8, !alias.scope !323366, !noalias !323369
  %.pre6.i = load i64, ptr %8, align 8, !range !180, !alias.scope !323366, !noalias !323369
  %.pre = load i64, ptr %i.m, align 8, !alias.scope !323366, !noalias !323369
  %.pre248 = load ptr, ptr %i.n, align 8, !alias.scope !323366, !noalias !323369
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17hb4c0a90ff32ca7afE.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17hb4c0a90ff32ca7afE.exit": ; preds = %bb.aq, %.noexc112
  %i.hf = phi ptr [ %.pre248, %.noexc112 ], [ %i.ba, %bb.aq ]
  %i.hg = phi i64 [ %.pre, %.noexc112 ], [ %i.ax, %bb.aq ]
  %i.hh = phi i64 [ %.pre6.i, %.noexc112 ], [ %i.ay, %bb.aq ] ; 2 uses
  %i.hi = phi i64 [ %.pre.i, %.noexc112 ], [ %i.az, %bb.aq ] ; 2 uses
  %i.hj = add i64 %i.hi, 1
  store i64 %i.hj, ptr %i.l, align 8, !alias.scope !323366, !noalias !323369
  %i.hk = add i64 %i.hg, %i.hi                    ; 2 uses
  %.not.i110 = icmp ult i64 %i.hk, %i.hh
  %i.hl = select i1 %.not.i110, i64 0, i64 %i.hh
  %.sroa.0.0.i111 = sub nuw i64 %i.hk, %i.hl
  %i.hm = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %.sroa.0.0.i111 ; 2 uses
  store i32 %.sroa.8.0.ph, ptr %i.hm, align 8, !noalias !323366
  br label %bb.au

bb.as:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !323372)
  br i1 %i.es, label %bb.at, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$14push_front_mut17hb39d14c9ef50dd41E.exit"

bb.at:                                            ; preds = %bb.as
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h0b56cd9ab9b7c651E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5796)
          to label %.noexc116 unwind label %.loopexit.split-lp

.noexc116:                                        ; preds = %bb.at
  %.pre.i114 = load i64, ptr %8, align 8, !range !180, !alias.scope !323372, !noalias !323375
  %.pre6.i115 = load i64, ptr %i.l, align 8, !alias.scope !323372, !noalias !323375
  %.pre249 = load i64, ptr %i.m, align 8, !alias.scope !323372, !noalias !323375
  %.pre250 = load ptr, ptr %i.n, align 8, !alias.scope !323372, !noalias !323375
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$14push_front_mut17hb39d14c9ef50dd41E.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$14push_front_mut17hb39d14c9ef50dd41E.exit": ; preds = %bb.as, %.noexc116
  %i.hn = phi ptr [ %.pre250, %.noexc116 ], [ %i.ba, %bb.as ]
  %i.ho = phi i64 [ %.pre249, %.noexc116 ], [ %i.ax, %bb.as ]
  %i.hp = phi i64 [ %.pre6.i115, %.noexc116 ], [ %i.az, %bb.as ]
  %i.hq = phi i64 [ %.pre.i114, %.noexc116 ], [ %i.ay, %bb.as ] ; 2 uses
  %i.hr = add i64 %i.ho, -1                       ; 2 uses
  %i.hs = add i64 %i.hr, %i.hq                    ; 2 uses
  %.not.i113 = icmp ult i64 %i.hs, %i.hq
  %..i = select i1 %.not.i113, i64 %i.hs, i64 %i.hr ; 2 uses
  store i64 %..i, ptr %i.m, align 8, !alias.scope !323372, !noalias !323375
  %i.ht = add i64 %i.hp, 1
  store i64 %i.ht, ptr %i.l, align 8, !alias.scope !323372, !noalias !323375
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %..i ; 2 uses
  store i32 %.sroa.8.0.ph, ptr %i.hu, align 8, !noalias !323372
  br label %bb.au

bb.au:                                            ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$14push_front_mut17hb39d14c9ef50dd41E.exit", %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17hb4c0a90ff32ca7afE.exit"
  %.sink322 = phi ptr [ %i.hu, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$14push_front_mut17hb39d14c9ef50dd41E.exit" ], [ %i.hm, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17hb4c0a90ff32ca7afE.exit" ]
  %.sroa.3143.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %.sink322, i64 8
  store <2 x double> %i.bc, ptr %.sroa.3143.0..sroa_idx144, align 8, !noalias !10
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.11.sroa.7.0.ph182.ph.ph, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.518.sroa.4.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sroa.11.sroa.8.0.ph189.ph.ph, ptr %.sroa.518.sroa.4.0..sroa.518.0..sroa_idx.sroa_idx, align 8
  store i64 97, ptr %0, align 8
  %.val5.i.i.pre.pre.pre = load i64, ptr %i.h, align 8, !alias.scope !323302
  br label %bb.f

bb.av:                                            ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$8pop_back17h58f0ad9eef5d7359E.exit"
  %i.hw = load i64, ptr %i.d, align 8, !range !1815, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.hw, 97
  br i1 %.not, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.269.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.467.0..sroa_idx, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bc
end_hunk_19
begin_hunk_20_@"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h807849db75189ca0E":bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !361957, !nonnull !10, !noundef !10 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !361957, !noundef !10 ; 11 uses
  switch i64 %i.aq, label %.lr.ph.i.i.i [
    i64 0, label %bb.k
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.i ], [ %i.az, %.lr.ph.i.i.i ] ; 3 uses
  %i.ar = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.aq
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %.sroa.05.0.lcssa.i.i.i
  %.val20.i.i.i = load i16, ptr %i.as, align 2, !alias.scope !361958, !noalias !361961, !noundef !10 ; 2 uses
  %i.at = icmp eq i16 %.val20.i.i.i, %i.d
  br i1 %i.at, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22, label %bb.j

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i ], [ %i.aq, %bb.i ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.au = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.av = add i64 %i.au, %.sroa.05.024.i.i.i      ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.aq
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.av
  %.val22.i.i.i = load i16, ptr %i.ax, align 2, !alias.scope !361958, !noalias !361961, !noundef !10
  %i.ay = icmp ugt i16 %.val22.i.i.i, %i.d
  %i.az = select i1 %i.ay, i64 %.sroa.05.024.i.i.i, i64 %i.av, !unpredictable !10 ; 2 uses
  %i.ba = sub nuw i64 %.sroa.01.025.i.i.i, %i.au  ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, 1
  br i1 %i.bb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = icmp ult i16 %.val20.i.i.i, %i.d
  %i.bd = zext i1 %i.bc to i64
  %i.be = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ule i64 %i.be, %i.aq
  tail call void @llvm.assume(i1 %i.bf)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.be, %bb.j ], [ %i.aq, %bb.i ] ; 3 uses
  %i.bg = icmp ult i64 %i.aq, 4611686018427387904
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = load i64, ptr %i.am, align 8, !range !180, !alias.scope !361963, !noalias !361966, !noundef !10
  %i.bi = icmp eq i64 %i.aq, %i.bh
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1ce9a538e264a91eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7743)
  %.pre.i.i = load ptr, ptr %i.an, align 8, !alias.scope !361963, !noalias !361966
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bj = phi ptr [ %.pre.i.i, %bb.l ], [ %i.ao, %bb.k ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  %i.bl = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.aq
  br i1 %i.bl, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h34bc60ac5c4656d8E.exit.i.i"

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bn = sub nuw nsw i64 %i.aq, %.sroa.4.0.i.ph.i.i
  %i.bo = shl nuw nsw i64 %i.bn, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bm, ptr nonnull align 2 %i.bk, i64 %i.bo, i1 false)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h34bc60ac5c4656d8E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h34bc60ac5c4656d8E.exit.i.i": ; preds = %bb.n, %bb.m
  store i16 %i.d, ptr %i.bk, align 2
  %i.bp = add nuw nsw i64 %i.aq, 1
  store i64 %i.bp, ptr %i.ap, align 8, !alias.scope !361963, !noalias !361966
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

bb.o:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361968)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !361971, !nonnull !10, !noundef !10 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 24 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !361971, !noundef !10 ; 16 uses
  switch i64 %i.bt, label %.lr.ph.i.i.i.i [
    i64 0, label %.thread.i.i
    i64 1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17ha4bf24a4028fc092E.exit.i.i"
  ]

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %.lr.ph.i.i.i.i
  %.sroa.01.026.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bt, %bb.o ] ; 2 uses
  %.sroa.05.025.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i.i ], [ 0, %bb.o ] ; 2 uses
  %i.bu = lshr i64 %.sroa.01.026.i.i.i.i, 1       ; 2 uses
  %i.bv = add i64 %i.bu, %.sroa.05.025.i.i.i.i    ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.bt
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bv
  %i.by = getelementptr i8, ptr %i.bx, i64 2
  %.val22.i.i.i.i = load i16, ptr %i.by, align 2, !alias.scope !361972, !noalias !361977, !noundef !10
  %.not.i.i.i.i = icmp ult i16 %.val22.i.i.i.i, %i.d
  %i.bz = select i1 %.not.i.i.i.i, i64 %i.bv, i64 %.sroa.05.025.i.i.i.i, !unpredictable !10 ; 2 uses
  %i.ca = sub nuw i64 %.sroa.01.026.i.i.i.i, %i.bu ; 2 uses
  %i.cb = icmp ugt i64 %i.ca, 1
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17ha4bf24a4028fc092E.exit.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17ha4bf24a4028fc092E.exit.i.i": ; preds = %.lr.ph.i.i.i.i, %bb.o
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.o ], [ %i.bz, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.cc = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i, %i.bt
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.sroa.05.0.lcssa.i.i.i.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 2
  %.val20.i.i.i.i = load i16, ptr %i.ce, align 2, !alias.scope !361972, !noalias !361977, !noundef !10
  %i.cf = icmp ult i16 %.val20.i.i.i.i, %i.d
  %i.cg = zext i1 %i.cf to i64
  %i.ch = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.cg ; 8 uses
  %i.ci = icmp ule i64 %i.ch, %i.bt
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr [4 x i8], ptr %i.br, i64 %i.ch ; 7 uses
  %i.ck = sub nuw i64 %i.bt, %i.ch                ; 2 uses
  %.not9.i.i = icmp eq i64 %i.bt, %i.ch
  br i1 %.not9.i.i, label %.thread23.i.i, label %bb.p

bb.p:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17ha4bf24a4028fc092E.exit.i.i"
  %i.cl = load i16, ptr %i.cj, align 2, !noalias !361971, !noundef !10 ; 3 uses
  %.not10.i.i = icmp ugt i16 %i.cl, %i.d
  br i1 %.not10.i.i, label %bb.r, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22

bb.q:                                             ; preds = %bb.r
  %.not11.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not11.i.i, label %.thread.i.i, label %.thread23.i.i

bb.r:                                             ; preds = %bb.p
  %i.cm = add nuw i16 %i.d, 1
  %i.cn = icmp eq i16 %i.cl, %i.cm
  br i1 %i.cn, label %bb.s, label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.co = add i16 %i.cl, -1
  store i16 %i.co, ptr %i.cj, align 2, !noalias !361971
  %.not12.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not12.i.i, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread, label %bb.x

.thread23.i.i:                                    ; preds = %bb.q, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17ha4bf24a4028fc092E.exit.i.i"
  %i.cp = phi i64 [ %i.ck, %bb.q ], [ 0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17ha4bf24a4028fc092E.exit.i.i" ]
  %i.cq = getelementptr i8, ptr %i.cj, i64 -2     ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 2, !noalias !361971, !noundef !10
  %i.cs = add i16 %i.cr, 1
  %i.ct = icmp eq i16 %i.cs, %i.d
  br i1 %i.ct, label %bb.w, label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread23.i.i, %bb.q, %bb.o
  %.sroa.4.0.i.i1922.i.i = phi i64 [ %i.ch, %.thread23.i.i ], [ 0, %bb.q ], [ %i.bt, %bb.o ] ; 2 uses
  %i.cu = phi i64 [ %i.cp, %.thread23.i.i ], [ %i.ck, %bb.q ], [ %i.bt, %bb.o ]
  %i.cv = icmp ult i64 %i.bt, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = load i64, ptr %i.am, align 8, !range !180, !alias.scope !361980, !noundef !10
  %i.cx = icmp eq i64 %i.bt, %i.cw
  br i1 %i.cx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread.i.i
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8d5e9699404ee268E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7745)
  %.pre.i1.i = load ptr, ptr %i.bq, align 8, !alias.scope !361980
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread.i.i
  %i.cy = phi ptr [ %.pre.i1.i, %bb.t ], [ %i.br, %.thread.i.i ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.sroa.4.0.i.i1922.i.i ; 4 uses
  %i.da = icmp samesign ult i64 %.sroa.4.0.i.i1922.i.i, %i.bt
  br i1 %i.da, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hd5f8621144a3dcfaE.exit.i.i"

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dc = shl nuw nsw i64 %i.cu, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.db, ptr nonnull align 2 %i.cz, i64 %i.dc, i1 false)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hd5f8621144a3dcfaE.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hd5f8621144a3dcfaE.exit.i.i": ; preds = %bb.v, %bb.u
  store i16 %i.d, ptr %i.cz, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  store i16 %i.d, ptr %i.dd, align 2
  %i.de = add nuw nsw i64 %i.bt, 1
  store i64 %i.de, ptr %i.bs, align 8, !alias.scope !361980
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

bb.w:                                             ; preds = %.thread23.i.i
  store i16 %i.d, ptr %i.cq, align 2, !noalias !361971
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

bb.x:                                             ; preds = %bb.s
  %i.df = getelementptr i8, ptr %i.cj, i64 -2     ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !noalias !361971, !noundef !10
  %i.dh = add i16 %i.d, -1
  %i.di = icmp eq i16 %i.dg, %i.dh
  br i1 %i.di, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h028c81239f9a6311E.exit.i.i", label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h028c81239f9a6311E.exit.i.i": ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.dk = load i16, ptr %i.dj, align 2, !noalias !361971, !noundef !10
  store i16 %i.dk, ptr %i.df, align 2, !noalias !361971
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361983)
  %i.dl = icmp ult i64 %i.bt, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.dn = xor i64 %i.ch, -1
  %i.do = add nsw i64 %i.bt, %i.dn
  %i.dp = shl nuw nsw i64 %i.do, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cj, ptr nonnull align 2 %i.dm, i64 %i.dp, i1 false), !noalias !361986
  %i.dq = add nsw i64 %i.bt, -1
  store i64 %i.dq, ptr %i.bs, align 8, !alias.scope !361986
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit: ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361987)
  %.mask = and i32 %1, 65535
  %i.dr = zext nneg i32 %.mask to i64             ; 2 uses
  %i.ds = and i64 %i.dr, 63                       ; 2 uses
  %i.dt = lshr i64 %i.dr, 6
  %i.du = load ptr, ptr %i.am, align 8, !alias.scope !361990, !nonnull !10, !align !299, !noundef !10
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !361990, !noundef !10 ; 2 uses
  %i.dx = shl nuw i64 1, %i.ds
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = xor i64 %i.dy, %i.dw
  %i.ea = lshr i64 %i.dz, %i.ds                   ; 2 uses
  store i64 %i.dy, ptr %i.dv, align 8, !noalias !361990
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !361990, !noundef !10
  %i.ed = add i64 %i.ea, %i.ec
  store i64 %i.ed, ptr %i.eb, align 8, !alias.scope !361990
  %.not = icmp eq i64 %i.ea, 0
  br i1 %.not, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h028c81239f9a6311E.exit.i.i", %bb.x, %bb.s, %bb.w, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hd5f8621144a3dcfaE.exit.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h34bc60ac5c4656d8E.exit.i.i", %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit
  %i.ee = tail call noundef zeroext i1 @_ZN7roaring6bitmap9container9Container20ensure_correct_store17hbe63faf056884c5aE(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.01.0) ; 0 uses
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22

_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22: ; preds = %bb.p, %._crit_edge.i.i.i, %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit, %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h94eafc541148e8c7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i32 %1, 16
  %i.b = trunc nuw i32 %i.a to i16                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 11 uses
  switch i64 %i.f, label %.lr.ph.i.i [
    i64 0, label %bb.c
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.q, %.lr.ph.i.i ] ; 4 uses
  %i.g = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.sroa.05.0.lcssa.i.i
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %.val20.i.i = load i16, ptr %i.i, align 8, !alias.scope !361991, !noalias !361996, !noundef !10 ; 2 uses
  %i.j = icmp eq i16 %.val20.i.i, %i.b
  br i1 %i.j, label %bb.h, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.l = add i64 %i.k, %.sroa.05.024.i.i          ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.f
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 24
  %.val22.i.i = load i16, ptr %i.o, align 8, !alias.scope !361991, !noalias !361996, !noundef !10
  %i.p = icmp ugt i16 %.val22.i.i, %i.b
  %i.q = select i1 %i.p, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !10 ; 2 uses
  %i.r = sub nuw i64 %.sroa.01.025.i.i, %i.k      ; 2 uses
  %i.s = icmp ugt i64 %i.r, 1
  br i1 %i.s, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.t = icmp ult i16 %.val20.i.i, %i.b
  %i.u = zext i1 %i.t to i64
  %i.v = add nuw i64 %.sroa.05.0.lcssa.i.i, %i.u  ; 2 uses
  %i.w = icmp ule i64 %i.v, %i.f
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.i.i.ph = phi i64 [ %i.v, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %i.x = icmp ult i64 %i.f, 288230376151711744
  tail call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %0, align 8, !range !180, !alias.scope !361998, !noalias !362001, !noundef !10
  %i.z = icmp eq i64 %i.f, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2bed7fedf0cce30dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7752)
          to label %._crit_edge unwind label %bb.f, !noalias !362004

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !361998, !noalias !362001
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.aa = phi ptr [ %.pre, %._crit_edge ], [ %i.d, %bb.c ]
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.4.0.i.i.ph ; 6 uses
  %i.ac = icmp samesign ult i64 %.sroa.4.0.i.i.ph, %i.f
  br i1 %i.ac, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h98b0613c274bcd17E.exit"

bb.f:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h9098dbb179aa09fdE"(i64 0, ptr nonnull inttoptr (i64 2 to ptr)) #107, !noalias !362004
  resume { ptr, i32 } %i.ad

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.af = sub nuw nsw i64 %i.f, %.sroa.4.0.i.i.ph
  %i.ag = shl nuw nsw i64 %i.af, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ab, i64 %i.ag, i1 false), !noalias !362004
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h98b0613c274bcd17E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h98b0613c274bcd17E.exit": ; preds = %bb.e, %bb.g
  store i64 0, ptr %i.ab, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i16 %i.b, ptr %.sroa.8.0..sroa_idx, align 8
  %i.ah = add nuw nsw i64 %i.f, 1
  store i64 %i.ah, ptr %i.e, align 8, !alias.scope !361998, !noalias !362001
  %.pn.pre = load ptr, ptr %i.c, align 8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h98b0613c274bcd17E.exit"
  %.pn = phi ptr [ %.pn.pre, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h98b0613c274bcd17E.exit" ], [ %i.d, %._crit_edge.i.i ]
  %.sroa.4.0.i.i18 = phi i64 [ %.sroa.4.0.i.i.ph, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h98b0613c274bcd17E.exit" ], [ %.sroa.05.0.lcssa.i.i, %._crit_edge.i.i ]
  %.sroa.0.0 = getelementptr inbounds nuw [32 x i8], ptr %.pn, i64 %.sroa.4.0.i.i18 ; 7 uses
  %i.ai = trunc i32 %1 to i16                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362005)
  %i.aj = load i64, ptr %.sroa.0.0, align 8, !range !1428, !alias.scope !362005, !noundef !10 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -9223372036854775808
  br i1 %i.ak, label %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362008)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !362011, !nonnull !10, !noundef !10 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !362011, !noundef !10 ; 11 uses
  switch i64 %i.ao, label %.lr.ph.i.i.i [
    i64 0, label %bb.k
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.i ], [ %i.ax, %.lr.ph.i.i.i ] ; 3 uses
  %i.ap = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.ao
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %.sroa.05.0.lcssa.i.i.i
  %.val20.i.i.i = load i16, ptr %i.aq, align 2, !alias.scope !362012, !noalias !362015, !noundef !10 ; 2 uses
  %i.ar = icmp eq i16 %.val20.i.i.i, %i.ai
  br i1 %i.ar, label %_ZN7roaring6bitmap9container9Container6insert17h10bfdf8dd2dc937aE.exit, label %bb.j

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i ], [ %i.ao, %bb.i ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.as = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.at = add i64 %i.as, %.sroa.05.024.i.i.i      ; 3 uses
  %i.au = icmp ult i64 %i.at, %i.ao
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.at
  %.val22.i.i.i = load i16, ptr %i.av, align 2, !alias.scope !362012, !noalias !362015, !noundef !10
  %i.aw = icmp ugt i16 %.val22.i.i.i, %i.ai
  %i.ax = select i1 %i.aw, i64 %.sroa.05.024.i.i.i, i64 %i.at, !unpredictable !10 ; 2 uses
  %i.ay = sub nuw i64 %.sroa.01.025.i.i.i, %i.as  ; 2 uses
  %i.az = icmp ugt i64 %i.ay, 1
  br i1 %i.az, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ba = icmp ult i16 %.val20.i.i.i, %i.ai
  %i.bb = zext i1 %i.ba to i64
  %i.bc = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ule i64 %i.bc, %i.ao
  tail call void @llvm.assume(i1 %i.bd)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.bc, %bb.j ], [ %i.ao, %bb.i ] ; 3 uses
  %i.be = icmp ult i64 %i.ao, 4611686018427387904
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.ao, %i.aj
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1ce9a538e264a91eE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7741)
  %.pre.i.i = load ptr, ptr %i.al, align 8, !alias.scope !362017, !noalias !362020
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bg = phi ptr [ %.pre.i.i, %bb.l ], [ %i.am, %bb.k ]
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  %i.bi = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.ao
  br i1 %i.bi, label %bb.n, label %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.thread.i

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bk = sub nuw nsw i64 %i.ao, %.sroa.4.0.i.ph.i.i
  %i.bl = shl nuw nsw i64 %i.bk, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bj, ptr nonnull align 2 %i.bh, i64 %i.bl, i1 false)
  br label %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.thread.i

_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.thread.i: ; preds = %bb.n, %bb.m
  store i16 %i.ai, ptr %i.bh, align 2
  %i.bm = add nuw nsw i64 %i.ao, 1
  store i64 %i.bm, ptr %i.an, align 8, !alias.scope !362017, !noalias !362020
  br label %bb.o

_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.i: ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362022)
  %.mask = and i32 %1, 65535
  %i.bo = zext nneg i32 %.mask to i64             ; 2 uses
  %i.bp = and i64 %i.bo, 63                       ; 2 uses
  %i.bq = lshr i64 %i.bo, 6
  %i.br = load ptr, ptr %i.bn, align 8, !alias.scope !362025, !nonnull !10, !align !299, !noundef !10
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !362025, !noundef !10 ; 2 uses
  %i.bu = shl nuw i64 1, %i.bp
  %i.bv = or i64 %i.bt, %i.bu                     ; 2 uses
  %i.bw = xor i64 %i.bv, %i.bt
  %i.bx = lshr i64 %i.bw, %i.bp                   ; 2 uses
  store i64 %i.bv, ptr %i.bs, align 8, !noalias !362025
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !362025, !noundef !10
  %i.ca = add i64 %i.bx, %i.bz
  store i64 %i.ca, ptr %i.by, align 8, !alias.scope !362025
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %_ZN7roaring6bitmap9container9Container6insert17h10bfdf8dd2dc937aE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.i, %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.thread.i
  tail call void @_ZN7roaring6bitmap9container9Container20ensure_correct_store17hc18ddf6a5eea8937E(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.0.0)
  br label %_ZN7roaring6bitmap9container9Container6insert17h10bfdf8dd2dc937aE.exit

_ZN7roaring6bitmap9container9Container6insert17h10bfdf8dd2dc937aE.exit: ; preds = %._crit_edge.i.i.i, %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.i, %bb.o
  %.sroa.01.0.in3.i = phi i1 [ false, %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.i ], [ true, %bb.o ], [ false, %._crit_edge.i.i.i ]
  ret i1 %.sroa.01.0.in3.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i32 %1, 16
  %i.b = trunc nuw i32 %i.a to i16                ; 3 uses
  %i.c = trunc i32 %1 to i16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !10 ; 8 uses
  switch i64 %i.g, label %.lr.ph.i.i [
    i64 0, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20binary_search_by_key17hfdd2ea85e619f3f3E.exit.thread"
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.r, %.lr.ph.i.i ] ; 4 uses
  %i.h = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.g
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.sroa.05.0.lcssa.i.i ; 7 uses
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %.val20.i.i = load i16, ptr %i.j, align 8, !alias.scope !362026, !noalias !362031, !noundef !10 ; 2 uses
  %i.k = icmp eq i16 %.val20.i.i, %i.b
  br i1 %i.k, label %bb.c, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.l = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.m = add i64 %i.l, %.sroa.05.024.i.i          ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.g
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %.val22.i.i = load i16, ptr %i.p, align 8, !alias.scope !362026, !noalias !362031, !noundef !10
  %i.q = icmp ugt i16 %.val22.i.i, %i.b
  %i.r = select i1 %i.q, i64 %.sroa.05.024.i.i, i64 %i.m, !unpredictable !10 ; 2 uses
  %i.s = sub nuw i64 %.sroa.01.025.i.i, %i.l      ; 2 uses
  %i.t = icmp ugt i64 %i.s, 1
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.u = icmp ult i16 %.val20.i.i, %i.b
  %i.v = zext i1 %i.u to i64
  %i.w = add nuw i64 %.sroa.05.0.lcssa.i.i, %i.v
  %i.x = icmp ule i64 %i.w, %i.g
  tail call void @llvm.assume(i1 %i.x)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20binary_search_by_key17hfdd2ea85e619f3f3E.exit.thread"

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.y = tail call noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i16 noundef %i.c)
  br i1 %i.y, label %bb.d, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20binary_search_by_key17hfdd2ea85e619f3f3E.exit.thread"

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.i, align 8, !range !1428, !noundef !10 ; 3 uses
  %i.aa = icmp eq i64 %i.z, -9223372036854775808
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !10 ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp ult i64 %i.ac, 4611686018427387904
  tail call void @llvm.assume(i1 %i.ad)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.03.0.in = icmp eq i64 %i.ac, 0
  br i1 %.sroa.03.0.in, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20binary_search_by_key17hfdd2ea85e619f3f3E.exit.thread"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit": ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362033)
  %i.ae = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.ae)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !362033 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ag = xor i64 %.sroa.05.0.lcssa.i.i, -1
  %i.ah = add nsw i64 %i.g, %i.ag
  %i.ai = shl nuw nsw i64 %i.ah, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.af, i64 %i.ai, i1 false), !noalias !362036
  %i.aj = add nsw i64 %i.g, -1
  store i64 %i.aj, ptr %i.f, align 8, !alias.scope !362033, !noalias !362038
  switch i64 %i.z, label %bb.g [
    i64 -9223372036854775808, label %bb.h
    i64 0, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20binary_search_by_key17hfdd2ea85e619f3f3E.exit.thread"
  ]

bb.g:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit"
  %i.ak = shl nuw i64 %i.z, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 2) #101
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20binary_search_by_key17hfdd2ea85e619f3f3E.exit.thread"

bb.h:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef 8192, i64 noundef 8) #101
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20binary_search_by_key17hfdd2ea85e619f3f3E.exit.thread"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20binary_search_by_key17hfdd2ea85e619f3f3E.exit.thread": ; preds = %bb.h, %bb.g, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h447d73f6cbfefa72E.exit", %bb.b, %bb.a, %bb.f, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN7roaring6bitmap8multiops18try_multi_or_owned17h366e3c98c50a41b8E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(320) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i:
  %i.a = alloca [392 x i8], align 8               ; 6 uses
  %i.b = alloca [392 x i8], align 8               ; 6 uses
  %i.c = alloca [320 x i8], align 8               ; 6 uses
  %i.d = alloca [392 x i8], align 8               ; 5 uses
  %i.e = alloca [320 x i8], align 8               ; 6 uses
  %i.f = alloca [392 x i8], align 8               ; 6 uses
  %.sroa.0.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %.sroa.7122 = alloca [24 x i8], align 8         ; 4 uses
  %.sroa.8123 = alloca [288 x i8], align 8        ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 14 uses
  %.sroa.37 = alloca [24 x i8], align 8           ; 3 uses
  %i.i = alloca [320 x i8], align 8               ; 11 uses
  %.sroa.10113 = alloca [288 x i8], align 8       ; 2 uses
  %.sroa.9 = alloca [24 x i8], align 8            ; 9 uses
  %i.j = alloca [96 x i8], align 8                ; 15 uses
  %i.k = alloca [24 x i8], align 16               ; 11 uses
  %i.l = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.6100 = alloca [24 x i8], align 8         ; 5 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.0.copyload228 = load ptr, ptr %1, align 8, !alias.scope !362039 ; 4 uses
  %.sroa.14.0..sroa_idx229 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.14.0.copyload230 = load ptr, ptr %.sroa.14.0..sroa_idx229, align 8, !alias.scope !362039 ; 5 uses
  %.sroa.16.0..sroa_idx231 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.16.0.copyload232 = load ptr, ptr %.sroa.16.0..sroa_idx231, align 8, !alias.scope !362039 ; 3 uses
  %.sroa.17.0..sroa_idx233 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.17.0.copyload234 = load ptr, ptr %.sroa.17.0..sroa_idx233, align 8, !alias.scope !362039 ; 3 uses
  %.sroa.18.0..sroa_idx235 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.18.0.copyload236 = load ptr, ptr %.sroa.18.0..sroa_idx235, align 8, !alias.scope !362039 ; 3 uses
  %.sroa.19.0..sroa_idx237 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.19.0.copyload238 = load ptr, ptr %.sroa.19.0..sroa_idx237, align 8, !alias.scope !362039 ; 3 uses
  %.sroa.20.0..sroa_idx239 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.20.0.copyload240 = load i64, ptr %.sroa.20.0..sroa_idx239, align 8, !alias.scope !362039 ; 3 uses
  %.sroa.21.0..sroa_idx241 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.21.0.copyload242 = load ptr, ptr %.sroa.21.0..sroa_idx241, align 8, !alias.scope !362039 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6100)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload228) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload230) ]
  %i.n = ptrtoint ptr %.sroa.14.0.copyload230 to i64
  %i.o = ptrtoint ptr %.sroa.0.0.copyload228 to i64
  %i.p = sub nuw i64 %i.n, %i.o                   ; 2 uses
  %i.q = udiv exact i64 %i.p, 392
  %i.r = icmp ugt i64 %i.p, 19600
  %spec.store.select.i = select i1 %i.r, i64 10, i64 %i.q ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !362043
  %i.s = mul nuw nsw i64 %spec.store.select.i, 24 ; 2 uses
  %i.t = icmp eq i64 %spec.store.select.i, 0
  br i1 %i.t, label %.thread284, label %bb.a

.thread284:                                       ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  store i64 0, ptr %i.h, align 8, !noalias !362043
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8, !noalias !362043
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.v, align 8, !noalias !362043
  br label %.loopexit166

bb.a:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101, !noalias !362047
  %i.w = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, 129) 8) #101, !noalias !362047 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7757) #106, !noalias !362052
  unreachable

.body76:                                          ; preds = %bb.m, %bb.f, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.ah, %bb.f ], [ %i.am, %bb.m ], [ %i.aj, %bb.i ]
  call fastcc void @"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17hed5bca043082de66E"(ptr noalias noundef align 8 dereferenceable(24) %i.h) #107, !noalias !362052, !inline_history !362053
  br label %common.resume

.lr.ph:                                           ; preds = %bb.a
  store i64 %spec.store.select.i, ptr %i.h, align 8, !noalias !362043
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !noalias !362043
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.z, align 8, !noalias !362043
  %.sroa.7122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %i.aa = phi ptr [ %i.w, %.lr.ph ], [ %i.an, %bb.n ]
  %i.ab = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.n ] ; 3 uses
  %.sroa.5120.0193 = phi i64 [ %spec.store.select.i, %.lr.ph ], [ %i.ad, %bb.n ]
  %i.ac = phi ptr [ %.sroa.0.0.copyload228, %.lr.ph ], [ %i.af, %bb.n ] ; 4 uses
  %i.ad = add nsw i64 %.sroa.5120.0193, -1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !362054
  %i.ae = icmp eq ptr %i.ac, %.sroa.14.0.copyload230
  br i1 %i.ae, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 392 ; 4 uses
  invoke fastcc void @"_ZN74_$LT$filter_parser..IndexFilterCondition$u20$as$u20$core..clone..Clone$GT$5clone17h7b79aac9a268697bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(392) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.ac)
          to label %.noexc79 unwind label %bb.i

.noexc79:                                         ; preds = %bb.d
  %.pr = load i64, ptr %i.f, align 8, !noalias !362054
  %.not.i.i78 = icmp eq i64 %.pr, 9
  br i1 %.not.i.i78, label %.thread, label %bb.e

bb.e:                                             ; preds = %.noexc79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !362061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.b, ptr noundef nonnull align 8 dereferenceable(392) %i.f, i64 392, i1 false), !noalias !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !362054
  %i.ag = load ptr, ptr %.sroa.21.0.copyload242, align 8, !noalias !362061, !align !299, !noundef !10
  invoke fastcc void @_ZN5milli6search5facet6filter12index_filter11IndexFilter14inner_evaluate17he6cf2c29e17e5479E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(320) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.16.0.copyload232, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496) %.sroa.17.0.copyload234, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.18.0.copyload236, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.19.0.copyload238, i64 noundef %.sroa.20.0.copyload240, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.ag)
          to label %bb.g unwind label %bb.f, !noalias !362066, !inline_history !362067

bb.f:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$filter_parser..IndexFilterCondition$GT$17h7ce0ef5bee415333E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.b)
          to label %.body76 unwind label %bb.h, !noalias !362061, !inline_history !362067

bb.g:                                             ; preds = %bb.e
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$filter_parser..IndexFilterCondition$GT$17h7ce0ef5bee415333E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.b)
          to label %bb.j unwind label %bb.i, !inline_history !362067

bb.h:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !362061, !inline_history !362067
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body76

.thread:                                          ; preds = %.noexc79, %bb.c
  %.sroa.0.0 = phi ptr [ %i.ac, %bb.c ], [ %i.af, %.noexc79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !362054
  br label %.loopexit166

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !362061
  %.sroa.0121.0.copyload = load i64, ptr %i.e, align 8, !noalias !362068 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7122, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7122.0..sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.8123, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.8123.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !362054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !362054
  switch i64 %.sroa.0121.0.copyload, label %bb.o [
    i64 98, label %.loopexit166
    i64 97, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ak = load i64, ptr %i.h, align 8, !range !180, !alias.scope !362069, !noalias !362072, !noundef !10
  %i.al = icmp eq i64 %i.ab, %i.ak
  br i1 %i.al, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17haca8073ab3778604E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7758)
          to label %._crit_edge unwind label %bb.m, !noalias !362075

._crit_edge:                                      ; preds = %bb.l
  %.pre = load ptr, ptr %i.y, align 8, !alias.scope !362069, !noalias !362072
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h21b4a76d6f2c4916E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %.sroa.7122) #107
  br label %.body76

bb.n:                                             ; preds = %._crit_edge, %bb.k
  %i.an = phi ptr [ %.pre, %._crit_edge ], [ %i.aa, %bb.k ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.ab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7122, i64 24, i1 false)
end_hunk_20
