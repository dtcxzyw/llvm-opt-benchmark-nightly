Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d75bbbc53c488f6E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  store i64 2, ptr %0, align 8
  br label %bb.ao
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8be3e5ce1a27e3b8E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(784) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i.i = alloca [776 x i8], align 8 ; 6 uses
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  %i.b = alloca [16 x i8], align 4                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 4                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 4                ; 4 uses
  %i.l = alloca [192 x i8], align 8               ; 4 uses
  %i.m = alloca [800 x i8], align 8               ; 6 uses
  %i.n = alloca [56 x i8], align 8                ; 12 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [40 x i8], align 8                ; 9 uses
  %i.q = alloca [40 x i8], align 8                ; 9 uses
  %i.r = alloca [344 x i8], align 8               ; 6 uses
  %i.s = alloca [784 x i8], align 8               ; 6 uses
  %i.t = alloca [784 x i8], align 8               ; 21 uses
  %.sroa.4.i.i.i.i = alloca [344 x i8], align 8   ; 8 uses
  %.sroa.7.i.i.i.i = alloca [432 x i8], align 8   ; 5 uses
  %.sroa.6 = alloca [776 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4488)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !4488, !noalias !4491, !nonnull !14, !align !240, !noundef !14 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4498)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !4501, !noalias !4502 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !alias.scope !4501, !noalias !4502, !nonnull !14, !noundef !14 ; 2 uses
  %.not68.i.i.i = icmp eq ptr %.promoted.i.i.i, %i.y
  br i1 %.not68.i.i.i, label %"_ZN4core3ptr95drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$meilisearch_types..tasks..Task$GT$$GT$17h735165a0499861c9E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.03.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.03.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.4.0..sroa_idx4.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.42.0..sroa_idx.i4.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.03.sroa.4.0..sroa_idx.i25.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.03.sroa.5.0..sroa_idx.i26.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4.0..sroa_idx4.i27.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.42.0..sroa_idx.i4.i35.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.03.sroa.4.0..sroa_idx.i52.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.03.sroa.5.0..sroa_idx.i53.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.42.0..sroa_idx.i5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 712
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 716
  %.sroa.gep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 424 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 440
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 720
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 724
  %.sroa.gep16.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 728 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 352
  %.sroa.4.352..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 344
  %.pre.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !4505, !noalias !4508 ; 2 uses
  %.pre91.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !4505, !noalias !4508
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %i.az = getelementptr i8, ptr %.pre.i.i.i, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.bc, %.lr.ph.i.i.i
  %i.ba = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.bc, %bb.bc ] ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !noalias !4512, !noundef !14
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 3 uses
  store ptr %i.bc, ptr %i.x, align 8, !alias.scope !4501, !noalias !4502
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4515
  %.val.i.i.i.i.i = load i64, ptr %i.ay, align 8, !noalias !4515, !noundef !14
  %.val6.i.i.i.i.i = load i32, ptr %i.az, align 8, !noalias !4515
  call fastcc void @_ZN15index_scheduler5queue5tasks9TaskQueue8get_task17h27ec9948e8e7a7e8E(ptr noalias noundef align 8 captures(address) dereferenceable(784) %i.s, i64 %.val.i.i.i.i.i, i32 %.val6.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.pre91.i.i.i, i32 noundef %i.bb), !noalias !4515
  %i.bd = load i64, ptr %i.s, align 8, !range !2840, !noalias !4515, !noundef !14 ; 3 uses
  %i.be = icmp eq i64 %i.bd, 21
  br i1 %i.be, label %.thread.i.i.i.i.i, label %bb.c

.thread.i.i.i.i.i:                                ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.ac, ptr noundef nonnull align 8 dereferenceable(344) %i.ab, i64 344, i1 false), !noalias !4515
  br label %"_ZN15index_scheduler5queue5Queue39get_existing_tasks_for_processing_batch28_$u7b$$u7b$closure$u7d$$u7d$17h1416734164be3446E.exit.i.thread.i.i.i"

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4515
  store i64 136, ptr %i.r, align 8, !noalias !4515
  %.not.i.i.i.i.i = icmp eq i64 %i.bd, 20
  br i1 %.not.i.i.i.i.i, label %.thread57.i.i.i.i.i, label %bb.d

.thread57.i.i.i.i.i:                              ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.ac, ptr noundef nonnull align 8 dereferenceable(344) %i.r, i64 344, i1 false), !noalias !4515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4515
  br label %"_ZN15index_scheduler5queue5Queue39get_existing_tasks_for_processing_batch28_$u7b$$u7b$closure$u7d$$u7d$17h1416734164be3446E.exit.i.thread.i.i.i"

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.ac, ptr noundef nonnull align 8 dereferenceable(776) %i.ab, i64 776, i1 false), !noalias !4515
  store i64 %i.bd, ptr %i.t, align 8, !noalias !4515
  call void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.r), !noalias !4515
  %.pre.pre.i.i.i.i.i = load i64, ptr %i.t, align 8, !range !4516, !alias.scope !4517, !noalias !4522
  %i.bf = icmp eq i64 %.pre.pre.i.i.i.i.i, 20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4515
  %i.bg = load ptr, ptr %i.ad, align 8, !alias.scope !4505, !noalias !4508, !nonnull !14, !align !240, !noundef !14 ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4524)
  call void @llvm.experimental.noalias.scope.decl(metadata !4525)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br i1 %i.bf, label %"_ZN15index_scheduler5queue5Queue39get_existing_tasks_for_processing_batch28_$u7b$$u7b$closure$u7d$$u7d$17h1416734164be3446E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1152 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1424
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1080 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 1280
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 1104 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 1112
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 1328 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 1352
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 1344
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 1360
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 1128 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 1136
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 1376
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 1176 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 1183
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 1192 ; 2 uses
  %i.bx = load i32, ptr %i.bh, align 8, !alias.scope !4524, !noalias !4526, !noundef !14
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bh, align 8, !alias.scope !4524, !noalias !4526
  %i.bz = load i32, ptr %i.bi, align 8, !alias.scope !4524, !noalias !4526, !noundef !14
  store i32 1, ptr %i.as, align 8, !alias.scope !4525, !noalias !4522
  store i32 %i.bz, ptr %i.at, align 4, !alias.scope !4525, !noalias !4522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4527
  call void @llvm.experimental.noalias.scope.decl(metadata !4528)
  call void @llvm.experimental.noalias.scope.decl(metadata !4531)
  %i.ca = load ptr, ptr %i.bj, align 8, !alias.scope !4533, !noalias !4534, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 1088
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !4533, !noalias !4534, !noundef !14
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.sroa.3.0.i.i.i.i.i.i.i.i = phi i64 [ %i.cc, %bb.e ], [ %i.cs, %bb.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ca, %bb.e ], [ %i.cr, %bb.i ] ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 54
  %i.cf = load i16, ptr %i.ce, align 2, !noalias !4535, !noundef !14 ; 2 uses
  %i.cg = zext i16 %i.cf to i64                   ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cg
  %i.ci = icmp eq i16 %i.cf, 0
  br i1 %i.ci, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i.i.i112, i64 1 ; 2 uses
  %i.ck = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i111, 1
  %i.cl = icmp eq ptr %i.cj, %i.ch
  br i1 %i.cl, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.03.0.i.i.i.i.i.i.i.i.i112 = phi ptr [ %i.cj, %bb.g ], [ %i.cd, %bb.f ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i.i.i111 = phi i64 [ %i.ck, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %.val6.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i.i.i112, align 1, !range !1330, !noalias !4535, !noundef !14
  %i.cm = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 1, i8 %.val6.i.i.i.i.i.i.i.i.i)
  switch i8 %i.cm, label %bb.h [
    i8 -1, label %._crit_edge
    i8 0, label %bb.l
    i8 1, label %bb.g
  ]

bb.h:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.g, %.lr.ph, %bb.f
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i = phi i64 [ %i.cg, %bb.f ], [ %i.cg, %bb.g ], [ %.sroa.8.0.i.i.i.i.i.i.i.i.i111, %.lr.ph ] ; 3 uses
  %i.cn = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.cn, label %bb.k, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 72
  %i.cp = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !4538, !nonnull !14, !noundef !14
  %i.cs = add i64 %.sroa.3.0.i.i.i.i.i.i.i.i, -1
  br label %bb.f

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.bj, ptr %i.q, align 8, !alias.scope !4528, !noalias !4541
  store ptr null, ptr %.sroa.03.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !4528, !noalias !4541
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge
  store ptr %i.bj, ptr %i.q, align 8, !alias.scope !4528, !noalias !4541
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %.sroa.03.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !4528, !noalias !4541
  store i64 0, ptr %.sroa.03.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !4528, !noalias !4541
  store i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i.i.i.i.i.i, align 8, !alias.scope !4528, !noalias !4541
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 8
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i111
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit.i.i.i.i.i.i"

bb.m:                                             ; preds = %bb.k, %bb.j
  store i8 1, ptr %i.ae, align 8, !alias.scope !4528, !noalias !4541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4542
  invoke fastcc void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h2afa6a4f414901c9E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.q, i32 noundef 0)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !4515

.noexc.i.i.i.i.i:                                 ; preds = %bb.m
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !4545, !noalias !4542, !nonnull !14, !noundef !14
  %.sroa.42.0.copyload.i5.i.i.i.i.i.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i4.i.i.i.i.i.i.i, align 8, !alias.scope !4545, !noalias !4542
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i.i, i64 8
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.sroa.42.0.copyload.i5.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4542
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i, %bb.l
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.cu, %bb.l ], [ %i.cw, %.noexc.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4527
  %i.cx = load i32, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 4, !noalias !4515, !noundef !14
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 4, !noalias !4515
  %.val14.i.i.i.i.i.i = load i64, ptr %.sroa.gep.i.i.i.i.i, align 8, !range !4548, !alias.scope !4525, !noalias !4522, !noundef !14 ; 3 uses
  %i.cz = icmp ne i64 %.val14.i.i.i.i.i.i, -9223372036854775790
  call void @llvm.assume(i1 %i.cz)
  %i.da = add nsw i64 %.val14.i.i.i.i.i.i, 9223372036854775807
  %i.db = icmp ugt i64 %.val14.i.i.i.i.i.i, -9223372036854775808
  %i.dc = select i1 %i.db, i64 %i.da, i64 17
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE.9061, i64 %i.dc
  %switch.load = load i8, ptr %switch.gep, align 1
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.bk, i8 noundef %switch.load)
          to label %.noexc7.i.i.i.i.i unwind label %.loopexit.i.i.i

.noexc7.i.i.i.i.i:                                ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4527
  %.val15.i.i.i.i.i.i = load i64, ptr %.sroa.gep.i.i.i.i.i, align 8, !range !4548, !alias.scope !4525, !noalias !4522, !noundef !14 ; 3 uses
  %i.dd = icmp ne i64 %.val15.i.i.i.i.i.i, -9223372036854775790
  call void @llvm.assume(i1 %i.dd)
  %i.de = add nsw i64 %.val15.i.i.i.i.i.i, 9223372036854775807
  %i.df = icmp ugt i64 %.val15.i.i.i.i.i.i, -9223372036854775808
  %i.dg = select i1 %i.df, i64 %i.de, i64 17
  %switch.gep131 = getelementptr inbounds i8, ptr @switch.table._ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE.9061, i64 %i.dg
  %switch.load132 = load i8, ptr %switch.gep131, align 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4549)
  call void @llvm.experimental.noalias.scope.decl(metadata !4552)
  %i.dh = load ptr, ptr %i.bl, align 8, !alias.scope !4554, !noalias !4555, !noundef !14 ; 2 uses
  %.not.i19.i.i.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i19.i.i.i.i.i.i, label %bb.s, label %bb.n

bb.n:                                             ; preds = %.noexc7.i.i.i.i.i
  %i.di = load i64, ptr %i.bm, align 8, !alias.scope !4554, !noalias !4555, !noundef !14
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  %.sroa.3.0.i.i20.i.i.i.i.i.i = phi i64 [ %i.di, %bb.n ], [ %i.dy, %bb.r ] ; 2 uses
  %.sroa.0.0.i.i21.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.n ], [ %i.dx, %bb.r ] ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i21.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i21.i.i.i.i.i.i, i64 54
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !4556, !noundef !14 ; 2 uses
  %i.dm = zext i16 %i.dl to i64                   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dm
  %i.do = icmp eq i16 %i.dl, 0
  br i1 %i.do, label %._crit_edge119, label %.lr.ph118

bb.p:                                             ; preds = %.lr.ph118
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i23.i.i.i.i.i.i116, i64 1 ; 2 uses
  %i.dq = add nuw nsw i64 %.sroa.8.0.i.i.i22.i.i.i.i.i.i115, 1
  %i.dr = icmp eq ptr %i.dp, %i.dn
  br i1 %i.dr, label %._crit_edge119, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.o, %bb.p
  %.sroa.03.0.i.i.i23.i.i.i.i.i.i116 = phi ptr [ %i.dp, %bb.p ], [ %i.dj, %bb.o ] ; 2 uses
  %.sroa.8.0.i.i.i22.i.i.i.i.i.i115 = phi i64 [ %i.dq, %bb.p ], [ 0, %bb.o ] ; 3 uses
  %.val6.i.i.i24.i.i.i.i.i.i = load i8, ptr %.sroa.03.0.i.i.i23.i.i.i.i.i.i116, align 1, !range !4559, !noalias !4556, !noundef !14
  %i.ds = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 18) %switch.load132, i8 %.val6.i.i.i24.i.i.i.i.i.i)
  switch i8 %i.ds, label %bb.q [
    i8 -1, label %._crit_edge119
    i8 0, label %bb.u
    i8 1, label %bb.p
  ]

bb.q:                                             ; preds = %.lr.ph118
  unreachable

._crit_edge119:                                   ; preds = %bb.p, %.lr.ph118, %bb.o
  %.sroa.4.0.i.ph.i.i29.i.i.i.i.i.i = phi i64 [ %i.dm, %bb.o ], [ %i.dm, %bb.p ], [ %.sroa.8.0.i.i.i22.i.i.i.i.i.i115, %.lr.ph118 ] ; 3 uses
  %i.dt = icmp eq i64 %.sroa.3.0.i.i20.i.i.i.i.i.i, 0
  br i1 %i.dt, label %bb.t, label %bb.r

bb.r:                                             ; preds = %._crit_edge119
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i21.i.i.i.i.i.i, i64 72
  %i.dv = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i29.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.sroa.4.0.i.ph.i.i29.i.i.i.i.i.i
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !4560, !nonnull !14, !noundef !14
  %i.dy = add i64 %.sroa.3.0.i.i20.i.i.i.i.i.i, -1
  br label %bb.o

bb.s:                                             ; preds = %.noexc7.i.i.i.i.i
  store ptr %i.bl, ptr %i.p, align 8, !alias.scope !4549, !noalias !4563
  store ptr null, ptr %.sroa.03.sroa.4.0..sroa_idx.i25.i.i.i.i.i.i, align 8, !alias.scope !4549, !noalias !4563
  br label %bb.v

bb.t:                                             ; preds = %._crit_edge119
  store ptr %i.bl, ptr %i.p, align 8, !alias.scope !4549, !noalias !4563
  store ptr %.sroa.0.0.i.i21.i.i.i.i.i.i, ptr %.sroa.03.sroa.4.0..sroa_idx.i25.i.i.i.i.i.i, align 8, !alias.scope !4549, !noalias !4563
  store i64 0, ptr %.sroa.03.sroa.5.0..sroa_idx.i26.i.i.i.i.i.i, align 8, !alias.scope !4549, !noalias !4563
  store i64 %.sroa.4.0.i.ph.i.i29.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i27.i.i.i.i.i.i, align 8, !alias.scope !4549, !noalias !4563
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph118
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i21.i.i.i.i.i.i, i64 8
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.sroa.8.0.i.i.i22.i.i.i.i.i.i115
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit.i.i.i.i.i.i"

bb.v:                                             ; preds = %bb.t, %bb.s
  store i8 %switch.load132, ptr %i.af, align 8, !alias.scope !4549, !noalias !4563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4564
  invoke fastcc void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h5bf1bbe4bd4e0431E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.p, i32 noundef 0)
          to label %.noexc8.i.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !4515

.noexc8.i.i.i.i.i:                                ; preds = %bb.v
  %.sroa.0.0.copyload.i3.i34.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !4567, !noalias !4564, !nonnull !14, !noundef !14
  %.sroa.42.0.copyload.i5.i36.i.i.i.i.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i4.i35.i.i.i.i.i.i, align 8, !alias.scope !4567, !noalias !4564
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i3.i34.i.i.i.i.i.i, i64 8
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %.sroa.42.0.copyload.i5.i36.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4564
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit.i.i.i.i.i.i": ; preds = %.noexc8.i.i.i.i.i, %bb.u
  %.sroa.0.0.i37.i.i.i.i.i.i = phi ptr [ %i.ea, %bb.u ], [ %i.ec, %.noexc8.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4527
  %i.ed = load i32, ptr %.sroa.0.0.i37.i.i.i.i.i.i, align 4, !noalias !4515, !noundef !14
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %.sroa.0.0.i37.i.i.i.i.i.i, align 4, !noalias !4515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4527
  invoke void @_ZN17meilisearch_types5tasks4Task7indexes17h4d96dafb36540464E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.t)
          to label %.noexc9.i.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !4515

.noexc9.i.i.i.i.i:                                ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit.i.i.i.i.i.i"
  %i.ef = load ptr, ptr %i.ag, align 8, !noalias !4527, !nonnull !14, !noundef !14 ; 3 uses
  %i.eg = load i64, ptr %i.ah, align 8, !noalias !4527, !noundef !14 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4570)
  call void @llvm.experimental.noalias.scope.decl(metadata !4573)
  %i.eh = load i64, ptr %i.bo, align 8, !alias.scope !4576, !noalias !4526, !noundef !14
  %i.ei = icmp eq i64 %i.eh, 0
  %i.ej = add nuw nsw i64 %i.eg, 1
  %i.ek = lshr i64 %i.ej, 1
  %.sroa.0.0.i.i41.i.i.i.i.i.i = select i1 %i.ei, i64 %i.eg, i64 %i.ek ; 2 uses
  %i.el = load i64, ptr %i.bp, align 8, !alias.scope !4577, !noalias !4580, !noundef !14
  %i.em = icmp ugt i64 %.sroa.0.0.i.i41.i.i.i.i.i.i, %i.el
  br i1 %i.em, label %bb.w, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i.i.i.i.i.i.i", !prof !121

bb.w:                                             ; preds = %.noexc9.i.i.i.i.i
  %i.en = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8a84036aa67c6426E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bn, i64 noundef %.sroa.0.0.i.i41.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bq, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !4515 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.w, %.noexc9.i.i.i.i.i
  %i.eo = icmp eq i64 %i.eg, 0
  br i1 %i.eo, label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h84a4f92cd6143bdcE.exit.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i.i.i.i.i.i.i", %.noexc43.i.i.i.i.i.i
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ev, %.noexc43.i.i.i.i.i.i ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.val16.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ep, align 8, !noalias !4582, !nonnull !14, !align !584, !noundef !14
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  %.val17.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eq, align 8, !noalias !4582, !noundef !14 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4591
  %i.er = icmp slt i64 %.val17.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.er, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i
  %i.es = icmp eq i64 %.val17.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.es, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd64506c0bf4eac48E.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !4592
  %i.et = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val17.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #79, !noalias !4592 ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.y, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd64506c0bf4eac48E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.y:                                             ; preds = %bb.x, %.preheader.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.x ], [ 0, %.preheader.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val17.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80
          to label %.noexc42.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i, !noalias !4515

.noexc42.i.i.i.i.i.i:                             ; preds = %bb.y
  unreachable

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd64506c0bf4eac48E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.x, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.et, %bb.x ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val16.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val17.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !noalias !4602
  store i64 %.val17.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !4591
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4591
  store i64 %.val17.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4591
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h07572f913fd76895E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc43.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i

.noexc43.i.i.i.i.i.i:                             ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd64506c0bf4eac48E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4591
  %i.ev = add nuw i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, %i.eg
  br i1 %i.ew, label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h84a4f92cd6143bdcE.exit.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd64506c0bf4eac48E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i.i.i:          ; preds = %bb.w
  %lpad.loopexit104.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i: ; preds = %bb.y
  %lpad.loopexit.split-lp105.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit104.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp105.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i ] ; 2 uses
  %.val12.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !4527 ; 2 uses
  %i.ex = icmp eq i64 %.val12.i.i.i.i.i.i, 0
  br i1 %i.ex, label %.body.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i
  %i.ey = shl nuw i64 %.val12.i.i.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef %i.ey, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !4515
  br label %.body.i.i.i.i.i

"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h84a4f92cd6143bdcE.exit.i.i.i.i.i.i": ; preds = %.noexc43.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i.i.i.i.i.i.i"
  %.val.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !4527 ; 2 uses
  %i.ez = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ez, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44.i.i.i.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h84a4f92cd6143bdcE.exit.i.i.i.i.i.i"
  %i.fa = shl nuw i64 %.val.i.i.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !4515
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44.i.i.i.i.i.i"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44.i.i.i.i.i.i": ; preds = %bb.aa, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h84a4f92cd6143bdcE.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4527
  %i.fb = load i64, ptr %.sroa.gep.i.i.i.i.i, align 8, !range !4548, !alias.scope !4603, !noalias !4522, !noundef !14 ; 3 uses
  %i.fc = icmp ne i64 %i.fb, -9223372036854775790
  call void @llvm.assume(i1 %i.fc)
  %i.fd = add nsw i64 %i.fb, 9223372036854775807
  %i.fe = icmp ugt i64 %i.fb, -9223372036854775808
  %i.ff = select i1 %i.fe, i64 %i.fd, i64 17
  switch i64 %i.ff, label %bb.ab [
    i64 0, label %bb.ac
    i64 1, label %bb.ac
    i64 2, label %bb.ac
    i64 3, label %bb.ac
    i64 4, label %bb.ac
    i64 5, label %bb.ac
    i64 6, label %bb.ac
    i64 7, label %bb.ac
    i64 8, label %bb.ac
    i64 9, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit.i.i.i.i.i.i
    i64 10, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit.i.i.i.i.i.i
    i64 11, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit.i.i.i.i.i.i
    i64 12, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit.i.i.i.i.i.i
    i64 13, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit.i.i.i.i.i.i
    i64 14, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit.i.i.i.i.i.i
    i64 15, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit.i.i.i.i.i.i
    i64 16, label %bb.ac
    i64 17, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit.i.i.i.i.i.i
    i64 18, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread.i.i.i.i.i.i
    i64 19, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread.i.i.i.i.i.i
  ]

bb.ab:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44.i.i.i.i.i.i"
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44.i.i.i.i.i.i", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44.i.i.i.i.i.i"
end_hunk_0
begin_hunk_1_@"_ZN116_$LT$index_scheduler..upgrade..v1_38..FixupIndexTasks$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17h82a15c39c913f911E":bb.a
  br i1 %i.ib, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit268", label %bb.cb

bb.cb:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i266"
  %i.ic = shl nuw i64 %.sroa.4.i.sroa.3.7.copyload, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i259, i64 noundef %i.ic, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !33463
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit268"

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit268": ; preds = %bb.cb, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i266"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10646)
  invoke fastcc void @"_ZN4core3ptr134drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$meilisearch_types..tasks..Status$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h18aa22a09776ed98E"(ptr noalias noundef align 8 dereferenceable(72) %i.ba)
          to label %bb.cc unwind label %.thread711

bb.cc:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit268"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.jl

.loopexit910:                                     ; preds = %bb.m
  %lpad.loopexit912 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp911:                            ; preds = %bb.cd
  %lpad.loopexit.split-lp913 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit910, %.loopexit.split-lp911, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ds, %bb.p ], [ %lpad.loopexit912, %.loopexit910 ], [ %lpad.loopexit.split-lp913, %.loopexit.split-lp911 ] ; 2 uses
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.bb) #81
  %i.id = icmp eq i64 %.sroa.0694.0.copyload, 0
  br i1 %i.id, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit", label %bb.ci

bb.cd:                                            ; preds = %bb.n, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i56.i", %bb.ac
  %.sroa.7620.sroa.7.sroa.0.1.ph = phi i24 [ %.sroa.7620.sroa.7.sroa.0.0, %bb.ac ], [ %.sroa.7620.sroa.7.sroa.0.0, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i56.i" ], [ %.sroa.7620.sroa.7.0.extract.trunc, %bb.n ]
  %.sroa.7620.sroa.6.1.ph = phi i8 [ %.sroa.7620.sroa.6.0, %bb.ac ], [ %.sroa.7620.sroa.6.0, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i56.i" ], [ %.sroa.7620.sroa.6.0.extract.trunc, %bb.n ]
  %.sroa.7620.sroa.0.1.ph = phi i32 [ %.sroa.7620.sroa.0.0, %bb.ac ], [ %.sroa.7620.sroa.0.0, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i56.i" ], [ %.sroa.7620.sroa.0.0.extract.trunc, %bb.n ]
  %.sroa.14624.1.ph = phi i64 [ %.sroa.14624.0, %bb.ac ], [ %.sroa.14624.0, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i56.i" ], [ %.sroa.511.sroa.5.0.copyload.i.i, %bb.n ]
  %.sroa.13622.1.ph = phi ptr [ %.sroa.13622.0, %bb.ac ], [ %.sroa.13622.0, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i56.i" ], [ %.sroa.511.sroa.0.0.copyload.i.i, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !33288
  %.sroa.7620.sroa.7.0.insert.ext = zext i24 %.sroa.7620.sroa.7.sroa.0.1.ph to i64
  %.sroa.7620.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7620.sroa.7.0.insert.ext, 40
  %.sroa.7620.sroa.6.0.insert.ext = zext i8 %.sroa.7620.sroa.6.1.ph to i64
  %.sroa.7620.sroa.6.0.insert.shift = shl nuw nsw i64 %.sroa.7620.sroa.6.0.insert.ext, 32
  %.sroa.7620.sroa.6.0.insert.insert = or disjoint i64 %.sroa.7620.sroa.6.0.insert.shift, %.sroa.7620.sroa.7.0.insert.shift
  %.sroa.7620.sroa.0.0.insert.ext = zext i32 %.sroa.7620.sroa.0.1.ph to i64
  %.sroa.7620.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7620.sroa.6.0.insert.insert, %.sroa.7620.sroa.0.0.insert.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 127, ptr %i.at, align 8
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %.sroa.7620.sroa.0.0.insert.insert, ptr %.sroa.240.0..sroa_idx, align 8
  %.sroa.240.sroa.2.0..sroa.240.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %.sroa.13622.1.ph, ptr %.sroa.240.sroa.2.0..sroa.240.0..sroa_idx.sroa_idx, align 8
  %.sroa.240.sroa.3.0..sroa.240.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %.sroa.14624.1.ph, ptr %.sroa.240.sroa.3.0..sroa.240.0..sroa_idx.sroa_idx, align 8
  %i.ie = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.at)
          to label %bb.ck unwind label %.loopexit.split-lp911

bb.ce:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i", %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !33288
  call void @llvm.experimental.noalias.scope.decl(metadata !33468)
  call void @llvm.experimental.noalias.scope.decl(metadata !33471)
  %.val.i.i269 = load ptr, ptr %i.di, align 8, !alias.scope !33474, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i270 = load i64, ptr %i.dj, align 8, !alias.scope !33474, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33475)
  %i.if = icmp eq i64 %.val1.i.i270, 0
  br i1 %i.if, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i276", label %.lr.ph.i.i.i.i271

.lr.ph.i.i.i.i271:                                ; preds = %bb.ce, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i275"
  %.sroa.0.010.i.i.i.i272 = phi i64 [ %i.ih, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i275" ], [ 0, %bb.ce ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i269, i64 %.sroa.0.010.i.i.i.i272 ; 2 uses
  %i.ih = add nuw i64 %.sroa.0.010.i.i.i.i272, 1  ; 2 uses
  %.val8.i.i.i.i273 = load i64, ptr %i.ig, align 8, !range !2917, !alias.scope !33475, !noalias !33474, !noundef !14 ; 2 uses
  %i.ii = getelementptr i8, ptr %i.ig, i64 8
  %.val9.i.i.i.i274 = load ptr, ptr %i.ii, align 8, !alias.scope !33475, !noalias !33474 ; 4 uses
  switch i64 %.val8.i.i.i.i273, label %bb.cf [
    i64 -9223372036854775808, label %bb.cg
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i275"
  ]

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i271
  %i.ij = shl nuw i64 %.val8.i.i.i.i273, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i274) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i274, i64 noundef %i.ij, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !33478
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i275"

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i271
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i274) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i274, i64 noundef 8192, i64 noundef 8) #79, !noalias !33478
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i275"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i275": ; preds = %bb.cg, %bb.cf, %.lr.ph.i.i.i.i271
  %i.ik = icmp eq i64 %i.ih, %.val1.i.i270
  br i1 %i.ik, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i276", label %.lr.ph.i.i.i.i271

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i276": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i275", %bb.ce
  %.val2.i.i277 = load i64, ptr %i.bb, align 8, !range !9, !alias.scope !33474, !noundef !14 ; 2 uses
  %i.il = icmp eq i64 %.val2.i.i277, 0
  br i1 %i.il, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit278", label %bb.ch

bb.ch:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i276"
  %i.im = shl nuw i64 %.val2.i.i277, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i269, i64 noundef %i.im, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !33474
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit278"

bb.ci:                                            ; preds = %.body
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4695.0.copyload, i64 noundef %.sroa.0694.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !33479
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit"

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit278": ; preds = %bb.ch, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i276"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.in = icmp eq i64 %.sroa.0694.0.copyload, 0
  br i1 %i.in, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit283", label %bb.cj

bb.cj:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit278"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4695.0.copyload, i64 noundef %.sroa.0694.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !33484
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit283"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit283": ; preds = %bb.cj, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit278"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8612.sroa.7)
  br label %bb.j

bb.ck:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.experimental.noalias.scope.decl(metadata !33489)
  call void @llvm.experimental.noalias.scope.decl(metadata !33492)
  %.val.i.i284 = load ptr, ptr %i.di, align 8, !alias.scope !33495, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i285 = load i64, ptr %i.dj, align 8, !alias.scope !33495, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33496)
  %i.io = icmp eq i64 %.val1.i.i285, 0
  br i1 %i.io, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i291", label %.lr.ph.i.i.i.i286

.lr.ph.i.i.i.i286:                                ; preds = %bb.ck, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i290"
  %.sroa.0.010.i.i.i.i287 = phi i64 [ %i.iq, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i290" ], [ 0, %bb.ck ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i284, i64 %.sroa.0.010.i.i.i.i287 ; 2 uses
  %i.iq = add nuw i64 %.sroa.0.010.i.i.i.i287, 1  ; 2 uses
  %.val8.i.i.i.i288 = load i64, ptr %i.ip, align 8, !range !2917, !alias.scope !33496, !noalias !33495, !noundef !14 ; 2 uses
  %i.ir = getelementptr i8, ptr %i.ip, i64 8
  %.val9.i.i.i.i289 = load ptr, ptr %i.ir, align 8, !alias.scope !33496, !noalias !33495 ; 4 uses
  switch i64 %.val8.i.i.i.i288, label %bb.cl [
    i64 -9223372036854775808, label %bb.cm
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i290"
  ]

bb.cl:                                            ; preds = %.lr.ph.i.i.i.i286
  %i.is = shl nuw i64 %.val8.i.i.i.i288, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i289) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i289, i64 noundef %i.is, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !33499
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i290"

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i286
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i289) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i289, i64 noundef 8192, i64 noundef 8) #79, !noalias !33499
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i290"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i290": ; preds = %bb.cm, %bb.cl, %.lr.ph.i.i.i.i286
  %i.it = icmp eq i64 %i.iq, %.val1.i.i285
  br i1 %i.it, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i291", label %.lr.ph.i.i.i.i286

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i291": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i290", %bb.ck
  %.val2.i.i292 = load i64, ptr %i.bb, align 8, !range !9, !alias.scope !33495, !noundef !14 ; 2 uses
  %i.iu = icmp eq i64 %.val2.i.i292, 0
  br i1 %i.iu, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit293", label %bb.cn

bb.cn:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i291"
  %i.iv = shl nuw i64 %.val2.i.i292, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i284, i64 noundef %i.iv, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !33495
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit293"

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit293": ; preds = %bb.cn, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i291"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.iw = icmp eq i64 %.sroa.0694.0.copyload, 0
  br i1 %i.iw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit296", label %bb.co

bb.co:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit293"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4695.0.copyload, i64 noundef %.sroa.0694.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !33500
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit296"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit296": ; preds = %bb.co, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit293"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8612.sroa.7)
  invoke fastcc void @"_ZN4core3ptr123drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h0e3962669c3f8adbE"(ptr noalias noundef align 8 dereferenceable(72) %i.bc)
          to label %bb.cp unwind label %.thread711

bb.cp:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit296"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.jl

bb.cq:                                            ; preds = %bb.h
  %i.ix = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h76d8d0ae0c451a61E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %.sroa.326.0..sroa_idx)
          to label %bb.ji unwind label %.loopexit.split-lp916

bb.cr:                                            ; preds = %bb.h
  %.sroa.021.0.copyload = load i64, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %.sroa.393.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(752) %.sroa.428.0..sroa_idx, i64 752, i1 false)
  %.sroa.075.0.extract.trunc = trunc i64 %.sroa.021.0.copyload to i32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.292.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.326.0..sroa_idx, i64 24, i1 false)
  store i64 %i.dg, ptr %i.be, align 8
  %i.iy = load i8, ptr %i.cb, align 4, !range !1330, !noundef !14 ; 6 uses
  %.not.i297 = icmp eq ptr %i.dc, null
  br i1 %.not.i297, label %.thread825, label %bb.cs

.thread825:                                       ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !33505
  store i64 0, ptr %i.ad, align 8, !alias.scope !33508, !noalias !33505
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !33508, !noalias !33505
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !33508, !noalias !33505
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !33511
  %i.iz = call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !33511 ; 8 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.cz, label %bb.da, !prof !121

bb.cs:                                            ; preds = %bb.cr, %bb.cv
  %.sroa.3.0.i.i = phi i64 [ %i.jq, %bb.cv ], [ %i.db, %bb.cr ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.jp, %bb.cv ], [ %i.dc, %bb.cr ] ; 9 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 276 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 274
  %i.jd = load i16, ptr %i.jc, align 2, !noalias !33516, !noundef !14 ; 2 uses
  %i.je = zext i16 %i.jd to i64                   ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.je
  %i.jg = icmp eq i16 %i.jd, 0
  br i1 %i.jg, label %._crit_edge, label %.lr.ph

bb.ct:                                            ; preds = %.lr.ph
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i2391, i64 1 ; 2 uses
  %i.ji = add nuw nsw i64 %.sroa.8.0.i.i.i2390, 1
  %i.jj = icmp eq ptr %i.jh, %i.jf
  br i1 %i.jj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cs, %bb.ct
  %.sroa.03.0.i.i.i2391 = phi ptr [ %i.jh, %bb.ct ], [ %i.jb, %bb.cs ] ; 2 uses
  %.sroa.8.0.i.i.i2390 = phi i64 [ %i.ji, %bb.ct ], [ 0, %bb.cs ] ; 3 uses
  %.val7.i.i.i = load i8, ptr %.sroa.03.0.i.i.i2391, align 1, !range !1330, !noalias !33516, !noundef !14
  %i.jk = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 5) %i.iy, i8 %.val7.i.i.i)
  switch i8 %i.jk, label %bb.cu [
    i8 -1, label %._crit_edge
    i8 0, label %bb.cx
    i8 1, label %bb.ct
  ]

bb.cu:                                            ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.ct, %.lr.ph, %bb.cs
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.je, %bb.cs ], [ %i.je, %bb.ct ], [ %.sroa.8.0.i.i.i2390, %.lr.ph ] ; 14 uses
  %i.jl = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.jl, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %._crit_edge
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 288
  %i.jn = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  call void @llvm.assume(i1 %i.jn)
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %.sroa.4.0.i.ph.i.i
  %i.jp = load ptr, ptr %i.jo, align 8, !noalias !33522, !nonnull !14, !noundef !14
  %i.jq = add i64 %.sroa.3.0.i.i, -1
  br label %bb.cs

bb.cw:                                            ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h9d2ef2f7ce58c168E.exit", %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h838760a16cced05aE.exit", %bb.gp
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %.body304

.body304:                                         ; preds = %bb.cw, %.thread.i.i346, %.thread.i.i
  %eh.lpad-body305 = phi { ptr, i32 } [ %.pn18.i.i, %.thread.i.i ], [ %i.jr, %bb.cw ], [ %.pn18.i.i348, %.thread.i.i346 ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef align 8 dereferenceable(784) %i.be) #81
          to label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit" unwind label %bb.bt

bb.cx:                                            ; preds = %.lr.ph
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.jt = getelementptr inbounds nuw [24 x i8], ptr %i.js, i64 %.sroa.8.0.i.i.i2390
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h9d2ef2f7ce58c168E.exit"

bb.cy:                                            ; preds = %._crit_edge
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 274 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !33505
  store i64 0, ptr %i.ad, align 8, !alias.scope !33508, !noalias !33505
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !33508, !noalias !33505
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !33508, !noalias !33505
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !33525
  %i.jv = load i16, ptr %i.ju, align 2, !noalias !33530, !noundef !14 ; 3 uses
  %i.jw = icmp ugt i16 %i.jv, 10
  br i1 %i.jw, label %bb.db, label %bb.dc

bb.cz:                                            ; preds = %.thread825
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 288) #80
          to label %.noexc.i.i unwind label %bb.eq, !noalias !33511

.noexc.i.i:                                       ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %.thread825
  store ptr null, ptr %i.iz, align 8, !noalias !33511
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iz, i64 274
  store ptr %i.iz, ptr %i.bi, align 8, !noalias !33511
  store i64 0, ptr %i.cc, align 8, !noalias !33511
  store i16 1, ptr %i.jx, align 2, !noalias !33535
  %i.jy = getelementptr inbounds nuw i8, ptr %i.iz, i64 276
  store i8 %i.iy, ptr %i.jy, align 4, !noalias !33535
  %i.jz = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jz, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !33539
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf7677e89c76bcd8bE.exit.i"

bb.db:                                            ; preds = %bb.cy
  %i.ka = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  store ptr %.sroa.0.0.i.i, ptr %i.aa, align 8, !noalias !33530
  store i64 0, ptr %i.cd, align 8, !noalias !33530
  br i1 %i.ka, label %.invoke.i.i.i.i, label %bb.df

bb.dc:                                            ; preds = %bb.cy
  %i.kb = zext nneg i16 %i.jv to i64              ; 2 uses
  %.not.i.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.kb
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  br i1 %.not.i.i.i.i.i.not, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i8 %i.iy, ptr %i.kc, align 1, !alias.scope !33540, !noalias !33543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !33548
  call void @llvm.experimental.noalias.scope.decl(metadata !33549)
  br label %.thread.i.i.i

