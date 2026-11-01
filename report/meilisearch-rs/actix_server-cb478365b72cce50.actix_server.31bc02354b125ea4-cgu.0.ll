Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_server-cb478365b72cce50.actix_server.31bc02354b125ea4-cgu.0?download=true
inline.NumInlined: 3999
inline.NumDeleted: 1944
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 40
begin_hunk_0_@"_ZN82_$LT$tokio..sync..mpsc..chan..Rx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$18Guard$LT$T$C$S$GT$5drain17h7864f098dbe6b5c9E":bb.a
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN82_$LT$tokio..sync..mpsc..chan..Rx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$18Guard$LT$T$C$S$GT$5drain17hf16eaacbfaa4b306E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$3pop17h378ab83d7032c067E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d)
  %i.e = load i64, ptr %i.a, align 8, !range !38, !noundef !12
  %i.f = icmp samesign ugt i64 %i.e, 4
  br i1 %i.f, label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..server..ServerCommand$GT$$GT$$GT$17h178605816f42bca3E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !12, !align !13, !noundef !12
  br label %bb.b

"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..server..ServerCommand$GT$$GT$$GT$17h178605816f42bca3E.exit": ; preds = %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..server..ServerCommand$GT$$GT$$GT$17h178605816f42bca3E.exit2", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %.lr.ph, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..server..ServerCommand$GT$$GT$$GT$17h178605816f42bca3E.exit2"
  invoke void @"_ZN94_$LT$tokio..sync..mpsc..unbounded..Semaphore$u20$as$u20$tokio..sync..mpsc..chan..Semaphore$GT$10add_permit17h97c7a284914c88dbE"(ptr noundef nonnull align 8 %i.h)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load i64, ptr %i.a, align 8, !range !38, !alias.scope !8263, !noundef !12
  %i.k = icmp samesign ugt i64 %i.j, 4
  br i1 %i.k, label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..server..ServerCommand$GT$$GT$$GT$17h178605816f42bca3E.exit1", label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_server..server..ServerCommand$GT$17h93eaf11f727d28b8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..server..ServerCommand$GT$$GT$$GT$17h178605816f42bca3E.exit1" unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.a, align 8, !range !38, !alias.scope !8264, !noundef !12
  %i.m = icmp samesign ugt i64 %i.l, 4
  br i1 %i.m, label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..server..ServerCommand$GT$$GT$$GT$17h178605816f42bca3E.exit2", label %bb.f

bb.f:                                             ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_server..server..ServerCommand$GT$17h93eaf11f727d28b8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..server..ServerCommand$GT$$GT$$GT$17h178605816f42bca3E.exit2"

"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..server..ServerCommand$GT$$GT$$GT$17h178605816f42bca3E.exit2": ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$3pop17h378ab83d7032c067E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d)
  %i.n = load i64, ptr %i.a, align 8, !range !38, !noundef !12
  %i.o = icmp samesign ugt i64 %i.n, 4
  br i1 %i.o, label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..server..ServerCommand$GT$$GT$$GT$17h178605816f42bca3E.exit", label %bb.b

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..server..ServerCommand$GT$$GT$$GT$17h178605816f42bca3E.exit1": ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN82_$LT$tokio..sync..mpsc..chan..Rx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$18Guard$LT$T$C$S$GT$5drain17hfad3f479c6901cfcE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = tail call fastcc { ptr, i8 } @"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$3pop17h8a52d817e16e13fbE"(ptr noalias noundef align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d) ; 2 uses
  %i.f = extractvalue { ptr, i8 } %i.e, 0         ; 2 uses
  %i.g = extractvalue { ptr, i8 } %i.e, 1         ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 %i.g, ptr %i.h, align 8
  %i.i = and i8 %i.g, -2
  %switch10 = icmp eq i8 %i.i, 2
  br i1 %switch10, label %"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..worker..Stop$GT$$GT$$GT$17h2a2b4580502bbdb4E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !12, !align !13, !noundef !12
  br label %bb.b

"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..worker..Stop$GT$$GT$$GT$17h2a2b4580502bbdb4E.exit": ; preds = %"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..worker..Stop$GT$$GT$$GT$17h2a2b4580502bbdb4E.exit7", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %.lr.ph, %"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..worker..Stop$GT$$GT$$GT$17h2a2b4580502bbdb4E.exit7"
  %i.l = phi ptr [ %i.f, %.lr.ph ], [ %i.ad, %"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..worker..Stop$GT$$GT$$GT$17h2a2b4580502bbdb4E.exit7" ] ; 6 uses
  invoke void @"_ZN94_$LT$tokio..sync..mpsc..unbounded..Semaphore$u20$as$u20$tokio..sync..mpsc..chan..Semaphore$GT$10add_permit17h97c7a284914c88dbE"(ptr noundef nonnull align 8 %i.k)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..worker..Stop$GT$$GT$$GT$17h2a2b4580502bbdb4E"(ptr noalias noundef align 8 dereferenceable(16) %i.a) #36
          to label %common.resume unwind label %bb.l

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i.i3 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i3, label %"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..worker..Stop$GT$$GT$$GT$17h2a2b4580502bbdb4E.exit7", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.o = invoke noundef i64 @_ZN5tokio4sync7oneshot5State12set_complete17hd7c1ac113075f48fE(ptr noundef nonnull align 8 %i.n)
          to label %.noexc.i.i.i.i5 unwind label %bb.g, !noalias !8285

