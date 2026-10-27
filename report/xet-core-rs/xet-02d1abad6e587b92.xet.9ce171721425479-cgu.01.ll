Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.01?download=true
inline.NumInlined: 6123
inline.NumDeleted: 1970
begin_hunk_0_@_RNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB6_8FileTerm13get_data_task0s_0CsQbU2fm3lSD_3xet:bb.a
  unreachable

bb.l:                                             ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 464
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !35, !noalias !13235
  switch i8 %.pre.i.i, label %default.unreachable88 [
    i8 0, label %bb.o
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #26
          to label %.noexc.i.i unwind label %bb.ai, !noalias !13236

.noexc.i.i:                                       ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #26
          to label %.noexc45.i.i unwind label %bb.ai, !noalias !13236

.noexc45.i.i:                                     ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.l, %.thread130.i.i
  %i.dg = phi ptr [ %i.bh, %bb.l ], [ %i.bh, %bb.l ], [ %i.cw, %.thread130.i.i ] ; 5 uses
  %i.dh = phi ptr [ %i.bg, %bb.l ], [ %i.bg, %bb.l ], [ %i.cx, %.thread130.i.i ] ; 4 uses
  %i.di = phi ptr [ %.phi.trans.insert.i, %bb.l ], [ %.phi.trans.insert.i, %bb.l ], [ %i.cz, %.thread130.i.i ] ; 5 uses
  %i.dj = phi ptr [ %i.cv, %bb.l ], [ %i.cv, %bb.l ], [ %i.da, %.thread130.i.i ] ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 465
  %i.dm = invoke noundef zeroext i1 @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNvNtCsUrhh0HcRih_5tokio5trace10trace_leafENtNtB7_6future6Future4pollCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull %i.dl, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.q unwind label %bb.p, !noalias !13236 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dn = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.dk, align 8, !noalias !13235
  br label %.body.i.i

bb.q:                                             ; preds = %bb.o
  %..i.i.i = select i1 %i.dm, i8 3, i8 1
  store i8 %..i.i.i, ptr %i.dk, align 8, !noalias !13235
  br i1 %i.dm, label %bb.kn, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !13234, !nonnull !17, !align !24, !noundef !17
  %i.dq = invoke noundef zeroext i1 @_RNvMs5_NtNtCsUrhh0HcRih_5tokio4sync9once_cellINtB5_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block13XorbBlockDataEE11initializedCsQbU2fm3lSD_3xet(ptr noundef nonnull align 8 %i.dp)
          to label %bb.s unwind label %bb.ai, !noalias !13236

bb.s:                                             ; preds = %bb.r
  %i.dr = load ptr, ptr %i.do, align 8, !noalias !13234, !nonnull !17, !align !24, !noundef !17 ; 2 uses
  br i1 %i.dq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.ds, ptr %i.dk, align 8, !noalias !13234
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 544
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !13234
  br label %bb.w

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore15SemaphorePermitECsQbU2fm3lSD_3xet.exit.i.i, %bb.ah, %bb.s
  %i.dt = phi ptr [ %i.ei, %bb.ah ], [ %i.afj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore15SemaphorePermitECsQbU2fm3lSD_3xet.exit.i.i ], [ %i.dg, %bb.s ] ; 11 uses
  %i.du = phi ptr [ %i.ej, %bb.ah ], [ %i.afk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore15SemaphorePermitECsQbU2fm3lSD_3xet.exit.i.i ], [ %i.dh, %bb.s ] ; 11 uses
  %i.dv = phi ptr [ %i.ek, %bb.ah ], [ %i.afl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore15SemaphorePermitECsQbU2fm3lSD_3xet.exit.i.i ], [ %i.di, %bb.s ] ; 4 uses
  %i.dw = phi ptr [ %i.el, %bb.ah ], [ %i.afm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore15SemaphorePermitECsQbU2fm3lSD_3xet.exit.i.i ], [ %i.dj, %bb.s ] ; 4 uses
  %.sroa.016.0.i.i = phi i64 [ -1, %bb.ah ], [ %.sroa.092.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore15SemaphorePermitECsQbU2fm3lSD_3xet.exit.i.i ], [ -1, %bb.s ] ; 3 uses
  %.sroa.517.0.i.i = phi ptr [ %i.fl, %bb.ah ], [ %.sroa.517.2.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore15SemaphorePermitECsQbU2fm3lSD_3xet.exit.i.i ], [ %i.dr, %bb.s ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 457 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !range !40, !noalias !13234, !noundef !17
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.ix, label %bb.ji

bb.v:                                             ; preds = %bb.jg, %bb.jf, %.body51.i.i, %bb.x
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !13236
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore15SemaphorePermitECsQbU2fm3lSD_3xet.exit59.i.i, %bb.ai, %bb.ad, %bb.ac, %bb.x, %bb.p
  %i.eb = phi ptr [ %i.ei, %bb.ad ], [ %i.dg, %bb.p ], [ %i.ei, %bb.x ], [ %i.agm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore15SemaphorePermitECsQbU2fm3lSD_3xet.exit59.i.i ], [ %i.ei, %bb.ac ], [ %i.fv, %bb.ai ] ; 2 uses
  %i.ec = phi ptr [ %i.ej, %bb.ad ], [ %i.dh, %bb.p ], [ %i.ej, %bb.x ], [ %i.agn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore15SemaphorePermitECsQbU2fm3lSD_3xet.exit59.i.i ], [ %i.ej, %bb.ac ], [ %i.fw, %bb.ai ] ; 2 uses
  %i.ed = phi ptr [ %i.ek, %bb.ad ], [ %i.di, %bb.p ], [ %i.ek, %bb.x ], [ %i.ago, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore15SemaphorePermitECsQbU2fm3lSD_3xet.exit59.i.i ], [ %i.ek, %bb.ac ], [ %i.fx, %bb.ai ] ; 2 uses
  %i.ee = phi ptr [ %i.el, %bb.ad ], [ %i.dj, %bb.p ], [ %i.el, %bb.x ], [ %i.agp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore15SemaphorePermitECsQbU2fm3lSD_3xet.exit59.i.i ], [ %i.el, %bb.ac ], [ %i.fy, %bb.ai ] ; 3 uses
  %.pn41.i.i = phi { ptr, i32 } [ %i.ex, %bb.ad ], [ %i.dn, %bb.p ], [ %i.en, %bb.x ], [ %.pn37.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore15SemaphorePermitECsQbU2fm3lSD_3xet.exit59.i.i ], [ %i.ex, %bb.ac ], [ %i.fz, %bb.ai ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 457
  %i.eg = load i8, ptr %i.ef, align 1, !range !40, !noalias !13234, !noundef !17
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.jg, label %.body56.i.i

bb.w:                                             ; preds = %bb.t, %bb.i
  %i.ei = phi ptr [ %i.dg, %bb.t ], [ %i.bh, %bb.i ] ; 7 uses
  %i.ej = phi ptr [ %i.dh, %bb.t ], [ %i.bg, %bb.i ] ; 6 uses
  %i.ek = phi ptr [ %i.di, %bb.t ], [ %.phi.trans.insert.i, %bb.i ] ; 7 uses
  %i.el = phi ptr [ %i.dj, %bb.t ], [ %i.cv, %bb.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !13234
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtB4_9Semaphore7acquire0CsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.am, ptr noundef nonnull align 8 %i.em, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.y unwind label %bb.x, !noalias !13236

bb.x:                                             ; preds = %bb.w
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !13234
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtBG_9Semaphore7acquire0ECsQbU2fm3lSD_3xet(ptr noundef nonnull align 8 %i.em) #23
          to label %.body.i.i unwind label %bb.v, !noalias !13236

bb.y:                                             ; preds = %bb.w
  %i.eo = load i64, ptr %i.am, align 8, !range !20, !noalias !13234, !noundef !17
  %i.ep = trunc nuw i64 %i.eo to i1
  br i1 %i.ep, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !13234
  br label %bb.kn

bb.aa:                                            ; preds = %bb.y
  %i.eq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !13234, !align !24, !noundef !17 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.et = load i32, ptr %i.es, align 8, !noalias !13234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !13234
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.ev = load i8, ptr %i.eu, align 8, !range !35, !noalias !13234, !noundef !17
  %cond.i.i.i = icmp eq i8 %i.ev, 3
  br i1 %cond.i.i.i, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtBG_9Semaphore7acquire0ECsQbU2fm3lSD_3xet.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 480
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.ew)
          to label %bb.ae unwind label %bb.ac, !noalias !13236

bb.ac:                                            ; preds = %bb.ab
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.val2.i.i.i.i = load ptr, ptr %i.ey, align 8, !noalias !13234, !align !24, !noundef !17 ; 2 uses
  %i.ez = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.ez, label %.body.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fa = getelementptr i8, ptr %1, i64 496
  %.val3.i.i.i.i = load ptr, ptr %i.fa, align 8, !noalias !13234
  %i.fb = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !13236, !nonnull !17, !noundef !17
  invoke void %i.fc(ptr noundef %.val3.i.i.i.i)
          to label %.body.i.i unwind label %bb.ag, !noalias !13236, !inline_history !5

bb.ae:                                            ; preds = %bb.ab
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.val.i.i.i.i = load ptr, ptr %i.fd, align 8, !noalias !13234, !align !24, !noundef !17 ; 2 uses
  %i.fe = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.fe, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtBG_9Semaphore7acquire0ECsQbU2fm3lSD_3xet.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ff = getelementptr i8, ptr %1, i64 496
  %.val1.i.i.i.i = load ptr, ptr %i.ff, align 8, !noalias !13234
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !13236, !nonnull !17, !noundef !17
  invoke void %i.fh(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtBG_9Semaphore7acquire0ECsQbU2fm3lSD_3xet.exit.i.i unwind label %bb.ai, !noalias !13236, !inline_history !42

bb.ag:                                            ; preds = %bb.ad
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !13236
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtBG_9Semaphore7acquire0ECsQbU2fm3lSD_3xet.exit.i.i: ; preds = %bb.af, %bb.ae, %bb.aa
  %i.fj = icmp eq ptr %i.er, null
  br i1 %i.fj, label %bb.ah, label %.thread131.i.i

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtBG_9Semaphore7acquire0ECsQbU2fm3lSD_3xet.exit.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !13234, !nonnull !17, !align !24, !noundef !17
  br label %bb.u

.thread131.i.i:                                   ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsUrhh0HcRih_5tokio4sync9semaphoreNtBG_9Semaphore7acquire0ECsQbU2fm3lSD_3xet.exit.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 456
  store i8 1, ptr %i.fm, align 8, !noalias !13234
  store ptr %i.er, ptr %i.em, align 8, !noalias !13234
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 472
  store i32 %i.et, ptr %i.fn, align 8, !noalias !13234
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 457
  store i8 0, ptr %i.fo, align 1, !noalias !13234
  %.sroa.082.0.copyload.i.i = load ptr, ptr %i.el, align 8, !noalias !13234, !nonnull !17, !noundef !17
  %.sroa.583.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.785.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.sroa.987.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.sroa.1189.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.sroa.1189.0.copyload.i.i = load ptr, ptr %.sroa.1189.0..sroa_idx.i.i, align 8, !noalias !13234, !nonnull !17, !noundef !17
  %.sroa.1290.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %.sroa.975.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 616
  %.sroa.1076.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.fq = load <2 x ptr>, ptr %.sroa.583.0..sroa_idx.i.i, align 8, !noalias !13234 ; 3 uses
  %i.fr = extractelement <2 x ptr> %i.fq, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fr) ]
  %i.fs = extractelement <2 x ptr> %i.fq, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fs) ]
  %.sroa.1278.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.ft = load <2 x ptr>, ptr %.sroa.785.0..sroa_idx.i.i, align 8, !noalias !13234 ; 3 uses
  %3 = extractelement <2 x ptr> %i.ft, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %4 = extractelement <2 x ptr> %i.ft, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %5 = load <2 x ptr>, ptr %.sroa.1290.0..sroa_idx.i.i, align 8, !noalias !13234
  %.sroa.1290.0.copyload.i.i = load ptr, ptr %.sroa.1290.0..sroa_idx.i.i, align 8, !noalias !13234
  store <2 x ptr> %5, ptr %i.fp, align 8, !noalias !13234
  store ptr %.sroa.082.0.copyload.i.i, ptr %.sroa.975.0..sroa_idx.i.i, align 8, !noalias !13234
  store <2 x ptr> %i.fq, ptr %.sroa.1076.0..sroa_idx.i.i, align 8, !noalias !13234
  store <2 x ptr> %i.ft, ptr %.sroa.1278.0..sroa_idx.i.i, align 8, !noalias !13234
  %.sroa.1480.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.fu = load <2 x ptr>, ptr %.sroa.987.0..sroa_idx.i.i, align 8, !noalias !13234
  store <2 x ptr> %i.fu, ptr %.sroa.1480.0..sroa_idx.i.i, align 8, !noalias !13234
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 672
  store ptr %.sroa.1189.0.copyload.i.i, ptr %.sroa.16.0..sroa_idx.i.i, align 8, !noalias !13234
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 686 ; 2 uses
  store i8 0, ptr %.sroa.18.0..sroa_idx.i.i, align 2, !noalias !13234
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1194.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13234
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2220.i.i.i), !noalias !13234
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i), !noalias !13234
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af, %bb.r, %bb.n, %bb.m
  %i.fv = phi ptr [ %i.ei, %bb.af ], [ %i.dg, %bb.r ], [ %i.bh, %bb.n ], [ %i.bh, %bb.m ]
  %i.fw = phi ptr [ %i.ej, %bb.af ], [ %i.dh, %bb.r ], [ %i.bg, %bb.n ], [ %i.bg, %bb.m ]
  %i.fx = phi ptr [ %i.ek, %bb.af ], [ %i.di, %bb.r ], [ %.phi.trans.insert.i, %bb.n ], [ %.phi.trans.insert.i, %bb.m ]
  %i.fy = phi ptr [ %i.el, %bb.af ], [ %i.dj, %bb.r ], [ %i.cv, %bb.n ], [ %i.cv, %bb.m ]
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.aj:                                            ; preds = %bb.i
  %.phi.trans.insert99.i.i = getelementptr inbounds nuw i8, ptr %1, i64 686 ; 12 uses
  %.pre100.i.i = load i8, ptr %.phi.trans.insert99.i.i, align 2, !range !36, !noalias !13237
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1194.i.i)
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13234
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2220.i.i.i), !noalias !13234
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i), !noalias !13234
  switch i8 %.pre100.i.i, label %default.unreachable88 [
    i8 0, label %._crit_edge.i
    i8 1, label %bb.au
    i8 2, label %bb.av
    i8 3, label %bb.aw
    i8 4, label %bb.bq
    i8 5, label %bb.al
    i8 6, label %bb.am
  ]