bb.de:                                            ; preds = %bb.dc
  %i.kd = add nuw nsw i64 %.sroa.4.0.i.ph.i.i, 1  ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.kd
  %i.kf = sub nuw nsw i64 %i.kb, %.sroa.4.0.i.ph.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ke, ptr nonnull align 1 %i.kc, i64 %i.kf, i1 false), !alias.scope !33540, !noalias !33543
  store i8 %i.iy, ptr %i.kc, align 1, !alias.scope !33540, !noalias !33543
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !33548
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %.sroa.4.0.i.ph.i.i
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %i.kd
  %i.kj = mul nuw nsw i64 %i.kf, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ki, ptr nonnull align 8 %i.kh, i64 %i.kj, i1 false), !alias.scope !33552, !noalias !33554
  br label %.thread.i.i.i

bb.df:                                            ; preds = %bb.db
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.dg [
    i64 5, label %.invoke.i.i.i.i
    i64 6, label %bb.dh
  ]

.invoke.i.i.i.i:                                  ; preds = %bb.df, %bb.db
  %.sink.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %bb.df ], [ 4, %bb.db ]
  store i64 %.sink.i.i.i.i, ptr %i.ce, align 8, !noalias !33530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !33530
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hbc4d2615a98a40c8E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.dj unwind label %bb.dm, !noalias !33530

bb.dg:                                            ; preds = %bb.df
  store i64 6, ptr %i.ce, align 8, !noalias !33530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !33530
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hbc4d2615a98a40c8E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.di unwind label %bb.dm, !noalias !33530

bb.dh:                                            ; preds = %bb.df
  store i64 5, ptr %i.ce, align 8, !noalias !33530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !33530
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hbc4d2615a98a40c8E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.dj unwind label %bb.dm, !noalias !33530

bb.di:                                            ; preds = %bb.dg
  %i.kk = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %.invoke.i.i.i.i
  %.sink62.i.sroa.phi.i.i.i = phi ptr [ %.sink62.i.sroa.gep.i.i.i, %.invoke.i.i.i.i ], [ %.sink62.i.sroa.gep44.i.i.i, %bb.dh ], [ %.sink62.i.sroa.gep44.i.i.i, %bb.di ]
  %.sroa.10.0.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %.invoke.i.i.i.i ], [ 0, %bb.dh ], [ %i.kk, %bb.di ] ; 9 uses
  %i.kl = load ptr, ptr %.sink62.i.sroa.phi.i.i.i, align 8, !noalias !33530, !nonnull !14, !noundef !14 ; 7 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 274 ; 2 uses
  %i.kn = load i16, ptr %i.km, align 2, !noalias !33555, !noundef !14 ; 2 uses
  %i.ko = zext i16 %i.kn to i64                   ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 276 ; 2 uses
  %.not.i41.not.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i, %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.sroa.10.0.i.i.i.i ; 3 uses
  br i1 %.not.i41.not.i.i.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  store i8 %i.iy, ptr %i.kq, align 1, !alias.scope !33560, !noalias !33555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !33563
  call void @llvm.experimental.noalias.scope.decl(metadata !33564)
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  %i.kr = add nuw nsw i64 %.sroa.10.0.i.i.i.i, 1  ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kr
  %i.kt = sub nuw nsw i64 %i.ko, %.sroa.10.0.i.i.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ks, ptr nonnull align 1 %i.kq, i64 %i.kt, i1 false), !alias.scope !33560, !noalias !33555
  store i8 %i.iy, ptr %i.kq, align 1, !alias.scope !33560, !noalias !33555
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !33563
  %i.kv = getelementptr inbounds nuw [24 x i8], ptr %i.ku, i64 %.sroa.10.0.i.i.i.i
  %i.kw = getelementptr inbounds nuw [24 x i8], ptr %i.ku, i64 %i.kr
  %i.kx = mul nuw nsw i64 %i.kt, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kw, ptr nonnull align 8 %i.kv, i64 %i.kx, i1 false), !alias.scope !33567, !noalias !33569
  br label %bb.dn

.thread.i.i.i:                                    ; preds = %bb.de, %bb.dd
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.kz = add nuw nsw i16 %i.jv, 1
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %i.ky, i64 %.sroa.4.0.i.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.la, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.y, i64 24, i1 false), !alias.scope !33570, !noalias !33543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i16 %i.kz, ptr %i.ju, align 2, !noalias !33543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !33525
  br label %bb.dp

bb.dm:                                            ; preds = %bb.dh, %bb.dg, %.invoke.i.i.i.i
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.dn:                                            ; preds = %bb.dl, %bb.dk
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ld = add i16 %i.kn, 1
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.lc, i64 %.sroa.10.0.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.le, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.x, i64 24, i1 false), !alias.scope !33571, !noalias !33555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i16 %i.ld, ptr %i.km, align 2, !noalias !33555
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.z, align 8, !noalias !33572 ; 2 uses
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !noalias !33572 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !33572
  %.sroa.79.0.copyload.i.i.i = load ptr, ptr %.sink62.i.sroa.gep.i.i.i, align 8, !noalias !33572 ; 4 uses
  %.sroa.8.0.copyload.i.i.i = load i64, ptr %.sink61.i.sroa.gep.i.i.i, align 8, !noalias !33572 ; 2 uses
  %.sroa.9.0.copyload.i.i.i = load ptr, ptr %.sink62.i.sroa.gep44.i.i.i, align 8, !noalias !33572 ; 3 uses
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sink61.i.sroa.gep46.i.i.i, align 8, !noalias !33572 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !33530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !33525
  %.not.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.dp, label %bb.do

end_hunk_1
begin_hunk_2_@"_ZN116_$LT$index_scheduler..upgrade..v1_38..FixupIndexTasks$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17h82a15c39c913f911E":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qt, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !33628
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qg, i64 288 ; 2 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %i.qm
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %.sroa.10.1.i.i.i.i
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.ra = shl nuw nsw i64 %i.qr, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qz, ptr nonnull align 8 %i.qx, i64 %i.ra, i1 false), !alias.scope !33656, !noalias !33644
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qg, i64 288 ; 6 uses
  %i.rc = add nuw nsw i64 %i.qj, 2                ; 2 uses
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %i.qm
  store ptr %.sroa.1034.0128.i.i.i, ptr %i.rd, align 8, !alias.scope !33656, !noalias !33644
  store i16 %i.qk, ptr %i.qh, align 2, !noalias !33644
  %i.re = icmp samesign ult i64 %i.qm, %i.rc
  br i1 %i.re, label %.lr.ph.i.i45.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit48.i.i.i.i"

.lr.ph.i.i45.i.i.i.i.preheader:                   ; preds = %bb.el
  %i.rf = add nuw nsw i64 %i.qj, 1
  %i.rg = sub nsw i64 %i.rf, %.sroa.10.1.i.i.i.i
  %i.rh = sub nsw i64 %i.qj, %.sroa.10.1.i.i.i.i
  %xtraiter = and i64 %i.rg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i45.i.i.i.i.prol.loopexit, label %.lr.ph.i.i45.i.i.i.i.prol

.lr.ph.i.i45.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i45.i.i.i.i.preheader, %.lr.ph.i.i45.i.i.i.i.prol
  %.sroa.0.06.i.i46.i.i.i.i.prol = phi i64 [ %i.ri, %.lr.ph.i.i45.i.i.i.i.prol ], [ %i.qm, %.lr.ph.i.i45.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i45.i.i.i.i.prol ], [ 0, %.lr.ph.i.i45.i.i.i.i.preheader ]
  %i.ri = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i.prol, 1 ; 2 uses
  %i.rj = icmp samesign ult i64 %.sroa.0.06.i.i46.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.rj)
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %.sroa.0.06.i.i46.i.i.i.i.prol
  %i.rl = load ptr, ptr %i.rk, align 8, !noalias !33659, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %i.qg, ptr %i.rl, align 8, !noalias !33664
  %i.rm = trunc nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i.prol to i16
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 272
  store i16 %i.rm, ptr %i.rn, align 8, !noalias !33664
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i45.i.i.i.i.prol.loopexit, label %.lr.ph.i.i45.i.i.i.i.prol, !llvm.loop !33665

.lr.ph.i.i45.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i45.i.i.i.i.prol, %.lr.ph.i.i45.i.i.i.i.preheader
  %.sroa.0.06.i.i46.i.i.i.i.unr = phi i64 [ %i.qm, %.lr.ph.i.i45.i.i.i.i.preheader ], [ %i.ri, %.lr.ph.i.i45.i.i.i.i.prol ]
  %i.ro = icmp ult i64 %i.rh, 3
  br i1 %i.ro, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit48.i.i.i.i", label %.lr.ph.i.i45.i.i.i.i

.lr.ph.i.i45.i.i.i.i:                             ; preds = %.lr.ph.i.i45.i.i.i.i.prol.loopexit, %.lr.ph.i.i45.i.i.i.i
  %.sroa.0.06.i.i46.i.i.i.i = phi i64 [ %i.se, %.lr.ph.i.i45.i.i.i.i ], [ %.sroa.0.06.i.i46.i.i.i.i.unr, %.lr.ph.i.i45.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.rp = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 1 ; 2 uses
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %.sroa.0.06.i.i46.i.i.i.i
  %i.rr = load ptr, ptr %i.rq, align 8, !noalias !33659, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %i.qg, ptr %i.rr, align 8, !noalias !33664
  %i.rs = trunc nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i to i16
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 272
  store i16 %i.rs, ptr %i.rt, align 8, !noalias !33664
  %i.ru = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 2 ; 2 uses
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %i.rp
  %i.rw = load ptr, ptr %i.rv, align 8, !noalias !33659, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %i.qg, ptr %i.rw, align 8, !noalias !33664
  %i.rx = trunc nuw nsw i64 %i.rp to i16
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 272
  store i16 %i.rx, ptr %i.ry, align 8, !noalias !33664
  %i.rz = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 3 ; 2 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %i.ru
  %i.sb = load ptr, ptr %i.sa, align 8, !noalias !33659, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %i.qg, ptr %i.sb, align 8, !noalias !33664
  %i.sc = trunc nuw nsw i64 %i.ru to i16
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 272
  store i16 %i.sc, ptr %i.sd, align 8, !noalias !33664
  %i.se = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 4 ; 2 uses
  %i.sf = icmp ult i64 %.sroa.0.06.i.i46.i.i.i.i, 9
  call void @llvm.assume(i1 %i.sf)
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %i.rz
  %i.sh = load ptr, ptr %i.sg, align 8, !noalias !33659, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %i.qg, ptr %i.sh, align 8, !noalias !33664
  %i.si = trunc nuw nsw i64 %i.rz to i16
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 272
  store i16 %i.si, ptr %i.sj, align 8, !noalias !33664
  %exitcond.not.i.i47.i.i.i.i.3 = icmp eq i64 %i.se, %i.rc
  br i1 %exitcond.not.i.i47.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit48.i.i.i.i", label %.lr.ph.i.i45.i.i.i.i

bb.em:                                            ; preds = %bb.ec
  %i.sk = add nsw i64 %i.lu, -7
  br label %bb.ei

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit48.i.i.i.i": ; preds = %.lr.ph.i.i45.i.i.i.i.prol.loopexit, %.lr.ph.i.i45.i.i.i.i, %bb.el
  %.sroa.018.0.copyload.i.i.i = load i64, ptr %i.v, align 8, !noalias !33666
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !33666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.825.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.825.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !33666
  %.sroa.828.0.copyload.i.i.i = load ptr, ptr %.sroa.828.0..sroa_idx.i.i.i, align 8, !noalias !33666
  %.sroa.931.0.copyload.i.i.i = load i64, ptr %.sroa.931.0..sroa_idx.i.i.i, align 8, !noalias !33666
  br label %bb.en

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit43.i.i.i.i": ; preds = %.lr.ph.i.i40.i.i.i.i.prol.loopexit, %.lr.ph.i.i40.i.i.i.i, %bb.eh
  %.sroa.018.0.copyload19.i.i.i = load i64, ptr %i.v, align 8, !noalias !33666
  %.sroa.6.0.copyload22.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !33666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.825.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.825.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !33666
  %.sroa.931.0.copyload33.i.i.i = load i64, ptr %.sroa.931.0..sroa_idx.i.i.i, align 8, !noalias !33666
  %.sroa.1034.0.copyload36.i.i.i = load ptr, ptr %i.ch, align 8, !noalias !33666
  br label %bb.en

.loopexit.i.i.i:                                  ; preds = %bb.ed, %bb.ec, %.invoke.i22.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.dt
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.thread65.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !33525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !33525
  br label %.loopexit73.i.i.i

bb.en:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit43.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit48.i.i.i.i"
  %.sroa.1034.0.i.i.i = phi ptr [ %i.qg, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit48.i.i.i.i" ], [ %.sroa.1034.0.copyload36.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit43.i.i.i.i" ] ; 3 uses
  %.sroa.931.0.i.i.i = phi i64 [ %.sroa.931.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit48.i.i.i.i" ], [ %.sroa.931.0.copyload33.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit43.i.i.i.i" ] ; 2 uses
  %.sroa.828.0.i.i.i = phi ptr [ %.sroa.828.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit48.i.i.i.i" ], [ %i.oc, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit43.i.i.i.i" ] ; 4 uses
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit48.i.i.i.i" ], [ %.sroa.6.0.copyload22.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit43.i.i.i.i" ] ; 3 uses
  %.sroa.018.0.i.i.i = phi i64 [ %.sroa.018.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit48.i.i.i.i" ], [ %.sroa.018.0.copyload19.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hdac74e51fce6015cE.exit43.i.i.i.i" ] ; 2 uses
  %.sroa.1137.0.copyload39.i.i.i = load i64, ptr %.sroa.1137.0..sroa_idx.i.i.i, align 8, !noalias !33666 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !33594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !33525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !33525
  %.not16.i.i.i = icmp eq i64 %.sroa.6.0.i.i.i, -9223372036854775808
  br i1 %.not16.i.i.i, label %.loopexit73.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.828.0.i.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.825.i.i.i, i64 16, i1 false), !noalias !33525
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1034.0.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.825.i.i.i)
  %i.sl = load ptr, ptr %.sroa.828.0.i.i.i, align 8, !noalias !33573, !noundef !14 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i.i, label %.loopexit1435, label %.lr.ph.i.i.i

.loopexit73.i.i.i:                                ; preds = %bb.en, %.thread65.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.825.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf7677e89c76bcd8bE.exit.i"

bb.ep:                                            ; preds = %bb.ds
  store i16 1, ptr %i.ll, align 2, !noalias !33591
  %i.sm = getelementptr inbounds nuw i8, ptr %i.li, i64 276
  store i8 %i.lh, ptr %i.sm, align 4, !noalias !33591
  %i.sn = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sn, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.02.sroa.4.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !33525
  %i.so = getelementptr inbounds nuw i8, ptr %i.li, i64 296
  store ptr %.lcssa88.i.i.i, ptr %i.so, align 8, !noalias !33591
  store ptr %i.li, ptr %.lcssa88.i.i.i, align 8, !noalias !33667
  %i.sp = getelementptr inbounds nuw i8, ptr %.lcssa88.i.i.i, i64 272
  store i16 1, ptr %i.sp, align 8, !noalias !33667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !33525
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf7677e89c76bcd8bE.exit.i"

bb.eq:                                            ; preds = %bb.cz
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.eq, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %.body.i.i.i.i, %bb.dm
  %.sink.i303 = phi ptr [ %i.ad, %bb.eq ], [ %i.ad, %bb.dm ], [ %i.ac, %.loopexit.i.i.i ], [ %.sroa.02.sroa.4.0..sroa_idx.i.i.i, %.body.i.i.i.i ], [ %i.ac, %.loopexit.split-lp.i.i.i ]
  %.pn18.i.i = phi { ptr, i32 } [ %i.sq, %bb.eq ], [ %i.lb, %bb.dm ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %i.lg, %.body.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef readonly align 8 dereferenceable(24) %.sink.i303) #81, !noalias !33670
  br label %.body304

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf7677e89c76bcd8bE.exit.i": ; preds = %bb.ep, %.loopexit73.i.i.i, %bb.dp, %bb.da
  %i.sr = phi i64 [ 0, %bb.da ], [ %i.db, %bb.dp ], [ %i.ln, %bb.ep ], [ %i.db, %.loopexit73.i.i.i ]
  %i.ss = phi ptr [ %i.iz, %bb.da ], [ %i.dc, %bb.dp ], [ %i.li, %bb.ep ], [ %i.dc, %.loopexit73.i.i.i ]
  %.sroa.12.0.i.i = phi i64 [ 0, %bb.da ], [ %.sroa.19.058.i.i.i, %bb.dp ], [ %.sroa.10.0.i.i.i.i, %bb.ep ], [ %.sroa.10.0.i.i.i.i, %.loopexit73.i.i.i ]
  %.sroa.0.0.i.i302 = phi ptr [ %i.iz, %bb.da ], [ %.sroa.11.060.i.i.i, %bb.dp ], [ %i.kl, %bb.ep ], [ %i.kl, %.loopexit73.i.i.i ]
  %i.st = add i64 %i.da, 1                        ; 2 uses
  store i64 %i.st, ptr %i.br, align 8, !noalias !33511
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i302, i64 8
  %i.sv = getelementptr inbounds nuw [24 x i8], ptr %i.su, i64 %.sroa.12.0.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !33505
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h9d2ef2f7ce58c168E.exit"

"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h9d2ef2f7ce58c168E.exit": ; preds = %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf7677e89c76bcd8bE.exit.i", %bb.cx
  %i.sw = phi i64 [ %i.da, %bb.cx ], [ %i.st, %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf7677e89c76bcd8bE.exit.i" ]
  %i.sx = phi i64 [ %i.db, %bb.cx ], [ %i.sr, %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf7677e89c76bcd8bE.exit.i" ]
  %i.sy = phi ptr [ %i.dc, %bb.cx ], [ %i.ss, %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf7677e89c76bcd8bE.exit.i" ]
  %.sroa.0.0.i = phi ptr [ %i.jt, %bb.cx ], [ %i.sv, %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hf7677e89c76bcd8bE.exit.i" ]
  invoke fastcc void @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h94eafc541148e8c7E"(ptr noalias noundef align 8 dereferenceable(24) %.sroa.0.0.i, i32 noundef %.sroa.075.0.extract.trunc)
          to label %switch.lookup unwind label %bb.cw

switch.lookup:                                    ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h9d2ef2f7ce58c168E.exit"
  %.val136 = load i64, ptr %i.ci, align 8, !range !4548, !noundef !14 ; 3 uses
  %i.sz = icmp ne i64 %.val136, -9223372036854775790
  call void @llvm.assume(i1 %i.sz)
  %i.ta = add nsw i64 %.val136, 9223372036854775807
  %i.tb = icmp ugt i64 %.val136, -9223372036854775808
  %i.tc = select i1 %i.tb, i64 %i.ta, i64 17
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE.9061, i64 %i.tc
  %switch.load = load i8, ptr %switch.gep, align 1 ; 6 uses
  %.not.i307 = icmp eq ptr %i.cz, null
  br i1 %.not.i307, label %.thread842, label %bb.er

.thread842:                                       ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !33671
  store i64 0, ptr %i.u, align 8, !alias.scope !33674, !noalias !33671
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i332, align 8, !alias.scope !33674, !noalias !33671
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i333, align 8, !alias.scope !33674, !noalias !33671
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !33677
  %i.td = call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !33677 ; 8 uses
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %bb.ex, label %bb.ey, !prof !121

bb.er:                                            ; preds = %switch.lookup, %bb.eu
  %.sroa.3.0.i.i308 = phi i64 [ %i.tu, %bb.eu ], [ %i.cy, %switch.lookup ] ; 2 uses
  %.sroa.0.0.i.i309 = phi ptr [ %i.tt, %bb.eu ], [ %i.cz, %switch.lookup ] ; 9 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i309, i64 276 ; 4 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i309, i64 274
  %i.th = load i16, ptr %i.tg, align 2, !noalias !33682, !noundef !14 ; 2 uses
  %i.ti = zext i16 %i.th to i64                   ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.ti
  %i.tk = icmp eq i16 %i.th, 0
  br i1 %i.tk, label %._crit_edge2398, label %.lr.ph2397

bb.es:                                            ; preds = %.lr.ph2397
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i3112395, i64 1 ; 2 uses
  %i.tm = add nuw nsw i64 %.sroa.8.0.i.i.i3102394, 1
  %i.tn = icmp eq ptr %i.tl, %i.tj
  br i1 %i.tn, label %._crit_edge2398, label %.lr.ph2397

.lr.ph2397:                                       ; preds = %bb.er, %bb.es
  %.sroa.03.0.i.i.i3112395 = phi ptr [ %i.tl, %bb.es ], [ %i.tf, %bb.er ] ; 2 uses
  %.sroa.8.0.i.i.i3102394 = phi i64 [ %i.tm, %bb.es ], [ 0, %bb.er ] ; 3 uses
  %.val7.i.i.i312 = load i8, ptr %.sroa.03.0.i.i.i3112395, align 1, !range !4559, !noalias !33682, !noundef !14
  %i.to = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 18) %switch.load, i8 %.val7.i.i.i312)
  switch i8 %i.to, label %bb.et [
    i8 -1, label %._crit_edge2398
    i8 0, label %bb.ev
    i8 1, label %bb.es
  ]

bb.et:                                            ; preds = %.lr.ph2397
  unreachable

._crit_edge2398:                                  ; preds = %bb.es, %.lr.ph2397, %bb.er
  %.sroa.4.0.i.ph.i.i317 = phi i64 [ %i.ti, %bb.er ], [ %i.ti, %bb.es ], [ %.sroa.8.0.i.i.i3102394, %.lr.ph2397 ] ; 14 uses
  %i.tp = icmp eq i64 %.sroa.3.0.i.i308, 0
  br i1 %i.tp, label %bb.ew, label %bb.eu

bb.eu:                                            ; preds = %._crit_edge2398
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i309, i64 288
  %i.tr = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i317, 12
  call void @llvm.assume(i1 %i.tr)
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %.sroa.4.0.i.ph.i.i317
  %i.tt = load ptr, ptr %i.ts, align 8, !noalias !33688, !nonnull !14, !noundef !14
  %i.tu = add i64 %.sroa.3.0.i.i308, -1
  br label %bb.er

bb.ev:                                            ; preds = %.lr.ph2397
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i309, i64 8
  %i.tw = getelementptr inbounds nuw [24 x i8], ptr %i.tv, i64 %.sroa.8.0.i.i.i3102394
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h838760a16cced05aE.exit"

bb.ew:                                            ; preds = %._crit_edge2398
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i309, i64 274 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !33671
  store i64 0, ptr %i.u, align 8, !alias.scope !33674, !noalias !33671
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i332, align 8, !alias.scope !33674, !noalias !33671
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i333, align 8, !alias.scope !33674, !noalias !33671
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i323)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !33691
  %i.ty = load i16, ptr %i.tx, align 2, !noalias !33696, !noundef !14 ; 3 uses
  %i.tz = icmp ugt i16 %i.ty, 10
  br i1 %i.tz, label %bb.ez, label %bb.fa

bb.ex:                                            ; preds = %.thread842
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 288) #80
          to label %.noexc.i.i433 unwind label %bb.go, !noalias !33677

.noexc.i.i433:                                    ; preds = %bb.ex
  unreachable

bb.ey:                                            ; preds = %.thread842
  store ptr null, ptr %i.td, align 8, !noalias !33677
  %i.ua = getelementptr inbounds nuw i8, ptr %i.td, i64 274
  store ptr %i.td, ptr %i.bh, align 8, !noalias !33677
  store i64 0, ptr %i.cj, align 8, !noalias !33677
  store i16 1, ptr %i.ua, align 2, !noalias !33701
  %i.ub = getelementptr inbounds nuw i8, ptr %i.td, i64 276
  store i8 %switch.load, ptr %i.ub, align 4, !noalias !33701
  %i.uc = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uc, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !33705
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h27a7057e05954b9cE.exit.i"

bb.ez:                                            ; preds = %bb.ew
  %i.ud = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i317, 5
  store ptr %.sroa.0.0.i.i309, ptr %i.r, align 8, !noalias !33696
  store i64 0, ptr %i.ck, align 8, !noalias !33696
  br i1 %i.ud, label %.invoke.i.i.i.i431, label %bb.fd

bb.fa:                                            ; preds = %bb.ew
  %i.ue = zext nneg i16 %i.ty to i64              ; 2 uses
  %.not.i.i.i.i.i339.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i317, %i.ue
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.sroa.4.0.i.ph.i.i317 ; 3 uses
  br i1 %.not.i.i.i.i.i339.not, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  store i8 %switch.load, ptr %i.uf, align 1, !alias.scope !33706, !noalias !33709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !33714
  call void @llvm.experimental.noalias.scope.decl(metadata !33715)
  br label %.thread.i.i.i340

bb.fc:                                            ; preds = %bb.fa
  %i.ug = add nuw nsw i64 %.sroa.4.0.i.ph.i.i317, 1 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.ug
  %i.ui = sub nuw nsw i64 %i.ue, %.sroa.4.0.i.ph.i.i317 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.uh, ptr nonnull align 1 %i.uf, i64 %i.ui, i1 false), !alias.scope !33706, !noalias !33709
  store i8 %switch.load, ptr %i.uf, align 1, !alias.scope !33706, !noalias !33709
  %i.uj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i309, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !33714
  %i.uk = getelementptr inbounds nuw [24 x i8], ptr %i.uj, i64 %.sroa.4.0.i.ph.i.i317
  %i.ul = getelementptr inbounds nuw [24 x i8], ptr %i.uj, i64 %i.ug
  %i.um = mul nuw nsw i64 %i.ui, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ul, ptr nonnull align 8 %i.uk, i64 %i.um, i1 false), !alias.scope !33718, !noalias !33720
  br label %.thread.i.i.i340

bb.fd:                                            ; preds = %bb.ez
  switch i64 %.sroa.4.0.i.ph.i.i317, label %bb.fe [
    i64 5, label %.invoke.i.i.i.i431
    i64 6, label %bb.ff
  ]

.invoke.i.i.i.i431:                               ; preds = %bb.fd, %bb.ez
  %.sink.i.i.i.i432 = phi i64 [ %.sroa.4.0.i.ph.i.i317, %bb.fd ], [ 4, %bb.ez ]
  store i64 %.sink.i.i.i.i432, ptr %i.cl, align 8, !noalias !33696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !33696
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h847e9d2087260556E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.fh unwind label %bb.fk, !noalias !33696

bb.fe:                                            ; preds = %bb.fd
  store i64 6, ptr %i.cl, align 8, !noalias !33696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !33696
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h847e9d2087260556E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.fg unwind label %bb.fk, !noalias !33696

bb.ff:                                            ; preds = %bb.fd
  store i64 5, ptr %i.cl, align 8, !noalias !33696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !33696
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h847e9d2087260556E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.fh unwind label %bb.fk, !noalias !33696

bb.fg:                                            ; preds = %bb.fe
  %i.un = add nsw i64 %.sroa.4.0.i.ph.i.i317, -7
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %.invoke.i.i.i.i431
  %.sink62.i.sroa.phi.i.i.i349 = phi ptr [ %.sink62.i.sroa.gep.i.i.i335, %.invoke.i.i.i.i431 ], [ %.sink62.i.sroa.gep44.i.i.i336, %bb.ff ], [ %.sink62.i.sroa.gep44.i.i.i336, %bb.fg ]
  %.sroa.10.0.i.i.i.i350 = phi i64 [ %.sroa.4.0.i.ph.i.i317, %.invoke.i.i.i.i431 ], [ 0, %bb.ff ], [ %i.un, %bb.fg ] ; 9 uses
  %i.uo = load ptr, ptr %.sink62.i.sroa.phi.i.i.i349, align 8, !noalias !33696, !nonnull !14, !noundef !14 ; 7 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 274 ; 2 uses
  %i.uq = load i16, ptr %i.up, align 2, !noalias !33721, !noundef !14 ; 2 uses
  %i.ur = zext i16 %i.uq to i64                   ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.uo, i64 276 ; 2 uses
  %.not.i41.not.i.i.i.i351 = icmp ult i64 %.sroa.10.0.i.i.i.i350, %i.ur
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 %.sroa.10.0.i.i.i.i350 ; 3 uses
  br i1 %.not.i41.not.i.i.i.i351, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  store i8 %switch.load, ptr %i.ut, align 1, !alias.scope !33726, !noalias !33721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !33729
  call void @llvm.experimental.noalias.scope.decl(metadata !33730)
  br label %bb.fl

bb.fj:                                            ; preds = %bb.fh
  %i.uu = add nuw nsw i64 %.sroa.10.0.i.i.i.i350, 1 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.uu
  %i.uw = sub nuw nsw i64 %i.ur, %.sroa.10.0.i.i.i.i350 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.uv, ptr nonnull align 1 %i.ut, i64 %i.uw, i1 false), !alias.scope !33726, !noalias !33721
  store i8 %switch.load, ptr %i.ut, align 1, !alias.scope !33726, !noalias !33721
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uo, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !33729
  %i.uy = getelementptr inbounds nuw [24 x i8], ptr %i.ux, i64 %.sroa.10.0.i.i.i.i350
  %i.uz = getelementptr inbounds nuw [24 x i8], ptr %i.ux, i64 %i.uu
  %i.va = mul nuw nsw i64 %i.uw, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.uz, ptr nonnull align 8 %i.uy, i64 %i.va, i1 false), !alias.scope !33733, !noalias !33735
  br label %bb.fl

.thread.i.i.i340:                                 ; preds = %bb.fc, %bb.fb
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i309, i64 8
  %i.vc = add nuw nsw i16 %i.ty, 1
  %i.vd = getelementptr inbounds nuw [24 x i8], ptr %i.vb, i64 %.sroa.4.0.i.ph.i.i317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vd, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.p, i64 24, i1 false), !alias.scope !33736, !noalias !33709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i16 %i.vc, ptr %i.tx, align 2, !noalias !33709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !33691
  br label %bb.fn

bb.fk:                                            ; preds = %bb.ff, %bb.fe, %.invoke.i.i.i.i431
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i346

bb.fl:                                            ; preds = %bb.fj, %bb.fi
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %i.vg = add i16 %i.uq, 1
  %i.vh = getelementptr inbounds nuw [24 x i8], ptr %i.vf, i64 %.sroa.10.0.i.i.i.i350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vh, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o, i64 24, i1 false), !alias.scope !33737, !noalias !33721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i16 %i.vg, ptr %i.up, align 2, !noalias !33721
  %.sroa.03.0.copyload.i.i.i352 = load i64, ptr %i.q, align 8, !noalias !33738 ; 2 uses
  %.sroa.5.0.copyload.i.i.i354 = load i64, ptr %.sroa.5.0..sroa_idx5.i.i.i353, align 8, !noalias !33738 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i323, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i355, i64 16, i1 false), !noalias !33738
  %.sroa.79.0.copyload.i.i.i356 = load ptr, ptr %.sink62.i.sroa.gep.i.i.i335, align 8, !noalias !33738 ; 4 uses
  %.sroa.8.0.copyload.i.i.i357 = load i64, ptr %.sink61.i.sroa.gep.i.i.i337, align 8, !noalias !33738 ; 2 uses
  %.sroa.9.0.copyload.i.i.i358 = load ptr, ptr %.sink62.i.sroa.gep44.i.i.i336, align 8, !noalias !33738 ; 3 uses
  %.sroa.10.0.copyload.i.i.i359 = load i64, ptr %.sink61.i.sroa.gep46.i.i.i338, align 8, !noalias !33738 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !33696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !33691
  %.not.i.i.i360 = icmp eq i64 %.sroa.5.0.copyload.i.i.i354, -9223372036854775808
  br i1 %.not.i.i.i360, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.79.0.copyload.i.i.i356) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i324)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.i324, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i323, i64 16, i1 false), !noalias !33691
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i358) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i323)
  %i.vi = load ptr, ptr %.sroa.79.0.copyload.i.i.i356, align 8, !noalias !33739, !noundef !14 ; 2 uses
  %.not.i116.i.i.i361 = icmp eq ptr %i.vi, null
  br i1 %.not.i116.i.i.i361, label %.loopexit1434, label %.lr.ph.i.i.i362

end_hunk_2
begin_hunk_3_@_ZN15index_scheduler12index_mapper9index_map8IndexMap3get17he2534f747d025f1aE:bb.a
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 328
  %i.cp = load i32, ptr %i.co, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 336
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 344
  %i.ct = load i32, ptr %i.cs, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 352
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 360
  %i.cx = load i32, ptr %i.cw, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 368
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 376
  %i.db = load i32, ptr %i.da, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 384
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 392
  %i.df = load i32, ptr %i.de, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 400
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 408
  %i.dj = load i32, ptr %i.di, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 416
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 424
  %i.dn = load i32, ptr %i.dm, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 432
  %.sroa.54.408..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.54, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %.sroa.54.408..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.do, i64 72, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 504
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i, i64 512
  %i.ds = load i32, ptr %i.dr, align 8, !alias.scope !42993, !noalias !42996, !noundef !14
  store i64 3, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.v, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.7.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.x, ptr %.sroa.46.sroa.7.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.8.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.z, ptr %.sroa.46.sroa.8.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.10.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ab, ptr %.sroa.46.sroa.10.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.11.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ad, ptr %.sroa.46.sroa.11.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.13.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.af, ptr %.sroa.46.sroa.13.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.14.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.ah, ptr %.sroa.46.sroa.14.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.16.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.aj, ptr %.sroa.46.sroa.16.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.17.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.al, ptr %.sroa.46.sroa.17.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.19.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.an, ptr %.sroa.46.sroa.19.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.20.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.ap, ptr %.sroa.46.sroa.20.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.22.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.ar, ptr %.sroa.46.sroa.22.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.23.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.at, ptr %.sroa.46.sroa.23.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.25.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.av, ptr %.sroa.46.sroa.25.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.26.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.ax, ptr %.sroa.46.sroa.26.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.28.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.az, ptr %.sroa.46.sroa.28.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.29.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.bb, ptr %.sroa.46.sroa.29.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.31.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.bd, ptr %.sroa.46.sroa.31.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.32.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.bf, ptr %.sroa.46.sroa.32.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.34.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.bh, ptr %.sroa.46.sroa.34.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.35.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %i.bj, ptr %.sroa.46.sroa.35.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.37.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.bl, ptr %.sroa.46.sroa.37.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.38.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.bn, ptr %.sroa.46.sroa.38.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.40.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.bp, ptr %.sroa.46.sroa.40.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.41.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %i.br, ptr %.sroa.46.sroa.41.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.43.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.bt, ptr %.sroa.46.sroa.43.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.44.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %i.bv, ptr %.sroa.46.sroa.44.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.46.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.bx, ptr %.sroa.46.sroa.46.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.47.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %i.bz, ptr %.sroa.46.sroa.47.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.49.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.cb, ptr %.sroa.46.sroa.49.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.50.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 %i.cd, ptr %.sroa.46.sroa.50.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.52.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %i.cf, ptr %.sroa.46.sroa.52.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.53.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.ch, ptr %.sroa.46.sroa.53.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.55.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.cj, ptr %.sroa.46.sroa.55.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.56.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %i.cl, ptr %.sroa.46.sroa.56.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.58.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %i.cn, ptr %.sroa.46.sroa.58.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.59.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %i.cp, ptr %.sroa.46.sroa.59.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.61.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.cr, ptr %.sroa.46.sroa.61.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.62.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 %i.ct, ptr %.sroa.46.sroa.62.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.64.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.cv, ptr %.sroa.46.sroa.64.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.65.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 %i.cx, ptr %.sroa.46.sroa.65.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.67.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 %i.cz, ptr %.sroa.46.sroa.67.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.68.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 %i.db, ptr %.sroa.46.sroa.68.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.70.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %i.dd, ptr %.sroa.46.sroa.70.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.71.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %i.df, ptr %.sroa.46.sroa.71.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.73.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %i.dh, ptr %.sroa.46.sroa.73.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.74.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i32 %i.dj, ptr %.sroa.46.sroa.74.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.76.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 %i.dl, ptr %.sroa.46.sroa.76.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.77.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 %i.dn, ptr %.sroa.46.sroa.77.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.78.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %.sroa.46.sroa.78.0..sroa.46.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(76) %.sroa.54, i64 76, i1 false)
  %.sroa.46.sroa.79.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 %i.dq, ptr %.sroa.46.sroa.79.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.80.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.ds, ptr %.sroa.46.sroa.80.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  br label %_ZN15index_scheduler12index_mapper9index_map8IndexMap15get_unavailable17h06a903282ee055f7E.exit

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.dt = getelementptr i8, ptr %1, i64 40
  %.val7 = load ptr, ptr %i.dt, align 8, !noundef !14 ; 2 uses
  %i.du = getelementptr i8, ptr %1, i64 48
  %.val8 = load i64, ptr %i.du, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42998)
  %.not.i.i = icmp eq ptr %.val7, null
  br i1 %.not.i.i, label %.loopexit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit, %bb.g
  %.sroa.3.0.i.i.i = phi i64 [ %i.ex, %bb.g ], [ %.val8, %.loopexit ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.ew, %bb.g ], [ %.val7, %.loopexit ] ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 714
  %i.dw = load i16, ptr %i.dv, align 2, !noalias !43001, !noundef !14 ; 2 uses
  %i.dx = zext i16 %i.dw to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.dx, 4
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %.idx
  %i.dz = icmp eq i16 %i.dw, 0
  br i1 %i.dz, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i"