.noexc.i.i.i.i5:                                  ; preds = %bb.e
  %i.p = and i64 %i.o, 5
  %or.cond.not.i.i.i.i.i.i6 = icmp eq i64 %i.p, 1
  br i1 %or.cond.not.i.i.i.i.i.i6, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.noexc.i.i.i.i5
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !8285, !nonnull !12, !align !13, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !8285, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !noalias !8285, !noundef !12
  invoke void %i.t(ptr noundef %i.v)
          to label %bb.i unwind label %bb.g, !noalias !8285, !inline_history !2

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !8286
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h032c20deca516d35E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
          to label %common.resume unwind label %bb.k

bb.i:                                             ; preds = %bb.f, %.noexc.i.i.i.i5
  %i.z = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !8287
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.j, label %"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..worker..Stop$GT$$GT$$GT$17h2a2b4580502bbdb4E.exit7"

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h032c20deca516d35E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
  br label %"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..worker..Stop$GT$$GT$$GT$17h2a2b4580502bbdb4E.exit7"

bb.k:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8285
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.w, %bb.h ], [ %i.m, %bb.c ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..worker..Stop$GT$$GT$$GT$17h2a2b4580502bbdb4E.exit7": ; preds = %bb.d, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = tail call fastcc { ptr, i8 } @"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$3pop17h8a52d817e16e13fbE"(ptr noalias noundef align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d) ; 2 uses
  %i.ad = extractvalue { ptr, i8 } %i.ac, 0       ; 2 uses
  %i.ae = extractvalue { ptr, i8 } %i.ac, 1       ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8
  store i8 %i.ae, ptr %i.h, align 8
  %i.af = and i8 %i.ae, -2
  %switch = icmp eq i8 %i.af, 2
  br i1 %switch, label %"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..worker..Stop$GT$$GT$$GT$17h2a2b4580502bbdb4E.exit", label %bb.b

bb.l:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll17hba6dcd8b16476220E"(ptr noalias noundef align 8 dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [3 x i8], align 4                 ; 8 uses
  %i.k = alloca [2 x i8], align 1                 ; 12 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [48 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 11 uses
  %i.ab = alloca [40 x i8], align 8               ; 7 uses
  %i.ac = alloca [40 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 10 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [48 x i8], align 8               ; 8 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [48 x i8], align 8               ; 8 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [32 x i8], align 8               ; 7 uses
  %i.aq = alloca [48 x i8], align 8               ; 3 uses
  %i.ar = alloca [32 x i8], align 8               ; 5 uses
  %i.as = alloca [32 x i8], align 8               ; 8 uses
  %i.at = alloca [8 x i8], align 8                ; 2 uses
  %i.au = alloca [8 x i8], align 8                ; 7 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 7 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [48 x i8], align 8               ; 8 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 5 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [48 x i8], align 8               ; 8 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [32 x i8], align 8               ; 8 uses
  %i.bg = alloca [112 x i8], align 8              ; 5 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [48 x i8], align 8               ; 8 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [32 x i8], align 8               ; 7 uses
  %i.bl = alloca [24 x i8], align 8               ; 5 uses
  %i.bm = alloca [16 x i8], align 8               ; 5 uses
  %i.bn = alloca [48 x i8], align 8               ; 8 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [32 x i8], align 8               ; 8 uses
  %i.bq = alloca [48 x i8], align 8               ; 8 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [32 x i8], align 8               ; 7 uses
  %i.bt = alloca [24 x i8], align 8               ; 5 uses
  %i.bu = alloca [48 x i8], align 8               ; 8 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [32 x i8], align 8               ; 8 uses
  %i.bx = alloca [8 x i8], align 8                ; 8 uses
  %i.by = alloca [8 x i8], align 8                ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8366)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8367
  %i.ca = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE") ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 8, !range !41, !noalias !8368, !noundef !12
  switch i8 %i.cc, label %default.unreachable469 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i"
  ], !prof !44

default.unreachable469:                           ; preds = %bb.cd, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.ca, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h7f25aac471b04ff2E), !noalias !8368
  store i8 1, ptr %i.cb, align 8, !noalias !8368
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 68
  %i.ce = load i8, ptr %i.cd, align 4, !range !31, !noalias !8369, !noundef !12 ; 2 uses
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 69 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !8369 ; 4 uses
  br i1 %i.cf, label %bb.d, label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i"

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i, label %"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$4recv17h92dca07c32f63a57E.exit.thread", label %bb.e

"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$4recv17h92dca07c32f63a57E.exit.thread": ; preds = %bb.d
  tail call void @_ZN5tokio4task4coop14register_waker17hc1a950aa71c31494E(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !noalias !8365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8367
  store i24 0, ptr %i.j, align 4, !noalias !8367
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  call void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.ci), !noalias !8365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8367
  br label %bb.cd

bb.e:                                             ; preds = %bb.d
  %i.cj = add i8 %i.ch, -1
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i"

"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i": ; preds = %bb.c, %bb.e
  %.sroa.5.0.i.i.i.i = phi i8 [ %i.cj, %bb.e ], [ %i.ch, %bb.c ]
  store i8 %.sroa.5.0.i.i.i.i, ptr %i.cg, align 1, !noalias !8369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8367
  store i24 0, ptr %i.j, align 4, !noalias !8367
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  call void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.ck), !noalias !8365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8367
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i"