._crit_edge.i:                                    ; preds = %bb.aj
  %.pre56.i = load ptr, ptr %i.ga, align 8, !noalias !13237
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i, %.thread131.i.i
  %i.gb = phi ptr [ %i.ei, %.thread131.i.i ], [ %i.bh, %._crit_edge.i ] ; 4 uses
  %i.gc = phi ptr [ %i.ej, %.thread131.i.i ], [ %i.bg, %._crit_edge.i ] ; 4 uses
  %i.gd = phi ptr [ %i.ek, %.thread131.i.i ], [ %.phi.trans.insert.i, %._crit_edge.i ] ; 4 uses
  %i.ge = phi ptr [ %i.el, %.thread131.i.i ], [ %i.cv, %._crit_edge.i ] ; 4 uses
  %i.gf = phi ptr [ %.sroa.1290.0.copyload.i.i, %.thread131.i.i ], [ %.pre56.i, %._crit_edge.i ]
  %i.gg = phi ptr [ %.sroa.18.0..sroa_idx.i.i, %.thread131.i.i ], [ %.phi.trans.insert99.i.i, %._crit_edge.i ] ; 4 uses
  %i.gh = phi ptr [ %i.fp, %.thread131.i.i ], [ %i.ga, %._crit_edge.i ] ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 681
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 682
  store i32 0, ptr %i.gk, align 2, !noalias !13237
  store i8 1, ptr %i.gj, align 8, !noalias !13237
  store i8 1, ptr %i.gi, align 1, !noalias !13237
  %.not.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i, label %bb.bo, label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !13237
  br label %bb.en

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !13237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !13237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !13237
  br label %bb.gc

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !13237
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !13237, !nonnull !17, !align !24, !noundef !17
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %.val86.i.i.i = load ptr, ptr %i.gn, align 8, !noalias !13238, !nonnull !17, !noundef !17
  %i.go = getelementptr inbounds nuw i8, ptr %.val86.i.i.i, i64 144
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.go)
          to label %bb.ap unwind label %bb.ao, !noalias !13238