bb.e:                                             ; preds = %endblock
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i60, i64 16 ; 2 uses
  %i.eb = add nuw nsw i64 %.sroa.8.0.i.i.i.i59, 1
  %i.ec = icmp eq ptr %i.ea, %i.dy
  br i1 %i.ec, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i": ; preds = %.preheader.i.i, %bb.e
  %.sroa.01.0.i.i.i.i60 = phi ptr [ %i.ea, %bb.e ], [ %.sroa.0.0.i.i.i, %.preheader.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i.i59 = phi i64 [ %i.eb, %bb.e ], [ 0, %.preheader.i.i ] ; 4 uses
  %i.ed = load i64, ptr %2, align 1
  %i.ee = load i64, ptr %.sroa.01.0.i.i.i.i60, align 1
  %i.ef = tail call i64 @llvm.bswap.i64(i64 %i.ed) ; 2 uses
  %i.eg = tail call i64 @llvm.bswap.i64(i64 %i.ee) ; 2 uses
  %i.eh = icmp eq i64 %i.ef, %i.eg
  br i1 %i.eh, label %loadbb72, label %res_block

res_block:                                        ; preds = %loadbb72, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i"
  %phi.src1 = phi i64 [ %i.ef, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i" ], [ %i.eo, %loadbb72 ]
  %phi.src2 = phi i64 [ %i.eg, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i" ], [ %i.ep, %loadbb72 ]
  %i.ei = icmp ult i64 %phi.src1, %phi.src2
  %i.ej = select i1 %i.ei, i32 -1, i32 1
  br label %endblock

loadbb72:                                         ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i"
  %i.ek = getelementptr i8, ptr %2, i64 8
  %i.el = getelementptr i8, ptr %.sroa.01.0.i.i.i.i60, i64 8
  %i.em = load i64, ptr %i.ek, align 1
  %i.en = load i64, ptr %i.el, align 1
  %i.eo = tail call i64 @llvm.bswap.i64(i64 %i.em) ; 2 uses
  %i.ep = tail call i64 @llvm.bswap.i64(i64 %i.en) ; 2 uses
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br i1 %i.eq, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb72
  %phi.res = phi i32 [ 0, %loadbb72 ], [ %i.ej, %res_block ]
  %i.er = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  switch i8 %i.er, label %bb.f [
    i8 -1, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge"
    i8 0, label %bb.h
    i8 1, label %bb.e
  ]

bb.f:                                             ; preds = %endblock
  unreachable

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge": ; preds = %bb.e, %endblock, %.preheader.i.i
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.dx, %.preheader.i.i ], [ %i.dx, %bb.e ], [ %.sroa.8.0.i.i.i.i59, %endblock ] ; 2 uses
  %i.es = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.es, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge"
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 720
  %i.eu = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 12
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.sroa.4.0.i.ph.i.i.i
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !43010, !nonnull !14, !noundef !14
  %i.ex = add i64 %.sroa.3.0.i.i.i, -1
  br label %.preheader.i.i

bb.h:                                             ; preds = %endblock
  %i.ey = icmp samesign ult i64 %.sroa.8.0.i.i.i.i59, 11
  tail call void @llvm.assume(i1 %i.ey)
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 176
  %i.fa = getelementptr inbounds nuw [48 x i8], ptr %i.ez, i64 %.sroa.8.0.i.i.i.i59 ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 40 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 8, !range !585, !noalias !43013, !noundef !14
  %.not4.i = icmp eq i8 %i.fc, 2
  br i1 %.not4.i, label %bb.j, label %bb.i

.loopexit.i:                                      ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge", %.loopexit
  store i64 0, ptr %0, align 8, !alias.scope !42998, !noalias !43014
  br label %_ZN15index_scheduler12index_mapper9index_map8IndexMap15get_unavailable17h06a903282ee055f7E.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i64 16, i1 false), !noalias !43013
  %i.fe = load ptr, ptr %i.fa, align 8, !noalias !43013, !nonnull !14, !noundef !14
  %i.ff = atomicrmw add ptr %i.fe, i64 1 monotonic, align 8, !noalias !43013
  %i.fg = icmp slt i64 %i.ff, 0
  br i1 %i.fg, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  store i64 1, ptr %0, align 8, !alias.scope !42998, !noalias !43014
  br label %_ZN15index_scheduler12index_mapper9index_map8IndexMap15get_unavailable17h06a903282ee055f7E.exit

bb.k:                                             ; preds = %bb.i
  %i.fh = load ptr, ptr %i.fa, align 8, !noalias !43013, !nonnull !14, !noundef !14
  %i.fi = load i8, ptr %i.fb, align 8, !range !1313, !noalias !43013, !noundef !14
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fl = load <2 x i64>, ptr %i.fj, align 8, !noalias !43013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !43014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.fh, ptr %i.fk, align 8, !alias.scope !42998, !noalias !43014
  store <2 x i64> %i.fl, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !42998, !noalias !43014
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.fi, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !42998, !noalias !43014
  store i64 2, ptr %0, align 8, !alias.scope !42998, !noalias !43014
  br label %_ZN15index_scheduler12index_mapper9index_map8IndexMap15get_unavailable17h06a903282ee055f7E.exit

bb.l:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

_ZN15index_scheduler12index_mapper9index_map8IndexMap15get_unavailable17h06a903282ee055f7E.exit: ; preds = %bb.k, %bb.j, %.loopexit.i, %"_ZN58_$LT$milli..index..Index$u20$as$u20$core..clone..Clone$GT$5clone17hc9e1b9c2a3a13e24E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN15index_scheduler12index_mapper9index_map8IndexMap5close17h8b75ef9dd6cc3960E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(496) %2, i1 noundef zeroext %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [496 x i8], align 8               ; 4 uses
  %i.d = invoke noundef i64 @_ZN5milli5index5Index8map_size17hcce8e4359547b026E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %i.c, ptr noundef nonnull align 8 dereferenceable(496) %2, i64 496, i1 false)
  %i.e = call noundef nonnull ptr @_ZN5milli5index5Index19prepare_for_closing17h74446d406df2d725E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(496) %i.c)
  %i.f = add i64 %i.d, %4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !14
  %i.i = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.i, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.k = zext i1 %3 to i8
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 %i.k, ptr %.sroa.7.0..sroa_idx, align 8
  call fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hf2aaa0da2fd264c2E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef align 8 dereferenceable(24) %i.j, ptr noalias noundef align 1 captures(address) dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !43015)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !1331, !alias.scope !43015, !noundef !14 ; 2 uses
  %i.n = icmp eq i8 %i.m, 3
  br i1 %i.n, label %"_ZN4core3ptr131drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$index_scheduler..index_mapper..index_map..ClosingIndex$GT$$GT$$GT$17h1577007096c66ed3E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !43018)
  %i.o = icmp eq i8 %i.m, 2
  br i1 %i.o, label %"_ZN4core3ptr131drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$index_scheduler..index_mapper..index_map..ClosingIndex$GT$$GT$$GT$17h1577007096c66ed3E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !43021)
  call void @llvm.experimental.noalias.scope.decl(metadata !43024)
  call void @llvm.experimental.noalias.scope.decl(metadata !43027)
  call void @llvm.experimental.noalias.scope.decl(metadata !43030)
  %i.p = load ptr, ptr %i.b, align 8, !alias.scope !43033, !nonnull !14, !noundef !14
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !43033
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.e, label %"_ZN4core3ptr131drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$index_scheduler..index_mapper..index_map..ClosingIndex$GT$$GT$$GT$17h1577007096c66ed3E.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc53d2bff696e05a9E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %"_ZN4core3ptr131drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$index_scheduler..index_mapper..index_map..ClosingIndex$GT$$GT$$GT$17h1577007096c66ed3E.exit"

"_ZN4core3ptr131drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$index_scheduler..index_mapper..index_map..ClosingIndex$GT$$GT$$GT$17h1577007096c66ed3E.exit": ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17he1632353358524b1E.exit": ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.f:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43043)
  %i.s = load ptr, ptr %2, align 8, !alias.scope !43046, !nonnull !14, !noundef !14
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !43046
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.g, label %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17he1632353358524b1E.exit"

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdfb7a3544ec9f782E"(ptr noalias noundef nonnull align 8 dereferenceable(496) %2)
          to label %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17he1632353358524b1E.exit" unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN15index_scheduler12index_mapper9index_map8IndexMap6create17hf47279a27093e486E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([496 x i8]) align 8 captures(none) dereferenceable(496) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1, ptr noalias noundef readonly align 1 captures(none) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %5, i1 noundef zeroext %6, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [520 x i8], align 8               ; 4 uses
  %i.b = alloca [520 x i8], align 8               ; 6 uses
  %i.c = alloca [512 x i8], align 8               ; 9 uses
  %i.d = alloca [512 x i8], align 16              ; 5 uses
  %.sroa.0.i = alloca [16 x i8], align 8          ; 5 uses
  %.sroa.6.i20 = alloca [488 x i8], align 8       ; 5 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [40 x i8], align 8                ; 9 uses
  %i.i = alloca [496 x i8], align 8               ; 7 uses
  %.sroa.626.i = alloca [320 x i8], align 8       ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [496 x i8], align 8               ; 7 uses
  %.sroa.6.i = alloca [320 x i8], align 8         ; 6 uses
  %i.l = alloca [16 x i8], align 4                ; 5 uses
  %i.m = alloca [16 x i8], align 4                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 1                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [496 x i8], align 8               ; 2 uses
  %i.u = alloca [16 x i8], align 1                ; 2 uses
  %i.v = alloca [496 x i8], align 16              ; 95 uses
  %i.w = alloca [520 x i8], align 8               ; 12 uses
  %.sroa.830 = alloca [320 x i8], align 8         ; 9 uses
  %.sroa.14 = alloca [168 x i8], align 8          ; 6 uses
  %.sroa.6 = alloca [320 x i8], align 8           ; 7 uses
  %i.x = alloca [496 x i8], align 8               ; 59 uses
  %i.y = alloca [48 x i8], align 8                ; 7 uses
  %i.z = alloca [504 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.aa, align 8, !noundef !14 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val13 = load i64, ptr %i.ab, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43047)
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %bb.d
  %.sroa.3.0.i.i.i = phi i64 [ %i.be, %bb.d ], [ %.val13, %bb.a ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.bd, %bb.d ], [ %.val, %bb.a ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 714
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !43050, !noundef !14 ; 2 uses
  %i.ae = zext i16 %i.ad to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.ae, 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %.idx
  %i.ag = icmp eq i16 %i.ad, 0
  br i1 %i.ag, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i"

bb.b:                                             ; preds = %endblock
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i105, i64 16 ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.8.0.i.i.i.i104, 1
  %i.aj = icmp eq ptr %i.ah, %i.af
  br i1 %i.aj, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i": ; preds = %.preheader.i.i, %bb.b
  %.sroa.01.0.i.i.i.i105 = phi ptr [ %i.ah, %bb.b ], [ %.sroa.0.0.i.i.i, %.preheader.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i.i104 = phi i64 [ %i.ai, %bb.b ], [ 0, %.preheader.i.i ] ; 4 uses
  %i.ak = load i64, ptr %2, align 1
  %i.al = load i64, ptr %.sroa.01.0.i.i.i.i105, align 1
  %i.am = tail call i64 @llvm.bswap.i64(i64 %i.ak) ; 2 uses
  %i.an = tail call i64 @llvm.bswap.i64(i64 %i.al) ; 2 uses
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %loadbb142, label %res_block

res_block:                                        ; preds = %loadbb142, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i"
  %phi.src1 = phi i64 [ %i.am, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i" ], [ %i.av, %loadbb142 ]
  %phi.src2 = phi i64 [ %i.an, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i" ], [ %i.aw, %loadbb142 ]
  %i.ap = icmp ult i64 %phi.src1, %phi.src2
  %i.aq = select i1 %i.ap, i32 -1, i32 1
  br label %endblock

loadbb142:                                        ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i"
  %i.ar = getelementptr i8, ptr %2, i64 8
  %i.as = getelementptr i8, ptr %.sroa.01.0.i.i.i.i105, i64 8
  %i.at = load i64, ptr %i.ar, align 1
  %i.au = load i64, ptr %i.as, align 1
  %i.av = tail call i64 @llvm.bswap.i64(i64 %i.at) ; 2 uses
  %i.aw = tail call i64 @llvm.bswap.i64(i64 %i.au) ; 2 uses
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb142
  %phi.res = phi i32 [ 0, %loadbb142 ], [ %i.aq, %res_block ]
  %i.ay = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  switch i8 %i.ay, label %bb.c [
    i8 -1, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge"
    i8 0, label %bb.e
    i8 1, label %bb.b
  ]

bb.c:                                             ; preds = %endblock
  unreachable

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge": ; preds = %bb.b, %endblock, %.preheader.i.i
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.ae, %.preheader.i.i ], [ %i.ae, %bb.b ], [ %.sroa.8.0.i.i.i.i104, %endblock ] ; 2 uses
  %i.az = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.az, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge"
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 720
  %i.bb = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 12
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.4.0.i.ph.i.i.i
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !43059, !nonnull !14, !noundef !14
  %i.be = add i64 %.sroa.3.0.i.i.i, -1
  br label %.preheader.i.i

bb.e:                                             ; preds = %endblock
  %i.bf = icmp samesign ult i64 %.sroa.8.0.i.i.i.i104, 11
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 176
  %i.bh = getelementptr inbounds nuw [48 x i8], ptr %i.bg, i64 %.sroa.8.0.i.i.i.i104 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !range !585, !noalias !43062, !noundef !14
  %.not4.i = icmp eq i8 %i.bj, 2
  br i1 %.not4.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !noalias !43062
  %i.bl = load ptr, ptr %i.bh, align 8, !noalias !43062, !nonnull !14, !noundef !14
  %i.bm = atomicrmw add ptr %i.bl, i64 1 monotonic, align 8, !noalias !43062
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.bh, align 8, !noalias !43062, !nonnull !14, !noundef !14
  %i.bp = load i8, ptr %i.bi, align 8, !range !1313, !noalias !43062, !noundef !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.bs = load <2 x i64>, ptr %i.bq, align 8, !noalias !43062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !43063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store ptr %i.bo, ptr %i.br, align 8, !alias.scope !43047, !noalias !43063
  store <2 x i64> %i.bs, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !43047, !noalias !43063
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i8 %i.bp, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !43047, !noalias !43063
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.g
  %storemerge = phi i64 [ 2, %bb.g ], [ 1, %bb.e ]
  store i64 %storemerge, ptr %i.z, align 8, !alias.scope !43047, !noalias !43063
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$index_scheduler..index_mapper..IndexStatus$GT$17h675b313e6f6af1cfE"(ptr noalias noundef align 8 dereferenceable(504) %i.z)
          to label %bb.bp unwind label %bb.bq

.loopexit:                                        ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.830)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bt = invoke noundef i64 @_ZN9page_size3get17hede5b479feb37d60E()
          to label %.noexc48.i unwind label %.thread66.i, !noalias !43067 ; 2 uses

.noexc48.i:                                       ; preds = %.loopexit
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc48.i
  %i.bv = invoke noundef i64 @_ZN9page_size3get17hede5b479feb37d60E()
          to label %bb.l unwind label %.thread66.i, !noalias !43067

bb.k:                                             ; preds = %.noexc48.i
  invoke void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @729) #80
          to label %.noexc50.i unwind label %.thread66.i, !noalias !43067

.noexc50.i:                                       ; preds = %bb.k
  unreachable

.thread66.i:                                      ; preds = %bb.l, %bb.k, %bb.j, %.loopexit
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.sink.split

bb.l:                                             ; preds = %bb.j
  %i.bw = udiv i64 %7, %i.bt
  %i.bx = mul i64 %i.bw, %i.bv                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !43067
  invoke void @_ZN3std3env4_var17hedc9fcdb7326c51fE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @557, i64 noundef 36)
          to label %_ZN3std3env3var17ha331f613449292d1E.exit.i unwind label %.thread66.i, !noalias !43067

_ZN3std3env3var17ha331f613449292d1E.exit.i:       ; preds = %bb.l
  %i.by = load i64, ptr %i.q, align 8, !range !751, !noalias !43067, !noundef !14
  %i.bz = trunc nuw i64 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !43067 ; 5 uses
  br i1 %i.bz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN3std3env3var17ha331f613449292d1E.exit.i
  %.not.i = icmp eq i64 %i.cb, -9223372036854775808
  br i1 %.not.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit54.i", label %bb.ab, !prof !15

bb.n:                                             ; preds = %_ZN3std3env3var17ha331f613449292d1E.exit.i
  %.sroa.556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.556.0.copyload.i = load ptr, ptr %.sroa.556.0..sroa_idx.i, align 8, !noalias !43067, !nonnull !14, !noundef !14 ; 8 uses
  %.sroa.857.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.857.0.copyload.i = load i64, ptr %.sroa.857.0..sroa_idx.i, align 8, !noalias !43067 ; 6 uses
  switch i64 %.sroa.857.0.copyload.i, label %bb.p [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i"
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.cc = load i8, ptr %.sroa.556.0.copyload.i, align 1, !alias.scope !43071, !noalias !43067, !noundef !14
  switch i8 %i.cc, label %.lr.ph.i.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i"
  ]

.lr.ph.i.i.preheader:                             ; preds = %bb.s, %bb.q, %bb.o
  %.sroa.03.182.i.i.ph = phi ptr [ %i.cd, %bb.q ], [ %.sroa.556.0.copyload.i, %bb.s ], [ %.sroa.556.0.copyload.i, %bb.o ]
  %.sroa.16.181.i.i.ph = phi i64 [ %i.ce, %bb.q ], [ %.sroa.857.0.copyload.i, %bb.s ], [ 1, %bb.o ]
  br label %.lr.ph.i.i

bb.p:                                             ; preds = %bb.n
  %.pr.i.i = load i8, ptr %.sroa.556.0.copyload.i, align 1, !alias.scope !43071, !noalias !43067
  %cond.i.i = icmp eq i8 %.pr.i.i, 43
  br i1 %cond.i.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.556.0.copyload.i, i64 1 ; 2 uses
  %i.ce = add i64 %.sroa.857.0.copyload.i, -1     ; 2 uses
  %i.cf = icmp ult i64 %.sroa.857.0.copyload.i, 10
  br i1 %i.cf, label %.lr.ph.i.i.preheader, label %.preheader71.i.i

.preheader71.i.i:                                 ; preds = %bb.s, %bb.q
  %.sroa.16.0.ph.i.i = phi i64 [ %.sroa.857.0.copyload.i, %bb.s ], [ %i.ce, %bb.q ] ; 2 uses
  %.sroa.03.0.ph.i.i = phi ptr [ %.sroa.556.0.copyload.i, %bb.s ], [ %i.cd, %bb.q ]
  %.not.i.i16107 = icmp eq i64 %.sroa.16.0.ph.i.i, 0
  br i1 %.not.i.i16107, label %.loopexit.i.i, label %.lr.ph

bb.r:                                             ; preds = %bb.v
  %.not.i.i16 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i16, label %.loopexit.i.i, label %.lr.ph

bb.s:                                             ; preds = %bb.p
  %i.cg = icmp ult i64 %.sroa.857.0.copyload.i, 9
  br i1 %i.cg, label %.lr.ph.i.i.preheader, label %.preheader71.i.i

.loopexit.i.i:                                    ; preds = %bb.r, %bb.w, %.preheader71.i.i
  %.sroa.019.2.i.i = phi i32 [ %i.dc, %bb.w ], [ 0, %.preheader71.i.i ], [ %i.cu, %bb.r ]
  %i.ch = zext i32 %.sroa.019.2.i.i to i64
  %i.ci = shl nuw i64 %i.ch, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i"

.lr.ph:                                           ; preds = %.preheader71.i.i, %bb.r
  %.sroa.03.0.i.i110 = phi ptr [ %i.cj, %bb.r ], [ %.sroa.03.0.ph.i.i, %.preheader71.i.i ] ; 2 uses
  %.sroa.16.0.i.i109 = phi i64 [ %i.ck, %bb.r ], [ %.sroa.16.0.ph.i.i, %.preheader71.i.i ]
  %.sroa.019.0.i.i108 = phi i32 [ %i.cu, %bb.r ], [ 0, %.preheader71.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i110, i64 1
  %i.ck = add i64 %.sroa.16.0.i.i109, -1          ; 2 uses
  %i.cl = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.i.i108, i32 10) ; 2 uses
  %i.cm = extractvalue { i32, i1 } %i.cl, 0       ; 2 uses
  %i.cn = extractvalue { i32, i1 } %i.cl, 1
  %i.co = load i8, ptr %.sroa.03.0.i.i110, align 1, !alias.scope !43071, !noalias !43067, !noundef !14 ; 2 uses
  br i1 %i.cn, label %bb.u, label %bb.t, !prof !121

bb.t:                                             ; preds = %.lr.ph
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, -48                  ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 10
  br i1 %i.cr, label %bb.v, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i"

bb.u:                                             ; preds = %.lr.ph
  %i.cs = add i8 %i.co, -48
  %i.ct = icmp ult i8 %i.cs, 10
  %spec.select.i.i = select i1 %i.ct, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i"

bb.v:                                             ; preds = %bb.t
  %i.cu = add i32 %i.cq, %i.cm                    ; 3 uses
  %.not66.i.i = icmp ult i32 %i.cu, %i.cm
  br i1 %.not66.i.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i", label %bb.r

end_hunk_3
begin_hunk_4_@"_ZN15index_scheduler5queue7batches47_$LT$impl$u20$index_scheduler..queue..Queue$GT$37get_batch_ids_from_authorized_indexes17h472406cf3282bd02E":bb.a

bb.br:                                            ; preds = %.lr.ph.i.i.i.i225
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i228) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i228, i64 noundef 8192, i64 noundef 8) #79, !noalias !54252
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i229"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i229": ; preds = %bb.br, %bb.bq, %.lr.ph.i.i.i.i225
  %i.ip = icmp eq i64 %i.im, %.val1.i.i224
  br i1 %i.ip, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i230", label %.lr.ph.i.i.i.i225

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i230": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i229", %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"
  %.val2.i.i231 = load i64, ptr %i.u, align 8, !range !9, !alias.scope !54248, !noundef !14 ; 2 uses
  %i.iq = icmp eq i64 %.val2.i.i231, 0
  br i1 %i.iq, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit232", label %bb.bs

bb.bs:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i230"
  %i.ir = shl nuw i64 %.val2.i.i231, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i223, i64 noundef %i.ir, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !54248
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit232"

.thread321:                                       ; preds = %.thread327.loopexit, %.thread327.loopexit.split-lp, %bb.ap
  %.pn168325 = phi { ptr, i32 } [ %.pn, %bb.ap ], [ %lpad.loopexit, %.thread327.loopexit ], [ %lpad.loopexit.split-lp, %.thread327.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.l) #81
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #81
  br label %.loopexit.split-lp

.lr.ph.i.i.i.i235.preheader:                      ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i"
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ga, ptr %.sroa.464.0..sroa_idx, align 8
  store i64 152, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !54253)
  call void @llvm.experimental.noalias.scope.decl(metadata !54256)
  call void @llvm.experimental.noalias.scope.decl(metadata !54259)
  br label %.lr.ph.i.i.i.i235

.lr.ph.i.i.i.i235:                                ; preds = %.lr.ph.i.i.i.i235.preheader, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i239"
  %.sroa.0.010.i.i.i.i236 = phi i64 [ %i.iu, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i239" ], [ 0, %.lr.ph.i.i.i.i235.preheader ] ; 2 uses
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %i.eu, i64 %.sroa.0.010.i.i.i.i236 ; 2 uses
  %i.iu = add nuw i64 %.sroa.0.010.i.i.i.i236, 1  ; 2 uses
  %.val8.i.i.i.i237 = load i64, ptr %i.it, align 8, !range !2917, !alias.scope !54259, !noalias !54262, !noundef !14 ; 2 uses
  %i.iv = getelementptr i8, ptr %i.it, i64 8
  %.val9.i.i.i.i238 = load ptr, ptr %i.iv, align 8, !alias.scope !54259, !noalias !54262 ; 4 uses
  switch i64 %.val8.i.i.i.i237, label %bb.bt [
    i64 -9223372036854775808, label %bb.bu
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i239"
  ]

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i235
  %i.iw = shl nuw i64 %.val8.i.i.i.i237, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i238) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i238, i64 noundef %i.iw, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !54263
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i239"

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i235
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i238) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i238, i64 noundef 8192, i64 noundef 8) #79, !noalias !54263
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i239"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i239": ; preds = %bb.bu, %bb.bt, %.lr.ph.i.i.i.i235
  %i.ix = icmp eq i64 %i.iu, %i.ew
  br i1 %i.ix, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i240", label %.lr.ph.i.i.i.i235

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i240": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i239", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.thread"
  %.val2.i.i241 = load i64, ptr %i.u, align 8, !range !9, !alias.scope !54262, !noundef !14 ; 2 uses
  %i.iy = icmp eq i64 %.val2.i.i241, 0
  br i1 %i.iy, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit232", label %bb.bv

bb.bv:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i240"
  %i.iz = shl nuw i64 %.val2.i.i241, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eu, i64 noundef %i.iz, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !54262
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit232"

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit232": ; preds = %bb.bv, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i240", %bb.d, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i230", %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit360, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.thread321, %bb.bm
  %.pn177.ph = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.bm ], [ %.pn168325, %.thread321 ], [ %lpad.loopexit361, %.loopexit360 ], [ %lpad.loopexit367, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp368, %.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.q) #81
  br label %bb.f

bb.bw:                                            ; preds = %bb.f, %bb.b
  %.pn179.pn = phi { ptr, i32 } [ %.pn179, %bb.f ], [ %i.aw, %bb.b ]
  resume { ptr, i32 } %.pn179.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN15index_scheduler5utils15ProcessingBatch10processing17h3d0e2b53004adabdE(ptr noalias noundef nonnull align 8 dereferenceable(1432) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable_or_null(784) initializes((712, 720)) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  %i.b = alloca [16 x i8], align 4                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 4                ; 3 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 4                ; 4 uses
  %i.l = alloca [192 x i8], align 8               ; 4 uses
  %i.m = alloca [800 x i8], align 8               ; 6 uses
  %i.n = alloca [56 x i8], align 8                ; 12 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [40 x i8], align 8                ; 26 uses
  %i.q = alloca [40 x i8], align 8                ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 3 uses
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.42.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 18 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.sroa.03.sroa.4.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.03.sroa.5.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4.0..sroa_idx4.i27 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.42.0..sroa_idx.i4.i35 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.03.sroa.4.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.03.sroa.5.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.42.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1183
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.av = load i32, ptr %i.r, align 8, !noundef !14
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.r, align 8
  %i.ax = load i32, ptr %i.s, align 8, !noundef !14
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 712
  store i32 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 716
  store i32 %i.ax, ptr %i.az, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54267)
  %i.ba = load ptr, ptr %i.t, align 8, !alias.scope !54267, !noalias !54264, !noundef !14 ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.g, label %bb.b

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit": ; preds = %bb.y, %.loopexit.split-lp, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.fv, %bb.aq ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi, %bb.y ]
  resume { ptr, i32 } %.pn

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !54267, !noalias !54264, !noundef !14
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.bc, %bb.b ], [ %i.bs, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ba, %bb.b ], [ %i.br, %bb.f ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 56 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 54
  %i.bf = load i16, ptr %i.be, align 2, !noalias !54269, !noundef !14 ; 2 uses
  %i.bg = zext i16 %i.bf to i64                   ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bg
  %i.bi = icmp eq i16 %i.bf, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i225, i64 1 ; 2 uses
  %i.bk = add nuw nsw i64 %.sroa.8.0.i.i.i224, 1
  %i.bl = icmp eq ptr %i.bj, %i.bh
  br i1 %i.bl, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.03.0.i.i.i225 = phi ptr [ %i.bj, %bb.d ], [ %i.bd, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i224 = phi i64 [ %i.bk, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.val6.i.i.i = load i8, ptr %.sroa.03.0.i.i.i225, align 1, !range !1330, !noalias !54269, !noundef !14
  %i.bm = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 1, i8 %.val6.i.i.i)
  switch i8 %i.bm, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %bb.i
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.bg, %bb.c ], [ %i.bg, %bb.d ], [ %.sroa.8.0.i.i.i224, %.lr.ph ] ; 3 uses
  %i.bn = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.bn, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72
  %i.bp = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.sroa.4.0.i.ph.i.i
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !54272, !nonnull !14, !noundef !14
  %i.bs = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  store ptr %i.t, ptr %i.q, align 8, !alias.scope !54264, !noalias !54267
  store ptr null, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !alias.scope !54264, !noalias !54267
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge
  store ptr %i.t, ptr %i.q, align 8, !alias.scope !54264, !noalias !54267
  store ptr %.sroa.0.0.i.i, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !alias.scope !54264, !noalias !54267
  store i64 0, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !alias.scope !54264, !noalias !54267
  store i64 %.sroa.4.0.i.ph.i.i, ptr %.sroa.4.0..sroa_idx4.i, align 8, !alias.scope !54264, !noalias !54267
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.sroa.8.0.i.i.i224
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"

bb.j:                                             ; preds = %bb.h, %bb.g
  store i8 1, ptr %i.u, align 8, !alias.scope !54264, !noalias !54267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !54275
  call fastcc void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h2afa6a4f414901c9E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.q, i32 noundef 0)
  %.sroa.0.0.copyload.i3.i = load ptr, ptr %i.f, align 8, !alias.scope !54278, !noalias !54275, !nonnull !14, !noundef !14
  %.sroa.42.0.copyload.i5.i = load i64, ptr %.sroa.42.0..sroa_idx.i4.i, align 8, !alias.scope !54278, !noalias !54275
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i3.i, i64 8
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.sroa.42.0.copyload.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !54275
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"

"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit": ; preds = %bb.i, %bb.j
  %.sroa.0.0.i = phi ptr [ %i.bu, %bb.i ], [ %i.bw, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.bx = load i32, ptr %.sroa.0.0.i, align 4, !noundef !14
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %.sroa.0.0.i, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %.val14 = load i64, ptr %i.bz, align 8, !range !4548, !noundef !14 ; 3 uses
  %i.ca = icmp ne i64 %.val14, -9223372036854775790
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = add nsw i64 %.val14, 9223372036854775807
  %i.cc = icmp ugt i64 %.val14, -9223372036854775808
  %i.cd = select i1 %i.cc, i64 %i.cb, i64 17      ; 2 uses
  switch i64 %i.cd, label %bb.k [
    i64 0, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread
    i64 1, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit
    i64 2, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit
    i64 3, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread164
    i64 4, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit
    i64 5, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread166
    i64 6, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread168
    i64 7, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread170
    i64 8, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread172
    i64 9, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread174
    i64 10, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread176
    i64 11, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread178
    i64 12, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread180
    i64 13, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread182
    i64 14, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread184
    i64 15, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread186
    i64 16, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread188
    i64 17, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread190
    i64 18, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread192
    i64 19, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread194
  ]

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

bb.k:                                             ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  unreachable

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread164: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %bb.l

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread166: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread168: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread170: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread172: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread174: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread176: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread178: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread180: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread182: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread184: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread186: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread188: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread190: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread192: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread194: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit", %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit", %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.v, i8 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ce = icmp eq i64 %i.cd, 3
  br i1 %i.ce, label %bb.l, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

bb.l:                                             ; preds = %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread164
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18: ; preds = %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread, %bb.l, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread166, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread168, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread170, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread172, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread174, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread176, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread178, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread180, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread182, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread184, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread186, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread188, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread190, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread192, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread194
  %.sroa.0.0.i17 = phi i8 [ 17, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread194 ], [ 15, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread190 ], [ 0, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread ], [ 1, %bb.l ], [ 16, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread192 ], [ 3, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread166 ], [ 5, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread168 ], [ 4, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread170 ], [ 6, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread172 ], [ 7, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread174 ], [ 8, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread176 ], [ 9, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread178 ], [ 10, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread180 ], [ 11, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread182 ], [ 12, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread184 ], [ 13, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread186 ], [ 14, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit.thread188 ], [ 2, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54284)
  %i.cf = load ptr, ptr %i.w, align 8, !alias.scope !54284, !noalias !54281, !noundef !14 ; 2 uses
  %.not.i19 = icmp eq ptr %i.cf, null
  br i1 %.not.i19, label %bb.r, label %bb.m

bb.m:                                             ; preds = %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18
  %i.cg = load i64, ptr %i.x, align 8, !alias.scope !54284, !noalias !54281, !noundef !14
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.sroa.3.0.i.i20 = phi i64 [ %i.cg, %bb.m ], [ %i.cw, %bb.q ] ; 2 uses
  %.sroa.0.0.i.i21 = phi ptr [ %i.cf, %bb.m ], [ %i.cv, %bb.q ] ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i21, i64 56 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i21, i64 54
  %i.cj = load i16, ptr %i.ci, align 2, !noalias !54286, !noundef !14 ; 2 uses
  %i.ck = zext i16 %i.cj to i64                   ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  %i.cm = icmp eq i16 %i.cj, 0
  br i1 %i.cm, label %._crit_edge232, label %.lr.ph231

bb.o:                                             ; preds = %.lr.ph231
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i23229, i64 1 ; 2 uses
  %i.co = add nuw nsw i64 %.sroa.8.0.i.i.i22228, 1
  %i.cp = icmp eq ptr %i.cn, %i.cl
  br i1 %i.cp, label %._crit_edge232, label %.lr.ph231

.lr.ph231:                                        ; preds = %bb.n, %bb.o
  %.sroa.03.0.i.i.i23229 = phi ptr [ %i.cn, %bb.o ], [ %i.ch, %bb.n ] ; 2 uses
  %.sroa.8.0.i.i.i22228 = phi i64 [ %i.co, %bb.o ], [ 0, %bb.n ] ; 3 uses
  %.val6.i.i.i24 = load i8, ptr %.sroa.03.0.i.i.i23229, align 1, !range !4559, !noalias !54286, !noundef !14
  %i.cq = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 18) %.sroa.0.0.i17, i8 %.val6.i.i.i24)
  switch i8 %i.cq, label %bb.p [
    i8 -1, label %._crit_edge232
    i8 0, label %bb.t
    i8 1, label %bb.o
  ]

bb.p:                                             ; preds = %.lr.ph231
  unreachable

._crit_edge232:                                   ; preds = %bb.o, %.lr.ph231, %bb.n
  %.sroa.4.0.i.ph.i.i29 = phi i64 [ %i.ck, %bb.n ], [ %i.ck, %bb.o ], [ %.sroa.8.0.i.i.i22228, %.lr.ph231 ] ; 3 uses
  %i.cr = icmp eq i64 %.sroa.3.0.i.i20, 0
  br i1 %i.cr, label %bb.s, label %bb.q

bb.q:                                             ; preds = %._crit_edge232
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i21, i64 72
  %i.ct = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i29, 12
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.sroa.4.0.i.ph.i.i29
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !54289, !nonnull !14, !noundef !14
  %i.cw = add i64 %.sroa.3.0.i.i20, -1
  br label %bb.n

bb.r:                                             ; preds = %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit18
  store ptr %i.w, ptr %i.p, align 8, !alias.scope !54281, !noalias !54284
  store ptr null, ptr %.sroa.03.sroa.4.0..sroa_idx.i25, align 8, !alias.scope !54281, !noalias !54284
  br label %bb.u

bb.s:                                             ; preds = %._crit_edge232
  store ptr %i.w, ptr %i.p, align 8, !alias.scope !54281, !noalias !54284
  store ptr %.sroa.0.0.i.i21, ptr %.sroa.03.sroa.4.0..sroa_idx.i25, align 8, !alias.scope !54281, !noalias !54284
  store i64 0, ptr %.sroa.03.sroa.5.0..sroa_idx.i26, align 8, !alias.scope !54281, !noalias !54284
  store i64 %.sroa.4.0.i.ph.i.i29, ptr %.sroa.4.0..sroa_idx4.i27, align 8, !alias.scope !54281, !noalias !54284
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph231
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i21, i64 8
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.sroa.8.0.i.i.i22228
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"

bb.u:                                             ; preds = %bb.s, %bb.r
  store i8 %.sroa.0.0.i17, ptr %i.y, align 8, !alias.scope !54281, !noalias !54284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !54292
  call fastcc void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h5bf1bbe4bd4e0431E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.p, i32 noundef 0)
  %.sroa.0.0.copyload.i3.i34 = load ptr, ptr %i.e, align 8, !alias.scope !54295, !noalias !54292, !nonnull !14, !noundef !14
  %.sroa.42.0.copyload.i5.i36 = load i64, ptr %.sroa.42.0..sroa_idx.i4.i35, align 8, !alias.scope !54295, !noalias !54292
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i3.i34, i64 8
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.sroa.42.0.copyload.i5.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !54292
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"

"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit": ; preds = %bb.t, %bb.u
  %.sroa.0.0.i37 = phi ptr [ %i.cy, %bb.t ], [ %i.da, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.db = load i32, ptr %.sroa.0.0.i37, align 4, !noundef !14
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %.sroa.0.0.i37, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_ZN17meilisearch_types5tasks4Task7indexes17h4d96dafb36540464E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %1)
  %i.dd = load ptr, ptr %i.z, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.de = load i64, ptr %i.aa, align 8, !noundef !14 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54298)
  call void @llvm.experimental.noalias.scope.decl(metadata !54301)
  %i.df = load i64, ptr %i.ac, align 8, !alias.scope !54304, !noundef !14
  %i.dg = icmp eq i64 %i.df, 0
  %i.dh = add nuw nsw i64 %i.de, 1
  %i.di = lshr i64 %i.dh, 1
  %.sroa.0.0.i.i41 = select i1 %i.dg, i64 %i.de, i64 %i.di ; 2 uses
  %i.dj = load i64, ptr %i.ad, align 8, !alias.scope !54305, !noalias !54308, !noundef !14
  %i.dk = icmp ugt i64 %.sroa.0.0.i.i41, %i.dj
  br i1 %i.dk, label %bb.v, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i", !prof !121

bb.v:                                             ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"
  %i.dl = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8a84036aa67c6426E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ab, i64 noundef %.sroa.0.0.i.i41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ae, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i" unwind label %.loopexit.split-lp.loopexit ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i": ; preds = %bb.v, %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"
  %i.dm = icmp eq i64 %i.de, 0
  br i1 %i.dm, label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h2fa5552fe26b6b7eE.exit", label %.preheader

.preheader:                                       ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i", %.noexc43
  %.sroa.06.0.i.i.i.i.i.i = phi i64 [ %i.dt, %.noexc43 ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i" ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %.sroa.06.0.i.i.i.i.i.i ; 2 uses
  %.val16.i.i.i.i.i.i = load ptr, ptr %i.dn, align 8, !noalias !54310, !nonnull !14, !align !584, !noundef !14
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  %.val17.i.i.i.i.i.i = load i64, ptr %i.do, align 8, !noalias !54310, !noundef !14 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !54310
  %i.dp = icmp slt i64 %.val17.i.i.i.i.i.i, 0
  br i1 %i.dp, label %bb.x, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader
  %i.dq = icmp eq i64 %.val17.i.i.i.i.i.i, 0
  br i1 %i.dq, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h357a60f63581122cE.exit.i.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !54319
  %i.dr = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val17.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #79, !noalias !54319 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.x, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h357a60f63581122cE.exit.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w, %.preheader
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.w ], [ 0, %.preheader ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %.val17.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.x
  unreachable

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h357a60f63581122cE.exit.i.i.i.i.i.i": ; preds = %bb.w, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dr, %bb.w ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val16.i.i.i.i.i.i, i64 %.val17.i.i.i.i.i.i, i1 false), !noalias !54329
  store i64 %.val17.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !54310
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !54310
  store i64 %.val17.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !54310
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h07572f913fd76895E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc43 unwind label %.loopexit

.noexc43:                                         ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h357a60f63581122cE.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !54310
  %i.dt = add nuw i64 %.sroa.06.0.i.i.i.i.i.i, 1  ; 2 uses
  %i.du = icmp eq i64 %i.dt, %i.de
  br i1 %i.du, label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h2fa5552fe26b6b7eE.exit", label %.preheader

.loopexit:                                        ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h357a60f63581122cE.exit.i.i.i.i.i.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.v
  %lpad.loopexit103 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.x
  %lpad.loopexit.split-lp104 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit103, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp104, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.val12 = load i64, ptr %i.o, align 8           ; 2 uses
  %i.dv = icmp eq i64 %.val12, 0
  br i1 %i.dv, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit", label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp
  %i.dw = shl nuw i64 %.val12, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef %i.dw, i64 noundef range(i64 1, -9223372036854775807) 8) #79
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit"

"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h2fa5552fe26b6b7eE.exit": ; preds = %.noexc43, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i"
  %.val = load i64, ptr %i.o, align 8             ; 2 uses
  %i.dx = icmp eq i64 %.val, 0
  br i1 %i.dx, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44", label %bb.z