"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i", %bb.a
  %.sroa.03.012.i26.off8.i = phi i8 [ %i.ce, %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i" ], [ 0, %bb.a ]
  %.sroa.03.012.i26.off16.i = phi i8 [ %i.ch, %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i" ], [ 0, %bb.a ]
  store i8 %.sroa.03.012.i26.off8.i, ptr %i.k, align 1, !noalias !8367
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %.sroa.03.012.i26.off16.i, ptr %i.cl, align 1, !noalias !8367
  %i.cm = load ptr, ptr %i.bz, align 8, !alias.scope !8365, !nonnull !12, !noundef !12 ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 416 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 128 ; 2 uses
  %i.cp = invoke fastcc { ptr, i8 } @"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$3pop17h8a52d817e16e13fbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 %i.co)
          to label %.noexc.i unwind label %bb.p, !noalias !8365 ; 2 uses

.noexc.i:                                         ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i"
  %i.cq = extractvalue { ptr, i8 } %i.cp, 0       ; 2 uses
  %i.cr = extractvalue { ptr, i8 } %i.cp, 1       ; 3 uses
  switch i8 %i.cr, label %bb.m [
    i8 3, label %bb.f
    i8 2, label %"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$4recv17h92dca07c32f63a57E.exit.thread470.sink.split"
  ]

bb.f:                                             ; preds = %.noexc.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 256
  %i.ct = load ptr, ptr %1, align 8, !alias.scope !8366, !noalias !8370, !nonnull !12, !align !13, !noundef !12
  invoke void @_ZN5tokio4sync4task12atomic_waker11AtomicWaker15register_by_ref17h96ba7c9b5941a720E(ptr noundef nonnull align 8 %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ct)
          to label %.noexc17.i unwind label %bb.p, !noalias !8365

.noexc17.i:                                       ; preds = %bb.f
  %i.cu = invoke fastcc { ptr, i8 } @"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$3pop17h8a52d817e16e13fbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 %i.co)
          to label %.noexc18.i unwind label %bb.p, !noalias !8365 ; 2 uses

.noexc18.i:                                       ; preds = %.noexc17.i
  %i.cv = extractvalue { ptr, i8 } %i.cu, 0       ; 2 uses
  %i.cw = extractvalue { ptr, i8 } %i.cu, 1       ; 3 uses
  switch i8 %i.cw, label %bb.i [
    i8 3, label %bb.g
    i8 2, label %"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$4recv17h92dca07c32f63a57E.exit.thread470.sink.split"
  ]

bb.g:                                             ; preds = %.noexc18.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 440
  %i.cy = load i8, ptr %i.cx, align 8, !range !31, !noalias !8371, !noundef !12
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.h, label %"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$4recv17h92dca07c32f63a57E.exit.thread470"

bb.h:                                             ; preds = %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 448
  %i.db = invoke noundef zeroext i1 @"_ZN94_$LT$tokio..sync..mpsc..unbounded..Semaphore$u20$as$u20$tokio..sync..mpsc..chan..Semaphore$GT$7is_idle17h4d63f60eccc2cd6aE"(ptr noundef nonnull align 8 %i.da)
          to label %.noexc19.i unwind label %bb.p, !noalias !8365

.noexc19.i:                                       ; preds = %bb.h
  br i1 %i.db, label %"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$4recv17h92dca07c32f63a57E.exit.thread470.sink.split", label %"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$4recv17h92dca07c32f63a57E.exit.thread470"

bb.i:                                             ; preds = %.noexc18.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8372
  store ptr %i.cv, ptr %i.h, align 8, !noalias !8372
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 %i.cw, ptr %i.dc, align 8, !noalias !8372
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cm, i64 448
  invoke void @"_ZN94_$LT$tokio..sync..mpsc..unbounded..Semaphore$u20$as$u20$tokio..sync..mpsc..chan..Semaphore$GT$10add_permit17h97c7a284914c88dbE"(ptr noundef nonnull align 8 %i.dd)
          to label %bb.k unwind label %bb.j, !noalias !8371

bb.j:                                             ; preds = %bb.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$actix_server..worker..Stop$GT$17hceeaa816b6c46f11E"(ptr noalias noundef align 8 dereferenceable(16) %i.h) #36
          to label %.body.i unwind label %bb.l, !noalias !8371

bb.k:                                             ; preds = %bb.i
  store i8 0, ptr %i.k, align 1, !noalias !8372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8372
  br label %"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$4recv17h92dca07c32f63a57E.exit"

bb.l:                                             ; preds = %bb.n, %bb.j
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8371
  unreachable

bb.m:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8372
  store ptr %i.cq, ptr %i.i, align 8, !noalias !8372
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %i.cr, ptr %i.dg, align 8, !noalias !8372
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 448
  invoke void @"_ZN94_$LT$tokio..sync..mpsc..unbounded..Semaphore$u20$as$u20$tokio..sync..mpsc..chan..Semaphore$GT$10add_permit17h97c7a284914c88dbE"(ptr noundef nonnull align 8 %i.dh)
end_hunk_0
begin_hunk_1_@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll17hba6dcd8b16476220E":bb.a
  store i8 4, ptr %i.sx, align 8, !alias.scope !8387, !noalias !8386
  br label %pred.store.continue617

pred.store.continue617:                           ; preds = %pred.store.if616, %pred.store.continue615
  %i.tx = extractelement <8 x i1> %i.tr, i64 5
  br i1 %i.tx, label %pred.store.if618, label %pred.store.continue619

pred.store.if618:                                 ; preds = %pred.store.continue617
  store i8 4, ptr %i.sy, align 8, !alias.scope !8387, !noalias !8386
  br label %pred.store.continue619

pred.store.continue619:                           ; preds = %pred.store.if618, %pred.store.continue617
  %i.ty = extractelement <8 x i1> %i.tr, i64 6
  br i1 %i.ty, label %pred.store.if620, label %pred.store.continue621

pred.store.if620:                                 ; preds = %pred.store.continue619
  store i8 4, ptr %i.sz, align 8, !alias.scope !8387, !noalias !8386
  br label %pred.store.continue621

pred.store.continue621:                           ; preds = %pred.store.if620, %pred.store.continue619
  %i.tz = extractelement <8 x i1> %i.tr, i64 7
  br i1 %i.tz, label %pred.store.if622, label %pred.store.continue623

pred.store.if622:                                 ; preds = %pred.store.continue621
  store i8 4, ptr %i.ta, align 8, !alias.scope !8387, !noalias !8386
  br label %pred.store.continue623

pred.store.continue623:                           ; preds = %pred.store.if622, %pred.store.continue621
  %index.next624 = add nuw i64 %index607, 8       ; 2 uses
  %i.ua = icmp eq i64 %index.next624, %n.vec605
  br i1 %i.ua, label %vec.epilog.middle.block625, label %vec.epilog.vector.body606, !llvm.loop !8332

vec.epilog.middle.block625:                       ; preds = %pred.store.continue623
  %cmp.n626 = icmp eq i64 %.val258, %n.vec605
  br i1 %cmp.n626, label %_ZN12actix_server6worker12ServerWorker8shutdown17h578c1413a5d77284E.exit290, label %.preheader411.preheader

.preheader411.preheader:                          ; preds = %iter.check599, %vec.epilog.iter.check600, %vec.epilog.middle.block625
  %.sroa.06.0.i.i288.ph = phi i64 [ 0, %iter.check599 ], [ %n.vec561, %vec.epilog.iter.check600 ], [ %n.vec605, %vec.epilog.middle.block625 ]
  br label %.preheader411

.preheader411:                                    ; preds = %.preheader411.preheader, %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb67700a5c649c3a6E.exit.i.i289"
  %.sroa.06.0.i.i288 = phi i64 [ %i.uf, %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb67700a5c649c3a6E.exit.i.i289" ], [ %.sroa.06.0.i.i288.ph, %.preheader411.preheader ] ; 2 uses
  %i.ub = getelementptr inbounds nuw [32 x i8], ptr %.val257, i64 %.sroa.06.0.i.i288
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 24 ; 2 uses
  %i.ud = load i8, ptr %i.uc, align 8, !range !19, !alias.scope !8385, !noalias !8386, !noundef !12
  %i.ue = icmp eq i8 %i.ud, 0
  br i1 %i.ue, label %bb.bs, label %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb67700a5c649c3a6E.exit.i.i289"

bb.bs:                                            ; preds = %.preheader411
  store i8 4, ptr %i.uc, align 8, !alias.scope !8387, !noalias !8386
  br label %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb67700a5c649c3a6E.exit.i.i289"

"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb67700a5c649c3a6E.exit.i.i289": ; preds = %bb.bs, %.preheader411
  %i.uf = add nuw i64 %.sroa.06.0.i.i288, 1       ; 2 uses
  %i.ug = icmp eq i64 %i.uf, %.val258
  br i1 %i.ug, label %_ZN12actix_server6worker12ServerWorker8shutdown17h578c1413a5d77284E.exit290, label %.preheader411, !llvm.loop !8333

bb.bt:                                            ; preds = %.noexc285, %.noexc284, %bb.bi, %.noexc282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.br

_ZN12actix_server6worker12ServerWorker8shutdown17h578c1413a5d77284E.exit290: ; preds = %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb67700a5c649c3a6E.exit.i.i289", %middle.block597, %vec.epilog.middle.block625, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke void @_ZN5tokio4time5sleep5sleep17hd300a2297f0df9bfE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.bg, i64 noundef 1, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @422)
          to label %bb.bu unwind label %.thread347

bb.bu:                                            ; preds = %_ZN12actix_server6worker12ServerWorker8shutdown17h578c1413a5d77284E.exit290
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !8388
  %i.uh = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !8388 ; 5 uses
  %i.ui = icmp eq ptr %i.uh, null
  br i1 %i.ui, label %bb.bv, label %bb.by, !prof !18

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #35
          to label %.noexc291 unwind label %bb.bw

.noexc291:                                        ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %bb.bv
  %i.uj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$tokio..time..sleep..Sleep$GT$17hc658288c8a55198dE"(ptr noundef nonnull align 8 dereferenceable(112) %i.bg) #36
          to label %.thread344 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.uk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.by:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.uh, ptr noundef nonnull align 8 dereferenceable(112) %i.bg, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.ul = invoke { i64, i32 } @_ZN5tokio4time7instant7Instant3now17hb8eb4bd65e3ef4afE()
          to label %bb.ca unwind label %bb.bz     ; 2 uses

bb.bz:                                            ; preds = %bb.by
  %i.um = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17hff3718e3f0171b89E"(ptr %i.uh) #36
          to label %.thread344 unwind label %bb.cc

bb.ca:                                            ; preds = %bb.by
  %i.un = extractvalue { i64, i32 } %i.ul, 0      ; 2 uses
  %i.uo = extractvalue { i64, i32 } %i.ul, 1      ; 2 uses
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_server..worker..WorkerState$GT$17h32e3e8dd3ab3fb23E"(ptr noalias noundef align 8 dereferenceable(40) %0)
          to label %bb.cb unwind label %.thread341

.thread341:                                       ; preds = %bb.ca
  %i.up = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i16.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.uh, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.un, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.uo, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  br label %common.resume

bb.cb:                                            ; preds = %bb.ca
  store i64 3, ptr %0, align 8
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i16.i, ptr %.sroa.5.0..sroa_idx30, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.uh, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx30.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.un, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx30.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.uo, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx30.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bz, %bb.ey, %bb.ff, %bb.el, %bb.db, %.thread344
  %i.uq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

.thread344:                                       ; preds = %bb.bz, %bb.bw, %.thread347
  %.pn236340 = phi { ptr, i32 } [ %i.uj, %bb.bw ], [ %lpad.thr_comm, %.thread347 ], [ %i.um, %bb.bz ]
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$tokio..sync..oneshot..Sender$LT$bool$GT$$GT$17hd18d88e94f5e85fdE"(ptr noalias noundef align 8 dereferenceable(8) %i.by) #36
          to label %common.resume unwind label %bb.cc

bb.cd:                                            ; preds = %"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$4recv17h92dca07c32f63a57E.exit.thread470", %"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$4recv17h92dca07c32f63a57E.exit.thread", %"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$4recv17h92dca07c32f63a57E.exit", %bb.cb
  %i.ur = load i64, ptr %0, align 8, !range !54, !noundef !12
  switch i64 %i.ur, label %default.unreachable469 [
    i64 0, label %.preheader
    i64 1, label %bb.ce
    i64 2, label %bb.cf
    i64 3, label %.preheader410
  ]

.preheader410:                                    ; preds = %bb.cd
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call fastcc void @"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$4recv17h64bdd3fab52bf741E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ae, ptr noalias noundef align 8 dereferenceable(8) %i.us, ptr noalias noundef align 8 dereferenceable(32) %1)
  %i.ut = load i32, ptr %i.ae, align 8, !range !47, !noundef !12 ; 2 uses
  %switch246.not425 = icmp samesign ult i32 %i.ut, 2
  br i1 %switch246.not425, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader410
  %.sroa.5315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.4.0..sroa_idx321 = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.5322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.uy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.em

.preheader:                                       ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call fastcc void @_ZN12actix_server6worker12ServerWorker15check_readiness17h49b6f60a4c621583E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef align 8 dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(32) %1)
  %i.uz = load i8, ptr %i.aa, align 8, !range !31, !noundef !12
  %i.va = trunc nuw i8 %i.uz to i1
  br i1 %i.va, label %._crit_edge427, label %.lr.ph426

.lr.ph426:                                        ; preds = %.preheader
  %i.vb = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.393.sroa.2.0..sroa.393.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.vf = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.vi = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.vj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call fastcc void @_ZN12actix_server6worker12ServerWorker15check_readiness17h49b6f60a4c621583E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias noundef align 8 dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(32) %1)
  %i.vk = load i8, ptr %i.aw, align 8, !range !31, !noundef !12
  %i.vl = trunc nuw i8 %i.vk to i1
  br i1 %i.vl, label %bb.dd, label %bb.de

bb.cf:                                            ; preds = %bb.cd
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.vo = load i64, ptr %i.vn, align 8, !noundef !12
  store i64 %i.vo, ptr %i.av, align 8
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.vq = load i64, ptr %i.vp, align 8, !noundef !12
  store i64 %i.vq, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.vr = load ptr, ptr %i.vm, align 8, !nonnull !12, !noundef !12
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.vt = load ptr, ptr %i.vs, align 8, !nonnull !12, !align !13, !noundef !12
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 24
  %i.vv = load ptr, ptr %i.vu, align 8, !invariant.load !12, !nonnull !12
  call void %i.vv(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.as, ptr noundef nonnull align 1 %i.vr, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.vw = load i64, ptr %i.as, align 8, !range !34, !noundef !12
  %i.vx = trunc nuw i64 %i.vw to i1
  br i1 %i.vx, label %bb.dj, label %bb.dk

._crit_edge427:                                   ; preds = %"_ZN11actix_utils6future5ready14Ready$LT$T$GT$10into_inner17hfc82bdc3729fc7b2E.exit", %.preheader
  %i.vy = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.vz = load i64, ptr %i.vy, align 8, !noundef !12
  %i.wa = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.wb = load i64, ptr %i.wa, align 8, !noundef !12
  call fastcc void @_ZN12actix_server6worker12ServerWorker15restart_service17h0700bfbba1acc428E(ptr noalias noundef align 8 dereferenceable(120) %0, i64 noundef %i.vz, i64 noundef %i.wb)
  br label %bb.cs

bb.cg:                                            ; preds = %.lr.ph426, %"_ZN11actix_utils6future5ready14Ready$LT$T$GT$10into_inner17hfc82bdc3729fc7b2E.exit"
  %i.wc = load i8, ptr %i.vb, align 1, !range !31, !noundef !12
  %i.wd = trunc nuw i8 %i.wc to i1
  br i1 %i.wd, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.we = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.wf = icmp eq i64 %i.we, 0
  br i1 %i.wf, label %bb.cj, label %.critedge

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call fastcc void @"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$4recv17h64bdd3fab52bf741E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.s, ptr noalias noundef align 8 dereferenceable(8) %i.vc, ptr noalias noundef align 8 dereferenceable(32) %1)
  %i.wg = load i32, ptr %i.s, align 8, !range !47, !noundef !12 ; 3 uses
  %i.wh = icmp eq i32 %i.wg, 3                    ; 2 uses
  br i1 %i.wh, label %bb.cw, label %bb.ct

bb.cj:                                            ; preds = %bb.ch
  %i.wi = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h1b98b180cdeaa07bE", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.wi, label %bb.ck [
    i8 0, label %.critedge
    i8 1, label %.thread369
    i8 2, label %.thread369
  ], !prof !15

bb.ck:                                            ; preds = %bb.cj
  %i.wj = call noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h1b98b180cdeaa07bE") ; 2 uses
  %i.wk = icmp eq i8 %i.wj, 0
  br i1 %i.wk, label %.critedge, label %.thread369

.thread369:                                       ; preds = %bb.cj, %bb.cj, %bb.ck
  %.sroa.083.0371 = phi i8 [ %i.wj, %bb.ck ], [ %i.wi, %bb.cj ], [ %i.wi, %bb.cj ]
  %i.wl = load ptr, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h1b98b180cdeaa07bE", align 8, !nonnull !12, !align !13, !noundef !12
  %i.wm = call noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.wl, i8 noundef %.sroa.083.0371)
  br i1 %i.wm, label %bb.cl, label %.critedge

