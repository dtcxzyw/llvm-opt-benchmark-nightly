Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN3std2io19default_read_to_end17hdd7509ea6ecec56fE:bb.a
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !52 ; 7 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %0, align 8, !range !53, !noundef !52 ; 5 uses
  %i.h = trunc nuw i64 %1 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %2, -1025
  br i1 %i.i, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread", label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit", !prof !54

"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit": ; preds = %bb.b
  %i.j = add nuw i64 %2, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %2, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.j
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.n
  %.sroa.010.2 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.1.i ; 2 uses
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %bb.c, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread"

bb.c:                                             ; preds = %bb.a, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit"
  %.sroa.010.1 = phi i64 [ %.sroa.010.2, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit" ], [ 8192, %bb.a ] ; 2 uses
  %.sroa.019.1 = xor i1 %i.h, true                ; 2 uses
  %i.p = sub nsw i64 %i.g, %i.e
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread"

"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread": ; preds = %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread_crit_edge", %bb.b, %bb.c, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit"
  %.pre84 = phi i64 [ %.pre84.pre, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread_crit_edge" ], [ %i.g, %bb.c ], [ %i.g, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit" ], [ %i.g, %bb.b ]
  %.pre = phi i64 [ %.pre.pre, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread_crit_edge" ], [ %i.e, %bb.c ], [ %i.e, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit" ], [ %i.e, %bb.b ]
  %.sroa.019.3 = phi i1 [ %.sroa.019.1, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread_crit_edge" ], [ %.sroa.019.1, %bb.c ], [ false, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit" ], [ false, %bb.b ]
  %.sroa.010.3 = phi i64 [ %.sroa.010.1, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread_crit_edge" ], [ %.sroa.010.1, %bb.c ], [ %.sroa.010.2, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit" ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.af, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread"
  %.ph = phi i64 [ %i.bb, %bb.af ], [ %.pre84, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread" ]
  %.ph172 = phi i64 [ %i.df, %bb.af ], [ %.pre, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread" ]
  %.sroa.018.4.ph = phi i64 [ %i.de, %bb.af ], [ 0, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread" ]
  %.sroa.010.4.ph = phi i64 [ %.sroa.055.0, %bb.af ], [ %.sroa.010.3, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread" ] ; 4 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = tail call fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17hc457fa00165552a2E(ptr %.0.val, ptr %.8.val, ptr noalias noundef align 8 dereferenceable(24) %0) ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %bb.ag, label %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread_crit_edge"

"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread_crit_edge": ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.d, align 8
  %.pre84.pre = load i64, ptr %0, align 8, !range !53
  br label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread"

bb.f:                                             ; preds = %.backedge, %.outer
  %i.ac = phi i64 [ %.ph, %.outer ], [ %i.bb, %.backedge ] ; 3 uses
  %i.ad = phi i64 [ %.ph172, %.outer ], [ %i.df, %.backedge ] ; 3 uses
  %.sroa.018.4 = phi i64 [ %.sroa.018.4.ph, %.outer ], [ %i.de, %.backedge ] ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %i.ad, %i.ac
  %i.ag = icmp eq i64 %i.ac, %i.g
  %or.cond80 = and i1 %i.af, %i.ag
  br i1 %or.cond80, label %bb.h, label %bb.g

thread-pre-split:                                 ; preds = %bb.i
  %.pr = load i64, ptr %0, align 8
  %.pre85 = load i64, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %bb.f
  %i.ah = phi i64 [ %.pr, %thread-pre-split ], [ %i.ac, %bb.f ] ; 7 uses
  %i.ai = phi i64 [ %.pre85, %thread-pre-split ], [ %i.ad, %bb.f ] ; 6 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ai, %i.ah
  br i1 %i.ak, label %bb.k, label %..peel.begin_crit_edge

..peel.begin_crit_edge:                           ; preds = %bb.g
  %.pre86 = load ptr, ptr %i.r, align 8
  br label %.peel.begin

bb.h:                                             ; preds = %bb.f
  %i.al = call fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17hc457fa00165552a2E(ptr %.0.val, ptr %.8.val, ptr noalias noundef align 8 dereferenceable(24) %0) ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.al, 0
  %i.an = extractvalue { i64, ptr } %i.al, 1      ; 2 uses
  %i.ao = trunc nuw i64 %i.am to i1
  br i1 %i.ao, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp eq ptr %i.an, null
  br i1 %i.ap, label %bb.j, label %thread-pre-split

bb.j:                                             ; preds = %bb.i
  %i.aq = load i64, ptr %i.d, align 8, !noundef !52 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  call void @llvm.assume(i1 %i.ar)
  %i.as = sub nsw i64 %i.aq, %i.e
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread"

bb.k:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !19382)
  call void @llvm.experimental.noalias.scope.decl(metadata !19383)
  %i.at = add nuw i64 %i.ah, 32
  %i.au = shl nuw i64 %i.ah, 1
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.at, i64 %i.au) ; 5 uses
  %i.av = icmp slt i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.av, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !97

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19384
  %i.aw = icmp eq i64 %i.ah, 0
  br i1 %i.aw, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3a83bd277e8def63E.exit.i.i", label %bb.l

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.val29.i.i = load ptr, ptr %i.r, align 8, !alias.scope !19384, !nonnull !52, !noundef !52
  store ptr %.val29.i.i, ptr %i.b, align 8, !alias.scope !19385, !noalias !19384
  store i64 %i.ah, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !19385, !noalias !19384
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3a83bd277e8def63E.exit.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3a83bd277e8def63E.exit.i.i": ; preds = %bb.l, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sink.i.i.i = phi i64 [ 1, %bb.l ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ]
  store i64 %.sink.i.i.i, ptr %i.s, align 8, !alias.scope !19385, !noalias !19384
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h6777eb6dc489659eE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, i64 noundef 1, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.b), !noalias !19384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19384
  %i.ax = load i64, ptr %i.c, align 8, !range !66, !noalias !19384, !noundef !52
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.m, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit"

bb.m:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3a83bd277e8def63E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19384
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3a83bd277e8def63E.exit.i.i"
  %i.az = load ptr, ptr %i.t, align 8, !noalias !19384, !nonnull !52, !noundef !52 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19384
  store ptr %i.az, ptr %i.r, align 8, !alias.scope !19384
  store i64 %.sroa.0.0.i.i.i, ptr %0, align 8, !alias.scope !19384
  %.pre.i = sub nuw nsw i64 %.sroa.0.0.i.i.i, %i.ah
  %i.ba = icmp samesign ugt i64 %.pre.i, 31
  call void @llvm.assume(i1 %i.ba)
  br label %.peel.begin

.peel.begin:                                      ; preds = %..peel.begin_crit_edge, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit"
  %i.bb = phi i64 [ %i.ah, %..peel.begin_crit_edge ], [ %.sroa.0.0.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit" ] ; 3 uses
  %i.bc = phi ptr [ %.pre86, %..peel.begin_crit_edge ], [ %i.az, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit" ]
  %i.bd = sub nsw i64 %i.bb, %i.ai                ; 2 uses
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %.sroa.010.4.ph, i64 %i.bd) ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ai ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  %i.bf = sub nuw i64 %.sroa.0.0.i84, %.sroa.018.4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.018.4
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bg, i8 0, i64 %i.bf, i1 false), !noalias !19386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19387
  store ptr %i.be, ptr %i.a, align 8, !noalias !19387
  store i64 %.sroa.0.0.i84, ptr %i.u, align 8, !noalias !19387
  store i64 0, ptr %i.v, align 8, !noalias !19387
  store i64 %.sroa.0.0.i84, ptr %i.w, align 8, !noalias !19387
  %i.bh = call { i64, ptr } @"_ZN87_$LT$tokio..net..tcp..stream..TcpStream$u20$as$u20$tokio..io..async_read..AsyncRead$GT$9poll_read17haec2f891d9ee9700E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !19388 ; 2 uses
  %i.bi = extractvalue { i64, ptr } %i.bh, 0
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel, label %bb.n

bb.n:                                             ; preds = %.peel.begin
  %i.bk = extractvalue { i64, ptr } %i.bh, 1      ; 2 uses
  %.not.i.i.i.i.peel = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.peel, label %.loopexit, label %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel

_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel: ; preds = %.peel.begin, %bb.n
  %i.bl = phi ptr [ %i.bk, %bb.n ], [ inttoptr (i64 55834574851 to ptr), %.peel.begin ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19387
  %i.bm = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bn = and i64 %i.bm, 3
  switch i64 %i.bn, label %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel.unreachabledefault [
    i64 2, label %.split.peel
    i64 3, label %bb.r
    i64 0, label %.split41.peel
    i64 1, label %.split40.peel
  ], !prof !60

.split40.peel:                                    ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel
  %i.bo = getelementptr i8, ptr %i.bl, i64 -1     ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  %i.bp = getelementptr i8, ptr %i.bl, i64 15
  %i.bq = load i8, ptr %i.bp, align 8, !range !128, !noundef !52
  %i.br = icmp eq i8 %i.bq, 35
  br i1 %i.br, label %bb.o, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

bb.o:                                             ; preds = %.split40.peel
  %.val.i.i.i.i.i.peel = load ptr, ptr %i.bo, align 8, !noalias !19389 ; 4 uses
  %i.bs = getelementptr i8, ptr %i.bl, i64 7
  %.val1.i.i.i.i.i.peel = load ptr, ptr %i.bs, align 8, !noalias !19389, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.bt = load ptr, ptr %.val1.i.i.i.i.i.peel, align 8, !invariant.load !52, !noalias !19389 ; 2 uses
  %.not.i.i.i.i.i.i.i.peel = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i.i.i.peel, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.peel) ]
  invoke void %i.bt(ptr noundef nonnull %.val.i.i.i.i.i.peel)
          to label %bb.q unwind label %.loopexit.split-lp, !noalias !19389

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.peel, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !range !53, !invariant.load !52, !noalias !19389
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split", label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split.sink.split"

.split41.peel:                                    ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.by = load i8, ptr %i.bx, align 8, !range !128, !noundef !52
  %i.bz = icmp eq i8 %i.by, 35
  br i1 %i.bz, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.preheader", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

bb.r:                                             ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel
  %i.ca = icmp ult ptr %i.bl, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.ca)
  %.mask.peel = and i64 %i.bm, -4294967296
  %i.cb = icmp eq i64 %.mask.peel, 150323855360
  br i1 %i.cb, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.preheader", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

.split.peel:                                      ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel
  %.mask43.peel = and i64 %i.bm, -4294967296
  %i.cc = icmp eq i64 %.mask43.peel, 17179869184
  br i1 %i.cc, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.preheader", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split.sink.split": ; preds = %bb.q, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"
  %.val.i.i.i.i.i.peel.sink170 = phi ptr [ %.val.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i" ], [ %.val.i.i.i.i.i.peel, %bb.q ] ; 2 uses
  %.sink.ph = phi ptr [ %i.cq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i" ], [ %i.bo, %bb.q ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.peel.sink170) ]
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.peel.sink170) #38, !noalias !19389
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split": ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split.sink.split", %bb.q, %bb.z
  %.sink = phi ptr [ %i.cq, %bb.z ], [ %i.bo, %bb.q ], [ %.sink.ph, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split.sink.split" ]
  call void @mi_free(ptr noundef nonnull %.sink) #38, !noalias !19389
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.preheader"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.preheader": ; preds = %.split.peel, %bb.r, %.split41.peel, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split"
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel": ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.backedge", %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.preheader"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19387
  store ptr %i.be, ptr %i.a, align 8, !noalias !19387
  store i64 %.sroa.0.0.i84, ptr %i.u, align 8, !noalias !19387
  store i64 0, ptr %i.v, align 8, !noalias !19387
  store i64 %.sroa.0.0.i84, ptr %i.w, align 8, !noalias !19387
  %i.cd = call { i64, ptr } @"_ZN87_$LT$tokio..net..tcp..stream..TcpStream$u20$as$u20$tokio..io..async_read..AsyncRead$GT$9poll_read17haec2f891d9ee9700E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !19388 ; 2 uses
  %i.ce = extractvalue { i64, ptr } %i.cd, 0
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20, label %bb.s

bb.s:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel"
  %i.cg = extractvalue { i64, ptr } %i.cd, 1      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20

.loopexit:                                        ; preds = %bb.s, %bb.n
  %i.ch = load i64, ptr %i.u, align 8, !noalias !19387, !noundef !52 ; 2 uses
  %i.ci = load i64, ptr %i.v, align 8, !noalias !19387, !noundef !52 ; 7 uses
  %.not6.i.i.i.i = icmp ugt i64 %i.ci, %i.ch
  br i1 %.not6.i.i.i.i, label %bb.t, label %bb.u, !prof !92

bb.t:                                             ; preds = %.loopexit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.ci, i64 noundef %i.ch, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #43, !noalias !19388
  unreachable

bb.u:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19387
  %.not.i.i = icmp ult i64 %.sroa.0.0.i84, %i.ci
  br i1 %.not.i.i, label %bb.v, label %bb.ab, !prof !54

bb.v:                                             ; preds = %bb.u
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1011, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1013) #43, !noalias !19390
  unreachable

_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20: ; preds = %bb.s, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel"
  %i.cj = phi ptr [ inttoptr (i64 55834574851 to ptr), %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel" ], [ %i.cg, %bb.s ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19387
  %i.ck = ptrtoint ptr %i.cj to i64               ; 3 uses
  %i.cl = and i64 %i.ck, 3
  switch i64 %i.cl, label %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20.unreachabledefault [
    i64 2, label %.split
    i64 3, label %bb.w
    i64 0, label %.split41
    i64 1, label %.split40
  ], !prof !60

_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20.unreachabledefault: ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20
  unreachable

_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel.unreachabledefault: ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel
  unreachable

.split:                                           ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20
  %.mask43 = and i64 %i.ck, -4294967296
  %i.cm = icmp eq i64 %.mask43, 17179869184
  br i1 %i.cm, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.backedge", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

.split41:                                         ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.co = load i8, ptr %i.cn, align 8, !range !128, !noundef !52
  %i.cp = icmp eq i8 %i.co, 35
  br i1 %i.cp, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.backedge", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

.split40:                                         ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20
  %i.cq = getelementptr i8, ptr %i.cj, i64 -1     ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  %i.cr = getelementptr i8, ptr %i.cj, i64 15
  %i.cs = load i8, ptr %i.cr, align 8, !range !128, !noundef !52
  %i.ct = icmp eq i8 %i.cs, 35
  br i1 %i.ct, label %bb.x, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

bb.w:                                             ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20
  %i.cu = icmp ult ptr %i.cj, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.cu)
  %.mask = and i64 %i.ck, -4294967296
  %i.cv = icmp eq i64 %.mask, 150323855360
  br i1 %i.cv, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.backedge", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.backedge": ; preds = %bb.w, %.split, %.split41
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel", !llvm.loop !19380

bb.x:                                             ; preds = %.split40
  %.val.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !noalias !19389 ; 4 uses
  %i.cw = getelementptr i8, ptr %i.cj, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !noalias !19389, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.cx = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !52, !noalias !19389 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cx(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.z unwind label %.loopexit79, !noalias !19389

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !53, !invariant.load !52, !noalias !19389
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", !llvm.loop !19380

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.z
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split.sink.split", !llvm.loop !19380

.loopexit79:                                      ; preds = %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit79
  %.lcssa = phi ptr [ %i.cq, %.loopexit79 ], [ %i.bo, %.loopexit.split-lp ]
  %.val.i.i.i.i.i.lcssa = phi ptr [ %.val.i.i.i.i.i, %.loopexit79 ], [ %.val.i.i.i.i.i.peel, %.loopexit.split-lp ]
  %.val1.i.i.i.i.i.lcssa = phi ptr [ %.val1.i.i.i.i.i, %.loopexit79 ], [ %.val1.i.i.i.i.i.peel, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit79 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.db = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.lcssa, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !range !53, !invariant.load !52, !noalias !19389
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i": ; preds = %bb.aa
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.lcssa) #38, !noalias !19389
  br label %.body

.body:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i", %bb.aa
  call void @mi_free(ptr noundef nonnull %.lcssa) #38, !noalias !19389
  resume { ptr, i32 } %lpad.phi

bb.ab:                                            ; preds = %bb.u
  %i.de = sub nuw i64 %.sroa.0.0.i84, %i.ci       ; 2 uses
  %i.df = add i64 %i.ci, %i.ai                    ; 4 uses
  store i64 %i.df, ptr %i.d, align 8
  %i.dg = icmp eq i64 %i.ci, 0
  br i1 %i.dg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dh = sub nsw i64 %i.df, %i.e
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread"

bb.ad:                                            ; preds = %bb.ab
  br i1 %.sroa.019.3, label %bb.ae, label %.backedge

bb.ae:                                            ; preds = %bb.ad
  %i.di = icmp uge i64 %i.bd, %.sroa.010.4.ph
  %i.dj = icmp eq i64 %i.ci, %.sroa.0.0.i84
  %or.cond2 = and i1 %i.di, %i.dj
  br i1 %or.cond2, label %bb.af, label %.backedge

.backedge:                                        ; preds = %bb.ae, %bb.ad
  br label %bb.f

bb.af:                                            ; preds = %bb.ae
  %i.dk = shl i64 %.sroa.010.4.ph, 1
  %.inv = icmp sgt i64 %.sroa.010.4.ph, -1
  %.sroa.055.0 = select i1 %.inv, i64 %i.dk, i64 -1, !prof !65
  br label %.outer

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit": ; preds = %bb.h
  %i.dl = ptrtoint ptr %i.an to i64
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread"

end_hunk_0