bb.z:                                             ; preds = %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h2fa5552fe26b6b7eE.exit"
  %i.dy = shl nuw i64 %.val, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 8) #79
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44": ; preds = %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h2fa5552fe26b6b7eE.exit", %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.dz = load i64, ptr %i.bz, align 8, !range !4548, !alias.scope !54330, !noundef !14 ; 3 uses
  %i.ea = icmp ne i64 %i.dz, -9223372036854775790
  call void @llvm.assume(i1 %i.ea)
  %i.eb = add nsw i64 %i.dz, 9223372036854775807
  %i.ec = icmp ugt i64 %i.dz, -9223372036854775808
  %i.ed = select i1 %i.ec, i64 %i.eb, i64 17
  switch i64 %i.ed, label %bb.aa [
    i64 0, label %bb.ab
    i64 1, label %bb.ab
    i64 2, label %bb.ab
    i64 3, label %bb.ab
    i64 4, label %bb.ab
    i64 5, label %bb.ab
    i64 6, label %bb.ab
    i64 7, label %bb.ab
    i64 8, label %bb.ab
    i64 9, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 10, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 11, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 12, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 13, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 14, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 15, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 16, label %bb.ab
    i64 17, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 18, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread
    i64 19, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread
  ]

bb.aa:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44"
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread: ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  br label %bb.ac

bb.ab:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit44"
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !54330, !nonnull !14, !noundef !14 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN15index_scheduler5utils15ProcessingBatch10processing17h3d0e2b53004adabdE:bb.a
  %i.gh = shl nsw i128 %i.gg, 74
  %i.gi = zext nneg i16 %i.gf to i128
  %i.gj = shl nuw nsw i128 %i.gi, 64
  %i.gk = or disjoint i128 %i.gj, %i.gh
  %i.gl = zext i64 %.sroa.01.0.copyload.i.i.i.i to i128
  %i.gm = or disjoint i128 %i.gk, %i.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54391
  %.sroa.03.0.copyload.i.i.i.i = load i24, ptr %i.an, align 4, !alias.scope !54384, !noalias !54385
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.gb, i24 %.sroa.03.0.copyload.i.i.i.i)
  %i.gn = load i32, ptr %i.b, align 4, !noalias !54391, !noundef !14
  %i.go = load i16, ptr %i.ao, align 4, !noalias !54391, !noundef !14
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ap, align 4, !noalias !54391
  %i.gp = sext i32 %i.gn to i128
  %i.gq = shl nsw i128 %i.gp, 74
  %i.gr = zext i16 %i.go to i128
  %i.gs = shl nuw nsw i128 %i.gr, 64
  %i.gt = or i128 %i.gs, %i.gq
  %i.gu = zext i64 %.sroa.0.0.copyload.i.i.i.i to i128
  %i.gv = or disjoint i128 %i.gt, %i.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54391
  %i.gw = icmp slt i128 %i.gm, %i.gv
  %..i = select i1 %i.gw, ptr %i.j, ptr %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %..i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !54392)
  call void @llvm.experimental.noalias.scope.decl(metadata !54395)
  call void @llvm.experimental.noalias.scope.decl(metadata !54398)
  call void @llvm.experimental.noalias.scope.decl(metadata !54401)
  %i.gx = load i32, ptr %i.aq, align 8, !range !4660, !alias.scope !54404, !noalias !54405, !noundef !14 ; 2 uses
  %i.gy = ashr i32 %i.gx, 10
  %i.gz = trunc i32 %i.gx to i16
  %i.ha = and i16 %i.gz, 511
  %.sroa.01.0.copyload.i.i.i.i60 = load i64, ptr %i.h, align 8, !alias.scope !54404, !noalias !54405
  %i.hb = sext i32 %i.gy to i128
  %i.hc = shl nsw i128 %i.hb, 74
  %i.hd = zext nneg i16 %i.ha to i128
  %i.he = shl nuw nsw i128 %i.hd, 64
  %i.hf = or disjoint i128 %i.he, %i.hc
  %i.hg = zext i64 %.sroa.01.0.copyload.i.i.i.i60 to i128
  %i.hh = or disjoint i128 %i.hf, %i.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54411
  %.sroa.03.0.copyload.i.i.i.i61 = load i24, ptr %i.ar, align 4, !alias.scope !54404, !noalias !54405
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.gb, i24 %.sroa.03.0.copyload.i.i.i.i61)
  %i.hi = load i32, ptr %i.a, align 4, !noalias !54411, !noundef !14
  %i.hj = load i16, ptr %i.as, align 4, !noalias !54411, !noundef !14
  %.sroa.0.0.copyload.i.i.i.i62 = load i64, ptr %i.at, align 4, !noalias !54411
  %i.hk = sext i32 %i.hi to i128
  %i.hl = shl nsw i128 %i.hk, 74
  %i.hm = zext i16 %i.hj to i128
  %i.hn = shl nuw nsw i128 %i.hm, 64
  %i.ho = or i128 %i.hn, %i.hl
  %i.hp = zext i64 %.sroa.0.0.copyload.i.i.i.i62 to i128
  %i.hq = or disjoint i128 %i.ho, %i.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54411
  %i.hr = icmp slt i128 %i.hh, %i.hq
  %..i63 = select i1 %i.hr, ptr %i.i, ptr %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 4 dereferenceable(16) %..i63, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 728 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 4 dereferenceable(32) %i.g, i64 32, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN15index_scheduler5utils15ProcessingBatch10processing17h4aa580a2202f8e11E(ptr noalias noundef nonnull align 8 dereferenceable(1432) %0, ptr nofree captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  %i.b = alloca [16 x i8], align 4                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 4                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 4                ; 4 uses
  %i.l = alloca [192 x i8], align 8               ; 4 uses
  %i.m = alloca [800 x i8], align 8               ; 6 uses
  %i.n = alloca [56 x i8], align 8                ; 12 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [40 x i8], align 8                ; 9 uses
  %i.q = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.idx = mul nuw nsw i64 %.16.val, 784
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx
  %i.s = icmp eq i64 %.16.val, 0
  br i1 %i.s, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbac662453e32c3E.exit.thread", label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbac662453e32c3E.exit.lr.ph"

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbac662453e32c3E.exit.lr.ph": ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.42.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.sroa.03.sroa.4.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.03.sroa.5.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4.0..sroa_idx4.i30 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.42.0..sroa_idx.i4.i38 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.03.sroa.4.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.03.sroa.5.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.42.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1183
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbac662453e32c3E.exit"

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbac662453e32c3E.exit": ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbac662453e32c3E.exit.lr.ph", %bb.av
  %.sroa.0.072 = phi ptr [ %.8.val, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbac662453e32c3E.exit.lr.ph" ], [ %i.ay, %bb.av ] ; 12 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.072, i64 784 ; 2 uses
  %i.az = load i32, ptr %i.t, align 8, !noundef !14
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.t, align 8
  %i.bb = load i32, ptr %i.u, align 8, !noundef !14
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.072, i64 712
  store i32 1, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.072, i64 716
  store i32 %i.bb, ptr %i.bd, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !54412)
  call void @llvm.experimental.noalias.scope.decl(metadata !54415)
  %i.be = load ptr, ptr %i.v, align 8, !alias.scope !54415, !noalias !54412, !noundef !14 ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %bb.g, label %bb.b

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit": ; preds = %bb.w, %.loopexit.split-lp, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.gb, %bb.ao ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi, %bb.w ]
  resume { ptr, i32 } %.pn

bb.b:                                             ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbac662453e32c3E.exit"
  %i.bf = load i64, ptr %i.w, align 8, !alias.scope !54415, !noalias !54412, !noundef !14
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.bf, %bb.b ], [ %i.bv, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.be, %bb.b ], [ %i.bu, %bb.f ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 56 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 54
  %i.bi = load i16, ptr %i.bh, align 2, !noalias !54417, !noundef !14 ; 2 uses
  %i.bj = zext i16 %i.bi to i64                   ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bj
  %i.bl = icmp eq i16 %i.bi, 0
  br i1 %i.bl, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i151, i64 1 ; 2 uses
  %i.bn = add nuw nsw i64 %.sroa.8.0.i.i.i150, 1
  %i.bo = icmp eq ptr %i.bm, %i.bk
  br i1 %i.bo, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.03.0.i.i.i151 = phi ptr [ %i.bm, %bb.d ], [ %i.bg, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i150 = phi i64 [ %i.bn, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.val6.i.i.i = load i8, ptr %.sroa.03.0.i.i.i151, align 1, !range !1330, !noalias !54417, !noundef !14
  %i.bp = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 1, i8 %.val6.i.i.i)
  switch i8 %i.bp, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %bb.i
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.bj, %bb.c ], [ %i.bj, %bb.d ], [ %.sroa.8.0.i.i.i150, %.lr.ph ] ; 3 uses
  %i.bq = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.bq, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72
  %i.bs = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.sroa.4.0.i.ph.i.i
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !54420, !nonnull !14, !noundef !14
  %i.bv = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

bb.g:                                             ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbac662453e32c3E.exit"
  store ptr %i.v, ptr %i.q, align 8, !alias.scope !54412, !noalias !54415
  store ptr null, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !alias.scope !54412, !noalias !54415
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge
  store ptr %i.v, ptr %i.q, align 8, !alias.scope !54412, !noalias !54415
  store ptr %.sroa.0.0.i.i, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !alias.scope !54412, !noalias !54415
  store i64 0, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !alias.scope !54412, !noalias !54415
  store i64 %.sroa.4.0.i.ph.i.i, ptr %.sroa.4.0..sroa_idx4.i, align 8, !alias.scope !54412, !noalias !54415
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.sroa.8.0.i.i.i150
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"

bb.j:                                             ; preds = %bb.h, %bb.g
  store i8 1, ptr %i.x, align 8, !alias.scope !54412, !noalias !54415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !54423
  call fastcc void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h2afa6a4f414901c9E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.q, i32 noundef 0)
  %.sroa.0.0.copyload.i3.i = load ptr, ptr %i.f, align 8, !alias.scope !54426, !noalias !54423, !nonnull !14, !noundef !14
  %.sroa.42.0.copyload.i5.i = load i64, ptr %.sroa.42.0..sroa_idx.i4.i, align 8, !alias.scope !54426, !noalias !54423
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i3.i, i64 8
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.42.0.copyload.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !54423
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"

"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit": ; preds = %bb.i, %bb.j
  %.sroa.0.0.i18 = phi ptr [ %i.bx, %bb.i ], [ %i.bz, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ca = load i32, ptr %.sroa.0.0.i18, align 4, !noundef !14
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %.sroa.0.0.i18, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.072, i64 424 ; 3 uses
  %.val14 = load i64, ptr %i.cc, align 8, !range !4548, !noundef !14 ; 3 uses
  %i.cd = icmp ne i64 %.val14, -9223372036854775790
  call void @llvm.assume(i1 %i.cd)
  %i.ce = add nsw i64 %.val14, 9223372036854775807
  %i.cf = icmp ugt i64 %.val14, -9223372036854775808
  %i.cg = select i1 %i.cf, i64 %i.ce, i64 17
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE.9061, i64 %i.cg
  %switch.load = load i8, ptr %switch.gep, align 1
  call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.y, i8 noundef %switch.load)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.val15 = load i64, ptr %i.cc, align 8, !range !4548, !noundef !14 ; 3 uses
  %i.ch = icmp ne i64 %.val15, -9223372036854775790
  call void @llvm.assume(i1 %i.ch)
  %i.ci = add nsw i64 %.val15, 9223372036854775807
  %i.cj = icmp ugt i64 %.val15, -9223372036854775808
  %i.ck = select i1 %i.cj, i64 %i.ci, i64 17
  %switch.gep171 = getelementptr inbounds i8, ptr @switch.table._ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE.9061, i64 %i.ck
  %switch.load172 = load i8, ptr %switch.gep171, align 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54429)
  call void @llvm.experimental.noalias.scope.decl(metadata !54432)
  %i.cl = load ptr, ptr %i.z, align 8, !alias.scope !54432, !noalias !54429, !noundef !14 ; 2 uses
  %.not.i22 = icmp eq ptr %i.cl, null
  br i1 %.not.i22, label %bb.p, label %bb.k

bb.k:                                             ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  %i.cm = load i64, ptr %i.aa, align 8, !alias.scope !54432, !noalias !54429, !noundef !14
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
  %.sroa.3.0.i.i23 = phi i64 [ %i.cm, %bb.k ], [ %i.dc, %bb.o ] ; 2 uses
  %.sroa.0.0.i.i24 = phi ptr [ %i.cl, %bb.k ], [ %i.db, %bb.o ] ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i24, i64 56 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i24, i64 54
  %i.cp = load i16, ptr %i.co, align 2, !noalias !54434, !noundef !14 ; 2 uses
  %i.cq = zext i16 %i.cp to i64                   ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cq
  %i.cs = icmp eq i16 %i.cp, 0
  br i1 %i.cs, label %._crit_edge158, label %.lr.ph157

bb.m:                                             ; preds = %.lr.ph157
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i26155, i64 1 ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.8.0.i.i.i25154, 1
  %i.cv = icmp eq ptr %i.ct, %i.cr
  br i1 %i.cv, label %._crit_edge158, label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.l, %bb.m
  %.sroa.03.0.i.i.i26155 = phi ptr [ %i.ct, %bb.m ], [ %i.cn, %bb.l ] ; 2 uses
  %.sroa.8.0.i.i.i25154 = phi i64 [ %i.cu, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.val6.i.i.i27 = load i8, ptr %.sroa.03.0.i.i.i26155, align 1, !range !4559, !noalias !54434, !noundef !14
  %i.cw = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 18) %switch.load172, i8 %.val6.i.i.i27)
  switch i8 %i.cw, label %bb.n [
    i8 -1, label %._crit_edge158
    i8 0, label %bb.r
    i8 1, label %bb.m
  ]

bb.n:                                             ; preds = %.lr.ph157
  unreachable

._crit_edge158:                                   ; preds = %bb.m, %.lr.ph157, %bb.l
  %.sroa.4.0.i.ph.i.i32 = phi i64 [ %i.cq, %bb.l ], [ %i.cq, %bb.m ], [ %.sroa.8.0.i.i.i25154, %.lr.ph157 ] ; 3 uses
  %i.cx = icmp eq i64 %.sroa.3.0.i.i23, 0
  br i1 %i.cx, label %bb.q, label %bb.o

bb.o:                                             ; preds = %._crit_edge158
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i24, i64 72
  %i.cz = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i32, 12
  call void @llvm.assume(i1 %i.cz)
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.sroa.4.0.i.ph.i.i32
  %i.db = load ptr, ptr %i.da, align 8, !noalias !54437, !nonnull !14, !noundef !14
  %i.dc = add i64 %.sroa.3.0.i.i23, -1
  br label %bb.l

bb.p:                                             ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  store ptr %i.z, ptr %i.p, align 8, !alias.scope !54429, !noalias !54432
  store ptr null, ptr %.sroa.03.sroa.4.0..sroa_idx.i28, align 8, !alias.scope !54429, !noalias !54432
  br label %bb.s

bb.q:                                             ; preds = %._crit_edge158
  store ptr %i.z, ptr %i.p, align 8, !alias.scope !54429, !noalias !54432
  store ptr %.sroa.0.0.i.i24, ptr %.sroa.03.sroa.4.0..sroa_idx.i28, align 8, !alias.scope !54429, !noalias !54432
  store i64 0, ptr %.sroa.03.sroa.5.0..sroa_idx.i29, align 8, !alias.scope !54429, !noalias !54432
  store i64 %.sroa.4.0.i.ph.i.i32, ptr %.sroa.4.0..sroa_idx4.i30, align 8, !alias.scope !54429, !noalias !54432
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph157
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i24, i64 8
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.sroa.8.0.i.i.i25154
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"

bb.s:                                             ; preds = %bb.q, %bb.p
  store i8 %switch.load172, ptr %i.ab, align 8, !alias.scope !54429, !noalias !54432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !54440
  call fastcc void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h5bf1bbe4bd4e0431E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.p, i32 noundef 0)
  %.sroa.0.0.copyload.i3.i37 = load ptr, ptr %i.e, align 8, !alias.scope !54443, !noalias !54440, !nonnull !14, !noundef !14
  %.sroa.42.0.copyload.i5.i39 = load i64, ptr %.sroa.42.0..sroa_idx.i4.i38, align 8, !alias.scope !54443, !noalias !54440
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i3.i37, i64 8
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.sroa.42.0.copyload.i5.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !54440
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"

"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit": ; preds = %bb.r, %bb.s
  %.sroa.0.0.i40 = phi ptr [ %i.de, %bb.r ], [ %i.dg, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.dh = load i32, ptr %.sroa.0.0.i40, align 4, !noundef !14
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %.sroa.0.0.i40, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_ZN17meilisearch_types5tasks4Task7indexes17h4d96dafb36540464E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(784) %.sroa.0.072)
  %i.dj = load ptr, ptr %i.ac, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.dk = load i64, ptr %i.ad, align 8, !noundef !14 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54446)
  call void @llvm.experimental.noalias.scope.decl(metadata !54449)
  %i.dl = load i64, ptr %i.af, align 8, !alias.scope !54452, !noundef !14
  %i.dm = icmp eq i64 %i.dl, 0
  %i.dn = add nuw nsw i64 %i.dk, 1
  %i.do = lshr i64 %i.dn, 1
  %.sroa.0.0.i.i44 = select i1 %i.dm, i64 %i.dk, i64 %i.do ; 2 uses
  %i.dp = load i64, ptr %i.ag, align 8, !alias.scope !54453, !noalias !54456, !noundef !14
  %i.dq = icmp ugt i64 %.sroa.0.0.i.i44, %i.dp
  br i1 %i.dq, label %bb.t, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i", !prof !121

bb.t:                                             ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"
  %i.dr = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8a84036aa67c6426E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %.sroa.0.0.i.i44, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i" unwind label %.loopexit.split-lp.loopexit ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i": ; preds = %bb.t, %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"
  %i.ds = icmp eq i64 %i.dk, 0
  br i1 %i.ds, label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0971a0eb5e97a8c4E.exit", label %.preheader

.preheader:                                       ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i", %.noexc46
  %.sroa.06.0.i.i.i.i.i.i = phi i64 [ %i.dz, %.noexc46 ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i" ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %.sroa.06.0.i.i.i.i.i.i ; 2 uses
  %.val16.i.i.i.i.i.i = load ptr, ptr %i.dt, align 8, !noalias !54458, !nonnull !14, !align !584, !noundef !14
  %i.du = getelementptr i8, ptr %i.dt, i64 8
  %.val17.i.i.i.i.i.i = load i64, ptr %i.du, align 8, !noalias !54458, !noundef !14 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !54458
  %i.dv = icmp slt i64 %.val17.i.i.i.i.i.i, 0
  br i1 %i.dv, label %bb.v, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader
  %i.dw = icmp eq i64 %.val17.i.i.i.i.i.i, 0
  br i1 %i.dw, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1c5bbb4cda333068E.exit.i.i.i.i.i.i", label %bb.u

bb.u:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !54467
  %i.dx = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val17.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #79, !noalias !54467 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.v, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1c5bbb4cda333068E.exit.i.i.i.i.i.i"

bb.v:                                             ; preds = %bb.u, %.preheader
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.u ], [ 0, %.preheader ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %.val17.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.v
  unreachable

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1c5bbb4cda333068E.exit.i.i.i.i.i.i": ; preds = %bb.u, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dx, %bb.u ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val16.i.i.i.i.i.i, i64 %.val17.i.i.i.i.i.i, i1 false), !noalias !54477
  store i64 %.val17.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !54458
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !54458
  store i64 %.val17.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !54458
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h07572f913fd76895E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc46 unwind label %.loopexit

.noexc46:                                         ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1c5bbb4cda333068E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !54458
  %i.dz = add nuw i64 %.sroa.06.0.i.i.i.i.i.i, 1  ; 2 uses
  %i.ea = icmp eq i64 %i.dz, %i.dk
  br i1 %i.ea, label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0971a0eb5e97a8c4E.exit", label %.preheader

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbac662453e32c3E.exit.thread": ; preds = %bb.av, %bb.a
  ret void

.loopexit:                                        ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1c5bbb4cda333068E.exit.i.i.i.i.i.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.t
  %lpad.loopexit43 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.v
  %lpad.loopexit.split-lp44 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit43, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp44, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.val12 = load i64, ptr %i.o, align 8           ; 2 uses
  %i.eb = icmp eq i64 %.val12, 0
  br i1 %i.eb, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit", label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp
  %i.ec = shl nuw i64 %.val12, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dj, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 8) #79
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit"

"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0971a0eb5e97a8c4E.exit": ; preds = %.noexc46, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i"
  %.val = load i64, ptr %i.o, align 8             ; 2 uses
  %i.ed = icmp eq i64 %.val, 0
  br i1 %i.ed, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit47", label %bb.x

bb.x:                                             ; preds = %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0971a0eb5e97a8c4E.exit"
  %i.ee = shl nuw i64 %.val, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dj, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 8) #79
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit47"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit47": ; preds = %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0971a0eb5e97a8c4E.exit", %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ef = load i64, ptr %i.cc, align 8, !range !4548, !alias.scope !54478, !noundef !14 ; 3 uses
  %i.eg = icmp ne i64 %i.ef, -9223372036854775790
  call void @llvm.assume(i1 %i.eg)
  %i.eh = add nsw i64 %i.ef, 9223372036854775807
  %i.ei = icmp ugt i64 %i.ef, -9223372036854775808
  %i.ej = select i1 %i.ei, i64 %i.eh, i64 17
  switch i64 %i.ej, label %bb.y [
    i64 0, label %bb.z
    i64 1, label %bb.z
    i64 2, label %bb.z
    i64 3, label %bb.z
    i64 4, label %bb.z
    i64 5, label %bb.z
    i64 6, label %bb.z
    i64 7, label %bb.z
    i64 8, label %bb.z
    i64 9, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 10, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 11, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 12, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 13, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 14, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 15, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 16, label %bb.z
    i64 17, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 18, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread
    i64 19, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread
  ]

bb.y:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit47"
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread: ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit47", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit47"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  br label %bb.aa

end_hunk_5
begin_hunk_6_@_ZN15index_scheduler5utils15ProcessingBatch10processing17h4aa580a2202f8e11E:bb.a
  %i.gl = and i16 %i.gk, 511
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !54532, !noalias !54533
  %i.gm = sext i32 %i.gj to i128
  %i.gn = shl nsw i128 %i.gm, 74
  %i.go = zext nneg i16 %i.gl to i128
  %i.gp = shl nuw nsw i128 %i.go, 64
  %i.gq = or disjoint i128 %i.gp, %i.gn
  %i.gr = zext i64 %.sroa.01.0.copyload.i.i.i.i to i128
  %i.gs = or disjoint i128 %i.gq, %i.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54539
  %.sroa.03.0.copyload.i.i.i.i = load i24, ptr %i.aq, align 4, !alias.scope !54532, !noalias !54533
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.gh, i24 %.sroa.03.0.copyload.i.i.i.i)
  %i.gt = load i32, ptr %i.b, align 4, !noalias !54539, !noundef !14
  %i.gu = load i16, ptr %i.ar, align 4, !noalias !54539, !noundef !14
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.as, align 4, !noalias !54539
  %i.gv = sext i32 %i.gt to i128
  %i.gw = shl nsw i128 %i.gv, 74
  %i.gx = zext i16 %i.gu to i128
  %i.gy = shl nuw nsw i128 %i.gx, 64
  %i.gz = or i128 %i.gy, %i.gw
  %i.ha = zext i64 %.sroa.0.0.copyload.i.i.i.i to i128
  %i.hb = or disjoint i128 %i.gz, %i.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54539
  %i.hc = icmp slt i128 %i.gs, %i.hb
  %..i = select i1 %i.hc, ptr %i.j, ptr %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %..i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !54540)
  call void @llvm.experimental.noalias.scope.decl(metadata !54543)
  call void @llvm.experimental.noalias.scope.decl(metadata !54546)
  call void @llvm.experimental.noalias.scope.decl(metadata !54549)
  %i.hd = load i32, ptr %i.at, align 8, !range !4660, !alias.scope !54552, !noalias !54553, !noundef !14 ; 2 uses
  %i.he = ashr i32 %i.hd, 10
  %i.hf = trunc i32 %i.hd to i16
  %i.hg = and i16 %i.hf, 511
  %.sroa.01.0.copyload.i.i.i.i63 = load i64, ptr %i.h, align 8, !alias.scope !54552, !noalias !54553
  %i.hh = sext i32 %i.he to i128
  %i.hi = shl nsw i128 %i.hh, 74
  %i.hj = zext nneg i16 %i.hg to i128
  %i.hk = shl nuw nsw i128 %i.hj, 64
  %i.hl = or disjoint i128 %i.hk, %i.hi
  %i.hm = zext i64 %.sroa.01.0.copyload.i.i.i.i63 to i128
  %i.hn = or disjoint i128 %i.hl, %i.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54559
  %.sroa.03.0.copyload.i.i.i.i64 = load i24, ptr %i.au, align 4, !alias.scope !54552, !noalias !54553
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.gh, i24 %.sroa.03.0.copyload.i.i.i.i64)
  %i.ho = load i32, ptr %i.a, align 4, !noalias !54559, !noundef !14
  %i.hp = load i16, ptr %i.av, align 4, !noalias !54559, !noundef !14
  %.sroa.0.0.copyload.i.i.i.i65 = load i64, ptr %i.aw, align 4, !noalias !54559
  %i.hq = sext i32 %i.ho to i128
  %i.hr = shl nsw i128 %i.hq, 74
  %i.hs = zext i16 %i.hp to i128
  %i.ht = shl nuw nsw i128 %i.hs, 64
  %i.hu = or i128 %i.ht, %i.hr
  %i.hv = zext i64 %.sroa.0.0.copyload.i.i.i.i65 to i128
  %i.hw = or disjoint i128 %i.hu, %i.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54559
  %i.hx = icmp slt i128 %i.hn, %i.hw
  %..i66 = select i1 %i.hx, ptr %i.i, ptr %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 4 dereferenceable(16) %..i66, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 4 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.hy = icmp eq ptr %i.ay, %i.r
  br i1 %i.hy, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbac662453e32c3E.exit.thread", label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbac662453e32c3E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN15index_scheduler5utils15ProcessingBatch10processing17hb3b2126d5c8edce1E(ptr noalias noundef nonnull align 8 dereferenceable(1432) %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  %i.b = alloca [16 x i8], align 4                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 4                ; 3 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 4                ; 4 uses
  %i.l = alloca [192 x i8], align 8               ; 4 uses
  %i.m = alloca [800 x i8], align 8               ; 6 uses
  %i.n = alloca [56 x i8], align 8                ; 12 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [40 x i8], align 8                ; 9 uses
  %i.q = alloca [40 x i8], align 8                ; 9 uses
  %i.r = inttoptr i64 %1 to ptr                   ; 11 uses
  %.not = icmp eq i64 %1, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.42.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 424 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.sroa.03.sroa.4.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.03.sroa.5.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4.0..sroa_idx4.i36 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.42.0..sroa_idx.i4.i44 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 440
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 448
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.03.sroa.4.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.03.sroa.5.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.42.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 720
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 724
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1183
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 728 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br i1 %.not, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0a1c07a6aa8e1952E.exit.thread", label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0a1c07a6aa8e1952E.exit"

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0a1c07a6aa8e1952E.exit": ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 716
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 712
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !noundef !14
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 8
  %i.bh = load i32, ptr %i.bd, align 8, !noundef !14
  store i32 1, ptr %i.bc, align 8
  store i32 %i.bh, ptr %i.bb, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54563)
  %i.bi = load ptr, ptr %i.s, align 8, !alias.scope !54563, !noalias !54560, !noundef !14 ; 2 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0a1c07a6aa8e1952E.exit"
  %i.bj = load i64, ptr %i.t, align 8, !alias.scope !54563, !noalias !54560, !noundef !14
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.bj, %bb.b ], [ %i.bz, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i24 = phi ptr [ %i.bi, %bb.b ], [ %i.by, %bb.f ] ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i24, i64 56 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i24, i64 54
  %i.bm = load i16, ptr %i.bl, align 2, !noalias !54565, !noundef !14 ; 2 uses
  %i.bn = zext i16 %i.bm to i64                   ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bn
  %i.bp = icmp eq i16 %i.bm, 0
  br i1 %i.bp, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i213, i64 1 ; 2 uses
  %i.br = add nuw nsw i64 %.sroa.8.0.i.i.i212, 1
  %i.bs = icmp eq ptr %i.bq, %i.bo
  br i1 %i.bs, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.03.0.i.i.i213 = phi ptr [ %i.bq, %bb.d ], [ %i.bk, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i212 = phi i64 [ %i.br, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.val6.i.i.i = load i8, ptr %.sroa.03.0.i.i.i213, align 1, !range !1330, !noalias !54565, !noundef !14
  %i.bt = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 1, i8 %.val6.i.i.i)
  switch i8 %i.bt, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %bb.i
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.bn, %bb.c ], [ %i.bn, %bb.d ], [ %.sroa.8.0.i.i.i212, %.lr.ph ] ; 3 uses
  %i.bu = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.bu, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i24, i64 72
  %i.bw = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.sroa.4.0.i.ph.i.i
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !54568, !nonnull !14, !noundef !14
  %i.bz = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

bb.g:                                             ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0a1c07a6aa8e1952E.exit"
  store ptr %i.s, ptr %i.q, align 8, !alias.scope !54560, !noalias !54563
  store ptr null, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !alias.scope !54560, !noalias !54563
  br label %.noexc

bb.h:                                             ; preds = %._crit_edge
  store ptr %i.s, ptr %i.q, align 8, !alias.scope !54560, !noalias !54563
  store ptr %.sroa.0.0.i.i24, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !alias.scope !54560, !noalias !54563
  store i64 0, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !alias.scope !54560, !noalias !54563
  store i64 %.sroa.4.0.i.ph.i.i, ptr %.sroa.4.0..sroa_idx4.i, align 8, !alias.scope !54560, !noalias !54563
  br label %.noexc

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0a1c07a6aa8e1952E.exit.thread": ; preds = %bb.a, %bb.ar, %bb.as
  ret void

bb.i:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i24, i64 8
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.sroa.8.0.i.i.i212
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"

.noexc:                                           ; preds = %bb.h, %bb.g
  store i8 1, ptr %i.u, align 8, !alias.scope !54560, !noalias !54563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !54571
  call fastcc void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h2afa6a4f414901c9E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.q, i32 noundef 0)
  %.sroa.0.0.copyload.i3.i = load ptr, ptr %i.f, align 8, !alias.scope !54574, !noalias !54571, !nonnull !14, !noundef !14
  %.sroa.42.0.copyload.i5.i = load i64, ptr %.sroa.42.0..sroa_idx.i4.i, align 8, !alias.scope !54574, !noalias !54571
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i3.i, i64 8
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.sroa.42.0.copyload.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !54571
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"

"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit": ; preds = %.noexc, %bb.i
  %.sroa.0.0.i = phi ptr [ %i.cb, %bb.i ], [ %i.cd, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ce = load i32, ptr %.sroa.0.0.i, align 4, !noundef !14
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %.sroa.0.0.i, align 4
  %.val19 = load i64, ptr %i.v, align 8, !range !4548, !noundef !14 ; 3 uses
  %i.cg = icmp ne i64 %.val19, -9223372036854775790
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = add nsw i64 %.val19, 9223372036854775807
  %i.ci = icmp ugt i64 %.val19, -9223372036854775808
  %i.cj = select i1 %i.ci, i64 %i.ch, i64 17
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE.9061, i64 %i.cj
  %switch.load = load i8, ptr %switch.gep, align 1
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h8335b6f5f03c2005E"(ptr noalias noundef align 8 dereferenceable(48) %i.w, i8 noundef %switch.load)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.val18 = load i64, ptr %i.v, align 8, !range !4548, !noundef !14 ; 3 uses
  %i.ck = icmp ne i64 %.val18, -9223372036854775790
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = add nsw i64 %.val18, 9223372036854775807
  %i.cm = icmp ugt i64 %.val18, -9223372036854775808
  %i.cn = select i1 %i.cm, i64 %i.cl, i64 17
  %switch.gep232 = getelementptr inbounds i8, ptr @switch.table._ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE.9061, i64 %i.cn
  %switch.load233 = load i8, ptr %switch.gep232, align 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54580)
  %i.co = load ptr, ptr %i.x, align 8, !alias.scope !54580, !noalias !54577, !noundef !14 ; 2 uses
  %.not.i28 = icmp eq ptr %i.co, null
  br i1 %.not.i28, label %bb.o, label %bb.j

bb.j:                                             ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  %i.cp = load i64, ptr %i.y, align 8, !alias.scope !54580, !noalias !54577, !noundef !14
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %.sroa.3.0.i.i29 = phi i64 [ %i.cp, %bb.j ], [ %i.df, %bb.n ] ; 2 uses
  %.sroa.0.0.i.i30 = phi ptr [ %i.co, %bb.j ], [ %i.de, %bb.n ] ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i30, i64 56 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i30, i64 54
  %i.cs = load i16, ptr %i.cr, align 2, !noalias !54582, !noundef !14 ; 2 uses
  %i.ct = zext i16 %i.cs to i64                   ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ct
  %i.cv = icmp eq i16 %i.cs, 0
  br i1 %i.cv, label %._crit_edge220, label %.lr.ph219

bb.l:                                             ; preds = %.lr.ph219
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i32217, i64 1 ; 2 uses
  %i.cx = add nuw nsw i64 %.sroa.8.0.i.i.i31216, 1
  %i.cy = icmp eq ptr %i.cw, %i.cu
  br i1 %i.cy, label %._crit_edge220, label %.lr.ph219

.lr.ph219:                                        ; preds = %bb.k, %bb.l
  %.sroa.03.0.i.i.i32217 = phi ptr [ %i.cw, %bb.l ], [ %i.cq, %bb.k ] ; 2 uses
  %.sroa.8.0.i.i.i31216 = phi i64 [ %i.cx, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %.val6.i.i.i33 = load i8, ptr %.sroa.03.0.i.i.i32217, align 1, !range !4559, !noalias !54582, !noundef !14
  %i.cz = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 18) %switch.load233, i8 %.val6.i.i.i33)
  switch i8 %i.cz, label %bb.m [
    i8 -1, label %._crit_edge220
    i8 0, label %bb.q
    i8 1, label %bb.l
  ]

bb.m:                                             ; preds = %.lr.ph219
  unreachable

._crit_edge220:                                   ; preds = %bb.l, %.lr.ph219, %bb.k
  %.sroa.4.0.i.ph.i.i38 = phi i64 [ %i.ct, %bb.k ], [ %i.ct, %bb.l ], [ %.sroa.8.0.i.i.i31216, %.lr.ph219 ] ; 3 uses
  %i.da = icmp eq i64 %.sroa.3.0.i.i29, 0
  br i1 %i.da, label %bb.p, label %bb.n

bb.n:                                             ; preds = %._crit_edge220
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i30, i64 72
  %i.dc = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i38, 12
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.sroa.4.0.i.ph.i.i38
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !54585, !nonnull !14, !noundef !14
  %i.df = add i64 %.sroa.3.0.i.i29, -1
  br label %bb.k

bb.o:                                             ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  store ptr %i.x, ptr %i.p, align 8, !alias.scope !54577, !noalias !54580
  store ptr null, ptr %.sroa.03.sroa.4.0..sroa_idx.i34, align 8, !alias.scope !54577, !noalias !54580
  br label %.noexc50

bb.p:                                             ; preds = %._crit_edge220
  store ptr %i.x, ptr %i.p, align 8, !alias.scope !54577, !noalias !54580
  store ptr %.sroa.0.0.i.i30, ptr %.sroa.03.sroa.4.0..sroa_idx.i34, align 8, !alias.scope !54577, !noalias !54580
  store i64 0, ptr %.sroa.03.sroa.5.0..sroa_idx.i35, align 8, !alias.scope !54577, !noalias !54580
  store i64 %.sroa.4.0.i.ph.i.i38, ptr %.sroa.4.0..sroa_idx4.i36, align 8, !alias.scope !54577, !noalias !54580
  br label %.noexc50

bb.q:                                             ; preds = %.lr.ph219
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i30, i64 8
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.sroa.8.0.i.i.i31216
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"

.noexc50:                                         ; preds = %bb.p, %bb.o
  store i8 %switch.load233, ptr %i.z, align 8, !alias.scope !54577, !noalias !54580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !54588
  call fastcc void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h5bf1bbe4bd4e0431E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.p, i32 noundef 0)
  %.sroa.0.0.copyload.i3.i43 = load ptr, ptr %i.e, align 8, !alias.scope !54591, !noalias !54588, !nonnull !14, !noundef !14
  %.sroa.42.0.copyload.i5.i45 = load i64, ptr %.sroa.42.0..sroa_idx.i4.i44, align 8, !alias.scope !54591, !noalias !54588
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i3.i43, i64 8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.sroa.42.0.copyload.i5.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !54588
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"

"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit": ; preds = %.noexc50, %bb.q
  %.sroa.0.0.i46 = phi ptr [ %i.dh, %bb.q ], [ %i.dj, %.noexc50 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.dk = load i32, ptr %.sroa.0.0.i46, align 4, !noundef !14
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %.sroa.0.0.i46, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_ZN17meilisearch_types5tasks4Task7indexes17h4d96dafb36540464E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.r)
  %i.dm = load ptr, ptr %i.aa, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.dn = load i64, ptr %i.ab, align 8, !noundef !14 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54594)
  call void @llvm.experimental.noalias.scope.decl(metadata !54597)
  %i.do = load i64, ptr %i.ad, align 8, !alias.scope !54600, !noundef !14
  %i.dp = icmp eq i64 %i.do, 0
  %i.dq = add nuw nsw i64 %i.dn, 1
  %i.dr = lshr i64 %i.dq, 1
  %.sroa.0.0.i.i51 = select i1 %i.dp, i64 %i.dn, i64 %i.dr ; 2 uses
  %i.ds = load i64, ptr %i.ae, align 8, !alias.scope !54601, !noalias !54604, !noundef !14
  %i.dt = icmp ugt i64 %.sroa.0.0.i.i51, %i.ds
  br i1 %i.dt, label %bb.r, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i", !prof !121

bb.r:                                             ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"
  %i.du = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8a84036aa67c6426E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ac, i64 noundef %.sroa.0.0.i.i51, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i" unwind label %.loopexit.split-lp.loopexit ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i": ; preds = %bb.r, %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"
  %i.dv = icmp eq i64 %i.dn, 0
  br i1 %i.dv, label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h4c13645363a52b1fE.exit", label %.preheader