bb.ao:                                            ; preds = %bb.an
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !13237
  br label %.body113.i.i.i

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !13237, !nonnull !17, !align !24, !noundef !17
  %.val100.i.i.i = load ptr, ptr %i.gr, align 8, !noalias !13238, !nonnull !17, !noundef !17
  %i.gs = getelementptr inbounds nuw i8, ptr %.val100.i.i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.gs, i64 32, i1 false), !noalias !13238
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !13237
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gu, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !13237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !13237
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !13237, !nonnull !17, !align !24, !noundef !17 ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 16
  %.val98.i.i.i = load i64, ptr %i.gx, align 8, !noalias !13238, !noundef !17
  %.not.i.not.i.i.i = icmp eq i64 %.val98.i.i.i, 0
  br i1 %.not.i.not.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gy = getelementptr i8, ptr %i.gw, i64 8
  %.val97.i.i.i = load ptr, ptr %i.gy, align 8, !noalias !13238, !nonnull !17, !noundef !17
  %i.gz = load <2 x i32>, ptr %.val97.i.i.i, align 4, !alias.scope !13239, !noalias !13238
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ha = phi <2 x i32> [ zeroinitializer, %bb.ap ], [ %i.gz, %bb.aq ]
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  store <2 x i32> %i.ha, ptr %i.hb, align 8, !noalias !13237
  %.val79.i.i.i = load ptr, ptr %i.gh, align 8, !noalias !13237, !nonnull !17, !noundef !17
  %i.hc = getelementptr i8, ptr %1, i64 488
  %.val80.i.i.i = load ptr, ptr %i.hc, align 8, !noalias !13237, !nonnull !17, !align !24, !noundef !17 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.val80.i.i.i, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !range !19, !invariant.load !17, !noalias !13238
  %i.hf = add nsw i64 %i.he, -1
  %i.hg = and i64 %i.hf, -16
  %i.hh = getelementptr inbounds nuw i8, ptr %.val79.i.i.i, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %.val80.i.i.i, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !invariant.load !17, !noalias !13238, !nonnull !17
  %i.hl = invoke { ptr, ptr } %i.hk(ptr noundef nonnull %i.hi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gt, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.hb)
          to label %bb.as unwind label %bb.bg, !noalias !13238 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.hm = extractvalue { ptr, ptr } %i.hl, 0
  %i.hn = extractvalue { ptr, ptr } %i.hl, 1
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 688
  store ptr %i.hm, ptr %i.ho, align 8, !noalias !13237
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 696
  store ptr %i.hn, ptr %i.hp, align 8, !noalias !13237
  br label %bb.aw