bb.cl:                                            ; preds = %.thread369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.wn = load ptr, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h1b98b180cdeaa07bE", align 8, !nonnull !12, !align !13, !noundef !12
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr @424, ptr %i.x, align 8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 1, ptr %i.wp, align 8
  %i.wq = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr null, ptr %i.wq, align 8
  %i.wr = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.wr, align 8
  %i.ws = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.ws, align 8
  store ptr %i.x, ptr %i.y, align 8
  %i.wt = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @51, ptr %i.wt, align 8
  store i64 1, ptr %i.z, align 8
  %.sroa.085.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %.sroa.085.sroa.4.0..sroa_idx, align 8
  %.sroa.085.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 1, ptr %.sroa.085.sroa.5.0..sroa_idx, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.wo, ptr %.sroa.486.0..sroa_idx, align 8
  call fastcc void @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h6272dfba38069246E"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.cp

.critedge:                                        ; preds = %bb.cj, %.thread369, %bb.ch, %bb.ck
  %i.wu = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.wv = icmp eq i8 %i.wu, 0
  br i1 %i.wv, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %.critedge
  %i.ww = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.wx = icmp ult i64 %i.ww, 6
  call void @llvm.assume(i1 %i.wx)
  %i.wy = icmp samesign ugt i64 %i.ww, 4
  br i1 %i.wy, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.wz = load ptr, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h1b98b180cdeaa07bE", align 8, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 32
  %i.xb = load ptr, ptr %i.xa, align 8, !nonnull !12, !align !14, !noundef !12
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 40
  %i.xd = load i64, ptr %i.xc, align 8, !noundef !12
  store i64 5, ptr %i.w, align 8
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.xb, ptr %.sroa.5206.0..sroa_idx, align 8
  %.sroa.7207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.xd, ptr %.sroa.7207.0..sroa_idx, align 8
  %i.xe = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.xf = extractvalue { ptr, ptr } %i.xe, 0      ; 2 uses
  %i.xg = extractvalue { ptr, ptr } %i.xe, 1      ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 24
  %i.xi = load ptr, ptr %i.xh, align 8, !invariant.load !12, !nonnull !12
  %i.xj = call noundef zeroext i1 %i.xi(ptr noundef align 1 %i.xf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
  br i1 %i.xj, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.xk = load ptr, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h1b98b180cdeaa07bE", align 8, !nonnull !12, !align !13, !noundef !12
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr @424, ptr %i.t, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.xm, align 8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %i.xn, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.xo, align 8
  %i.xp = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.xp, align 8
  store ptr %i.t, ptr %i.u, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @51, ptr %i.xq, align 8
  store i64 1, ptr %i.v, align 8
  %.sroa.4181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %.sroa.4181.0..sroa_idx, align 8
  %.sroa.5182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1, ptr %.sroa.5182.0..sroa_idx, align 8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.xl, ptr %i.xr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.wz, ptr noundef nonnull align 1 %i.xf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xg, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co, %bb.cm, %.critedge, %bb.cl
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_server..worker..WorkerState$GT$17h32e3e8dd3ab3fb23E"(ptr noalias noundef align 8 dereferenceable(40) %0)
          to label %bb.cr unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.xs = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %0, align 8
  br label %common.resume

bb.cr:                                            ; preds = %bb.cp
  store i64 1, ptr %0, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %._crit_edge427
  %i.xt = call noundef zeroext i1 @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll17hba6dcd8b16476220E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.bb

bb.ct:                                            ; preds = %bb.ci
  %.sroa.393.sroa.0.0.copyload = load i32, ptr %.sroa.393.0..sroa_idx, align 4 ; 2 uses
  %.sroa.393.sroa.2.0.copyload = load i64, ptr %.sroa.393.sroa.2.0..sroa.393.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.not232 = icmp eq i32 %i.wg, 2
  br i1 %.not232, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !8389)
  %i.xu = load i64, ptr %i.ve, align 8, !alias.scope !8389, !noundef !12 ; 2 uses
  %i.xv = load ptr, ptr %i.vd, align 8, !alias.scope !8389, !nonnull !12, !noundef !12 ; 4 uses
  %.val.i.i = load i64, ptr %i.xv, align 8, !noalias !8389, !noundef !12 ; 2 uses
  %i.xw = icmp ne i64 %.val.i.i, 0
  call void @llvm.assume(i1 %i.xw)
  %i.xx = add i64 %.val.i.i, 1                    ; 2 uses
  store i64 %i.xx, ptr %i.xv, align 8, !noalias !8389
  %i.xy = icmp eq i64 %i.xx, 0
  br i1 %i.xy, label %bb.cv, label %bb.cx, !prof !18

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.trap()
  unreachable