.preheader:                                       ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i", %.noexc54
  %.sroa.06.0.i.i.i.i.i.i = phi i64 [ %i.ec, %.noexc54 ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i" ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %.sroa.06.0.i.i.i.i.i.i ; 2 uses
  %.val16.i.i.i.i.i.i = load ptr, ptr %i.dw, align 8, !noalias !54606, !nonnull !14, !align !584, !noundef !14
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  %.val17.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !noalias !54606, !noundef !14 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !54606
  %i.dy = icmp slt i64 %.val17.i.i.i.i.i.i, 0
  br i1 %i.dy, label %bb.t, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader
  %i.dz = icmp eq i64 %.val17.i.i.i.i.i.i, 0
  br i1 %i.dz, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb16947294f2c0836E.exit.i.i.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !54615
  %i.ea = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val17.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #79, !noalias !54615 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.t, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb16947294f2c0836E.exit.i.i.i.i.i.i"

bb.t:                                             ; preds = %bb.s, %.preheader
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.s ], [ 0, %.preheader ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %.val17.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc53:                                         ; preds = %bb.t
  unreachable

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb16947294f2c0836E.exit.i.i.i.i.i.i": ; preds = %bb.s, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ea, %bb.s ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val16.i.i.i.i.i.i, i64 %.val17.i.i.i.i.i.i, i1 false), !noalias !54625
  store i64 %.val17.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !54606
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !54606
  store i64 %.val17.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !54606
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h07572f913fd76895E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc54 unwind label %.loopexit

.noexc54:                                         ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb16947294f2c0836E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !54606
  %i.ec = add nuw i64 %.sroa.06.0.i.i.i.i.i.i, 1  ; 2 uses
  %i.ed = icmp eq i64 %i.ec, %i.dn
  br i1 %i.ed, label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h4c13645363a52b1fE.exit", label %.preheader

.loopexit:                                        ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb16947294f2c0836E.exit.i.i.i.i.i.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.r
  %lpad.loopexit128 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.t
  %lpad.loopexit.split-lp129 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit128, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp129, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.val16 = load i64, ptr %i.o, align 8           ; 2 uses
  %i.ee = icmp eq i64 %.val16, 0
  br i1 %i.ee, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit", label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp
  %i.ef = shl nuw i64 %.val16, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dm, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 8) #79
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit"

"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h4c13645363a52b1fE.exit": ; preds = %.noexc54, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha0e7a96b75ff4f67E.exit.i.i"
  %.val = load i64, ptr %i.o, align 8             ; 2 uses
  %i.eg = icmp eq i64 %.val, 0
  br i1 %i.eg, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55", label %bb.v

bb.v:                                             ; preds = %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h4c13645363a52b1fE.exit"
  %i.eh = shl nuw i64 %.val, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dm, i64 noundef %i.eh, i64 noundef range(i64 1, -9223372036854775807) 8) #79
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55": ; preds = %bb.v, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h4c13645363a52b1fE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ei = load i64, ptr %i.v, align 8, !range !4548, !alias.scope !54626, !noundef !14 ; 3 uses
  %i.ej = icmp ne i64 %i.ei, -9223372036854775790
  call void @llvm.assume(i1 %i.ej)
  %i.ek = add nsw i64 %i.ei, 9223372036854775807
  %i.el = icmp ugt i64 %i.ei, -9223372036854775808
  %i.em = select i1 %i.el, i64 %i.ek, i64 17
  switch i64 %i.em, label %bb.w [
    i64 0, label %bb.x
    i64 1, label %bb.x
    i64 2, label %bb.x
    i64 3, label %bb.x
    i64 4, label %bb.x
    i64 5, label %bb.x
    i64 6, label %bb.x
    i64 7, label %bb.x
    i64 8, label %bb.x
    i64 9, label %bb.z
    i64 10, label %bb.z
    i64 11, label %bb.z
    i64 12, label %bb.z
    i64 13, label %bb.z
    i64 14, label %bb.z
    i64 15, label %bb.z
    i64 16, label %bb.x
    i64 17, label %bb.z
    i64 18, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread
    i64 19, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread
  ]

bb.w:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55"
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread: ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  br label %bb.y

bb.x:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit55"
  %i.en = load ptr, ptr %i.ag, align 8, !alias.scope !54626, !nonnull !14, !noundef !14 ; 2 uses
  %i.eo = load i64, ptr %i.ah, align 8, !alias.scope !54626, !noundef !14 ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN15index_scheduler5utils15ProcessingBatch11write_stats17h3132dc545462635bE:bb.a
  store i64 -9223372036854775807, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !54956
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !54956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !54956
  store i64 -9223372036854775805, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !54956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !54956
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17hecd08aa40a9ccde0E"(ptr nonnull align 8 dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(288) %i.n)
          to label %.noexc16.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i, !noalias !55013

.noexc16.i.i.i.i.i.i.i.i:                         ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h4a9d17a920d0dfd5E.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !54956
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.54.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.lo = icmp eq ptr %i.hm, %i.gf
  br i1 %i.lo, label %.loopexit, label %bb.an

.body.i.i.i38:                                    ; preds = %.loopexit.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i, %bb.ax, %bb.ay
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.lm, %bb.ax ], [ %i.lm, %bb.ay ], [ %lpad.loopexit.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E"(ptr noalias noundef align 8 dereferenceable(72) %i.o) #81
          to label %.body unwind label %bb.ba, !noalias !54900

bb.ba:                                            ; preds = %bb.bb, %.body.i.i.i38
  %i.lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !54900
  unreachable

bb.bb:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i.i34"
  %i.lq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr362drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$indexmap..map..iter..Iter$LT$$RF$str$C$usize$GT$$C$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$core..option..Option$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$$GT$$GT$$C$index_scheduler..utils..ProcessingBatch..write_stats..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6e8b9b0960a71803E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(600) %i.ag) #81
          to label %.body unwind label %bb.ba, !noalias !55047

.loopexit:                                        ; preds = %.noexc16.i.i.i.i.i.i.i.i, %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !noalias !55048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !54900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55049)
  call void @llvm.experimental.noalias.scope.decl(metadata !55052)
  call void @llvm.experimental.noalias.scope.decl(metadata !55055)
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 968
  %.val1.i.i.i46 = load i64, ptr %i.ls, align 8, !alias.scope !55058, !noundef !14 ; 4 uses
  %i.lt = icmp eq i64 %.val1.i.i.i46, 0
  br i1 %i.lt, label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i49", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i47

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i47: ; preds = %.loopexit
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 960
  %.val.i.i.i48 = load ptr, ptr %i.lu, align 8, !alias.scope !55058, !nonnull !14, !noundef !14
  %i.lv = shl i64 %.val1.i.i.i46, 3
  %i.lw = icmp slt i64 %.val1.i.i.i46, 2305843009213693950
  call void @llvm.assume(i1 %i.lw), !noalias !55055
  %i.lx = and i64 %i.lv, -16                      ; 2 uses
  %i.ly = add i64 %i.lx, 16                       ; 2 uses
  %i.lz = add nsw i64 %.val1.i.i.i46, 17
  %i.ma = add i64 %i.lz, %i.ly                    ; 3 uses
  %i.mb = icmp uge i64 %i.ma, %i.ly
  call void @llvm.assume(i1 %i.mb), !noalias !55055
  %i.mc = icmp ult i64 %i.ma, 9223372036854775793
  call void @llvm.assume(i1 %i.mc), !noalias !55055
  %i.md = sub nuw nsw i64 -16, %i.lx
  %i.me = getelementptr inbounds i8, ptr %.val.i.i.i48, i64 %i.md
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.me, i64 noundef %i.ma, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !55058, !inline_history !4474
  br label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i49"

"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i49": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i47, %.loopexit
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h737a762b1bd6a592E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.lr)
          to label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit51" unwind label %bb.bc, !inline_history !4475

bb.bc:                                            ; preds = %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i49"
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.lr, ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i64 72, i1 false)
  br label %.body

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit51": ; preds = %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i49"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.lr, ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.experimental.noalias.scope.decl(metadata !55059)
  call void @llvm.experimental.noalias.scope.decl(metadata !55062)
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val1.i.i = load i64, ptr %i.mg, align 8, !alias.scope !55065, !noundef !14 ; 4 uses
  %i.mh = icmp eq i64 %.val1.i.i, 0
  br i1 %i.mh, label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i52

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i52: ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit51"
  %i.mi = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.val.i.i = load ptr, ptr %i.mi, align 8, !alias.scope !55065, !nonnull !14, !noundef !14
  %i.mj = shl i64 %.val1.i.i, 3
  %i.mk = icmp slt i64 %.val1.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.mk)
  %i.ml = and i64 %i.mj, -16                      ; 2 uses
  %i.mm = add i64 %i.ml, 16                       ; 2 uses
  %i.mn = add nsw i64 %.val1.i.i, 17
  %i.mo = add i64 %i.mn, %i.mm                    ; 3 uses
  %i.mp = icmp uge i64 %i.mo, %i.mm
  call void @llvm.assume(i1 %i.mp)
  %i.mq = icmp ult i64 %i.mo, 9223372036854775793
  call void @llvm.assume(i1 %i.mq)
  %i.mr = sub nuw nsw i64 -16, %i.ml
  %i.ms = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.mr
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ms, i64 noundef %i.mo, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !55065
  br label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i.i"

"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i52, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit51"
  %.val2.i.i = load i64, ptr %4, align 8, !alias.scope !55065 ; 2 uses
  %i.mt = icmp eq i64 %.val2.i.i, 0
  br i1 %i.mt, label %"_ZN4core3ptr67drop_in_place$LT$indexmap..map..IndexMap$LT$$RF$str$C$usize$GT$$GT$17hb05e8c94ba483d10E.exit", label %bb.bd

bb.bd:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i.i"
  %i.mu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val3.i.i = load ptr, ptr %i.mu, align 8, !alias.scope !55065, !nonnull !14, !noundef !14
  %i.mv = shl nuw i64 %.val2.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.mv, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !55065
  br label %"_ZN4core3ptr67drop_in_place$LT$indexmap..map..IndexMap$LT$$RF$str$C$usize$GT$$GT$17hb05e8c94ba483d10E.exit"

"_ZN4core3ptr67drop_in_place$LT$indexmap..map..IndexMap$LT$$RF$str$C$usize$GT$$GT$17hb05e8c94ba483d10E.exit": ; preds = %bb.bd, %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !55066)
  call void @llvm.experimental.noalias.scope.decl(metadata !55069)
  %i.mw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val1.i.i53 = load i64, ptr %i.mw, align 8, !alias.scope !55072, !noundef !14 ; 4 uses
  %i.mx = icmp eq i64 %.val1.i.i53, 0
  br i1 %i.mx, label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i.i56", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i54

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i54: ; preds = %"_ZN4core3ptr67drop_in_place$LT$indexmap..map..IndexMap$LT$$RF$str$C$usize$GT$$GT$17hb05e8c94ba483d10E.exit"
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val.i.i55 = load ptr, ptr %i.my, align 8, !alias.scope !55072, !nonnull !14, !noundef !14
  %i.mz = shl i64 %.val1.i.i53, 3
  %i.na = icmp slt i64 %.val1.i.i53, 2305843009213693950
  call void @llvm.assume(i1 %i.na)
  %i.nb = and i64 %i.mz, -16                      ; 2 uses
  %i.nc = add i64 %i.nb, 16                       ; 2 uses
  %i.nd = add nsw i64 %.val1.i.i53, 17
  %i.ne = add i64 %i.nd, %i.nc                    ; 3 uses
  %i.nf = icmp uge i64 %i.ne, %i.nc
  call void @llvm.assume(i1 %i.nf)
  %i.ng = icmp ult i64 %i.ne, 9223372036854775793
  call void @llvm.assume(i1 %i.ng)
  %i.nh = sub nuw nsw i64 -16, %i.nb
  %i.ni = getelementptr inbounds i8, ptr %.val.i.i55, i64 %i.nh
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ni, i64 noundef %i.ne, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !55072
  br label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i.i56"

"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i.i56": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i54, %"_ZN4core3ptr67drop_in_place$LT$indexmap..map..IndexMap$LT$$RF$str$C$usize$GT$$GT$17hb05e8c94ba483d10E.exit"
  %.val2.i.i57 = load i64, ptr %3, align 8, !alias.scope !55072 ; 2 uses
  %i.nj = icmp eq i64 %.val2.i.i57, 0
  br i1 %i.nj, label %"_ZN4core3ptr67drop_in_place$LT$indexmap..map..IndexMap$LT$$RF$str$C$usize$GT$$GT$17hb05e8c94ba483d10E.exit59", label %bb.be

bb.be:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i.i56"
  %i.nk = shl nuw i64 %.val2.i.i57, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gc, i64 noundef %i.nk, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !55072
  br label %"_ZN4core3ptr67drop_in_place$LT$indexmap..map..IndexMap$LT$$RF$str$C$usize$GT$$GT$17hb05e8c94ba483d10E.exit59"

"_ZN4core3ptr67drop_in_place$LT$indexmap..map..IndexMap$LT$$RF$str$C$usize$GT$$GT$17hb05e8c94ba483d10E.exit59": ; preds = %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i.i56", %bb.be
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN15index_scheduler5utils15ProcessingBatch16update_from_task17hf2646768a034c12aE(ptr noalias noundef align 8 dereferenceable(1432) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(784) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 16 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %i.g = alloca [192 x i8], align 8               ; 4 uses
  %i.h = alloca [800 x i8], align 8               ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 780
  %i.j = load i8, ptr %i.i, align 4, !range !1330, !noundef !14 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1232
  tail call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hba3001efddb3b6baE"(ptr noalias noundef align 8 dereferenceable(48) %i.k, i8 noundef %i.j)
  %i.l = load i64, ptr %1, align 8, !range !4646, !noundef !14
  %.not = icmp eq i64 %i.l, 19
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @"_ZN72_$LT$meilisearch_types..tasks..Details$u20$as$u20$core..clone..Clone$GT$5clone17h62b3451881a95aadE"(ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %1)
  call void @"_ZN122_$LT$meilisearch_types..task_view..DetailsView$u20$as$u20$core..convert..From$LT$meilisearch_types..tasks..Details$GT$$GT$4from17ha09003cebeb22cbfE"(ptr noalias noundef nonnull sret([800 x i8]) align 8 captures(address) dereferenceable(800) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_ZN17meilisearch_types9task_view11DetailsView10accumulate17hcd3610d51c30794dE(ptr noalias noundef nonnull align 8 dereferenceable(800) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(800) %i.h)
          to label %bb.x unwind label %bb.w

bb.c:                                             ; preds = %bb.x, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !noundef !14
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55073)
  call void @llvm.experimental.noalias.scope.decl(metadata !55076)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !55076, !noalias !55073, !noundef !14 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !55076, !noalias !55073, !noundef !14
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.sroa.3.0.i.i = phi i64 [ %i.s, %bb.d ], [ %i.ai, %bb.h ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.q, %bb.d ], [ %i.ah, %bb.h ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 54
  %i.v = load i16, ptr %i.u, align 2, !noalias !55078, !noundef !14 ; 2 uses
  %i.w = zext i16 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  %i.y = icmp eq i16 %i.v, 0
  br i1 %i.y, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i140, i64 1 ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.8.0.i.i.i139, 1
  %i.ab = icmp eq ptr %i.z, %i.x
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.03.0.i.i.i140 = phi ptr [ %i.z, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.8.0.i.i.i139 = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.val6.i.i.i = load i8, ptr %.sroa.03.0.i.i.i140, align 1, !range !1330, !noalias !55078, !noundef !14
  %i.ac = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 5) %i.j, i8 %.val6.i.i.i)
  switch i8 %i.ac, label %bb.g [
    i8 -1, label %._crit_edge
    i8 0, label %bb.k
    i8 1, label %bb.f
  ]

bb.g:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.f, %.lr.ph, %bb.e
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.w, %bb.e ], [ %i.w, %bb.f ], [ %.sroa.8.0.i.i.i139, %.lr.ph ] ; 3 uses
  %i.ad = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.ad, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72
  %i.af = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.sroa.4.0.i.ph.i.i
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !55081, !nonnull !14, !noundef !14
  %i.ai = add i64 %.sroa.3.0.i.i, -1
  br label %bb.e

bb.i:                                             ; preds = %bb.c
  store ptr %i.p, ptr %i.f, align 8, !alias.scope !55073, !noalias !55076
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !55073, !noalias !55076
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge
  store ptr %i.p, ptr %i.f, align 8, !alias.scope !55073, !noalias !55076
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.0.0.i.i, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !55073, !noalias !55076
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !55073, !noalias !55076
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.4.0.i.ph.i.i, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !55073, !noalias !55076
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.sroa.8.0.i.i.i139
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 %i.j, ptr %i.al, align 8, !alias.scope !55073, !noalias !55076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !55084
  call fastcc void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h2afa6a4f414901c9E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.f, i32 noundef 0)
  %.sroa.0.0.copyload.i3.i = load ptr, ptr %i.c, align 8, !alias.scope !55087, !noalias !55084, !nonnull !14, !noundef !14
  %.sroa.42.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.42.0.copyload.i5.i = load i64, ptr %.sroa.42.0..sroa_idx.i4.i, align 8, !alias.scope !55087, !noalias !55084
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i3.i, i64 8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.42.0.copyload.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !55084
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"

"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit": ; preds = %bb.k, %bb.l
  %.sroa.0.0.i = phi ptr [ %i.ak, %bb.k ], [ %i.an, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ao = load i32, ptr %.sroa.0.0.i, align 4, !noundef !14
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %.sroa.0.0.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.val = load i64, ptr %i.ar, align 8, !range !4548, !noundef !14 ; 3 uses
  %i.as = icmp ne i64 %.val, -9223372036854775790
  call void @llvm.assume(i1 %i.as)
  %i.at = add nsw i64 %.val, 9223372036854775807
  %i.au = icmp ugt i64 %.val, -9223372036854775808
  %i.av = select i1 %i.au, i64 %i.at, i64 17      ; 2 uses
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE.9061, i64 %i.av
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55090)
  call void @llvm.experimental.noalias.scope.decl(metadata !55093)
  %i.aw = load ptr, ptr %i.aq, align 8, !alias.scope !55093, !noalias !55090, !noundef !14 ; 2 uses
  %.not.i6 = icmp eq ptr %i.aw, null
  br i1 %.not.i6, label %bb.r, label %bb.m

bb.m:                                             ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !55093, !noalias !55090, !noundef !14
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.sroa.3.0.i.i7 = phi i64 [ %i.ay, %bb.m ], [ %i.bo, %bb.q ] ; 2 uses
  %.sroa.0.0.i.i8 = phi ptr [ %i.aw, %bb.m ], [ %i.bn, %bb.q ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i8, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i8, i64 54
  %i.bb = load i16, ptr %i.ba, align 2, !noalias !55095, !noundef !14 ; 2 uses
  %i.bc = zext i16 %i.bb to i64                   ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc
  %i.be = icmp eq i16 %i.bb, 0
  br i1 %i.be, label %._crit_edge147, label %.lr.ph146

bb.o:                                             ; preds = %.lr.ph146
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i10144, i64 1 ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.8.0.i.i.i9143, 1
  %i.bh = icmp eq ptr %i.bf, %i.bd
  br i1 %i.bh, label %._crit_edge147, label %.lr.ph146

.lr.ph146:                                        ; preds = %bb.n, %bb.o
  %.sroa.03.0.i.i.i10144 = phi ptr [ %i.bf, %bb.o ], [ %i.az, %bb.n ] ; 2 uses
  %.sroa.8.0.i.i.i9143 = phi i64 [ %i.bg, %bb.o ], [ 0, %bb.n ] ; 3 uses
  %.val6.i.i.i11 = load i8, ptr %.sroa.03.0.i.i.i10144, align 1, !range !4559, !noalias !55095, !noundef !14
  %i.bi = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 18) %switch.load, i8 %.val6.i.i.i11)
  switch i8 %i.bi, label %bb.p [
    i8 -1, label %._crit_edge147
    i8 0, label %bb.t
    i8 1, label %bb.o
  ]

bb.p:                                             ; preds = %.lr.ph146
  unreachable

._crit_edge147:                                   ; preds = %bb.o, %.lr.ph146, %bb.n
  %.sroa.4.0.i.ph.i.i16 = phi i64 [ %i.bc, %bb.n ], [ %i.bc, %bb.o ], [ %.sroa.8.0.i.i.i9143, %.lr.ph146 ] ; 3 uses
  %i.bj = icmp eq i64 %.sroa.3.0.i.i7, 0
  br i1 %i.bj, label %bb.s, label %bb.q

bb.q:                                             ; preds = %._crit_edge147
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i8, i64 72
  %i.bl = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i16, 12
  call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.sroa.4.0.i.ph.i.i16
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !55098, !nonnull !14, !noundef !14
  %i.bo = add i64 %.sroa.3.0.i.i7, -1
  br label %bb.n

bb.r:                                             ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h4fb7017955c6b46cE.exit"
  store ptr %i.aq, ptr %i.e, align 8, !alias.scope !55090, !noalias !55093
  %.sroa.4.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i20, align 8, !alias.scope !55090, !noalias !55093
  br label %bb.u

bb.s:                                             ; preds = %._crit_edge147
  store ptr %i.aq, ptr %i.e, align 8, !alias.scope !55090, !noalias !55093
  %.sroa.46.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.0.0.i.i8, ptr %.sroa.46.0..sroa_idx.i17, align 8, !alias.scope !55090, !noalias !55093
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i18, align 8, !alias.scope !55090, !noalias !55093
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.4.0.i.ph.i.i16, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i19, align 8, !alias.scope !55090, !noalias !55093
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph146
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i8, i64 8
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.sroa.8.0.i.i.i9143
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i8 %switch.load, ptr %i.br, align 8, !alias.scope !55090, !noalias !55093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !55101
  call fastcc void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h5bf1bbe4bd4e0431E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.e, i32 noundef 0)
  %.sroa.0.0.copyload.i3.i21 = load ptr, ptr %i.b, align 8, !alias.scope !55104, !noalias !55101, !nonnull !14, !noundef !14
  %.sroa.42.0..sroa_idx.i4.i22 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.42.0.copyload.i5.i23 = load i64, ptr %.sroa.42.0..sroa_idx.i4.i22, align 8, !alias.scope !55104, !noalias !55101
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i3.i21, i64 8
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.sroa.42.0.copyload.i5.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !55101
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"

"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit": ; preds = %bb.t, %bb.u
  %.sroa.0.0.i24 = phi ptr [ %i.bq, %bb.t ], [ %i.bt, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bu = load i32, ptr %.sroa.0.0.i24, align 4, !noundef !14
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %.sroa.0.0.i24, align 4
  switch i64 %i.av, label %bb.v [
    i64 0, label %bb.aa
    i64 1, label %bb.aa
    i64 2, label %bb.aa
    i64 3, label %bb.aa
    i64 4, label %bb.aa
    i64 5, label %bb.aa
    i64 6, label %bb.aa
    i64 7, label %bb.aa
    i64 8, label %bb.aa
    i64 9, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 10, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 11, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 12, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 13, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 14, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 15, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 16, label %bb.aa
    i64 17, label %_ZN17meilisearch_types5tasks4Task9index_uid17h27e184036aea4c43E.exit
    i64 18, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread
    i64 19, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread
  ]

bb.v:                                             ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread: ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit", %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1128
  br label %bb.ab

bb.w:                                             ; preds = %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..task_view..DetailsView$GT$17hf8a155d966a5236fE"(ptr noalias noundef nonnull align 8 dereferenceable(800) %i.h) #81
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.b
  call void @"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..task_view..DetailsView$GT$17hf8a155d966a5236fE"(ptr noalias noundef nonnull align 8 dereferenceable(800) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.c

bb.y:                                             ; preds = %bb.w
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

bb.z:                                             ; preds = %bb.w
  resume { ptr, i32 } %i.bx

bb.aa:                                            ; preds = %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit", %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit", %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit", %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit", %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit", %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit", %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit", %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit", %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit", %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17hddc3c5aa019dc923E.exit"
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !55107, !nonnull !14, !noundef !14 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !55107, !noundef !14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cd = icmp slt i64 %i.cc, 0
  br i1 %i.cd, label %bb.ac, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !4606

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.cf = icmp eq i64 %i.cc, 0
  br i1 %i.cf, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit", label %bb.ab

bb.ab:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.4.0.i.ph6471 = phi i64 [ 10, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread ], [ %i.cc, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ] ; 3 uses
  %.sroa.0.0.i28.ph6669 = phi ptr [ @905, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread ], [ %i.ca, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ]
  %i.cg = phi ptr [ %i.bw, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread ], [ %i.ce, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ]
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !55110
  %i.ch = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.i.ph6471, i64 noundef range(i64 1, 9) 1) #79, !noalias !55110 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ac, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit"

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.4.0.i.ph65 = phi i64 [ %.sroa.4.0.i.ph6471, %bb.ab ], [ %i.cc, %bb.aa ]
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.ab ], [ 0, %bb.aa ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.4.0.i.ph65, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80, !noalias !55118
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.ab
  %i.cj = phi i1 [ true, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ false, %bb.ab ]
  %.sroa.4.0.i.ph6472 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %.sroa.4.0.i.ph6471, %bb.ab ] ; 8 uses
  %.sroa.0.0.i28.ph6670 = phi ptr [ %i.ca, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %.sroa.0.0.i28.ph6669, %bb.ab ]
  %i.ck = phi ptr [ %i.ce, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.cg, %bb.ab ] ; 4 uses
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.ch, %bb.ab ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %.sroa.0.0.i28.ph6670, i64 %.sroa.4.0.i.ph6472, i1 false), !noalias !55119
  call void @llvm.experimental.noalias.scope.decl(metadata !55120)
  call void @llvm.experimental.noalias.scope.decl(metadata !55123)
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !55123, !noalias !55125, !noundef !14 ; 2 uses
  %.not.i30 = icmp eq ptr %i.cl, null
  br i1 %.not.i30, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit"
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !55123, !noalias !55125, !noundef !14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ah, %bb.ad
  %.sroa.3.0.i.i31 = phi i64 [ %i.cn, %bb.ad ], [ %i.dj, %bb.ah ] ; 2 uses
  %.sroa.0.0.i.i32 = phi ptr [ %i.cl, %bb.ad ], [ %i.di, %bb.ah ] ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i32, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i32, i64 318
  %i.cq = load i16, ptr %i.cp, align 2, !noalias !55127, !noundef !14 ; 2 uses
  %i.cr = zext i16 %i.cq to i64                   ; 3 uses
  %.idx = mul nuw nsw i64 %i.cr, 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx
  %i.ct = icmp eq i16 %i.cq, 0
  br i1 %i.ct, label %._crit_edge155, label %.lr.ph154

bb.af:                                            ; preds = %.lr.ph154
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i34152, i64 24 ; 2 uses
  %i.cv = add nuw nsw i64 %.sroa.27.0.copyload.i151, 1
  %i.cw = icmp eq ptr %i.cu, %i.cs
  br i1 %i.cw, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.ae, %bb.af
  %.sroa.03.0.i.i.i34152 = phi ptr [ %i.cu, %bb.af ], [ %i.co, %bb.ae ] ; 3 uses
  %.sroa.27.0.copyload.i151 = phi i64 [ %i.cv, %bb.af ], [ 0, %bb.ae ] ; 3 uses
  %i.cx = getelementptr i8, ptr %.sroa.03.0.i.i.i34152, i64 8
  %.val7.i.i.i = load ptr, ptr %i.cx, align 8, !noalias !55127, !nonnull !14, !noundef !14
  %i.cy = getelementptr i8, ptr %.sroa.03.0.i.i.i34152, i64 16
  %.val8.i.i.i = load i64, ptr %i.cy, align 8, !noalias !55127, !noundef !14 ; 2 uses
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.ph6472, i64 %.val8.i.i.i)
  %i.cz = sub i64 %.sroa.4.0.i.ph6472, %.val8.i.i.i
  %i.da = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %.val7.i.i.i, i64 %..i.i.i.i.i.i), !alias.scope !55130, !noalias !55127 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp eq i32 %i.da, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.dc, i64 %i.cz, i64 %i.db
  %i.dd = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i, i64 0)
  switch i8 %i.dd, label %bb.ag [
    i8 -1, label %._crit_edge155
    i8 0, label %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h3644f9225642d158E.exit.i"
    i8 1, label %bb.af
  ]

bb.ag:                                            ; preds = %.lr.ph154
end_hunk_7
begin_hunk_8_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hc5dfa9b79c1ce1a0E":bb.a
  store i16 %i.jq, ptr %i.jr, align 8, !noalias !145636
  %i.js = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 2 ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jn
  %i.ju = load ptr, ptr %i.jt, align 8, !noalias !145631, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %i.id, ptr %i.ju, align 8, !noalias !145636
  %i.jv = trunc nuw nsw i64 %i.jn to i16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 1064
  store i16 %i.jv, ptr %i.jw, align 8, !noalias !145636
  %i.jx = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 3 ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.js
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !145631, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %i.id, ptr %i.jz, align 8, !noalias !145636
  %i.ka = trunc nuw nsw i64 %i.js to i16
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 1064
  store i16 %i.ka, ptr %i.kb, align 8, !noalias !145636
  %i.kc = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i, 4 ; 2 uses
  %i.kd = icmp ult i64 %.sroa.0.06.i.i44.i.i.i, 9
  tail call void @llvm.assume(i1 %i.kd)
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jx
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !145631, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %i.id, ptr %i.kf, align 8, !noalias !145636
  %i.kg = trunc nuw nsw i64 %i.jx to i16
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 1064
  store i16 %i.kg, ptr %i.kh, align 8, !noalias !145636
  %exitcond.not.i.i45.i.i.i.3 = icmp eq i64 %i.kc, %i.ja
  br i1 %exitcond.not.i.i45.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit46.i.i.i", label %.lr.ph.i.i43.i.i.i

bb.bo:                                            ; preds = %bb.be
  %i.ki = add nsw i64 %i.dn, -7
  br label %bb.bk

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit46.i.i.i": ; preds = %.lr.ph.i.i43.i.i.i.prol.loopexit, %.lr.ph.i.i43.i.i.i, %bb.bn
  %.sroa.039.0.copyload.i.i = load i64, ptr %i.b, align 8, !noalias !145638
  %.sroa.842.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.842.0..sroa_idx.i.i, align 8, !noalias !145638
  %.sroa.842.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.842.sroa.6.0..sroa.842.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !145638
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.842.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.842.sroa.7.0..sroa.842.0..sroa_idx.sroa_idx.i.i, i64 72, i1 false), !noalias !145638
  %.sroa.845.0.copyload.i.i = load ptr, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !noalias !145638
  %.sroa.948.0.copyload.i.i = load i64, ptr %.sroa.948.0..sroa_idx.i.i, align 8, !noalias !145638
  br label %bb.bt

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit41.i.i.i": ; preds = %.lr.ph.i.i38.i.i.i.prol.loopexit, %.lr.ph.i.i38.i.i.i, %bb.bj
  %.sroa.039.0.copyload40.i.i = load i64, ptr %i.b, align 8, !noalias !145638
  %.sroa.842.sroa.0.0.copyload262.i.i = load ptr, ptr %.sroa.842.0..sroa_idx.i.i, align 8, !noalias !145638
  %.sroa.842.sroa.6.0.copyload263.i.i = load i64, ptr %.sroa.842.sroa.6.0..sroa.842.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !145638
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.842.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.842.sroa.7.0..sroa.842.0..sroa_idx.sroa_idx.i.i, i64 72, i1 false), !noalias !145638
  %.sroa.948.0.copyload50.i.i = load i64, ptr %.sroa.948.0..sroa_idx.i.i, align 8, !noalias !145638
  %.sroa.1051.0.copyload53.i.i = load ptr, ptr %i.cp, align 8, !noalias !145638
  br label %bb.bt

bb.bp:                                            ; preds = %bb.br
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !145551
  unreachable

.loopexit.i.i:                                    ; preds = %bb.bf, %bb.be, %.invoke.i35.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp.i.i:                           ; preds = %bb.at
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.kk = icmp eq i64 %.sroa.034.0.copyload.i, -9223372036854775803
  br i1 %i.kk, label %.noexc.i31.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hac7f4c13cf586152E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %.sroa.16.i.i)
          to label %.noexc.i31.i.i unwind label %bb.bp, !noalias !145455

.noexc.i31.i.i:                                   ; preds = %bb.br, %bb.bq
  %i.kl = icmp eq i64 %.sroa.039.0178.i.i, 0
  br i1 %i.kl, label %.body, label %bb.bs

bb.bs:                                            ; preds = %.noexc.i31.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.1.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.1.i.i, i64 noundef %.sroa.039.0178.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !145639
  br label %.body

.thread114.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !145455
  br label %.loopexit121.i.i

bb.bt:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit41.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit46.i.i.i"
  %.sroa.842.sroa.0.0.i.i = phi ptr [ %.sroa.842.sroa.0.0.copyload262.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit41.i.i.i" ], [ %.sroa.842.sroa.0.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit46.i.i.i" ] ; 2 uses
  %.sroa.842.sroa.6.0.i.i = phi i64 [ %.sroa.842.sroa.6.0.copyload263.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit41.i.i.i" ], [ %.sroa.842.sroa.6.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit46.i.i.i" ] ; 2 uses
  %.sroa.1051.0.i.i = phi ptr [ %.sroa.1051.0.copyload53.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit41.i.i.i" ], [ %i.id, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit46.i.i.i" ] ; 3 uses
  %.sroa.948.0.i.i = phi i64 [ %.sroa.948.0.copyload50.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit41.i.i.i" ], [ %.sroa.948.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit46.i.i.i" ] ; 2 uses
  %.sroa.845.0.i.i = phi ptr [ %i.fy, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit41.i.i.i" ], [ %.sroa.845.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit46.i.i.i" ] ; 4 uses
  %.sroa.039.0.i.i = phi i64 [ %.sroa.039.0.copyload40.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit41.i.i.i" ], [ %.sroa.039.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h61ddca1218bb5925E.exit46.i.i.i" ] ; 3 uses
  %.sroa.1154.0.copyload56.i.i = load i64, ptr %.sroa.1154.0..sroa_idx.i.i, align 8, !noalias !145638 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !145551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !145455
  %.not16.i.i = icmp eq i64 %.sroa.039.0.i.i, -9223372036854775808
  br i1 %.not16.i.i, label %.loopexit121.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.845.0.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.16.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.842.sroa.7.i.i, i64 72, i1 false), !noalias !145455
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1051.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.842.sroa.7.i.i)
  %i.km = load ptr, ptr %.sroa.845.0.i.i, align 8, !noalias !145515, !noundef !14 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.as

.loopexit121.i.i:                                 ; preds = %bb.bt, %.thread114.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.842.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i), !noalias !145455
  br label %bb.ca

bb.bv:                                            ; preds = %bb.ai
  store i16 1, ptr %i.cv, align 2, !noalias !145534
  %i.kn = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %.sroa.0.0.i.i7, ptr %i.kn, align 8, !noalias !145644
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store ptr %.sroa.12.0.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !noalias !145644
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store i64 %.sroa.15.0.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 8, !noalias !145644
  %i.ko = getelementptr inbounds nuw i8, ptr %i.cs, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ko, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.16.i.i, i64 72, i1 false), !noalias !145455
  %i.kp = getelementptr inbounds nuw i8, ptr %i.cs, i64 1080
  store ptr %.lcssa136.i.i, ptr %i.kp, align 8, !noalias !145534
  store ptr %i.cs, ptr %.lcssa136.i.i, align 8, !noalias !145645
  %i.kq = getelementptr inbounds nuw i8, ptr %.lcssa136.i.i, i64 1064
  store i16 1, ptr %i.kq, align 8, !noalias !145645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !145455
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i), !noalias !145455
  br label %bb.ca

bb.bw:                                            ; preds = %bb.by
  %i.kr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !145444
  unreachable

bb.bx:                                            ; preds = %bb.i
  %i.ks = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kt = icmp eq i64 %.sroa.0.0.copyload379, -9223372036854775803
  br i1 %i.kt, label %.noexc15.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hac7f4c13cf586152E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %3)
          to label %.noexc15.i unwind label %bb.bw

.noexc15.i:                                       ; preds = %bb.by, %bb.bx
  %i.ku = icmp eq i64 %.sroa.022.0.copyload.i, 0
  br i1 %i.ku, label %.body, label %bb.bz

bb.bz:                                            ; preds = %.noexc15.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.524.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload.i, i64 noundef %.sroa.022.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !145648
  br label %.body

bb.ca:                                            ; preds = %bb.j, %bb.ac, %.loopexit121.i.i, %bb.bv
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !noalias !145444, !noundef !14
  %i.kx = add i64 %i.kw, 1
  store i64 %i.kx, ptr %i.kv, align 8, !noalias !145444
  store i64 -9223372036854775802, ptr %0, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h1d11a14e6227192dE.exit.thread", %bb.ca
  ret void

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h1d11a14e6227192dE.exit.thread": ; preds = %bb.g, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h5c48ab3592e98603E.exit.i", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h1d11a14e6227192dE.exit", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h1d11a14e6227192dE.exit.thread32"
  %.sroa.7.031 = phi ptr [ %.sroa.524.0.copyload.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h1d11a14e6227192dE.exit.thread32" ], [ %.val.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h1d11a14e6227192dE.exit" ], [ %.sroa.0.0.i.i, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h5c48ab3592e98603E.exit.i" ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %.sroa.14.030 = phi i64 [ %i.ao, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h1d11a14e6227192dE.exit.thread32" ], [ %i.am, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h1d11a14e6227192dE.exit" ], [ %.sroa.8.0.i.i.i308, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h5c48ab3592e98603E.exit.i" ], [ %.sroa.8.0.i.i.i308, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.031) ]
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.7.031, i64 272
  %i.kz = getelementptr inbounds nuw [72 x i8], ptr %i.ky, i64 %.sroa.14.030 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.kz, i64 72, i1 false), !noalias !145653
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.kz, ptr noundef nonnull readonly align 8 dereferenceable(72) %3, i64 72, i1 false), !noalias !145656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.cb

.body:                                            ; preds = %bb.bz, %.noexc15.i, %bb.bs, %.noexc.i31.i.i, %bb.ar, %bb.aq, %bb.am, %.noexc.i5.i.i.i, %bb.z, %.noexc.i.i.i
  %.pn = phi { ptr, i32 } [ %i.de, %bb.aq ], [ %lpad.phi.i.i, %bb.bs ], [ %i.ks, %bb.bz ], [ %i.de, %bb.ar ], [ %i.da, %bb.am ], [ %i.ks, %.noexc15.i ], [ %i.da, %.noexc.i5.i.i.i ], [ %i.ce, %.noexc.i.i.i ], [ %lpad.phi.i.i, %.noexc.i31.i.i ], [ %i.ce, %bb.z ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hcb57e1f7f0e59f41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i8 noundef range(i8 0, 5) %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145658)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !145658, !noalias !145661, !noundef !14 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !145658, !noalias !145661, !noundef !14
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.e, %bb.b ], [ %i.u, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.t, %bb.f ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 54
  %i.h = load i16, ptr %i.g, align 2, !noalias !145663, !noundef !14 ; 2 uses
  %i.i = zext i16 %i.h to i64                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = icmp eq i16 %i.h, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i6, i64 1 ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.8.0.i.i.i5, 1
  %i.n = icmp eq ptr %i.l, %i.j
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.03.0.i.i.i6 = phi ptr [ %i.l, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i5 = phi i64 [ %i.m, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.val6.i.i.i = load i8, ptr %.sroa.03.0.i.i.i6, align 1, !range !1330, !noalias !145663, !noundef !14
  %i.o = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 5) %1, i8 %.val6.i.i.i)
  switch i8 %i.o, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %bb.h
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %.sroa.8.0.i.i.i5, %.lr.ph ] ; 3 uses
  %i.p = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72
  %i.r = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.4.0.i.ph.i.i
  %i.t = load ptr, ptr %i.s, align 8, !noalias !145666, !nonnull !14, !noundef !14
  %i.u = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