.body110.i.i.i:                                   ; preds = %bb.em, %.body138.i.i.i, %bb.bg, %bb.bf, %bb.be, %bb.ax
  %i.hq = phi ptr [ %i.hy, %bb.be ], [ %i.rs, %.body138.i.i.i ], [ %i.rs, %bb.em ], [ %i.hy, %bb.ax ], [ %i.ix, %bb.bg ], [ %i.hy, %bb.bf ]
  %i.hr = phi ptr [ %i.hz, %bb.be ], [ %i.rt, %.body138.i.i.i ], [ %i.rt, %bb.em ], [ %i.hz, %bb.ax ], [ %i.iy, %bb.bg ], [ %i.hz, %bb.bf ]
  %i.hs = phi ptr [ %i.ia, %bb.be ], [ %i.ru, %.body138.i.i.i ], [ %i.ru, %bb.em ], [ %i.ia, %bb.ax ], [ %i.iz, %bb.bg ], [ %i.ia, %bb.bf ]
  %i.ht = phi ptr [ %i.ib, %bb.be ], [ %i.rv, %.body138.i.i.i ], [ %i.rv, %bb.em ], [ %i.ib, %bb.ax ], [ %i.ja, %bb.bg ], [ %i.ib, %bb.bf ]
  %i.hu = phi ptr [ %i.ic, %bb.be ], [ %i.rw, %.body138.i.i.i ], [ %i.rw, %bb.em ], [ %i.ic, %bb.ax ], [ %i.jb, %bb.bg ], [ %i.ic, %bb.bf ]
  %i.hv = phi ptr [ %i.id, %bb.be ], [ %i.rx, %.body138.i.i.i ], [ %i.rx, %bb.em ], [ %i.id, %bb.ax ], [ %i.jc, %bb.bg ], [ %i.id, %bb.bf ]
  %.pn30.i.i.i = phi { ptr, i32 } [ %i.ir, %bb.be ], [ %.pn27.i.i.i, %.body138.i.i.i ], [ %.pn27.i.i.i, %bb.em ], [ %i.if, %bb.ax ], [ %i.jd, %bb.bg ], [ %i.ir, %bb.bf ]
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 496
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key3KeyECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(56) %i.hw) #23
          to label %.body113.i.i.i unwind label %bb.at, !noalias !13238