bb.cw:                                            ; preds = %bb.ct, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.bb

bb.cx:                                            ; preds = %bb.cu
  store ptr %i.xv, ptr %i.r, align 8
  store i64 %i.xu, ptr %i.vf, align 8
  %i.xz = load i64, ptr %i.vg, align 8, !noundef !12 ; 2 uses
  %i.ya = icmp ult i64 %.sroa.393.sroa.2.0.copyload, %i.xz
  br i1 %i.ya, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.yb = load ptr, ptr %i.vh, align 8, !nonnull !12, !align !13, !noundef !12
  %i.yc = getelementptr inbounds nuw [32 x i8], ptr %i.yb, i64 %.sroa.393.sroa.2.0.copyload ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !nonnull !12, !align !14, !noundef !12
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.yf = load ptr, ptr %i.ye, align 8, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.xv, ptr %i.q, align 8
  store i64 %i.xu, ptr %i.vi, align 8
  store i32 %i.wg, ptr %i.vj, align 8
  store i32 %.sroa.393.sroa.0.0.copyload, ptr %2, align 4
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 32
  %i.yh = load ptr, ptr %i.yg, align 8, !invariant.load !12, !nonnull !12
  %i.yi = call noundef i8 %i.yh(ptr noundef nonnull align 1 %i.yd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not.i = icmp eq i8 %i.yi, 2
  br i1 %.not.i, label %.noexc296, label %"_ZN11actix_utils6future5ready14Ready$LT$T$GT$10into_inner17hfc82bdc3729fc7b2E.exit", !prof !18

bb.cz:                                            ; preds = %bb.cx
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.393.sroa.2.0.copyload, i64 noundef %i.xz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @425) #35
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %bb.dm, %bb.cz
  unreachable