bb.g:                                             ; preds = %._crit_edge
  %i.v = ptrtoint ptr %.sroa.0.0.i.i to i64
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sroa.8.0.i.i.i5
  store i32 %2, ptr %i.x, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.a
  %.sroa.12.0.ph = phi i64 [ undef, %bb.a ], [ %.sroa.4.0.i.ph.i.i, %bb.g ]
  %.sroa.7.0.ph = phi i64 [ 0, %bb.a ], [ %i.v, %bb.g ]
  store ptr %0, ptr %i.b, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.7.0.ph, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %1, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h2afa6a4f414901c9E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hde92a9845b3c5e9dE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 15 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 14 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145669)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !145669, !noalias !145672, !noundef !14 ; 5 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !145669, !noalias !145672, !noundef !14 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.g, %bb.b ], [ %i.aa, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.z, %bb.f ] ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 186
  %i.i = load i16, ptr %i.h, align 2, !noalias !145675, !noundef !14 ; 4 uses
  %i.j = zext i16 %i.i to i64                     ; 5 uses
  %.idx = shl nuw nsw i64 %i.j, 4
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.idx
  %i.l = icmp eq i16 %i.i, 0
  br i1 %i.l, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he66a749859cd7080E.exit.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he66a749859cd7080E.exit.i.i.i"

bb.d:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he66a749859cd7080E.exit.i.i.i"
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i32, i64 16 ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.8.0.i.i.i31, 1
  %i.o = icmp eq ptr %i.m, %i.k
  br i1 %i.o, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he66a749859cd7080E.exit.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he66a749859cd7080E.exit.i.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he66a749859cd7080E.exit.i.i.i": ; preds = %bb.c, %bb.d
  %.sroa.05.0.i.i.i32 = phi ptr [ %i.m, %bb.d ], [ %.sroa.0.0.i.i, %bb.c ] ; 3 uses
  %.sroa.8.0.i.i.i31 = phi i64 [ %i.n, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.val8.i.i.i = load ptr, ptr %.sroa.05.0.i.i.i32, align 8, !noalias !145675, !nonnull !14, !align !584, !noundef !14
  %i.p = getelementptr i8, ptr %.sroa.05.0.i.i.i32, i64 8
  %.val9.i.i.i = load i64, ptr %i.p, align 8, !noalias !145675, !noundef !14 ; 2 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %.val9.i.i.i)
  %i.q = sub i64 %2, %.val9.i.i.i
  %i.r = tail call i32 @memcmp(ptr nonnull readonly align 1 %1, ptr nonnull readonly align 1 %.val8.i.i.i, i64 %..i.i.i.i.i), !alias.scope !145678, !noalias !145682 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.t, i64 %i.q, i64 %i.s
  %i.u = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i, i64 0)
  switch i8 %i.u, label %bb.e [
    i8 -1, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he66a749859cd7080E.exit.i.i.i._crit_edge"
    i8 0, label %.loopexit
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he66a749859cd7080E.exit.i.i.i"
  unreachable

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he66a749859cd7080E.exit.i.i.i._crit_edge": ; preds = %bb.d, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he66a749859cd7080E.exit.i.i.i", %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.j, %bb.c ], [ %i.j, %bb.d ], [ %.sroa.8.0.i.i.i31, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he66a749859cd7080E.exit.i.i.i" ] ; 11 uses
  %i.v = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he66a749859cd7080E.exit.i.i.i._crit_edge"
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 192
  %i.x = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.4.0.i.ph.i.i
  %i.z = load ptr, ptr %i.y, align 8, !noalias !145683, !nonnull !14, !noundef !14
  %i.aa = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

bb.g:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he66a749859cd7080E.exit.i.i.i._crit_edge"
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !145686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !145686
  %i.ac = icmp ult i16 %i.i, 11
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  store ptr %.sroa.0.0.i.i, ptr %i.d, align 8, !noalias !145694
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.ae, align 8, !noalias !145694
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %i.ad, label %bb.n, label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.j
  br i1 %.not.i.i.i.i.not, label %bb.j, label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h900c0d5c82a694c8E.exit.thread.i.i"

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.ph.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = sub nuw nsw i64 %i.j, %.sroa.4.0.i.ph.i.i
  %i.aj = shl nuw nsw i64 %i.ai, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %i.ag, i64 %i.aj, i1 false), !alias.scope !145699, !noalias !145702
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h900c0d5c82a694c8E.exit.thread.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h900c0d5c82a694c8E.exit.thread.i.i": ; preds = %bb.j, %bb.i
  %i.ak = add nuw nsw i16 %i.i, 1
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.ph.i.i ; 2 uses
  store ptr %1, ptr %i.al, align 8, !alias.scope !145699, !noalias !145702
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %2, ptr %i.am, align 8, !alias.scope !145699, !noalias !145708
  store i16 %i.ak, ptr %i.ab, align 2, !noalias !145709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !145686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !145686
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h00edf7681494dd1dE.exit"

bb.k:                                             ; preds = %bb.h
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.l [
    i64 5, label %bb.n
    i64 6, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  store i64 6, ptr %i.af, align 8, !noalias !145694
  call fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17ha17e20e37d13c68aE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !145710
  %i.an = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  store i64 5, ptr %i.af, align 8, !noalias !145694
  call fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17ha17e20e37d13c68aE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !145710
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.h
  %.sink.i.i.i = phi i64 [ 4, %bb.h ], [ %.sroa.4.0.i.ph.i.i, %bb.k ]
  store i64 %.sink.i.i.i, ptr %i.af, align 8, !noalias !145694
  call fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17ha17e20e37d13c68aE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !145710
  %i.ao = load ptr, ptr %i.c, align 8, !noalias !145694, !nonnull !14, !noundef !14
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l
  %.sroa.9.1.i.i.i = phi i64 [ %i.an, %bb.l ], [ 0, %bb.m ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !145694, !nonnull !14, !noundef !14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.10.0.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %bb.n ], [ %.sroa.9.1.i.i.i, %bb.o ] ; 4 uses
  %.sroa.021.0.i.i.i = phi ptr [ %i.ao, %bb.n ], [ %i.aq, %bb.o ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.021.0.i.i.i, i64 186 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !noalias !145711, !noundef !14 ; 2 uses
  %i.at = zext i16 %i.as to i64                   ; 2 uses
  %.not.i40.not.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i, %i.at
  br i1 %.not.i40.not.i.i.i, label %bb.q, label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h900c0d5c82a694c8E.exit.i.i"
end_hunk_8
begin_hunk_9_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17he32fd97d8c0f31b8E":bb.a

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$milli..vector..settings..EmbeddingSettings$GT$17hf4926b546accf7f1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(1512) %i.i)
          to label %.noexc.i31.i.i unwind label %bb.bp, !noalias !145995

.noexc.i31.i.i:                                   ; preds = %bb.br, %bb.bq
  %i.kn = icmp eq i64 %.sroa.0252.1.i.i, 0
  br i1 %i.kn, label %.body, label %bb.bs

bb.bs:                                            ; preds = %.noexc.i31.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7255.1.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7255.1.i.i, i64 noundef %.sroa.0252.1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !146042
  br label %.body

.thread118.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !145860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !145860
  br label %.loopexit125.i.i

bb.bt:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit41.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit46.i.i.i"
  %.sroa.040.sroa.0.0.i.i = phi i64 [ %.sroa.040.sroa.0.0.copyload263.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit41.i.i.i" ], [ %.sroa.040.sroa.0.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit46.i.i.i" ] ; 2 uses
  %.sroa.040.sroa.6.0.i.i = phi ptr [ %.sroa.040.sroa.6.0.copyload265.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit41.i.i.i" ], [ %.sroa.040.sroa.6.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit46.i.i.i" ] ; 2 uses
  %.sroa.040.sroa.7.0.i.i = phi i64 [ %.sroa.040.sroa.7.0.copyload267.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit41.i.i.i" ], [ %.sroa.040.sroa.7.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit46.i.i.i" ] ; 2 uses
  %.sroa.1054.0.i.i = phi ptr [ %.sroa.1054.0.copyload56.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit41.i.i.i" ], [ %i.if, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit46.i.i.i" ] ; 3 uses
  %.sroa.951.0.i.i = phi i64 [ %.sroa.951.0.copyload53.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit41.i.i.i" ], [ %.sroa.951.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit46.i.i.i" ] ; 2 uses
  %.sroa.848.0.i.i = phi ptr [ %i.ga, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit41.i.i.i" ], [ %.sroa.848.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit46.i.i.i" ] ; 4 uses
  %.sroa.6.0.i.i = phi i64 [ %.sroa.6.0.copyload42.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit41.i.i.i" ], [ %.sroa.6.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h9bc58847db2ba389E.exit46.i.i.i" ] ; 3 uses
  %.sroa.1157.0.copyload59.i.i = load i64, ptr %.sroa.1157.0..sroa_idx.i.i, align 8, !noalias !146041 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !145952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !145860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !145860
  %.not16.i.i = icmp eq i64 %.sroa.6.0.i.i, 5
  br i1 %.not16.i.i, label %.loopexit125.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.848.0.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.12.i.i, ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.845.i.i, i64 1504, i1 false), !noalias !145860
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1054.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.845.i.i)
  %i.ko = load ptr, ptr %.sroa.848.0.i.i, align 8, !noalias !145920, !noundef !14 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.as

.loopexit125.i.i:                                 ; preds = %bb.bt, %.thread118.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.845.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  br label %bb.ca

bb.bv:                                            ; preds = %bb.ai
  store i16 1, ptr %i.cx, align 2, !noalias !145938
  %i.kp = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %.sroa.0252.0.i.i, ptr %i.kp, align 8, !noalias !146047
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %.sroa.7255.0.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !noalias !146047
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i64 %.sroa.8.0.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 8, !noalias !146047
  %i.kq = getelementptr inbounds nuw i8, ptr %i.cu, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1512) %i.kq, ptr noundef nonnull readonly align 8 dereferenceable(1512) %.sroa.02.sroa.6.0..sroa_idx.i.i, i64 1512, i1 false), !noalias !145860
  %i.kr = getelementptr inbounds nuw i8, ptr %i.cu, i64 16920
  store ptr %.lcssa140.i.i, ptr %i.kr, align 8, !noalias !145938
  store ptr %i.cu, ptr %.lcssa140.i.i, align 8, !noalias !146048
  %i.ks = getelementptr inbounds nuw i8, ptr %.lcssa140.i.i, i64 16904
  store i16 1, ptr %i.ks, align 8, !noalias !146048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !145860
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  br label %bb.ca

bb.bw:                                            ; preds = %bb.by
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !145849
  unreachable

bb.bx:                                            ; preds = %bb.i
  %i.ku = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kv = icmp samesign ult i64 %.sroa.0.0.copyload383, 3
  br i1 %i.kv, label %bb.by, label %.noexc15.i

bb.by:                                            ; preds = %bb.bx
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$milli..vector..settings..EmbeddingSettings$GT$17hf4926b546accf7f1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(1512) %3)
          to label %.noexc15.i unwind label %bb.bw

.noexc15.i:                                       ; preds = %bb.by, %bb.bx
  %i.kw = icmp eq i64 %.sroa.022.0.copyload.i, 0
  br i1 %i.kw, label %.body, label %bb.bz

bb.bz:                                            ; preds = %.noexc15.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.524.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload.i, i64 noundef %.sroa.022.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !146051
  br label %.body

bb.ca:                                            ; preds = %bb.j, %bb.ac, %.loopexit125.i.i, %bb.bv
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !noalias !145849, !noundef !14
  %i.kz = add i64 %i.ky, 1
  store i64 %i.kz, ptr %i.kx, align 8, !noalias !145849
  store i64 5, ptr %0, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h75679c4bdcb2749aE.exit.thread", %bb.ca
  ret void

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h75679c4bdcb2749aE.exit.thread": ; preds = %bb.g, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17he37f84912a8d10b4E.exit.i", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h75679c4bdcb2749aE.exit", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h75679c4bdcb2749aE.exit.thread31"
  %.sroa.7.030 = phi ptr [ %.sroa.524.0.copyload.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h75679c4bdcb2749aE.exit.thread31" ], [ %.val.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h75679c4bdcb2749aE.exit" ], [ %.sroa.0.0.i.i, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17he37f84912a8d10b4E.exit.i" ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %.sroa.14.029 = phi i64 [ %i.ap, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h75679c4bdcb2749aE.exit.thread31" ], [ %i.an, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h75679c4bdcb2749aE.exit" ], [ %.sroa.8.0.i.i.i311, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17he37f84912a8d10b4E.exit.i" ], [ %.sroa.8.0.i.i.i311, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.030) ]
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.7.030, i64 272
  %i.lb = getelementptr inbounds nuw [1512 x i8], ptr %i.la, i64 %.sroa.14.029 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1512) %i.j, ptr noundef nonnull align 8 dereferenceable(1512) %i.lb, i64 1512, i1 false), !noalias !146056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1512) %i.lb, ptr noundef nonnull readonly align 8 dereferenceable(1512) %3, i64 1512, i1 false), !noalias !146059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1512) %0, ptr noundef nonnull align 8 dereferenceable(1512) %i.j, i64 1512, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.cb

.body:                                            ; preds = %bb.bz, %.noexc15.i, %bb.bs, %.noexc.i31.i.i, %bb.ar, %bb.aq, %bb.am, %.noexc.i5.i.i.i, %bb.z, %.noexc.i.i.i
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.aq ], [ %lpad.phi.i.i, %bb.bs ], [ %i.ku, %bb.bz ], [ %i.dg, %bb.ar ], [ %i.dc, %bb.am ], [ %i.ku, %.noexc15.i ], [ %i.dc, %.noexc.i5.i.i.i ], [ %i.cf, %.noexc.i.i.i ], [ %lpad.phi.i.i, %.noexc.i31.i.i ], [ %i.cf, %bb.z ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hf2aaa0da2fd264c2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [96 x i8], align 8                ; 16 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0 = alloca [88 x i8], align 8            ; 5 uses
  %.sroa.6 = alloca [7 x i8], align 1             ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 14 uses
  %.sroa.31.i.i = alloca [56 x i8], align 8       ; 13 uses
  %.sroa.923.i.i = alloca [56 x i8], align 8      ; 5 uses
  %.sroa.12.i.i = alloca [7 x i8], align 1        ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.8.i.i = alloca [56 x i8], align 8        ; 5 uses
  %.sroa.11.i.i = alloca [7 x i8], align 1        ; 5 uses
  %.sroa.38.i.i = alloca [7 x i8], align 1        ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146066)
  %i.k = load ptr, ptr %1, align 8, !alias.scope !146064, !noalias !146068, !noundef !14 ; 5 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !146064, !noalias !146068, !noundef !14 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.m, %bb.b ], [ %i.ap, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.ao, %bb.f ] ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 714
  %i.o = load i16, ptr %i.n, align 2, !noalias !146069, !noundef !14 ; 4 uses
  %i.p = zext i16 %i.o to i64                     ; 5 uses
  %.idx = shl nuw nsw i64 %i.p, 4
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.idx
  %i.r = icmp eq i16 %i.o, 0
  br i1 %i.r, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i"

bb.d:                                             ; preds = %endblock
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i237, i64 16 ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.8.0.i.i.i236, 1
  %i.u = icmp eq ptr %i.s, %i.q
  br i1 %i.u, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i.i237 = phi ptr [ %i.s, %bb.d ], [ %.sroa.0.0.i.i, %bb.c ] ; 3 uses
  %.sroa.8.0.i.i.i236 = phi i64 [ %i.t, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.v = load i64, ptr %2, align 1
  %i.w = load i64, ptr %.sroa.01.0.i.i.i237, align 1
  %i.x = tail call i64 @llvm.bswap.i64(i64 %i.v)  ; 2 uses
  %i.y = tail call i64 @llvm.bswap.i64(i64 %i.w)  ; 2 uses
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %loadbb331, label %res_block

res_block:                                        ; preds = %loadbb331, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i"
  %phi.src1 = phi i64 [ %i.x, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i" ], [ %i.ag, %loadbb331 ]
  %phi.src2 = phi i64 [ %i.y, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i" ], [ %i.ah, %loadbb331 ]
  %i.aa = icmp ult i64 %phi.src1, %phi.src2
  %i.ab = select i1 %i.aa, i32 -1, i32 1
  br label %endblock

loadbb331:                                        ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i"
  %i.ac = getelementptr i8, ptr %2, i64 8
  %i.ad = getelementptr i8, ptr %.sroa.01.0.i.i.i237, i64 8
  %i.ae = load i64, ptr %i.ac, align 1
  %i.af = load i64, ptr %i.ad, align 1
  %i.ag = tail call i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ah = tail call i64 @llvm.bswap.i64(i64 %i.af) ; 2 uses
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb331
  %phi.res = phi i32 [ 0, %loadbb331 ], [ %i.ab, %res_block ]
  %i.aj = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  switch i8 %i.aj, label %bb.e [
    i8 -1, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i._crit_edge"
    i8 0, label %bb.bt
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %endblock
  unreachable

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i._crit_edge": ; preds = %bb.d, %endblock, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ %.sroa.8.0.i.i.i236, %endblock ] ; 13 uses
  %i.ak = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.ak, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i._crit_edge"
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 720
  %i.am = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.sroa.4.0.i.ph.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !146075, !nonnull !14, !noundef !14
  %i.ap = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

.thread:                                          ; preds = %bb.a
  %.sroa.7.8.copyload9 = load ptr, ptr %2, align 1, !alias.scope !146068, !noalias !146064
  %.sroa.11.8..sroa_idx12 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.11.8.copyload13 = load i64, ptr %.sroa.11.8..sroa_idx12, align 1, !alias.scope !146068, !noalias !146064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !146078
  %i.aq = tail call noalias noundef align 8 dereferenceable_or_null(720) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 720, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !146078 ; 7 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.h, label %bb.i, !prof !121

bb.g:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i._crit_edge"
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 714
  %.sroa.7.8.copyload8 = load ptr, ptr %2, align 1, !alias.scope !146068, !noalias !146064 ; 4 uses
  %.sroa.11.8..sroa_idx10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.11.8.copyload11 = load i64, ptr %.sroa.11.8..sroa_idx10, align 1, !alias.scope !146068, !noalias !146064 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146083)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.31.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !146084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146090)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !146084
  %i.at = icmp ugt i16 %i.o, 10
  br i1 %i.at, label %bb.j, label %bb.k

bb.h:                                             ; preds = %.thread
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 720) #80
          to label %.noexc.i unwind label %bb.bo, !noalias !146078

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 704
  store ptr null, ptr %i.au, align 8, !noalias !146078
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 714
  store ptr %i.aq, ptr %1, align 8, !noalias !146078
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.aw, align 8, !noalias !146078
  store i16 1, ptr %i.av, align 2, !noalias !146093
  store ptr %.sroa.7.8.copyload9, ptr %i.aq, align 8, !noalias !146098
  %.sroa.9.8..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.sroa.11.8.copyload13, ptr %.sroa.9.8..sroa_idx27, align 8, !noalias !146098
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  br label %bb.br

bb.j:                                             ; preds = %bb.g
  %i.ay = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  store ptr %.sroa.0.0.i.i, ptr %i.g, align 8, !noalias !146099
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %i.az, align 8, !noalias !146099
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  br i1 %i.ay, label %.invoke.i.i.i, label %bb.n

bb.k:                                             ; preds = %bb.g
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.p
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.ph.i.i ; 5 uses
  br i1 %.not.i.i.i.i.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %.sroa.7.8.copyload8, ptr %i.bb, align 1, !noalias !146098
  %.sroa.9.8..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %.sroa.11.8.copyload11, ptr %.sroa.9.8..sroa_idx21, align 1, !noalias !146098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146103)
  br label %.thread.i.i

bb.m:                                             ; preds = %bb.k
  %i.bc = add nuw nsw i64 %.sroa.4.0.i.ph.i.i, 1  ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %i.bc
  %i.be = sub nuw nsw i64 %i.p, %.sroa.4.0.i.ph.i.i ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull align 1 %i.bb, i64 %i.bf, i1 false), !alias.scope !146106, !noalias !146109
  store ptr %.sroa.7.8.copyload8, ptr %i.bb, align 1, !noalias !146098
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %.sroa.11.8.copyload11, ptr %.sroa.9.8..sroa_idx, align 1, !noalias !146098
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.bh = getelementptr inbounds nuw [48 x i8], ptr %i.bg, i64 %.sroa.4.0.i.ph.i.i
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.bg, i64 %i.bc
  %i.bj = mul nuw nsw i64 %i.be, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr nonnull align 8 %i.bh, i64 %i.bj, i1 false), !alias.scope !146116, !noalias !146118
  br label %.thread.i.i

bb.n:                                             ; preds = %bb.j
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.o [
    i64 5, label %.invoke.i.i.i
    i64 6, label %bb.p
  ]

.invoke.i.i.i:                                    ; preds = %bb.n, %bb.j
  %.sink.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %bb.n ], [ 4, %bb.j ]
  store i64 %.sink.i.i.i, ptr %i.ba, align 8, !noalias !146099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !146099
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17ha6e9e7c975baccd1E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.q unwind label %bb.x, !noalias !146099

bb.o:                                             ; preds = %bb.n
  store i64 6, ptr %i.ba, align 8, !noalias !146099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !146099
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17ha6e9e7c975baccd1E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.s unwind label %bb.x, !noalias !146099

bb.p:                                             ; preds = %bb.n
  store i64 5, ptr %i.ba, align 8, !noalias !146099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !146099
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17ha6e9e7c975baccd1E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.r unwind label %bb.x, !noalias !146099

bb.q:                                             ; preds = %.invoke.i.i.i
  %i.bk = load ptr, ptr %i.f, align 8, !noalias !146099, !nonnull !14, !noundef !14
  br label %bb.t

bb.r:                                             ; preds = %bb.s, %bb.p
  %.sroa.9.1.i.i.i = phi i64 [ %i.bn, %bb.s ], [ 0, %bb.p ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !146099, !nonnull !14, !noundef !14
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.bn = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.r

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.10.0.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %bb.q ], [ %.sroa.9.1.i.i.i, %bb.r ] ; 6 uses
  %.sroa.021.0.i.i.i = phi ptr [ %i.bk, %bb.q ], [ %i.bm, %bb.r ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.021.0.i.i.i, i64 714 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !noalias !146119, !noundef !14 ; 2 uses
  %i.bq = zext i16 %i.bp to i64                   ; 2 uses
  %.not.i41.not.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i, %i.bq
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.0.i.i.i, i64 %.sroa.10.0.i.i.i ; 5 uses
  br i1 %.not.i41.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %.sroa.7.8.copyload8, ptr %i.br, align 1, !noalias !146098
  %.sroa.9.8..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %.sroa.11.8.copyload11, ptr %.sroa.9.8..sroa_idx23, align 1, !noalias !146098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146125)
  br label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.bs = add nuw nsw i64 %.sroa.10.0.i.i.i, 1    ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.0.i.i.i, i64 %i.bs
  %i.bu = sub nuw nsw i64 %i.bq, %.sroa.10.0.i.i.i ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull align 1 %i.br, i64 %i.bv, i1 false), !alias.scope !146128, !noalias !146131
  store ptr %.sroa.7.8.copyload8, ptr %i.br, align 1, !noalias !146098
  %.sroa.9.8..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %.sroa.11.8.copyload11, ptr %.sroa.9.8..sroa_idx25, align 1, !noalias !146098
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.021.0.i.i.i, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %.sroa.10.0.i.i.i
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %i.bs
  %i.bz = mul nuw nsw i64 %i.bu, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.by, ptr nonnull align 8 %i.bx, i64 %i.bz, i1 false), !alias.scope !146133, !noalias !146135
  br label %bb.aa

bb.w:                                             ; preds = %bb.z
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !146136
  unreachable

.thread.i.i:                                      ; preds = %bb.m, %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 176
  %i.cc = add nuw nsw i16 %i.o, 1
  %i.cd = getelementptr inbounds nuw [48 x i8], ptr %i.cb, i64 %.sroa.4.0.i.ph.i.i
end_hunk_9
begin_hunk_10_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hfacd8d50b1c704deE":bb.a
  %i.je = trunc nuw nsw i64 %i.iw to i16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 272
  store i16 %i.je, ptr %i.jf, align 8, !noalias !146511
  %i.jg = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i, 3 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.jb
  %i.ji = load ptr, ptr %i.jh, align 8, !noalias !146506, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %i.hn, ptr %i.ji, align 8, !noalias !146511
  %i.jj = trunc nuw nsw i64 %i.jb to i16
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 272
  store i16 %i.jj, ptr %i.jk, align 8, !noalias !146511
  %i.jl = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i, 4 ; 2 uses
  %i.jm = icmp ult i64 %.sroa.0.06.i.i52.i.i.i, 9
  tail call void @llvm.assume(i1 %i.jm)
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.jg
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !146506, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %i.hn, ptr %i.jo, align 8, !noalias !146511
  %i.jp = trunc nuw nsw i64 %i.jg to i16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 272
  store i16 %i.jp, ptr %i.jq, align 8, !noalias !146511
  %exitcond.not.i.i53.i.i.i.3 = icmp eq i64 %i.jl, %i.ij
  br i1 %exitcond.not.i.i53.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit55.i.i.i", label %.lr.ph.i.i51.i.i.i

bb.aw:                                            ; preds = %bb.aq
  %i.jr = add nsw i64 %i.db, -7
  br label %bb.au

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit55.i.i.i": ; preds = %.lr.ph.i.i51.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17he161b0355e3abccdE.exit.i50.i.i.i
  %.sroa.859.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.859.0..sroa_idx.i.i, align 8, !noalias !146513
  %.sroa.859.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.859.sroa.6.0..sroa.859.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !146513
  %.sroa.859.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.859.sroa.7.0..sroa.859.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !146513
  %.sroa.862.0.copyload.i.i = load ptr, ptr %.sroa.862.0..sroa_idx.i.i, align 8, !noalias !146513
  %.sroa.965.0.copyload.i.i = load i64, ptr %.sroa.965.0..sroa_idx.i.i, align 8, !noalias !146513
  br label %bb.az

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit47.i.i.i": ; preds = %.lr.ph.i.i43.i.i.i.prol.loopexit, %.lr.ph.i.i43.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17he161b0355e3abccdE.exit.i42.i.i.i
  %.sroa.859.sroa.0.0.copyload118.i.i = load ptr, ptr %.sroa.859.0..sroa_idx.i.i, align 8, !noalias !146513
  %.sroa.859.sroa.6.0.copyload119.i.i = load i64, ptr %.sroa.859.sroa.6.0..sroa.859.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !146513
  %.sroa.859.sroa.7.0.copyload120.i.i = load i8, ptr %.sroa.859.sroa.7.0..sroa.859.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !146513
  %.sroa.965.0.copyload67.i.i = load i64, ptr %.sroa.965.0..sroa_idx.i.i, align 8, !noalias !146513
  %.sroa.1068.0.copyload70.i.i = load ptr, ptr %i.ci, align 8, !noalias !146513
  br label %bb.az

.loopexit.i.i:                                    ; preds = %bb.ar, %bb.aq, %.invoke.i29.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i.i:                           ; preds = %bb.aj
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.js = icmp eq i64 %.sroa.03.0205.i.i, 0
  br i1 %i.js, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit14.i", label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0204.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0204.i.i, i64 noundef %.sroa.03.0205.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !146514
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit14.i"

.thread142.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17he161b0355e3abccdE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !146359
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17ha8551eecb19842b4E.exit"

bb.az:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit47.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit55.i.i.i"
  %.sroa.1068.0.i.i = phi ptr [ %i.hn, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit55.i.i.i" ], [ %.sroa.1068.0.copyload70.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit47.i.i.i" ] ; 3 uses
  %.sroa.965.0.i.i = phi i64 [ %.sroa.965.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit55.i.i.i" ], [ %.sroa.965.0.copyload67.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit47.i.i.i" ]
  %.sroa.862.0.i.i = phi ptr [ %.sroa.862.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit55.i.i.i" ], [ %i.fj, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit47.i.i.i" ] ; 3 uses
  %.sroa.859.sroa.0.0.i.i = phi ptr [ %.sroa.859.sroa.0.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit55.i.i.i" ], [ %.sroa.859.sroa.0.0.copyload118.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit47.i.i.i" ] ; 2 uses
  %.sroa.859.sroa.6.0.i.i = phi i64 [ %.sroa.859.sroa.6.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit55.i.i.i" ], [ %.sroa.859.sroa.6.0.copyload119.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit47.i.i.i" ] ; 2 uses
  %.sroa.859.sroa.7.0.i.i = phi i8 [ %.sroa.859.sroa.7.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit55.i.i.i" ], [ %.sroa.859.sroa.7.0.copyload120.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h3f0b31d1e9ad2d55E.exit47.i.i.i" ] ; 2 uses
  %.sroa.056.0.i.i = load i64, ptr %i.a, align 8, !noalias !146513 ; 3 uses
  %.sroa.1171.0.copyload73.i.i = load i64, ptr %.sroa.1171.0..sroa_idx.i.i, align 8, !noalias !146513 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !146438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !146359
  %.not16.i.i = icmp eq i64 %.sroa.056.0.i.i, -9223372036854775808
  br i1 %.not16.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17ha8551eecb19842b4E.exit", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.862.0.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1068.0.i.i) ]
  %i.jt = load ptr, ptr %.sroa.862.0.i.i, align 8, !noalias !146407, !noundef !14 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.ai

bb.bb:                                            ; preds = %bb.ad
  store i16 1, ptr %i.co, align 2, !noalias !146425
  %i.ju = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %.sroa.03.0.lcssa.i.i, ptr %i.ju, align 8, !noalias !146410
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %.sroa.8.0.lcssa.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !noalias !146410
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %.sroa.9.0.lcssa.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 8, !noalias !146410
  %i.jv = getelementptr inbounds nuw i8, ptr %i.cl, i64 276
  store i8 %.sroa.913.0.lcssa.i.i, ptr %i.jv, align 4, !noalias !146425
  %i.jw = getelementptr inbounds nuw i8, ptr %i.cl, i64 296
  store ptr %.sroa.16.0.lcssa.i.i, ptr %i.jw, align 8, !noalias !146425
  store ptr %i.cl, ptr %.sroa.16.0.lcssa.i.i, align 8, !noalias !146519
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.16.0.lcssa.i.i, i64 272
  store i16 1, ptr %i.jx, align 8, !noalias !146519
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17ha8551eecb19842b4E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit14.i": ; preds = %bb.bd, %bb.bc, %bb.ay, %bb.ax, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.v, %bb.u
  %.pn30.i = phi { ptr, i32 } [ %i.jy, %bb.bd ], [ %i.jy, %bb.bc ], [ %lpad.phi.i.i, %bb.ay ], [ %i.ct, %bb.af ], [ %i.ct, %bb.ae ], [ %i.bz, %bb.u ], [ %lpad.phi.i.i, %bb.ax ], [ %i.bz, %bb.v ], [ %i.cv, %bb.ag ], [ %i.cv, %bb.ah ]
  resume { ptr, i32 } %.pn30.i

bb.bc:                                            ; preds = %bb.i
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = icmp eq i64 %.sroa.022.0.copyload.i, 0
  br i1 %i.jz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit14.i", label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.524.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload.i, i64 noundef %.sroa.022.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !146522
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit14.i"

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17ha8551eecb19842b4E.exit": ; preds = %bb.az, %bb.j, %.thread.i.i, %bb.w, %.thread142.i.i, %bb.bb
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !noalias !146350, !noundef !14
  %i.kc = add i64 %i.kb, 1
  store i64 %i.kc, ptr %i.ka, align 8, !noalias !146350
  br label %bb.be