bb.at:                                            ; preds = %bb.ik, %bb.ii, %bb.if, %bb.ie, %bb.id, %bb.hx, %bb.hq, %bb.hc, %bb.hb, %.thread243.i.i.i, %bb.gy, %bb.gd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface6ClientEL_EECsQbU2fm3lSD_3xet.exit.i.i.i, %bb.fz, %bb.fi, %bb.eo, %bb.em, %bb.el, %bb.ej, %bb.ei, %bb.eh, %.body119.i.i.i, %bb.ax, %.body110.i.i.i
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !13238
  unreachable

bb.au:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #26
          to label %.noexc49.i.i unwind label %bb.il, !noalias !13236

.noexc49.i.i:                                     ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #26
          to label %.noexc50.i.i unwind label %bb.il, !noalias !13236

.noexc50.i.i:                                     ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.as, %bb.aj
  %i.hy = phi ptr [ %i.gb, %bb.as ], [ %i.bh, %bb.aj ] ; 10 uses
  %i.hz = phi ptr [ %i.gc, %bb.as ], [ %i.bg, %bb.aj ] ; 9 uses
  %i.ia = phi ptr [ %i.gd, %bb.as ], [ %.phi.trans.insert.i, %bb.aj ] ; 10 uses
  %i.ib = phi ptr [ %i.ge, %bb.as ], [ %i.cv, %bb.aj ] ; 9 uses
  %i.ic = phi ptr [ %i.gg, %bb.as ], [ %.phi.trans.insert99.i.i, %bb.aj ] ; 10 uses
  %i.id = phi ptr [ %i.gh, %bb.as ], [ %i.ga, %bb.aj ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !13237
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 4 uses
  invoke void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10CacheRangeENtNtB2z_5error15ChunkCacheErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ie, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ay unwind label %bb.ax, !noalias !13238

bb.ax:                                            ; preds = %bb.aw
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !13237
  %.val73.i.i.i = load ptr, ptr %i.ie, align 8, !noalias !13237
  %i.ig = getelementptr i8, ptr %1, i64 696
  %.val74.i.i.i = load ptr, ptr %i.ig, align 8, !noalias !13237, !nonnull !17, !align !24, !noundef !17
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCsiAynQAjgDuT_10xet_client11chunk_cache10CacheRangeENtNtB2N_5error15ChunkCacheErrorENtNtB4_6marker4SendEL_EEECsQbU2fm3lSD_3xet(ptr %.val73.i.i.i, ptr nonnull %.val74.i.i.i) #23
          to label %.body110.i.i.i unwind label %bb.at, !noalias !13238

bb.ay:                                            ; preds = %bb.aw
  %i.ih = load i64, ptr %i.aj, align 8, !range !26, !noalias !13237, !noundef !17
  %i.ii = icmp eq i64 %i.ih, -3
  br i1 %i.ii, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
end_hunk_0