.noexc296:                                        ; preds = %bb.cy
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #35
  unreachable

"_ZN11actix_utils6future5ready14Ready$LT$T$GT$10into_inner17hfc82bdc3729fc7b2E.exit": ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call fastcc void @_ZN12actix_server6worker12ServerWorker15check_readiness17h49b6f60a4c621583E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef align 8 dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(32) %1)
  %i.yj = load i8, ptr %i.aa, align 8, !range !31, !noundef !12
  %i.yk = trunc nuw i8 %i.yj to i1
  br i1 %i.yk, label %._crit_edge427, label %bb.cg

bb.db:                                            ; preds = %bb.cz
  %lpad.thr_comm.split-lp382 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$actix_server..worker..WorkerCounterGuard$GT$17ha0bde5fe99531ac8E"(ptr noalias noundef align 8 dereferenceable(16) %i.r) #36
          to label %bb.dc unwind label %bb.cc

bb.dc:                                            ; preds = %bb.db
  %i.yl = call noundef i32 @close(i32 noundef %.sroa.393.sroa.0.0.copyload) #24 ; 0 uses
  br label %common.resume

bb.dd:                                            ; preds = %bb.ce
  %i.ym = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.yn = load i64, ptr %i.ym, align 8, !noundef !12
  %i.yo = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.yp = load i64, ptr %i.yo, align 8, !noundef !12
  call fastcc void @_ZN12actix_server6worker12ServerWorker15restart_service17h0700bfbba1acc428E(ptr noalias noundef align 8 dereferenceable(120) %0, i64 noundef %i.yn, i64 noundef %i.yp)
  br label %.sink.split