bb.be:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h714eab9a7c790d8aE.exit.thread", %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17ha8551eecb19842b4E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6remove17h42b88dc5c5fd893eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [88 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [88 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 8 uses
  %i.g = alloca [1 x i8], align 1                 ; 6 uses
  %.sroa.0 = alloca [56 x i8], align 8            ; 2 uses
  %.sroa.7 = alloca [7 x i8], align 1             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146527)
  %i.h = load ptr, ptr %1, align 8, !alias.scope !146527, !noalias !146530, !noundef !14 ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$12remove_entry17h9a08dc6987ae8c0eE.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !146527, !noalias !146530, !noundef !14 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.sroa.3.0.i.i = phi i64 [ %i.am, %bb.f ], [ %i.j, %bb.b ] ; 4 uses
  %.sroa.0.0.i.i = phi ptr [ %i.al, %bb.f ], [ %i.h, %bb.b ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 714
  %i.l = load i16, ptr %i.k, align 2, !noalias !146533, !noundef !14 ; 2 uses
  %i.m = zext i16 %i.l to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.m, 4
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.idx
  %i.o = icmp eq i16 %i.l, 0
  br i1 %i.o, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i"

bb.d:                                             ; preds = %endblock
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i52, i64 16 ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.8.0.i.i.i51, 1
  %i.r = icmp eq ptr %i.p, %i.n
  br i1 %i.r, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i.i52 = phi ptr [ %i.p, %bb.d ], [ %.sroa.0.0.i.i, %bb.c ] ; 3 uses
  %.sroa.8.0.i.i.i51 = phi i64 [ %i.q, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %i.s = load i64, ptr %2, align 1
  %i.t = load i64, ptr %.sroa.01.0.i.i.i52, align 1
  %i.u = tail call i64 @llvm.bswap.i64(i64 %i.s)  ; 2 uses
  %i.v = tail call i64 @llvm.bswap.i64(i64 %i.t)  ; 2 uses
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %loadbb79, label %res_block

res_block:                                        ; preds = %loadbb79, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i"
  %phi.src1 = phi i64 [ %i.u, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i" ], [ %i.ad, %loadbb79 ]
  %phi.src2 = phi i64 [ %i.v, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i" ], [ %i.ae, %loadbb79 ]
  %i.x = icmp ult i64 %phi.src1, %phi.src2
  %i.y = select i1 %i.x, i32 -1, i32 1
  br label %endblock

loadbb79:                                         ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i"
  %i.z = getelementptr i8, ptr %2, i64 8
  %i.aa = getelementptr i8, ptr %.sroa.01.0.i.i.i52, i64 8
  %i.ab = load i64, ptr %i.z, align 1
  %i.ac = load i64, ptr %i.aa, align 1
  %i.ad = tail call i64 @llvm.bswap.i64(i64 %i.ab) ; 2 uses
  %i.ae = tail call i64 @llvm.bswap.i64(i64 %i.ac) ; 2 uses
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb79
  %phi.res = phi i32 [ 0, %loadbb79 ], [ %i.y, %res_block ]
  %i.ag = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  switch i8 %i.ag, label %bb.e [
    i8 -1, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i._crit_edge"
    i8 0, label %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h08ec211979fd0a1aE.exit.i"
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %endblock
  unreachable

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i._crit_edge": ; preds = %bb.d, %endblock, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %.sroa.8.0.i.i.i51, %endblock ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.ah, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$12remove_entry17h9a08dc6987ae8c0eE.exit.thread", label %bb.f

bb.f:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i._crit_edge"
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 720
  %i.aj = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.4.0.i.ph.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !146539, !nonnull !14, !noundef !14
  %i.am = add i64 %.sroa.3.0.i.i, -1
  %indvar.next = add i64 %indvar, 1
  br label %bb.c

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h08ec211979fd0a1aE.exit.i": ; preds = %endblock
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !146542
  store i8 0, ptr %i.g, align 1, !noalias !146542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !146542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !146542
  %i.an = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h08ec211979fd0a1aE.exit.i"
  store ptr %.sroa.0.0.i.i, ptr %i.d, align 8, !noalias !146546
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !146546
  %.sroa.4.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.8.0.i.i.i51, ptr %.sroa.4.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !146546
  call fastcc void @"_ZN5alloc11collections5btree6remove259_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14remove_leaf_kv17h21c3f0aa5571ea4fE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 1 dereferenceable(1) %i.g), !noalias !146551
  br label %"_ZN5alloc11collections5btree6remove269_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_kv_tracking17hae20423973417498E.exit.i.i"

bb.h:                                             ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h08ec211979fd0a1aE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !146546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !146546
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 720
  %i.aq = icmp samesign ult i64 %.sroa.8.0.i.i.i51, 12
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.sroa.8.0.i.i.i51
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !146552, !nonnull !14, !noundef !14 ; 3 uses
  %i.at = add i64 %.sroa.3.0.i.i, -1              ; 4 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17ha8aa62cf2fa7ecc0E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h
  %i.av = add i64 %i.j, -2
  %i.aw = sub i64 %i.av, %indvar
  %xtraiter = and i64 %i.at, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.03.06.i.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.prol ], [ %i.at, %.lr.ph.i.i.i.i.i.preheader ]
  %.sroa.04.05.i.i.i.i.i.prol = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.prol ], [ %i.as, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i.prol, i64 714
  %i.ay = load i16, ptr %i.ax, align 2, !noalias !146559, !noundef !14 ; 2 uses
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i.prol, i64 720
  %i.bb = icmp ult i16 %i.ay, 12
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !146562, !nonnull !14, !noundef !14 ; 3 uses
  %i.be = add i64 %.sroa.03.06.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !146565

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa57.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.03.06.i.i.i.i.i.unr = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.04.05.i.i.i.i.i.unr = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.aw, 7
  br i1 %i.bf, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17ha8aa62cf2fa7ecc0E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.03.06.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sroa.04.05.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i, i64 714
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !146559, !noundef !14 ; 2 uses
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i, i64 720
  %i.bk = icmp ult i16 %i.bh, 12
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bi
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !146562, !nonnull !14, !noundef !14 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 714
  %i.bo = load i16, ptr %i.bn, align 2, !noalias !146559, !noundef !14 ; 2 uses
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 720
  %i.br = icmp ult i16 %i.bo, 12
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !146562, !nonnull !14, !noundef !14 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 714
  %i.bv = load i16, ptr %i.bu, align 2, !noalias !146559, !noundef !14 ; 2 uses
  %i.bw = zext nneg i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 720
  %i.by = icmp ult i16 %i.bv, 12
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !146562, !nonnull !14, !noundef !14 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 714
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !146559, !noundef !14 ; 2 uses
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 720
  %i.cf = icmp ult i16 %i.cc, 12
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cd
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !146562, !nonnull !14, !noundef !14 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 714
  %i.cj = load i16, ptr %i.ci, align 2, !noalias !146559, !noundef !14 ; 2 uses
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 720
  %i.cm = icmp ult i16 %i.cj, 12
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !146562, !nonnull !14, !noundef !14 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 714
  %i.cq = load i16, ptr %i.cp, align 2, !noalias !146559, !noundef !14 ; 2 uses
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 720
  %i.ct = icmp ult i16 %i.cq, 12
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cr
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !146562, !nonnull !14, !noundef !14 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 714
  %i.cx = load i16, ptr %i.cw, align 2, !noalias !146559, !noundef !14 ; 2 uses
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 720
  %i.da = icmp ult i16 %i.cx, 12
  tail call void @llvm.assume(i1 %i.da)
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !146562, !nonnull !14, !noundef !14 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 714
  %i.de = load i16, ptr %i.dd, align 2, !noalias !146559, !noundef !14 ; 2 uses
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 720
  %i.dh = icmp ult i16 %i.de, 12
  tail call void @llvm.assume(i1 %i.dh)
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.df
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !146562, !nonnull !14, !noundef !14 ; 2 uses
  %i.dk = add i64 %.sroa.03.06.i.i.i.i.i, -8      ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17ha8aa62cf2fa7ecc0E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17ha8aa62cf2fa7ecc0E.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.h
  %.sroa.04.0.lcssa.i.i.i.i.i = phi ptr [ %i.as, %bb.h ], [ %.lcssa57.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.dj, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i, i64 714
  %i.dn = load i16, ptr %i.dm, align 2, !noalias !146559, !noundef !14 ; 2 uses
  %i.do = zext i16 %i.dn to i64
  %.not.i.i.i.i = icmp eq i16 %i.dn, 0            ; 2 uses
  %i.dp = add nsw i64 %i.do, -1
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i64 undef, i64 %i.dp
  %spec.select54.i.i.i.i = select i1 %.not.i.i.i.i, ptr null, ptr %.sroa.04.0.lcssa.i.i.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select54.i.i.i.i) ]
  store ptr %spec.select54.i.i.i.i, ptr %i.c, align 8, !noalias !146566
  %.sroa.7.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.7.0..sroa_idx5.i.i.i.i, align 8, !noalias !146566
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %spec.select.i.i.i.i, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i.i, align 8, !noalias !146566
  call fastcc void @"_ZN5alloc11collections5btree6remove259_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14remove_leaf_kv17h21c3f0aa5571ea4fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 1 dereferenceable(1) %i.g), !noalias !146567
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.036.0.copyload.i.i.i.i = load ptr, ptr %i.dq, align 8, !noalias !146566, !nonnull !14, !noundef !14 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !146566 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !146566 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload.i.i.i.i, i64 714
  %i.ds = load i16, ptr %i.dr, align 2, !noalias !146568, !noundef !14
  %i.dt = zext i16 %i.ds to i64
  %i.du = icmp ult i64 %.sroa.3.0.copyload.i.i.i.i, %i.dt
  br i1 %i.du, label %bb.i, label %.lr.ph.i33.i.i.i.i

.lr.ph.i33.i.i.i.i:                               ; preds = %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17ha8aa62cf2fa7ecc0E.exit.i.i.i.i", %.lr.ph.i33.i.i.i.i
  %.sroa.0.038.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i33.i.i.i.i ], [ %.sroa.036.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17ha8aa62cf2fa7ecc0E.exit.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i = phi i64 [ %i.dx, %.lr.ph.i33.i.i.i.i ], [ %.sroa.2.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17ha8aa62cf2fa7ecc0E.exit.i.i.i.i" ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i, i64 704
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !146572, !nonnull !14, !noundef !14 ; 3 uses
  %i.dx = add i64 %.sroa.5.037.i.i.i.i.i, 1       ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i, i64 712
  %i.dz = load i16, ptr %i.dy, align 8, !noalias !146572 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 714
  %i.eb = load i16, ptr %i.ea, align 2, !noalias !146568, !noundef !14
  %i.ec = icmp ult i16 %i.dz, %i.eb
  br i1 %i.ec, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i33.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i33.i.i.i.i
  %i.ed = zext i16 %i.dz to i64
end_hunk_10
begin_hunk_11_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h056ee9119ae7aa28E":bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !193927)
  call void @llvm.experimental.noalias.scope.decl(metadata !193930)
  call void @llvm.experimental.noalias.scope.decl(metadata !193933)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !193936
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17hbff30297a975e291E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !193940

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.as = load i8, ptr %i.k, align 8, !range !1313, !noalias !193936, !noundef !14
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !193936, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !193936
  br label %bb.r

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.aw = load i8, ptr %i.ao, align 1, !range !1313, !noalias !193936, !noundef !14
  %i.ax = trunc nuw i8 %i.aw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !193936
  br i1 %i.ax, label %bb.k, label %bb.ac

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !193936
  %i.ay = load ptr, ptr %i.n, align 8, !alias.scope !193941, !noalias !193942, !nonnull !14, !align !240, !noundef !14 ; 7 uses
  invoke fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_enum17h6d72198561779d13E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ay)
          to label %.noexc5.i.i.i unwind label %.loopexit.i.i.i

.noexc5.i.i.i:                                    ; preds = %bb.k
  %i.az = load i8, ptr %i.j, align 8, !range !1313, !noalias !193936, !noundef !14
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc5.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !193936, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !193936
  br label %bb.r

bb.m:                                             ; preds = %.noexc5.i.i.i
  %i.bd = load i8, ptr %i.ap, align 1, !range !1330, !noalias !193936, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !193936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !193943
  call void @llvm.experimental.noalias.scope.decl(metadata !193944)
  call void @llvm.experimental.noalias.scope.decl(metadata !193947)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !193950, !noalias !193953, !noundef !14 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !193958, !noalias !193959 ; 2 uses
  %i.bh = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !193950, !noalias !193953, !nonnull !14, !align !584, !noundef !14
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.i
  %i.bk = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bn, %bb.o ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !193960)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !193961, !noundef !14
  switch i8 %i.bm, label %bb.p [
    i8 32, label %bb.o
    i8 10, label %bb.o
    i8 9, label %bb.o
    i8 13, label %bb.o
    i8 58, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i.i.i.i.i"
  ], !prof !3649

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %i.bn = add i64 %i.bk, 1                        ; 3 uses
  store i64 %i.bn, ptr %i.be, align 8, !alias.scope !193962, !noalias !193959
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bn, %i.bg
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.n

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.m, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !193965
  store i64 3, ptr %i.h, align 8, !noalias !193965
  %i.bo = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ay, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !193940

.noexc6.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !193965
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.thread.i.i.i.i.i"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !193965
  store i64 6, ptr %i.i, align 8, !noalias !193965
  %i.bp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ay, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !193940

.noexc7.i.i.i:                                    ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !193965
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.thread.i.i.i.i.i"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i.i.i.i.i": ; preds = %bb.n
  %i.bq = add i64 %i.bk, 1
  store i64 %i.bq, ptr %i.be, align 8, !alias.scope !193966, !noalias !193969
  invoke fastcc void @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$11deserialize17h12ab9427405b4b48E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ay)
          to label %.noexc8.i.i.i unwind label %.loopexit.i.i.i, !noalias !193940

.noexc8.i.i.i:                                    ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i.i.i.i.i"
  %.pre.i.i.i.i.i = load i32, ptr %i.l, align 8, !range !4647, !noalias !193943
  %i.br = trunc nuw i32 %.pre.i.i.i.i.i to i1
  br i1 %i.br, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i._crit_edge.i.i.i.i", label %bb.t

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i._crit_edge.i.i.i.i": ; preds = %.noexc8.i.i.i
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !193943
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.thread.i.i.i.i.i"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.thread.i.i.i.i.i": ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i._crit_edge.i.i.i.i", %.noexc7.i.i.i, %.noexc6.i.i.i
  %i.bs = phi ptr [ %.pre.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i._crit_edge.i.i.i.i" ], [ %i.bo, %.noexc6.i.i.i ], [ %i.bp, %.noexc7.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !193943
  br label %bb.r

.loopexit.i.i.i:                                  ; preds = %bb.k, %bb.ab, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i.i.i.i.i", %bb.h
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i.i.i:                         ; preds = %bb.p, %.loopexit.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke void @"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h007c9cac1a2fe6b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #81
          to label %common.resume.i.i unwind label %bb.ae, !noalias !193940

bb.r:                                             ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.thread.i.i.i.i.i", %bb.l, %bb.i
  %.sroa.1210.0.ph.i.i.i = phi ptr [ %i.bc, %bb.l ], [ %i.bs, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.thread.i.i.i.i.i" ], [ %i.av, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1210.0.ph.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !193970)
  call void @llvm.experimental.noalias.scope.decl(metadata !193973)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !193976
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !193977, !noalias !193923 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he3b1554cf22fbf4aE.exit.i.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !193977, !noalias !193923
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !193977, !noalias !193923 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !193978, !noalias !193981
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !193978, !noalias !193981
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !193978, !noalias !193981
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !193978, !noalias !193981
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !193978, !noalias !193981
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !193978, !noalias !193981
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he3b1554cf22fbf4aE.exit.i.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he3b1554cf22fbf4aE.exit.i.i.i.i.i": ; preds = %bb.s, %bb.r
  %.sink23.i.i.i.i.i.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i, %bb.s ], [ 0, %bb.r ]
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.g, align 8, !alias.scope !193978, !noalias !193981
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.bt, align 8, !alias.scope !193978, !noalias !193981
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i, ptr %i.bu, align 8, !alias.scope !193978, !noalias !193981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !193983
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha07a907674b6aad3E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g), !noalias !193988
  %i.bv = load ptr, ptr %i.f, align 8, !noalias !193983, !noundef !14
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not5.i.i.i.i.i.i.i, label %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h007c9cac1a2fe6b2E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he3b1554cf22fbf4aE.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !193983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !193983
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha07a907674b6aad3E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g), !noalias !193988
  %i.bw = load ptr, ptr %i.f, align 8, !noalias !193983, !noundef !14
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h007c9cac1a2fe6b2E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h007c9cac1a2fe6b2E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he3b1554cf22fbf4aE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !193983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !193976
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hbaf6feac2f96908eE.exit.i.i"

bb.t:                                             ; preds = %.noexc8.i.i.i
  %i.bx = load i32, ptr %i.aq, align 4, !noalias !193943, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !193943
  call void @llvm.experimental.noalias.scope.decl(metadata !193989)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !193923
  call void @llvm.experimental.noalias.scope.decl(metadata !193992)
  %i.by = load ptr, ptr %i.m, align 8, !alias.scope !193995, !noalias !193996, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = load i64, ptr %i.ar, align 8, !alias.scope !193995, !noalias !193996, !noundef !14
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %bb.u
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.bz, %bb.u ], [ %i.cp, %bb.y ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.by, %bb.u ], [ %i.co, %bb.y ] ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !193998, !noundef !14 ; 2 uses
  %i.cd = zext i16 %i.cc to i64                   ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cd
  %i.cf = icmp eq i16 %i.cc, 0
  br i1 %i.cf, label %._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i63, i64 1 ; 2 uses
  %i.ch = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i62, 1
  %i.ci = icmp eq ptr %i.cg, %i.ce
  br i1 %i.ci, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %bb.w
  %.sroa.03.0.i.i.i.i.i.i.i63 = phi ptr [ %i.cg, %bb.w ], [ %i.ca, %bb.v ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i62 = phi i64 [ %i.ch, %bb.w ], [ 0, %bb.v ] ; 3 uses
  %.val6.i.i.i.i.i.i.i = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i63, align 1, !range !1330, !noalias !193998, !noundef !14
  %i.cj = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 5) %i.bd, i8 %.val6.i.i.i.i.i.i.i)
  switch i8 %i.cj, label %bb.x [
    i8 -1, label %._crit_edge
    i8 0, label %bb.aa
    i8 1, label %bb.w
  ]

bb.x:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.w, %.lr.ph, %bb.v
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i64 [ %i.cd, %bb.v ], [ %i.cd, %bb.w ], [ %.sroa.8.0.i.i.i.i.i.i.i62, %.lr.ph ] ; 3 uses
  %i.ck = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.ck, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 72
  %i.cm = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !194001, !nonnull !14, !noundef !14
  %i.cp = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.v

bb.z:                                             ; preds = %._crit_edge
  %i.cq = ptrtoint ptr %.sroa.0.0.i.i.i.i.i.i to i64
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.sroa.8.0.i.i.i.i.i.i.i62
  store i32 %i.bx, ptr %i.cs, align 4, !noalias !194004
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z, %bb.t
  %.sroa.12.0.ph.i.i.i.i = phi i64 [ undef, %bb.t ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.z ]
  %.sroa.7.0.ph.i.i.i.i = phi i64 [ 0, %bb.t ], [ %i.cq, %bb.z ]
  store ptr %i.m, ptr %i.e, align 8, !noalias !194005
  store i64 %.sroa.7.0.ph.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !194005
  store i64 0, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !194005
  store i64 %.sroa.12.0.ph.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !noalias !194005
  store i8 %i.bd, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !194005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !194005
  invoke fastcc void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h2afa6a4f414901c9E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e, i32 noundef %i.bx)
          to label %.noexc9.i.i.i unwind label %.loopexit.i.i.i, !noalias !193940

.noexc9.i.i.i:                                    ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !194005
  br label %bb.ad

bb.ac:                                            ; preds = %bb.j
  %.sroa.729.8.copyload.i.i = load ptr, ptr %i.m, align 8, !noalias !194006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.930.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !noalias !194006
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hbaf6feac2f96908eE.exit.i.i"

bb.ad:                                            ; preds = %.noexc9.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !193923
  br label %bb.h

common.resume.i.i:                                ; preds = %bb.as, %bb.ai, %bb.q
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.q ], [ %i.do, %bb.as ], [ %i.dc, %bb.ai ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.ae:                                            ; preds = %bb.q
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !193940
  unreachable

"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hbaf6feac2f96908eE.exit.i.i": ; preds = %bb.ac, %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h007c9cac1a2fe6b2E.exit.i.i.i"
  %.sroa.028.0.i.i = phi i64 [ 1, %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h007c9cac1a2fe6b2E.exit.i.i.i" ], [ 0, %bb.ac ] ; 2 uses
  %.sroa.729.0.i.i = phi ptr [ %.sroa.1210.0.ph.i.i.i, %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h007c9cac1a2fe6b2E.exit.i.i.i" ], [ %.sroa.729.8.copyload.i.i, %bb.ac ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !193923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !193917
  %i.cu = load i8, ptr %i.ad, align 8, !range !1313, !alias.scope !193919, !noalias !193918, !noundef !14
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !193917
  store i64 24, ptr %i.p, align 8, !noalias !193917
  %i.cw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !193918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !193917
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !alias.scope !193918, !noalias !193919
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h289b4afff8b3ad30E.exit"

bb.ag:                                            ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hbaf6feac2f96908eE.exit.i.i"
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !193919, !noalias !193918, !noundef !14
  %i.da = add i8 %i.cz, 1
  store i8 %i.da, ptr %i.cy, align 1, !alias.scope !193919, !noalias !193918
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hbaf6feac2f96908eE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !193917
  store i64 %.sroa.028.0.i.i, ptr %i.o, align 8, !noalias !193917
  %.sroa.729.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.729.0.i.i, ptr %.sroa.729.0..sroa_idx.i.i, align 8, !noalias !193917
  %.sroa.930.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.930.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.930.i.i, i64 16, i1 false), !noalias !193917
  %i.db = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h7f477aab3cffc5f9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.aj unwind label %bb.ai, !noalias !193918 ; 9 uses

bb.ai:                                            ; preds = %bb.ah
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr162drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$C$serde_json..error..Error$GT$$GT$17h04cb2d3681d8f757E"(ptr noalias noundef align 8 dereferenceable(32) %i.o) #81
          to label %common.resume.i.i unwind label %bb.ao, !noalias !193918

bb.aj:                                            ; preds = %bb.ah
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.930.0..sroa_idx.i.i, align 8, !noalias !193917 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !193917 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !193917
  %i.dd = trunc nuw i64 %.sroa.028.0.i.i to i1
  br i1 %i.dd, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq ptr %i.db, null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.930.i.i)
  br i1 %.not.i.i, label %bb.at, label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.729.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.930.i.i)
  %.not46.i.i = icmp eq ptr %i.db, null
  br i1 %.not46.i.i, label %.thread40.i.i, label %bb.ap

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !194007
  %.not.i.i.i24.i.i = icmp eq ptr %.sroa.729.0.i.i, null
  br i1 %.not.i.i.i24.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he3b1554cf22fbf4aE.exit.i.i.i.i", label %bb.an

bb.an:                                            ; preds = %bb.am
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !194012, !noalias !194015
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.729.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !194012, !noalias !194015
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !194012, !noalias !194015
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !194012, !noalias !194015
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.729.0.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !194012, !noalias !194015
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !194012, !noalias !194015
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he3b1554cf22fbf4aE.exit.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he3b1554cf22fbf4aE.exit.i.i.i.i": ; preds = %bb.an, %bb.am
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %bb.an ], [ 0, %bb.am ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !194012, !noalias !194015
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.de, align 8, !alias.scope !194012, !noalias !194015
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.df, align 8, !alias.scope !194012, !noalias !194015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !194017
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha07a907674b6aad3E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !193918
  %i.dg = load ptr, ptr %i.b, align 8, !noalias !194017, !noundef !14
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not5.i.i.i.i.i.i, label %.thread43.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he3b1554cf22fbf4aE.exit.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !194017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !194017
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha07a907674b6aad3E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !193918
  %i.dh = load ptr, ptr %i.b, align 8, !noalias !194017, !noundef !14
  %.not.i.i.i.i25.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i25.i.i, label %.thread43.i.i, label %.lr.ph.i.i.i.i.i.i

.thread43.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he3b1554cf22fbf4aE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !194017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !194007
  br label %.thread40.i.i

bb.ao:                                            ; preds = %bb.ai
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !193918
  unreachable

bb.ap:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !194022)
  call void @llvm.experimental.noalias.scope.decl(metadata !194025)
  %i.dj = load i64, ptr %i.db, align 8, !range !3586, !alias.scope !194028, !noalias !194029, !noundef !14
  switch i64 %i.dj, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" [
    i64 0, label %bb.aq
    i64 1, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.dk, align 8, !alias.scope !194028, !noalias !194029, !noundef !14 ; 2 uses
  %i.dl = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.dl, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.aq
  %i.dm = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !194028, !noalias !194029, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !194032
end_hunk_11
begin_hunk_12_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h05e1fcb84c428dfcE":bb.a

bb.bw:                                            ; preds = %bb.bx, %.lr.ph.i22.i.i.i.i.i.i.i.i.i.i
  %i.en = phi i64 [ %.promoted.i17.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i22.i.i.i.i.i.i.i.i.i.i ], [ %i.eq, %bb.bx ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !194265)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !noalias !194266, !noundef !14
  switch i8 %i.ep, label %bb.by [
    i8 32, label %bb.bx
    i8 10, label %bb.bx
    i8 9, label %bb.bx
    i8 13, label %bb.bx
    i8 125, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hca36ad3784e5b9a1E.exit.i.i.i.i.i"
  ], !prof !3649

bb.bx:                                            ; preds = %bb.bw, %bb.bw, %bb.bw, %bb.bw
  %i.eq = add i64 %i.en, 1                        ; 3 uses
  store i64 %i.eq, ptr %i.bq, align 8, !alias.scope !194267, !noalias !194264
  %exitcond.not.i23.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.eq, %i.ek
  br i1 %exitcond.not.i23.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.bw

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.bv, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !194117
  store i64 3, ptr %i.v, align 8, !noalias !194117
  %i.er = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17he99e12cc114d314eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc22.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !194082

.noexc22.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !194117
  br label %.loopexit40.i.i.i

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !194117
  store i64 10, ptr %i.w, align 8, !noalias !194117
  %i.es = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17he99e12cc114d314eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc23.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !194082

.noexc23.i.i.i:                                   ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !194117
  br label %.loopexit40.i.i.i

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hca36ad3784e5b9a1E.exit.i.i.i.i.i": ; preds = %bb.bw
  %i.et = add i64 %i.en, 1                        ; 2 uses
  store i64 %i.et, ptr %i.bq, align 8, !alias.scope !194270, !noalias !194119
  br label %bb.bz

bb.bz:                                            ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hca36ad3784e5b9a1E.exit.i.i.i.i.i", %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hca36ad3784e5b9a1E.exit.thread15.i.i.i.i.i"
  %.promoted.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.pre.i.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hca36ad3784e5b9a1E.exit.thread15.i.i.i.i.i" ], [ %i.et, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hca36ad3784e5b9a1E.exit.i.i.i.i.i" ] ; 2 uses
  %i.eu = phi i64 [ %.pre.i.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hca36ad3784e5b9a1E.exit.thread15.i.i.i.i.i" ], [ %i.ek, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hca36ad3784e5b9a1E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.10.020.i.i.i.i.i = phi i8 [ %i.cw, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hca36ad3784e5b9a1E.exit.thread15.i.i.i.i.i" ], [ %.sroa.5.0.i.i.i.i.i.i.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hca36ad3784e5b9a1E.exit.i.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !194273
  call void @llvm.experimental.noalias.scope.decl(metadata !194274)
  call void @llvm.experimental.noalias.scope.decl(metadata !194275)
  %i.ev = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.eu
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bz
  %i.ew = load ptr, ptr %i.bu, align 8, !alias.scope !194166, !noalias !194173, !nonnull !14, !align !584, !noundef !14
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cb, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ex = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fa, %bb.cb ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !194276)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !noalias !194277, !noundef !14
  switch i8 %i.ez, label %bb.cc [
    i8 32, label %bb.cb
    i8 10, label %bb.cb
    i8 9, label %bb.cb
    i8 13, label %bb.cb
    i8 58, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i.i.i.i.i"
  ], !prof !3649

bb.cb:                                            ; preds = %bb.ca, %bb.ca, %bb.ca, %bb.ca
  %i.fa = add i64 %i.ex, 1                        ; 3 uses
  store i64 %i.fa, ptr %i.bq, align 8, !alias.scope !194278, !noalias !194179
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.fa, %i.eu
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.ca

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.bz, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !194281
  store i64 3, ptr %i.h, align 8, !noalias !194281
  %i.fb = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !194082

.noexc24.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !194281
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.thread.i.i.i.i.i"

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !194281
  store i64 6, ptr %i.i, align 8, !noalias !194281
  %i.fc = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !194082

.noexc25.i.i.i:                                   ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !194281
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.thread.i.i.i.i.i"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i.i.i.i.i": ; preds = %bb.ca
  %i.fd = add i64 %i.ex, 1
  store i64 %i.fd, ptr %i.bq, align 8, !alias.scope !194282, !noalias !194285
  invoke fastcc void @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$11deserialize17h12ab9427405b4b48E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bp)
          to label %.noexc26.i.i.i unwind label %.loopexit.i.i.i, !noalias !194082

.noexc26.i.i.i:                                   ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i.i.i.i.i"
  %.pre54.i.i.i.i.i = load i32, ptr %i.z, align 8, !range !4647, !noalias !194273
  %i.fe = trunc nuw i32 %.pre54.i.i.i.i.i to i1
  br i1 %i.fe, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i._crit_edge.i.i.i.i", label %bb.cf

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i._crit_edge.i.i.i.i": ; preds = %.noexc26.i.i.i
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !194273
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.thread.i.i.i.i.i"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.thread.i.i.i.i.i": ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i._crit_edge.i.i.i.i", %.noexc25.i.i.i, %.noexc24.i.i.i
  %i.ff = phi ptr [ %.pre.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i._crit_edge.i.i.i.i" ], [ %i.fb, %.noexc24.i.i.i ], [ %i.fc, %.noexc25.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !194273
  br label %.loopexit40.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.cn, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.i.i.i.i.i", %bb.ah, %bb.ag, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ac, %bb.ab, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h76eb3defc1ee761eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.aa, %bb.z, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u, %bb.r, %bb.h
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.loopexit.split-lp.i.i.i:                         ; preds = %bb.cc, %.loopexit.i.i.i.i.i.i.i, %bb.by, %.loopexit.i.i.i.i.i.i.i.i.i.i, %bb.bs, %.noexc9.i.i.i, %bb.s, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n, %.loopexit19.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cd:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke void @"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hcf8419346bbb62c7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #81
          to label %common.resume.i.i unwind label %bb.cp, !noalias !194082

.loopexit40.i.i.i:                                ; preds = %bb.bu, %bb.bt, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.thread.i.i.i.i.i", %.noexc23.i.i.i, %.noexc22.i.i.i, %.noexc21.i.i.i, %bb.v, %.noexc6.i.i.i, %.noexc5.i.i.i, %bb.i
  %.sroa.1228.0.ph.i.i.i = phi ptr [ %i.eg, %.noexc21.i.i.i ], [ %i.cb, %.noexc6.i.i.i ], [ %i.ca, %.noexc5.i.i.i ], [ %i.ff, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h02589b9f2c239b13E.exit.thread.i.i.i.i.i" ], [ %i.es, %.noexc23.i.i.i ], [ %i.er, %.noexc22.i.i.i ], [ %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ %i.bm, %bb.i ], [ %.sroa.248.0.i.i.i.i.i.i.i.i.i.i, %bb.bt ], [ %.sroa.248.0.i.i.i.i.i.i.i.i.i.i, %bb.bu ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1228.0.ph.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !194286)
  call void @llvm.experimental.noalias.scope.decl(metadata !194289)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !194292
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !194293, !noalias !194065 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha8ffce5410381f70E.exit.i.i.i.i.i", label %bb.ce

bb.ce:                                            ; preds = %.loopexit40.i.i.i
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !194293, !noalias !194065
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %i.bi, align 8, !alias.scope !194293, !noalias !194065 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !194294, !noalias !194297
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !194294, !noalias !194297
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !194294, !noalias !194297
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !194294, !noalias !194297
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !194294, !noalias !194297
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !194294, !noalias !194297
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha8ffce5410381f70E.exit.i.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha8ffce5410381f70E.exit.i.i.i.i.i": ; preds = %bb.ce, %.loopexit40.i.i.i
  %.sink23.i.i.i.i.i.i = phi i64 [ 1, %bb.ce ], [ 0, %.loopexit40.i.i.i ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i, %bb.ce ], [ 0, %.loopexit40.i.i.i ]
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.g, align 8, !alias.scope !194294, !noalias !194297
  %i.fg = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.fg, align 8, !alias.scope !194294, !noalias !194297
  %i.fh = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i, ptr %i.fh, align 8, !alias.scope !194294, !noalias !194297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !194299
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hbbc59f18556fcaceE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g), !noalias !194304
  %i.fi = load ptr, ptr %i.f, align 8, !noalias !194299, !noundef !14
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not5.i.i.i.i.i.i.i, label %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hcf8419346bbb62c7E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha8ffce5410381f70E.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !194299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !194299
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hbbc59f18556fcaceE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g), !noalias !194304
  %i.fj = load ptr, ptr %i.f, align 8, !noalias !194299, !noundef !14
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hcf8419346bbb62c7E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hcf8419346bbb62c7E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha8ffce5410381f70E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !194299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !194292
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hd3a41f41d4bf9af3E.exit.i.i"

bb.cf:                                            ; preds = %.noexc26.i.i.i
  %i.fk = load i32, ptr %i.bh, align 4, !noalias !194273, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !194273
  call void @llvm.experimental.noalias.scope.decl(metadata !194305)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !194065
  call void @llvm.experimental.noalias.scope.decl(metadata !194308)
  %i.fl = load ptr, ptr %i.aa, align 8, !alias.scope !194311, !noalias !194312, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i, label %bb.cn, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.fm = load i64, ptr %i.bi, align 8, !alias.scope !194311, !noalias !194312, !noundef !14
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ck, %bb.cg
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.fm, %bb.cg ], [ %i.gc, %bb.ck ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.fl, %bb.cg ], [ %i.gb, %bb.ck ] ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  %i.fp = load i16, ptr %i.fo, align 2, !noalias !194314, !noundef !14 ; 2 uses
  %i.fq = zext i16 %i.fp to i64                   ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fq
  %i.fs = icmp eq i16 %i.fp, 0
  br i1 %i.fs, label %._crit_edge, label %.lr.ph

bb.ci:                                            ; preds = %.lr.ph
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i235, i64 1 ; 2 uses
  %i.fu = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i234, 1
  %i.fv = icmp eq ptr %i.ft, %i.fr
  br i1 %i.fv, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ch, %bb.ci
  %.sroa.03.0.i.i.i.i.i.i.i235 = phi ptr [ %i.ft, %bb.ci ], [ %i.fn, %bb.ch ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i234 = phi i64 [ %i.fu, %bb.ci ], [ 0, %bb.ch ] ; 3 uses
  %.val6.i.i.i.i.i.i.i = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i235, align 1, !range !4559, !noalias !194314, !noundef !14
  %i.fw = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 18) %.sroa.10.020.i.i.i.i.i, i8 %.val6.i.i.i.i.i.i.i)
  switch i8 %i.fw, label %bb.cj [
    i8 -1, label %._crit_edge
    i8 0, label %bb.cm
    i8 1, label %bb.ci
  ]

bb.cj:                                            ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.ci, %.lr.ph, %bb.ch
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i64 [ %i.fq, %bb.ch ], [ %i.fq, %bb.ci ], [ %.sroa.8.0.i.i.i.i.i.i.i234, %.lr.ph ] ; 3 uses
  %i.fx = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.fx, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %._crit_edge
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 72
  %i.fz = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.fz)
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !194317, !nonnull !14, !noundef !14
  %i.gc = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.ch

bb.cl:                                            ; preds = %._crit_edge
  %i.gd = ptrtoint ptr %.sroa.0.0.i.i.i.i.i.i to i64
  br label %bb.cn

bb.cm:                                            ; preds = %.lr.ph
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %.sroa.8.0.i.i.i.i.i.i.i234
  store i32 %i.fk, ptr %i.gf, align 4, !noalias !194320
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl, %bb.cf
  %.sroa.12.0.ph.i.i.i.i = phi i64 [ undef, %bb.cf ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.cl ]
  %.sroa.7.0.ph.i.i.i.i = phi i64 [ 0, %bb.cf ], [ %i.gd, %bb.cl ]
  store ptr %i.aa, ptr %i.e, align 8, !noalias !194321
  store i64 %.sroa.7.0.ph.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !194321
  store i64 0, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !194321
  store i64 %.sroa.12.0.ph.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !noalias !194321
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !194321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !194321
  invoke fastcc void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h5bf1bbe4bd4e0431E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e, i32 noundef %i.fk)
          to label %.noexc27.i.i.i unwind label %.loopexit.i.i.i, !noalias !194082

.noexc27.i.i.i:                                   ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !194321
  br label %bb.co

_ZN10serde_core2de9MapAccess10next_entry17hecc46d9d34e38157E.exit.thread33.i.i.i: ; preds = %bb.j
  %.sroa.729.8.copyload.i.i = load ptr, ptr %i.aa, align 8, !noalias !194322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.930.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !noalias !194322
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hd3a41f41d4bf9af3E.exit.i.i"

bb.co:                                            ; preds = %.noexc27.i.i.i, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !194065
  br label %bb.h

common.resume.i.i:                                ; preds = %bb.dd, %bb.ct, %bb.cd
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.cd ], [ %i.hb, %bb.dd ], [ %i.gp, %bb.ct ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.cp:                                            ; preds = %bb.cd
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !194082
  unreachable

"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hd3a41f41d4bf9af3E.exit.i.i": ; preds = %_ZN10serde_core2de9MapAccess10next_entry17hecc46d9d34e38157E.exit.thread33.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hcf8419346bbb62c7E.exit.i.i.i"
  %.sroa.028.0.i.i = phi i64 [ 1, %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hcf8419346bbb62c7E.exit.i.i.i" ], [ 0, %_ZN10serde_core2de9MapAccess10next_entry17hecc46d9d34e38157E.exit.thread33.i.i.i ] ; 2 uses
  %.sroa.729.0.i.i = phi ptr [ %.sroa.1228.0.ph.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hcf8419346bbb62c7E.exit.i.i.i" ], [ %.sroa.729.8.copyload.i.i, %_ZN10serde_core2de9MapAccess10next_entry17hecc46d9d34e38157E.exit.thread33.i.i.i ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !194065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !194059
  %i.gh = load i8, ptr %i.ar, align 8, !range !1313, !alias.scope !194061, !noalias !194060, !noundef !14
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.cs, label %bb.cr

bb.cq:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !194059
  store i64 24, ptr %i.ad, align 8, !noalias !194059
  %i.gj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad), !noalias !194060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !194059
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gj, ptr %i.gk, align 8, !alias.scope !194060, !noalias !194061
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h46e46457ba149081E.exit"

bb.cr:                                            ; preds = %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hd3a41f41d4bf9af3E.exit.i.i"
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !194061, !noalias !194060, !noundef !14
  %i.gn = add i8 %i.gm, 1
  store i8 %i.gn, ptr %i.gl, align 1, !alias.scope !194061, !noalias !194060
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hd3a41f41d4bf9af3E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !194059
  store i64 %.sroa.028.0.i.i, ptr %i.ac, align 8, !noalias !194059
  %.sroa.729.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sroa.729.0.i.i, ptr %.sroa.729.0..sroa_idx.i.i, align 8, !noalias !194059
  %.sroa.930.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.930.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.930.i.i, i64 16, i1 false), !noalias !194059
  %i.go = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h7f477aab3cffc5f9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.cu unwind label %bb.ct, !noalias !194060 ; 9 uses

bb.ct:                                            ; preds = %bb.cs
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$core..result..Result$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$C$serde_json..error..Error$GT$$GT$17h96cffa7b3e573c03E"(ptr noalias noundef align 8 dereferenceable(32) %i.ac) #81
          to label %common.resume.i.i unwind label %bb.cz, !noalias !194060

bb.cu:                                            ; preds = %bb.cs
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.930.0..sroa_idx.i.i, align 8, !noalias !194059 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !194059 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !194059
  %i.gq = trunc nuw i64 %.sroa.028.0.i.i to i1
  br i1 %i.gq, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not.i.i = icmp eq ptr %i.go, null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.930.i.i)
  br i1 %.not.i.i, label %bb.de, label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.729.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.930.i.i)
  %.not46.i.i = icmp eq ptr %i.go, null
  br i1 %.not46.i.i, label %.thread40.i.i, label %bb.da

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !194323
  %.not.i.i.i24.i.i = icmp eq ptr %.sroa.729.0.i.i, null
  br i1 %.not.i.i.i24.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha8ffce5410381f70E.exit.i.i.i.i", label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !194328, !noalias !194331
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.729.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !194328, !noalias !194331
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !194328, !noalias !194331
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !194328, !noalias !194331
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.729.0.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !194328, !noalias !194331
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !194328, !noalias !194331
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha8ffce5410381f70E.exit.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha8ffce5410381f70E.exit.i.i.i.i": ; preds = %bb.cy, %bb.cx
  %.sink23.i.i.i.i.i = phi i64 [ 1, %bb.cy ], [ 0, %bb.cx ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %bb.cy ], [ 0, %bb.cx ]
  store i64 %.sink23.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !194328, !noalias !194331
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink23.i.i.i.i.i, ptr %i.gr, align 8, !alias.scope !194328, !noalias !194331
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i, ptr %i.gs, align 8, !alias.scope !194328, !noalias !194331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !194333
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hbbc59f18556fcaceE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !194060
  %i.gt = load ptr, ptr %i.b, align 8, !noalias !194333, !noundef !14
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not5.i.i.i.i.i.i, label %.thread43.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha8ffce5410381f70E.exit.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !194333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !194333
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hbbc59f18556fcaceE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !194060
  %i.gu = load ptr, ptr %i.b, align 8, !noalias !194333, !noundef !14
  %.not.i.i.i.i25.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i25.i.i, label %.thread43.i.i, label %.lr.ph.i.i.i.i.i.i

.thread43.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha8ffce5410381f70E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !194333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !194323
  br label %.thread40.i.i

bb.cz:                                            ; preds = %bb.ct
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !194060
  unreachable

bb.da:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !194338)
  call void @llvm.experimental.noalias.scope.decl(metadata !194341)
  %i.gw = load i64, ptr %i.go, align 8, !range !3586, !alias.scope !194344, !noalias !194345, !noundef !14
  switch i64 %i.gw, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" [
    i64 0, label %bb.db
    i64 1, label %bb.dc
  ]

bb.db:                                            ; preds = %bb.da
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.gx, align 8, !alias.scope !194344, !noalias !194345, !noundef !14 ; 2 uses
  %i.gy = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.gy, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.db
  %i.gz = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.gz, align 8, !alias.scope !194344, !noalias !194345, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !194348
end_hunk_12
begin_hunk_13_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h95e208ec07257720E":bb.a
  store i8 %i.ob, ptr %i.nz, align 1, !alias.scope !210002, !noalias !210003
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %"_ZN193_$LT$meilisearch_types..webhooks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..webhooks..Webhook$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hcba43aa174f934a7E.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !210001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !210001
  store i64 %.sroa.03.2.i.i.i.i.i.i.i.i.i.i, ptr %i.aa, align 8, !noalias !210001
  store ptr %.sroa.94.2.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.94.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !210001
  store i64 %.sroa.135.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.135.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !210001
  store ptr %.sroa.146.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.146.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !210001
  store i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !210001
  store i64 %.sroa.16.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.16.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !210001
  %i.oc = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h7f477aab3cffc5f9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.dj)
          to label %bb.dh unwind label %bb.dg, !noalias !210003 ; 10 uses

bb.dg:                                            ; preds = %bb.df
  %i.od = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr112drop_in_place$LT$core..result..Result$LT$meilisearch_types..webhooks..Webhook$C$serde_json..error..Error$GT$$GT$17hf8ddec604a7e6359E"(ptr noalias noundef align 8 dereferenceable(48) %i.aa) #81
          to label %.body.i.i.i.i unwind label %bb.az, !noalias !210003

bb.dh:                                            ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !noalias !210001
  store ptr %i.oc, ptr %i.ch, align 8, !noalias !210001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !210001
  %i.oe = load i64, ptr %i.ab, align 8, !range !2917, !noalias !210001, !noundef !14 ; 4 uses
  %i.of = icmp eq i64 %i.oe, -9223372036854775808
  br i1 %i.of, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %.sroa.225.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !noalias !210001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.326.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !210001
  br label %.thread17.i.i.i.i.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.dh
  %i.og = load ptr, ptr %i.ci, align 8, !noalias !210001, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.not24.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.oc, null
  br i1 %.not24.i.i.i.i.i.i.i.i.i.i, label %.thread17.i.i.i.i.i.i.i.i.i.i, label %bb.dn

bb.dl:                                            ; preds = %bb.di
  call void @llvm.experimental.noalias.scope.decl(metadata !210238)
  call void @llvm.experimental.noalias.scope.decl(metadata !210241)
  call void @llvm.experimental.noalias.scope.decl(metadata !210244)
  %i.oh = icmp eq i64 %i.oe, 0
  br i1 %i.oh, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i53.i.i.i.i.i.i.i.i.i.i", label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %.val1.i.i.i52.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !210247, !noalias !210001, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i52.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.oe, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !210248
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i53.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i53.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dm, %bb.dl
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h38645331da836caeE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.cj)
          to label %.thread17.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !209912

.thread17.i.i.i.i.i.i.i.i.i.i:                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit59.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i53.i.i.i.i.i.i.i.i.i.i", %bb.dk, %bb.dj
  %.sroa.09.323.i.i.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.dk ], [ -9223372036854775808, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit59.i.i.i.i.i.i.i.i.i.i" ], [ %i.oe, %bb.dj ], [ -9223372036854775808, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i53.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.12.322.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.og, %bb.dk ], [ %i.og, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit59.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.225.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.dj ], [ %i.oc, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i53.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !210001
  br label %bb.be

bb.dn:                                            ; preds = %bb.dk
  call void @llvm.experimental.noalias.scope.decl(metadata !210249)
  call void @llvm.experimental.noalias.scope.decl(metadata !210252)
  %i.oi = load i64, ptr %i.oc, align 8, !range !3586, !alias.scope !210255, !noalias !210256, !noundef !14
  switch i64 %i.oi, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit59.i.i.i.i.i.i.i.i.i.i" [
    i64 0, label %bb.do
    i64 1, label %bb.dp
  ]

bb.do:                                            ; preds = %bb.dn
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %.val1.i.i.i.i56.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.oj, align 8, !alias.scope !210255, !noalias !210256, !noundef !14 ; 2 uses
  %i.ok = icmp eq i64 %.val1.i.i.i.i56.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ok, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit59.i.i.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i57.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i57.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.do
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %.val.i.i.i.i58.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ol, align 8, !alias.scope !210255, !noalias !210256, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i58.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i56.i.i.i.i.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !210259
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit59.i.i.i.i.i.i.i.i.i.i"

bb.dp:                                            ; preds = %bb.dn
  %i.om = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.om)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit59.i.i.i.i.i.i.i.i.i.i" unwind label %bb.dq, !noalias !210256

bb.dq:                                            ; preds = %bb.dp
  %i.on = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oc, i64 noundef 40, i64 noundef 8) #79, !noalias !210256
  br label %.body.i.i.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit59.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i57.i.i.i.i.i.i.i.i.i.i", %bb.do, %bb.dn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oc, i64 noundef 40, i64 noundef 8) #79, !noalias !210256
  br label %.thread17.i.i.i.i.i.i.i.i.i.i

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hb6ddc316fd987ec5E.exit.thread30.i.i.i.i.i.i": ; preds = %bb.be, %bb.u
  %.sroa.12.5.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ew, %bb.u ], [ %.sroa.12.2.i.i.i.i.i.i.i.i.i.i, %bb.be ]
  %i.oo = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.12.5.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dj)
          to label %.noexc19.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !209912

.noexc19.i.i.i.i:                                 ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hb6ddc316fd987ec5E.exit.thread30.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i.i.i.i.i.i)
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hb6ddc316fd987ec5E.exit.thread.i.i.i.i.i.i"

.loopexit.i.i.i.i:                                ; preds = %"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17h8f9d3c2b0370e745E.exit.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i53.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.aj, %bb.ab, %bb.y, %bb.n, %bb.m, %bb.k, %bb.h
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hb6ddc316fd987ec5E.exit.thread30.i.i.i.i.i.i", %bb.dd, %bb.ao, %bb.u, %.loopexit.i.i.i.i.i.i.i.i.i.i, %bb.r, %.loopexit.i.i.i.i.i.i.i.i, %_ZN10serde_core2de7Visitor18visit_borrowed_str17hde155d7ebd569297E.exit.i.i.i.i.thread.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0376e8666de96684E.exit.thread23.i.i.i.i.i.i.i"
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.fw, %bb.fq, %bb.et, %bb.em, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.dq, %bb.dg, %bb.dc, %bb.cy, %bb.cy, %bb.bd, %bb.as, %bb.al, %bb.ak
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.gn, %bb.as ], [ %.pn98.i.i.i.i.i.i.i.i.i.i.i, %bb.cy ], [ %i.gy, %bb.bd ], [ %i.gc, %bb.ak ], [ %i.on, %bb.dq ], [ %i.gc, %bb.al ], [ %.pn98.i.i.i.i.i.i.i.i.i.i.i, %bb.dc ], [ %.pn98.i.i.i.i.i.i.i.i.i.i.i, %bb.cy ], [ %i.od, %bb.dg ], [ %i.zs, %bb.fw ], [ %i.rd, %bb.em ], [ %lpad.phi.i.i.i.i.i.i.i, %bb.fq ], [ %i.ru, %bb.et ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr118drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$GT$$GT$17h36f2935c32876152E"(ptr noalias noundef align 8 dereferenceable(24) %i.aw) #81
          to label %common.resume.i.i.i unwind label %bb.ga, !noalias !209912

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hb6ddc316fd987ec5E.exit.thread.i.i.i.i.i.i": ; preds = %.noexc19.i.i.i.i, %bb.ap, %.noexc10.i.i.i.i, %.noexc9.i.i.i.i, %.noexc8.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0376e8666de96684E.exit.thread.i.i.i.i.i.i.i", %bb.i
  %storemerge.i.i.i.i = phi ptr [ %.sroa.10.220.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0376e8666de96684E.exit.thread.i.i.i.i.i.i.i" ], [ %i.dg, %bb.i ], [ %i.oo, %.noexc19.i.i.i.i ], [ %i.eo, %.noexc9.i.i.i.i ], [ %i.en, %.noexc8.i.i.i.i ], [ %.sink.i.i.i.i.i.i.i.i.i.i, %bb.ap ], [ %i.ev, %.noexc10.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.0.i.i.i.i.i.i)
  call fastcc void @"_ZN4core3ptr118drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$GT$$GT$17h36f2935c32876152E"(ptr noalias noundef align 8 dereferenceable(24) %i.aw), !noalias !209912
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hbef8612b633855d4E.exit.i.i.i"

bb.dr:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.2.0..sroa.4.16..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !209895
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.av, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i.sroa.0.i.i.i.i.i.i, i64 6, i1 false), !noalias !209895
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.0.i.i.i.i.i.i)
  store i8 %.sroa.7.i.sroa.7.0.i.i.i.i.i.i, ptr %.sroa.023.i.sroa.4.0..sroa_idx.i.i.i, align 2, !noalias !209895
  store ptr %.sroa.10.222.i.i.i.i.i.i.i, ptr %.sroa.023.i.sroa.5.0..sroa_idx.i.i.i, align 1, !noalias !209895
  store i8 %.sroa.14.221.i.i.i.i.i.i.i, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i, align 1, !noalias !209895
  store i64 %.sroa.09.2.i.i.i.i.i.i.i.i.i.i, ptr %i.au, align 8, !noalias !209895
  store ptr %.sroa.12.2.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.16..sroa_idx.i.i.i.i, align 8, !noalias !209895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !209895
  call void @llvm.experimental.noalias.scope.decl(metadata !210260)
  call void @llvm.experimental.noalias.scope.decl(metadata !210263)
  call void @llvm.experimental.noalias.scope.decl(metadata !210265)
  call void @llvm.experimental.noalias.scope.decl(metadata !210268)
  call void @llvm.experimental.noalias.scope.decl(metadata !210270)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.op = load i64, ptr %i.cu, align 8, !alias.scope !210272, !noalias !210273, !noundef !14 ; 3 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dw, %bb.ds
  %.sroa.3.0.i.i.i.i.i.i.i = phi i64 [ %i.op, %bb.ds ], [ %i.ps, %bb.dw ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.dc, %bb.ds ], [ %i.pr, %bb.dw ] ; 11 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 714
  %i.or = load i16, ptr %i.oq, align 2, !noalias !210276, !noundef !14 ; 4 uses
  %i.os = zext i16 %i.or to i64                   ; 5 uses
  %.idx = shl nuw nsw i64 %i.os, 4
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 %.idx
  %i.ou = icmp eq i16 %i.or, 0
  br i1 %i.ou, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i.i.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i.i.i.i.i"

bb.du:                                            ; preds = %endblock
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i.i.i1405, i64 16 ; 2 uses
  %i.ow = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i.i1404, 1
  %i.ox = icmp eq ptr %i.ov, %i.ot
  br i1 %i.ox, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i.i.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i.i.i.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.dt, %bb.du
  %.sroa.01.0.i.i.i.i.i.i.i.i1405 = phi ptr [ %i.ov, %bb.du ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.dt ] ; 3 uses
  %.sroa.8.0.i.i.i.i.i.i.i.i1404 = phi i64 [ %i.ow, %bb.du ], [ 0, %bb.dt ] ; 3 uses
  %i.oy = load i64, ptr %i.av, align 8
  %i.oz = load i64, ptr %.sroa.01.0.i.i.i.i.i.i.i.i1405, align 1
  %i.pa = call i64 @llvm.bswap.i64(i64 %i.oy)     ; 2 uses
  %i.pb = call i64 @llvm.bswap.i64(i64 %i.oz)     ; 2 uses
  %i.pc = icmp eq i64 %i.pa, %i.pb
  br i1 %i.pc, label %loadbb2261, label %res_block

res_block:                                        ; preds = %loadbb2261, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i.i.i.i.i"
  %phi.src1 = phi i64 [ %i.pa, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i.i.i.i.i" ], [ %i.pj, %loadbb2261 ]
  %phi.src2 = phi i64 [ %i.pb, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i.i.i.i.i" ], [ %i.pk, %loadbb2261 ]
  %i.pd = icmp ult i64 %phi.src1, %phi.src2
  %i.pe = select i1 %i.pd, i32 -1, i32 1
  br label %endblock

loadbb2261:                                       ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i.i.i.i.i"
  %i.pf = getelementptr i8, ptr %i.av, i64 8
  %i.pg = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i.i.i1405, i64 8
  %i.ph = load i64, ptr %i.pf, align 8
  %i.pi = load i64, ptr %i.pg, align 1
  %i.pj = call i64 @llvm.bswap.i64(i64 %i.ph)     ; 2 uses
  %i.pk = call i64 @llvm.bswap.i64(i64 %i.pi)     ; 2 uses
  %i.pl = icmp eq i64 %i.pj, %i.pk
  br i1 %i.pl, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb2261
  %phi.res = phi i32 [ 0, %loadbb2261 ], [ %i.pe, %res_block ]
  %i.pm = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  switch i8 %i.pm, label %bb.dv [
    i8 -1, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i.i.i.i.i._crit_edge"
    i8 0, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hc6d58f6d8d2c15afE.exit.i.i.i.i"
    i8 1, label %bb.du
  ]

bb.dv:                                            ; preds = %endblock
  unreachable

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i.i.i.i.i._crit_edge": ; preds = %bb.du, %endblock, %bb.dt
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i = phi i64 [ %i.os, %bb.dt ], [ %i.os, %bb.du ], [ %.sroa.8.0.i.i.i.i.i.i.i.i1404, %endblock ] ; 13 uses
  %i.pn = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i.i, 0
  br i1 %i.pn, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i.i.i.i.i._crit_edge"
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 720
  %i.pp = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.pp)
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i
  %i.pr = load ptr, ptr %i.pq, align 8, !noalias !210282, !nonnull !14, !noundef !14
  %i.ps = add i64 %.sroa.3.0.i.i.i.i.i.i.i, -1
  br label %bb.dt

.thread.i.i.i.i.i:                                ; preds = %bb.dr
  %.sroa.7.8.copyload8.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !210285, !noalias !210286
  %.sroa.11.8.copyload12.i.i.i.i.i = load i64, ptr %.sroa.11.8..sroa_idx9.i.i.i.i.i, align 8, !alias.scope !210285, !noalias !210286
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !210287
  %i.pt = call noalias noundef align 8 dereferenceable_or_null(720) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 720, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !210287 ; 8 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %bb.dy, label %bb.dz, !prof !121

bb.dx:                                            ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i.i.i.i.i._crit_edge"
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 714
  %.sroa.7.8.copyload7.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !210285, !noalias !210286 ; 2 uses
  %.sroa.11.8.copyload10.i.i.i.i.i = load i64, ptr %.sroa.11.8..sroa_idx9.i.i.i.i.i, align 8, !alias.scope !210285, !noalias !210286 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0182.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !210292
  %i.pw = icmp ugt i16 %i.or, 10
  br i1 %i.pw, label %bb.ea, label %bb.eb

bb.dy:                                            ; preds = %.thread.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 720) #80
          to label %.noexc.i.i.i.i.i.i unwind label %bb.fw, !noalias !210287

.noexc.i.i.i.i.i.i:                               ; preds = %bb.dy
  unreachable

bb.dz:                                            ; preds = %.thread.i.i.i.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 704
  store ptr null, ptr %i.px, align 8, !noalias !210287
  %i.py = getelementptr inbounds nuw i8, ptr %i.pt, i64 714
  store ptr %i.pt, ptr %i.aw, align 8, !alias.scope !210260, !noalias !210298
  store i64 0, ptr %i.cu, align 8, !alias.scope !210260, !noalias !210298
  store i16 1, ptr %i.py, align 2, !noalias !210299
  store ptr %.sroa.7.8.copyload8.i.i.i.i.i, ptr %i.pt, align 8, !noalias !210304
  %.sroa.9.8..sroa_idx26.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  store i64 %.sroa.11.8.copyload12.i.i.i.i.i, ptr %.sroa.9.8..sroa_idx26.i.i.i.i.i, align 8, !noalias !210304
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pt, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pz, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.au, i64 48, i1 false), !noalias !210305
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hc6d58f6d8d2c15afE.exit.thread.i.i.i.i"

bb.ea:                                            ; preds = %bb.dx
  %i.qa = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !210306
  store i64 0, ptr %i.cx, align 8, !noalias !210306
  br i1 %i.qa, label %.invoke.i.i.i.i.i.i.i.i, label %bb.ee

bb.eb:                                            ; preds = %bb.dx
  %.not.i.i.i.i.not.i.i.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, %i.os
  %i.qb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i.i.i.i.not.i.i.i.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.au, i64 48, i1 false), !noalias !210312
  call void @llvm.experimental.noalias.scope.decl(metadata !210313)
  br label %.thread.i.i.i.i.i.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.qc = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 %i.qc
  %i.qe = sub nuw nsw i64 %i.os, %.sroa.4.0.i.ph.i.i.i.i.i.i.i ; 2 uses
  %i.qf = shl nuw nsw i64 %i.qe, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.qd, ptr nonnull align 1 %i.qb, i64 %i.qf, i1 false), !alias.scope !210316, !noalias !210319
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.au, i64 48, i1 false), !noalias !210312
  %i.qh = getelementptr inbounds nuw [48 x i8], ptr %i.qg, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i
  %i.qi = getelementptr inbounds nuw [48 x i8], ptr %i.qg, i64 %i.qc
  %i.qj = mul nuw nsw i64 %i.qe, 48
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qi, ptr nonnull align 8 %i.qh, i64 %i.qj, i1 false), !alias.scope !210326, !noalias !210328
  br label %.thread.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ea
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, label %bb.ef [
    i64 5, label %.invoke.i.i.i.i.i.i.i.i
    i64 6, label %bb.eg
  ]

.invoke.i.i.i.i.i.i.i.i:                          ; preds = %bb.ee, %bb.ea
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i.i.i, %bb.ee ], [ 4, %bb.ea ]
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.cy, align 8, !noalias !210306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !210306
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h859d7eddf26075dfE"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.ei unwind label %bb.em, !noalias !210329

bb.ef:                                            ; preds = %bb.ee
  store i64 6, ptr %i.cy, align 8, !noalias !210306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !210306
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h859d7eddf26075dfE"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.eh unwind label %bb.em, !noalias !210329

bb.eg:                                            ; preds = %bb.ee
  store i64 5, ptr %i.cy, align 8, !noalias !210306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !210306
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h859d7eddf26075dfE"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.ei unwind label %bb.em, !noalias !210329

bb.eh:                                            ; preds = %bb.ef
  %i.qk = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, -7
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg, %.invoke.i.i.i.i.i.i.i.i
  %.sink62.i.sroa.phi.i.i.i.i.i.i.i = phi ptr [ %.sink62.i.sroa.gep.i.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i.i ], [ %.sink62.i.sroa.gep41.i.i.i.i.i.i.i, %bb.eg ], [ %.sink62.i.sroa.gep41.i.i.i.i.i.i.i, %bb.eh ]
  %.sroa.10.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i.i ], [ 0, %bb.eg ], [ %i.qk, %bb.eh ] ; 6 uses
  %i.ql = load ptr, ptr %.sink62.i.sroa.phi.i.i.i.i.i.i.i, align 8, !noalias !210306, !nonnull !14, !noundef !14 ; 5 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 714 ; 2 uses
  %i.qn = load i16, ptr %i.qm, align 2, !noalias !210330, !noundef !14 ; 2 uses
  %i.qo = zext i16 %i.qn to i64                   ; 2 uses
  %.not.i41.not.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i.i.i, %i.qo
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %.sroa.10.0.i.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i41.not.i.i.i.i.i.i.i.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.au, i64 48, i1 false), !noalias !210312
  call void @llvm.experimental.noalias.scope.decl(metadata !210336)
  br label %bb.en

bb.ek:                                            ; preds = %bb.ei
  %i.qq = add nuw nsw i64 %.sroa.10.0.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.qr = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %i.qq
  %i.qs = sub nuw nsw i64 %i.qo, %.sroa.10.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.qt = shl nuw nsw i64 %i.qs, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.qr, ptr nonnull align 1 %i.qp, i64 %i.qt, i1 false), !alias.scope !210339, !noalias !210342
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ql, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.au, i64 48, i1 false), !noalias !210312
  %i.qv = getelementptr inbounds nuw [48 x i8], ptr %i.qu, i64 %.sroa.10.0.i.i.i.i.i.i.i.i
  %i.qw = getelementptr inbounds nuw [48 x i8], ptr %i.qu, i64 %i.qq
  %i.qx = mul nuw nsw i64 %i.qs, 48
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qw, ptr nonnull align 8 %i.qv, i64 %i.qx, i1 false), !alias.scope !210344, !noalias !210346
  br label %bb.en

bb.el:                                            ; preds = %bb.em
  %i.qy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !210329
  unreachable

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ed, %bb.ec
  store ptr %.sroa.7.8.copyload7.i.i.i.i.i, ptr %i.qb, align 1, !noalias !210304
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  store i64 %.sroa.11.8.copyload10.i.i.i.i.i, ptr %i.qz, align 1, !noalias !210304
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 176
  %i.rb = add nuw nsw i16 %i.or, 1
  %i.rc = getelementptr inbounds nuw [48 x i8], ptr %i.ra, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.rc, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.e, i64 48, i1 false), !alias.scope !210347, !noalias !210348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i16 %i.rb, ptr %i.pv, align 2, !noalias !210348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !210292
  br label %bb.ep

bb.em:                                            ; preds = %bb.eg, %bb.ef, %.invoke.i.i.i.i.i.i.i.i
  %i.rd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17h8f9d3c2b0370e745E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.au) #81
          to label %.body.i.i.i.i unwind label %bb.el, !noalias !210305

bb.en:                                            ; preds = %bb.ek, %bb.ej
  store ptr %.sroa.7.8.copyload7.i.i.i.i.i, ptr %i.qp, align 1, !noalias !210304
  %i.re = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  store i64 %.sroa.11.8.copyload10.i.i.i.i.i, ptr %i.re, align 1, !noalias !210304
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ql, i64 176
  %i.rg = add i16 %i.qn, 1
  %i.rh = getelementptr inbounds nuw [48 x i8], ptr %i.rf, i64 %.sroa.10.0.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.rh, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.d, i64 48, i1 false), !alias.scope !210349, !noalias !210330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i16 %i.rg, ptr %i.qm, align 2, !noalias !210330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !210350
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i, align 8, !noalias !210350 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !210350
  %.sroa.78.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sink62.i.sroa.gep.i.i.i.i.i.i.i, align 8, !noalias !210350 ; 4 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sink61.i.sroa.gep.i.i.i.i.i.i.i, align 8, !noalias !210350 ; 2 uses
  %.sroa.9.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sink62.i.sroa.gep41.i.i.i.i.i.i.i, align 8, !noalias !210350 ; 3 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sink61.i.sroa.gep43.i.i.i.i.i.i.i, align 8, !noalias !210350 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !210306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !210292
end_hunk_13
begin_hunk_14_@"_ZN137_$LT$cellulite..builder..$LT$impl$u20$cellulite..Cellulite$GT$..remove_deleted_items..RemoveDeletedItemsSteps$u20$as$u20$steppe..Step$GT$4name17hd437bca1a1bb5984E"
declare void @"_ZN137_$LT$cellulite..builder..$LT$impl$u20$cellulite..Cellulite$GT$..remove_deleted_items..RemoveDeletedItemsSteps$u20$as$u20$steppe..Step$GT$4name17hd437bca1a1bb5984E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN147_$LT$cellulite..builder..$LT$impl$u20$cellulite..Cellulite$GT$..insert_items_at_level_zero..InsertItemsAtLevelZeroSteps$u20$as$u20$steppe..Step$GT$4name17hd32888b74b1d36ebE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN54_$LT$cellulite..BuildSteps$u20$as$u20$steppe..Step$GT$4name17h591a6ff1649d782fE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN68_$LT$core..fmt..Formatter$u20$as$u20$powerfmt..ext..FormatterExt$GT$14pad_with_width17ha25c628238c85746E"(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN65_$LT$rustls..msgs..enums..HpkeKem$u20$as$u20$core..fmt..Debug$GT$3fmt17h6ec3237484dffac5E"(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN61_$LT$http..status..StatusCode$u20$as$u20$core..fmt..Debug$GT$3fmt17h11e2d9377ee69e7eE"(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i16, i16 } @_ZN10serde_json4read22decode_four_hex_digits17h7f6a17924b407a69E(i8 noundef, i8 noundef, i8 noundef, i8 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter9debug_map17h02a3602f78cbe3e0E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders8DebugMap6finish17he22c9d5a587142dfE(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN11parking_lot9raw_mutex8RawMutex11unlock_slow17he4eca0c59a2bc05cE(ptr noundef nonnull align 1, i1 noundef zeroext) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN68_$LT$rustls..msgs..enums..EchVersion$u20$as$u20$core..fmt..Debug$GT$3fmt17h183c79d7cf2ac0fbE"(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN71_$LT$rustls..msgs..enums..ExtensionType$u20$as$u20$core..fmt..Debug$GT$3fmt17hd726cb39a773591eE"(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5seize9collector9Collector11reclaim_all17h57f34aea35abff79E(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @"_ZN69_$LT$backoff..clock..SystemClock$u20$as$u20$backoff..clock..Clock$GT$3now17h1f4a2f492431883dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_ZN3std4time7Instant14duration_since17h7412c5691c4c8a90E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_ZN7backoff11exponential17nanos_to_duration17h680189a22b0d9f11E(double noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN69_$LT$backoff..retry..ThreadSleep$u20$as$u20$backoff..retry..Sleep$GT$5sleep17h8700b6b8cb730fb2E"(ptr noalias noundef nonnull align 1, i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @"_ZN7bincode5error129_$LT$impl$u20$core..convert..From$LT$std..io..error..Error$GT$$u20$for$u20$alloc..boxed..Box$LT$bincode..error..ErrorKind$GT$$GT$4from17hc729f952263b302dE"(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$25reserve_internal_or_panic17hf03e4d35305f31f9E"(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i64 noundef, i1 noundef zeroext) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$25reserve_internal_or_panic17he48b4636283b4894E"(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i64 noundef, i1 noundef zeroext) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$25reserve_internal_or_panic17hbe2c91cea2123435E"(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i64 noundef, i1 noundef zeroext) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$25reserve_internal_or_panic17h610d30f2665b17b0E"(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i64 noundef, i1 noundef zeroext) unnamed_addr #22

; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN7bumpalo5alloc18handle_alloc_error17h077d55f6423c56d4E(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #69

; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN7bumpalo11collections7raw_vec17capacity_overflow17h2914ddf5de003a02E() unnamed_addr #69

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN7bumpalo3oom17h5faf5517b7c985fdE() unnamed_addr #65

; Function Attrs: nonlazybind uwtable
declare void @_ZN7memmap22os9MmapInner3map17h945c0949fcd15ae1E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_ZN7memmap22os8file_len17hd39f334523d88558E(i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_ZN7memmap211MmapOptions12validate_len17hfb00179b3ca5938eE(i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN7memmap22os9MmapInner7map_mut17hc0720068e0f8522bE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_ZN3std2io5error5Error3new17h3d5870e22f9457d9E(i8 noundef range(i8 0, 42), i64 noundef, i64 noundef) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_ZN3std2io5error5Error3new17h7157d976289c6a33E(i8 noundef range(i8 0, 42), i64 noundef, i1 noundef zeroext) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare void @_ZN7roaring6bitmap5store5Store13with_capacity17hc6b77316ec3dc503E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN7roaring6bitmap5store5Store12insert_range17h99c18b5fd54fe8ebE(ptr noalias noundef align 8 dereferenceable(24), i48) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN7roaring6bitmap9container9Container12remove_range17h1a85b2ff3d71fcb1E(ptr noalias noundef align 8 dereferenceable(32), i48) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN7roaring6bitmap9container9Container14push_unchecked17h6b3eba3050a78d77E(ptr noalias noundef align 8 dereferenceable(32), i16 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN7roaring6bitmap9container9Container3len17h443d14de7dbcd8a2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN7roaring6bitmap9container9Container20ensure_correct_store17hbe63faf056884c5aE(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef align 8 dereferenceable(32), i16 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i16, i16 } @_ZN7roaring6bitmap5store5Store6select17hf9cce8dd78482cd6E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i16 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN7roaring6bitmap9container9Container8contains17h29a1f91ea813ef1eE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i16 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN7roaring6bitmap9container9Container4push17h92d25c4b6cc27e1fE(ptr noalias noundef align 8 dereferenceable(40), i16 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN118_$LT$roaring..bitmap..store..Store$u20$as$u20$core..ops..bit..BitOrAssign$LT$$RF$roaring..bitmap..store..Store$GT$$GT$12bitor_assign17h2b11e9c8b04e046dE"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN7roaring6bitmap9container9Container20ensure_correct_store17hc18ddf6a5eea8937E(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN7roaring6bitmap5store5Store9to_bitmap17hb5d57858913d3775E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h90f15cc8560a1477E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN7tracing4span4Span9make_with17h9f0bb4a9b48c8367E(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4obkv6varint15varint_decode3217h75f985768505db00E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN10serde_json5value4from85_$LT$impl$u20$core..convert..From$LT$f64$GT$$u20$for$u20$serde_json..value..Value$GT$4from17h8bf0c6b634c233c5E"(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), double noundef) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, ptr } @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10write_cold17h70306deeea6b2ea2E"(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare void @_ZN5tokio4sync6notify6Notify14notify_waiters17hd73ace121d40751aE(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN11rand_chacha4guts11refill_wide17h17504454263b841fE(ptr noalias noundef align 16 dereferenceable(48), i32 noundef, ptr noalias noundef align 1 dereferenceable(256)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @"_ZN5rayon5range78_$LT$impl$u20$rayon..range..private..IndexedRangeInteger$u20$for$u20$usize$GT$3len17h45de417bf4711862E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i16 0, 289) i16 @"_ZN74_$LT$dump..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h61f58c981dfec459E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i16 0, 289) i16 @"_ZN67_$LT$heed..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h49284ce49e7e386bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i16 0, 289) i16 @"_ZN75_$LT$milli..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h070f3a4f5ae2a526E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i16 0, 289) i16 @"_ZN73_$LT$file_store..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17hf1f8b91e9ef65cd7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i16 0, 289) i16 @"_ZN77_$LT$std..io..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h9fa5a082e959804dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i16 0, 289) i16 @"_ZN84_$LT$tempfile..file..PersistError$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h62f4f574420d0092E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h70f50921d2b95bdfE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 6) i8 @"_ZN17meilisearch_types5tasks1_86_$LT$impl$u20$enum_iterator..Sequence$u20$for$u20$meilisearch_types..tasks..Status$GT$4next17h5b0b09d3311b0d86E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 19) i8 @"_ZN17meilisearch_types5tasks1_84_$LT$impl$u20$enum_iterator..Sequence$u20$for$u20$meilisearch_types..tasks..Kind$GT$4next17hfeb1f1a1f4d93de9E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #64

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN65_$LT$rustls..msgs..enums..HpkeKdf$u20$as$u20$core..fmt..Debug$GT$3fmt17h00ba56db68fc4090E"(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter9debug_set17h7050737cdc375410E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders8DebugSet6finish17hf1e1ce2970196d3eE(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_ZN10serde_json5value3ser17invalid_raw_value17h0d2788d7683b2187E() unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_ZN17meilisearch_types5error13ResponseError8from_msg17h9ea4b404eeb719b7E(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i16 noundef range(i16 0, 289)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @"_ZN8powerfmt19smart_display_impls70_$LT$impl$u20$powerfmt..smart_display..SmartDisplay$u20$for$u20$i8$GT$8metadata17h2986407cd3aecc84E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN12aho_corasick11ahocorasick11AhoCorasick12patterns_len17h7d65da9dd74c7a70E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN8fastrand10global_rng11random_seed17h4b5a2dc88f0ebb58E() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN113_$LT$powerfmt..smart_display..FormatterOptions$u20$as$u20$core..convert..From$LT$$RF$core..fmt..Formatter$GT$$GT$4from17hded540aebc368e28E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @"_ZN8powerfmt19smart_display_impls70_$LT$impl$u20$powerfmt..smart_display..SmartDisplay$u20$for$u20$u8$GT$8metadata17hd252eef89a2dc0d3E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @"_ZN8powerfmt19smart_display_impls72_$LT$impl$u20$powerfmt..smart_display..SmartDisplay$u20$for$u20$char$GT$8metadata17h84fb2ade9cd1f279E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN3std4path4Path11is_absolute17hf19889a9c7aed189E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3env11current_dir17hc9190a9b245afa63E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN3std3ffi6os_str8OsString17into_boxed_os_str17h464c67547c0e3b4fE(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN8tempfile4file3imp8platform7persist17h057a8b1cbc700ba0E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN8tempfile4util7tmpname17h409a726b957fead4E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN8tempfile4file12create_named17h9385febd9674034cE(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 4 dereferenceable(16), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #64

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() unnamed_addr #66

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli10heed_codec14roaring_bitmap24cbo_roaring_bitmap_codec21CboRoaringBitmapCodec18serialize_into_vec17hf8b4f2c0d3df5053E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN66_$LT$milli..criterion..Criterion$u20$as$u20$core..fmt..Display$GT$3fmt17h9e32f299f4b2ac6dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5serde7private2de19flat_map_take_entry17he0694281756fc3ddE(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E() unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_ZN17meilisearch_types9task_view8TaskView9from_task17h97e7a18366a7801cE(ptr dead_on_unwind noalias noundef writable sret([1144 x i8]) align 8 captures(address) dereferenceable(1144), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(784)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @"_ZN10serde_json5error103_$LT$impl$u20$core..convert..From$LT$serde_json..error..Error$GT$$u20$for$u20$std..io..error..Error$GT$4from17hc8f9273a0fb314abE"(ptr noalias noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli10heed_codec14roaring_bitmap24cbo_roaring_bitmap_codec21CboRoaringBitmapCodec16deserialize_from17he826154b066657bcE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN5milli9documents11primary_key24validate_document_id_str17h2354c94f562f6a3cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN92_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$core..convert..Infallible$GT$$GT$4from17h702bda60553db096E"(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 8 captures(address) dereferenceable(320)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$13parse_str_raw17hfbae946a49ab53cbE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @"_ZN105_$LT$roaring..bitmap..iter..IntoIter$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$8nth_back17hb05edf27634784a0E"(ptr noalias noundef align 8 dereferenceable(128), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN17meilisearch_types9index_uid9UserIndex3new17he3028764339854adE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 1114112) i32 @_ZN9byte_unit6common19get_char_from_bytes17h3278923d4ab29cc8E(i8 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN78_$LT$rust_decimal..decimal..Decimal$u20$as$u20$core..ops..arith..AddAssign$GT$10add_assign17h830300418ac00dd0E"(ptr noalias noundef align 4 dereferenceable(16), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN9byte_unit4unit5parse8read_xib17h2d84fa7f2a734216E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i1 noundef zeroext, i8, ptr noundef nonnull, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 2) i8 @"_ZN65_$LT$rust_decimal..decimal..Decimal$u20$as$u20$core..cmp..Ord$GT$3cmp17h15260d3ac525b478E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN12rust_decimal7decimal7Decimal4ceil17h0de2e8be52f0bddeE(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @"_ZN80_$LT$rust_decimal..decimal..Decimal$u20$as$u20$num_traits..cast..ToPrimitive$GT$6to_u6417h3f45ba8693bae9d2E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops130_$LT$impl$u20$core..ops..arith..SubAssign$LT$$RF$roaring..bitmap..RoaringBitmap$GT$$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$10sub_assign17h264c5df42b061371E"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops88_$LT$impl$u20$core..ops..bit..BitOrAssign$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$12bitor_assign17h09102212d483a5f9E"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite7builder11FrozenItems3get17h8232a006ae0a176bE(ptr dead_on_unwind noalias noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$22explode_level_zero_geo17hcf0ca64506284c6eE"(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), i32 noundef, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(152), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite7builder18get_children_cells17h56839557153c4de8E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops86_$LT$impl$u20$core..ops..bit..BitOr$u20$for$u20$$RF$roaring..bitmap..RoaringBitmap$GT$5bitor17h843290a2aaa5c578E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap8inherent79_$LT$impl$u20$core..clone..Clone$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$5clone17h4debcbbb2170dfb6E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite7builder14get_cell_shape17h4b4d0174ccd9b0d8E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare i48 @"_ZN139_$LT$zerometry..Zerometry$u20$as$u20$zerometry..relation..RelationBetweenShapes$LT$geo_types..geometry..multi_polygon..MultiPolygon$GT$$GT$8relation17h59cb8aadfa6cb0b1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i56) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN71_$LT$cellulite..metadata..Version$u20$as$u20$core..default..Default$GT$7default17hcacaaff74eccc834E"(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite9Cellulite11set_version17h1d01d6968d680604E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i64 1, 0) i64 @_ZN3h3o5index4cell9CellIndex13new_unchecked17h23669f4b7fb1e7a1E(i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN7roaring6bitmap3cmp48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$11is_disjoint17ha348ac29f04de799E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$23does_cell_have_children17h84537149144d1b60E"(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops87_$LT$impl$u20$core..ops..bit..BitAnd$u20$for$u20$$RF$roaring..bitmap..RoaringBitmap$GT$6bitand17h4de24adb76117199E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare noundef i32 @_ZN9getrandom8backends27linux_android_with_fallback17use_file_fallback17hd4fde6409425fab5E(ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_ZN9getrandom8backends8use_file5utils9get_errno9get_errno17h698397144bad8d62E() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 1, 0) i32 @_ZN9getrandom5error5Error10from_errno17hf4b4f1ca7ac401b4E(i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hbda1b32cb3f89ae5E(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h426e5247b99c5843E(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #71

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h9e59368a592357f5E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #21

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6548e87464b6da1dE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i1 noundef zeroext) unnamed_addr #21

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17ha14a6e535bde4f36E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #21

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h3174008c6fba5935E"(ptr noalias noundef align 8 dereferenceable(40), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #21

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hed6d773e1d62b7f4E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #21

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8a84036aa67c6426E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #21

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h735543a5df864733E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #21

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h7b9383fcd4caed29E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #21

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5437a444d9d5e077E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #21

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h9f4a91183dce6d2fE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #59

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #59

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #64

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #77

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #64

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #64

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #64

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #78

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #64

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #71

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #64

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #64

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #71

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #71

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #64

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #71

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #64

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { nofree noinline norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { alwaysinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #52 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #53 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #54 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #55 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #56 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #57 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #58 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #59 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #60 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #61 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #62 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #63 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #64 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #65 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #66 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #67 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #68 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #69 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #70 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #71 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #72 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #73 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #74 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #75 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #76 = { cold nofree noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #77 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #78 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #79 = { nounwind }
attributes #80 = { noreturn }
attributes #81 = { cold }
attributes #82 = { cold noreturn nounwind }
attributes #83 = { noreturn nounwind }
attributes #84 = { "function-inline-cost-multiplier"="2" }
attributes #85 = { cold "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN10serde_json3ser18format_escaped_str17hb1af85c5aef908d6E: argument 0"}
!5 = distinct !{!5, !"_ZN10serde_json3ser18format_escaped_str17hb1af85c5aef908d6E"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h284e73513aabdf24E: argument 0"}
!8 = distinct !{!8, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h284e73513aabdf24E"}
!9 = !{i64 0, i64 -9223372036854775808}
!10 = !{!11, !12, !4}
!11 = distinct !{!11, !8, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h284e73513aabdf24E: argument 1"}
!12 = distinct !{!12, !13, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E: argument 0"}
!13 = distinct !{!13, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E"}
!14 = !{}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17h5473f8d7debd7d5aE: argument 0"}
!18 = distinct !{!18, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17h5473f8d7debd7d5aE"}
!19 = !{!17, !7}
!20 = !{!21, !11, !12, !4}
!21 = distinct !{!21, !18, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17h5473f8d7debd7d5aE: argument 1"}
!22 = !{!17, !7, !4}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN10serde_json3ser27format_escaped_str_contents17hbb923f73c143de0eE: argument 0"}
!25 = distinct !{!25, !"_ZN10serde_json3ser27format_escaped_str_contents17hbb923f73c143de0eE"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h284e73513aabdf24E: argument 0"}
!28 = distinct !{!28, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h284e73513aabdf24E"}
!29 = !{!30, !31, !33, !24, !4}
!30 = distinct !{!30, !28, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h284e73513aabdf24E: argument 1"}
!31 = distinct !{!31, !32, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E: argument 0"}
!32 = distinct !{!32, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E"}
!33 = distinct !{!33, !34, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h7654458c7096f22cE: argument 0"}
!34 = distinct !{!34, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h7654458c7096f22cE"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17h5473f8d7debd7d5aE: argument 0"}
!37 = distinct !{!37, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17h5473f8d7debd7d5aE"}
!38 = !{!36, !27}
!39 = !{!40, !30, !31, !33, !24, !4}
!40 = distinct !{!40, !37, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17h5473f8d7debd7d5aE: argument 1"}
!41 = !{!24, !4}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h284e73513aabdf24E: argument 0"}
!44 = distinct !{!44, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h284e73513aabdf24E"}
!45 = !{!46, !47, !49, !24, !4}
!46 = distinct !{!46, !44, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h284e73513aabdf24E: argument 1"}
!47 = distinct !{!47, !48, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E: argument 0"}
!48 = distinct !{!48, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E"}
!49 = distinct !{!49, !50, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h7654458c7096f22cE: argument 0"}
!50 = distinct !{!50, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h7654458c7096f22cE"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17h5473f8d7debd7d5aE: argument 0"}
!53 = distinct !{!53, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17h5473f8d7debd7d5aE"}
!54 = !{!52, !43}
!55 = !{!56, !46, !47, !49, !24, !4}
!56 = distinct !{!56, !53, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17h5473f8d7debd7d5aE: argument 1"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h284e73513aabdf24E: argument 0"}
!59 = distinct !{!59, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h284e73513aabdf24E"}
!60 = !{!61, !62, !24, !4}
!61 = distinct !{!61, !59, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h284e73513aabdf24E: argument 1"}
!62 = distinct !{!62, !63, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E: argument 0"}
!63 = distinct !{!63, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17h5473f8d7debd7d5aE: argument 0"}
!66 = distinct !{!66, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17h5473f8d7debd7d5aE"}
!67 = !{!65, !58}
!68 = !{!69, !61, !62, !24, !4}
!69 = distinct !{!69, !66, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17h5473f8d7debd7d5aE: argument 1"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h284e73513aabdf24E: argument 0"}
!72 = distinct !{!72, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h284e73513aabdf24E"}
!73 = !{!74, !75, !24, !4}
!74 = distinct !{!74, !72, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h284e73513aabdf24E: argument 1"}
!75 = distinct !{!75, !76, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E: argument 0"}
!76 = distinct !{!76, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17h5473f8d7debd7d5aE: argument 0"}
!79 = distinct !{!79, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17h5473f8d7debd7d5aE"}
end_hunk_14