bb.de:                                            ; preds = %bb.ce
  %i.yq = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.yr = load i8, ptr %i.yq, align 1, !range !31, !noundef !12
  %i.ys = trunc nuw i8 %i.yr to i1
  br i1 %i.ys, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_server..worker..WorkerState$GT$17h32e3e8dd3ab3fb23E"(ptr noalias noundef align 8 dereferenceable(40) %0)
          to label %bb.di unwind label %bb.dh

.sink.split:                                      ; preds = %bb.dd, %bb.di
  %i.yt = call noundef zeroext i1 @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll17hba6dcd8b16476220E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.dg

bb.dg:                                            ; preds = %.sink.split, %bb.de
  %.sroa.0.4.shrunk = phi i1 [ true, %bb.de ], [ %i.yt, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.bb

bb.dh:                                            ; preds = %bb.df
  %i.yu = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %0, align 8
  br label %common.resume

bb.di:                                            ; preds = %bb.df
  store i64 0, ptr %0, align 8
  br label %.sink.split

bb.dj:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.bb

bb.dk:                                            ; preds = %bb.cf
  %i.yv = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.054.0.copyload = load i64, ptr %i.yv, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.yx = load ptr, ptr %i.yw, align 8, !nonnull !12, !align !13, !noundef !12
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.yz = load i64, ptr %i.yy, align 8, !noundef !12
  store ptr %i.yx, ptr %i.ar, align 8
  %i.za = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.yz, ptr %i.za, align 8
  %i.zb = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.av, ptr %i.zb, align 8
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.au, ptr %i.zc, align 8
  %i.zd = icmp eq ptr %.sroa.2.0.copyload, null
  br i1 %i.zd, label %.thread, label %bb.dl

.thread:                                          ; preds = %bb.dk
  call fastcc void @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h1e4bd7a0b917acabE"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.ar)
  unreachable

bb.dl:                                            ; preds = %bb.dk
  store i64 %.sroa.054.0.copyload, ptr %i.at, align 8
  %i.ze = inttoptr i64 %.sroa.3.0.copyload to ptr ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.zf = load i64, ptr %i.au, align 8, !noundef !12
  %i.zg = icmp eq i64 %i.zf, %.sroa.054.0.copyload
  br i1 %i.zg, label %bb.dn, label %bb.dm, !prof !8390

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr null, ptr %i.aq, align 8
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @426) #35
          to label %bb.da unwind label %bb.el

bb.dn:                                            ; preds = %bb.dl
  %i.zh = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.zi = icmp eq i64 %i.zh, 0
  br i1 %i.zi, label %bb.do, label %.thread405

bb.do:                                            ; preds = %bb.dn
  %i.zj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h319aede52c859273E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.zj, label %bb.dp [
    i8 0, label %.thread405
    i8 1, label %.thread402
    i8 2, label %.thread402
  ], !prof !15

bb.dp:                                            ; preds = %bb.do
  %i.zk = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h319aede52c859273E")
          to label %bb.dq unwind label %bb.el     ; 2 uses

bb.dq:                                            ; preds = %bb.dp
  %i.zl = icmp eq i8 %i.zk, 0
  br i1 %i.zl, label %.thread405, label %.thread402

.thread402:                                       ; preds = %bb.do, %bb.do, %bb.dq
  %.sroa.067.0404 = phi i8 [ %i.zk, %bb.dq ], [ %i.zj, %bb.do ], [ %i.zj, %bb.do ]
  %i.zm = load ptr, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h319aede52c859273E", align 8, !nonnull !12, !align !13, !noundef !12
  %i.zn = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.zm, i8 noundef %.sroa.067.0404)
          to label %bb.dr unwind label %bb.el

bb.dr:                                            ; preds = %.thread402
  br i1 %i.zn, label %bb.ds, label %.thread405

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.zo = load ptr, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h319aede52c859273E", align 8, !nonnull !12, !align !13, !noundef !12
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.zq = load i64, ptr %i.yy, align 8, !noundef !12 ; 2 uses
  %i.zr = load i64, ptr %i.av, align 8, !noundef !12 ; 3 uses
  %i.zs = icmp ult i64 %i.zr, %i.zq
  br i1 %i.zs, label %bb.ec, label %.invoke

.thread405:                                       ; preds = %bb.do, %bb.dq, %bb.dn, %bb.dr
  %i.zt = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.zu = icmp eq i8 %i.zt, 0
  br i1 %i.zu, label %bb.dt, label %bb.eb

bb.dt:                                            ; preds = %.thread405
  %i.zv = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.zw = icmp ult i64 %i.zv, 6
  call void @llvm.assume(i1 %i.zw)
  %i.zx = icmp samesign ugt i64 %i.zv, 4
  br i1 %i.zx, label %bb.du, label %bb.eb

bb.du:                                            ; preds = %bb.dt
  %i.zy = load ptr, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h319aede52c859273E", align 8, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 32
  %i.aaa = load ptr, ptr %i.zz, align 8, !nonnull !12, !align !14, !noundef !12
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zy, i64 40
  %i.aac = load i64, ptr %i.aab, align 8, !noundef !12
  store i64 5, ptr %i.ak, align 8
  %.sroa.5201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aaa, ptr %.sroa.5201.0..sroa_idx, align 8
  %.sroa.7202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.aac, ptr %.sroa.7202.0..sroa_idx, align 8
  %i.aad = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.dv unwind label %bb.el     ; 2 uses

bb.dv:                                            ; preds = %bb.du
  %i.aae = extractvalue { ptr, ptr } %i.aad, 0    ; 2 uses
  %i.aaf = extractvalue { ptr, ptr } %i.aad, 1    ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 24
  %i.aah = load ptr, ptr %i.aag, align 8, !invariant.load !12, !nonnull !12
  %i.aai = invoke noundef zeroext i1 %i.aah(ptr noundef align 1 %i.aae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
          to label %bb.dw unwind label %bb.el

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.aai, label %bb.dx, label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.aaj = load ptr, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h319aede52c859273E", align 8, !nonnull !12, !align !13, !noundef !12
end_hunk_1
