Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs_core-dc56baf12c63c20b.procfs_core.8462dd57f6c2f723-cgu.0?download=true
inline.NumInlined: 2766
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN11procfs_core3net21parse_addressport_str17h364c7279e8c964ebE:.lr.ph.split.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.at
  %lhsc = load i8, ptr %i.au, align 1
  %i.av = icmp eq i8 %lhsc, 58
  br i1 %i.av, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.aw = icmp ult i64 %2, %i.ar
  br i1 %i.aw, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i279", label %.lr.ph.split.i.i259

.lr.ph.split.i.i259:                              ; preds = %bb.h, %bb.e, %bb.g
  %i.ax = phi i64 [ %i.bk, %bb.g ], [ %i.ar, %bb.e ], [ %i.bk, %bb.h ] ; 6 uses
  %i.ay = sub nuw i64 %2, %i.ax                   ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax ; 2 uses
  %i.ba = icmp ult i64 %i.ay, 16
  br i1 %i.ba, label %.preheader.i.i.i280, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i261

.preheader.i.i.i280:                              ; preds = %.lr.ph.split.i.i259
  %.not.i.i.i281 = icmp eq i64 %2, %i.ax
  br i1 %.not.i.i.i281, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i279", label %.lr.ph.i.i.i282

.lr.ph.i.i.i282:                                  ; preds = %.preheader.i.i.i280, %bb.f
  %.sroa.01.05.i.i.i283 = phi i64 [ %i.be, %bb.f ], [ 0, %.preheader.i.i.i280 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.01.05.i.i.i283
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !556, !noalias !557, !noundef !4
  %i.bd = icmp eq i8 %i.bc, 58
  br i1 %i.bd, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i273, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i282
  %i.be = add nuw nsw i64 %.sroa.01.05.i.i.i283, 1 ; 2 uses
  %exitcond.not.i.i.i284 = icmp eq i64 %i.be, %i.ay
  br i1 %exitcond.not.i.i.i284, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i279", label %.lr.ph.i.i.i282

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i261: ; preds = %.lr.ph.split.i.i259
  %i.bf = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.az, i64 noundef %i.ay), !noalias !557 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 0
  %i.bh = extractvalue { i64, i64 } %i.bf, 1
  %i.bi = trunc nuw i64 %i.bg to i1
  br i1 %i.bi, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i273, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i279"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i273: ; preds = %.lr.ph.i.i.i282, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i261
  %.sroa.4.0.i27.i.i274 = phi i64 [ %i.bh, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i261 ], [ %.sroa.01.05.i.i.i283, %.lr.ph.i.i.i282 ] ; 3 uses
  %i.bj = add i64 %i.ax, 1
  %i.bk = add i64 %i.bj, %.sroa.4.0.i27.i.i274    ; 3 uses
  %.not21.i.i276 = icmp ugt i64 %i.bk, %2         ; 2 uses
  %i.bl = add i64 %i.ax, %.sroa.4.0.i27.i.i274
  %or.cond.i.i277.not = icmp ult i64 %i.bl, %2
  br i1 %or.cond.i.i277.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i273
  br i1 %.not21.i.i276, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i279", label %.lr.ph.split.i.i259

bb.h:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i273
  %i.bm = add i64 %i.ax, %.sroa.4.0.i27.i.i274    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  %lhsc424 = load i8, ptr %i.bn, align 1
  %i.bo = icmp eq i8 %lhsc424, 58                 ; 2 uses
  %brmerge = or i1 %i.bo, %.not21.i.i276
  %.mux = select i1 %i.bo, i64 %i.bm, i64 %2
  br i1 %brmerge, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i279", label %.lr.ph.split.i.i259

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i: ; preds = %bb.c, %.preheader.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.a, ptr %i.aa, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4126.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !558
  store ptr @51, ptr %i.h, align 8, !noalias !559
  %.sroa.4296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %.sroa.4296.0..sroa_idx, align 8, !noalias !559
  %.sroa.5297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.aa, ptr %.sroa.5297.0..sroa_idx, align 8, !noalias !559
  %.sroa.6298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %.sroa.6298.0..sroa_idx, align 8, !noalias !559
  %.sroa.7299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.7299.0..sroa_idx, align 8, !noalias !559
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @33, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 98, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 186, ptr %.sroa.630.0..sroa_idx, align 8
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit287"

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i279": ; preds = %bb.h, %bb.e, %bb.g, %.preheader.i.i.i280, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i261, %bb.f
  %.pn426 = phi i64 [ %.mux, %bb.h ], [ %2, %bb.f ], [ %2, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i261 ], [ %2, %.preheader.i.i.i280 ], [ %2, %bb.g ], [ %2, %bb.e ]
  %.sroa.4.1.i271.ph = sub nuw i64 %.pn426, %i.ar ; 7 uses
  %.sroa.0.1.i272.ph = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %.sroa.0.1.i272.ph, ptr %i.z, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sroa.4.1.i271.ph, ptr %i.bp, align 8
  switch i64 %.sroa.4.1.i271.ph, label %bb.j [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"
    i64 1, label %bb.i
  ]

.loopexit61.split.loop.exit64.i:                  ; preds = %.lr.ph
  %.mux.le.i = select i1 %i.cf, i32 257, i32 513
  br label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit"

bb.i:                                             ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i279"
  %i.bq = load i8, ptr %.sroa.0.1.i272.ph, align 1, !alias.scope !560, !noundef !4
  switch i8 %i.bq, label %.lr.ph.split.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"
  ]

.lr.ph.split.i.preheader:                         ; preds = %bb.k, %bb.l, %bb.i
  %.sroa.02.171.i.ph = phi ptr [ %i.br, %bb.k ], [ %.sroa.0.1.i272.ph, %bb.l ], [ %.sroa.0.1.i272.ph, %bb.i ]
  %.sroa.16.170.i.ph = phi i64 [ %i.bs, %bb.k ], [ %.sroa.4.1.i271.ph, %bb.l ], [ 1, %bb.i ]
  br label %.lr.ph.split.i

bb.j:                                             ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i279"
  %.pr.i = load i8, ptr %.sroa.0.1.i272.ph, align 1, !alias.scope !560
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i272.ph, i64 1 ; 2 uses
  %i.bs = add i64 %.sroa.4.1.i271.ph, -1          ; 2 uses
  %i.bt = icmp ult i64 %.sroa.4.1.i271.ph, 6
  br i1 %i.bt, label %.lr.ph.split.i.preheader, label %.lr.ph.preheader

bb.l:                                             ; preds = %bb.j
  %i.bu = icmp ult i64 %.sroa.4.1.i271.ph, 5
  br i1 %i.bu, label %.lr.ph.split.i.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k, %bb.l
  %.sroa.02.0.i395.ph = phi ptr [ %i.br, %bb.k ], [ %.sroa.0.1.i272.ph, %bb.l ]
  %.sroa.16.0.i394.ph = phi i64 [ %i.bs, %bb.k ], [ %.sroa.4.1.i271.ph, %bb.l ]
  br label %.lr.ph

.loopexit.i:                                      ; preds = %.preheader59.split.i, %bb.m
  %.sroa.018.2.i = phi i16 [ %i.cx, %bb.m ], [ %i.ck, %.preheader59.split.i ]
  %i.bv = zext i16 %.sroa.018.2.i to i32
  %i.bw = shl nuw i32 %i.bv, 16
  br label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit"

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader59.split.i
  %.sroa.02.0.i395 = phi ptr [ %i.ci, %.preheader59.split.i ], [ %.sroa.02.0.i395.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.16.0.i394 = phi i64 [ %i.ch, %.preheader59.split.i ], [ %.sroa.16.0.i394.ph, %.lr.ph.preheader ]
  %.sroa.018.0.i393 = phi i16 [ %i.ck, %.preheader59.split.i ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bx = icmp ugt i16 %.sroa.018.0.i393, 4095
  %i.by = load i8, ptr %.sroa.02.0.i395, align 1, !alias.scope !560, !noundef !4 ; 2 uses
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = icmp ugt i8 %i.by, 57
  %i.cb = add nsw i32 %i.bz, -65
  %i.cc = and i32 %i.cb, -33
  %i.cd = add nuw nsw i32 %i.cc, 10
  %i.ce = add nsw i32 %i.bz, -48
  %spec.select.i = select i1 %i.ca, i32 %i.cd, i32 %i.ce ; 2 uses
  %i.cf = icmp ugt i32 %spec.select.i, 15         ; 2 uses
  %brmerge.i = or i1 %i.bx, %i.cf
  br i1 %brmerge.i, label %.loopexit61.split.loop.exit64.i, label %.preheader59.split.i

.preheader59.split.i:                             ; preds = %.lr.ph
  %i.cg = shl nuw i16 %.sroa.018.0.i393, 4
  %i.ch = add i64 %.sroa.16.0.i394, -1            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i395, i64 1
  %i.cj = trunc nuw nsw i32 %spec.select.i to i16
  %i.ck = or disjoint i16 %i.cg, %i.cj            ; 2 uses
  %.not.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.m
  %.sroa.02.171.i = phi ptr [ %i.cv, %bb.m ], [ %.sroa.02.171.i.ph, %.lr.ph.split.i.preheader ] ; 2 uses
  %.sroa.16.170.i = phi i64 [ %i.cu, %bb.m ], [ %.sroa.16.170.i.ph, %.lr.ph.split.i.preheader ]
  %.sroa.018.169.i = phi i16 [ %i.cx, %bb.m ], [ 0, %.lr.ph.split.i.preheader ]
  %i.cl = load i8, ptr %.sroa.02.171.i, align 1, !alias.scope !560, !noundef !4 ; 2 uses
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = icmp ugt i8 %i.cl, 57
  %i.co = add nsw i32 %i.cm, -65
  %i.cp = and i32 %i.co, -33
  %i.cq = add nuw nsw i32 %i.cp, 10
  %i.cr = add nsw i32 %i.cm, -48
  %spec.select75.i = select i1 %i.cn, i32 %i.cq, i32 %i.cr ; 2 uses
  %i.cs = icmp ult i32 %spec.select75.i, 16
  br i1 %i.cs, label %bb.m, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"

bb.m:                                             ; preds = %.lr.ph.split.i
  %i.ct = shl i16 %.sroa.018.169.i, 4
  %i.cu = add nsw i64 %.sroa.16.170.i, -1         ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.02.171.i, i64 1
  %i.cw = trunc nuw nsw i32 %spec.select75.i to i16
  %i.cx = or disjoint i16 %i.ct, %i.cw            ; 2 uses
  %.not53.i = icmp eq i64 %i.cu, 0
  br i1 %.not53.i, label %.loopexit.i, label %.lr.ph.split.i

"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit": ; preds = %.loopexit61.split.loop.exit64.i, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i32 [ %i.bw, %.loopexit.i ], [ %.mux.le.i, %.loopexit61.split.loop.exit64.i ] ; 3 uses
  %.sroa.5193.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i, 16
  %.sroa.5193.0.extract.trunc = trunc nuw i32 %.sroa.5193.0.extract.shift to i16 ; 2 uses
  %i.cy = trunc i32 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.cy, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread", label %bb.n

"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread": ; preds = %.lr.ph.split.i, %bb.i, %bb.i, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i279", %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit"
  %.sroa.8.0.insert.insert.i369 = phi i32 [ %.sroa.8.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit" ], [ 257, %bb.i ], [ 1, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i279" ], [ 257, %bb.i ], [ 257, %.lr.ph.split.i ]
  %.sroa.4192.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i369, 8
  %.sroa.4192.0.extract.trunc = trunc i32 %.sroa.4192.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i8 %.sroa.4192.0.extract.trunc, ptr %i.y, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.z, ptr %i.v, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.4132.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !561
  store ptr @47, ptr %i.g, align 8, !noalias !562
  %.sroa.4308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.4308.0..sroa_idx, align 8, !noalias !562
  %.sroa.5309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.v, ptr %.sroa.5309.0..sroa_idx, align 8, !noalias !562
  %.sroa.6310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.6310.0..sroa_idx, align 8, !noalias !562
  %.sroa.7311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.7311.0..sroa_idx, align 8, !noalias !562
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.w, ptr %i.u, align 8
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4136.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.y, ptr %i.cz, align 8
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4140.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !563
  store ptr @49, ptr %i.f, align 8, !noalias !564
  %.sroa.4302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.4302.0..sroa_idx, align 8, !noalias !564
  %.sroa.5303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.u, ptr %.sroa.5303.0..sroa_idx, align 8, !noalias !564
  %.sroa.6304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 2, ptr %.sroa.6304.0..sroa_idx, align 8, !noalias !564
  %.sroa.7305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.7305.0..sroa_idx, align 8, !noalias !564
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.ao unwind label %bb.am

bb.n:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %"_ZN4core3num21_$LT$impl$u20$u32$GT$13from_le_bytes17h78c96324db6491b7E._ZN4core3num21_$LT$impl$u20$u32$GT$13from_be_bytes17h8258789deec27a58E" = select i1 %3, ptr @"_ZN4core3num21_$LT$impl$u20$u32$GT$13from_le_bytes17h78c96324db6491b7E", ptr @"_ZN4core3num21_$LT$impl$u20$u32$GT$13from_be_bytes17h8258789deec27a58E" ; 5 uses
  switch i64 %i.at, label %bb.y [
    i64 8, label %bb.o
    i64 32, label %bb.x
  ]

bb.o:                                             ; preds = %bb.n
  call fastcc void @"_ZN58_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$hex..FromHex$GT$8from_hex17hfe051d0b566d86d1E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef 8)
  %i.da = load i64, ptr %i.t, align 8, !range !14, !noundef !4 ; 5 uses
  %i.db = icmp eq i64 %i.da, -9223372036854775808
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.s, ptr %i.q, align 8
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN63_$LT$hex..error..FromHexError$u20$as$u20$core..fmt..Display$GT$3fmt17h783229eca38a9775E", ptr %.sroa.4144.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !565
  store ptr @31, ptr %i.e, align 8, !noalias !566
  %.sroa.4319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.4319.0..sroa_idx, align 8, !noalias !566
  %.sroa.5320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.q, ptr %.sroa.5320.0..sroa_idx, align 8, !noalias !566
  %.sroa.6321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.6321.0..sroa_idx, align 8, !noalias !566
  %.sroa.7322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.7322.0..sroa_idx, align 8, !noalias !566
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @33, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 98, ptr %.sroa.555.0..sroa_idx, align 8
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 198, ptr %.sroa.656.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit287"

bb.q:                                             ; preds = %bb.o
  %.sroa.4316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4316.0.copyload = load ptr, ptr %.sroa.4316.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5317.0.copyload = load i64, ptr %.sroa.5317.0..sroa_idx, align 8 ; 2 uses
  %i.dd = icmp ugt i64 %.sroa.5317.0.copyload, 3
  br i1 %i.dd, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit238", label %bb.r, !prof !9

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 4, i64 noundef %.sroa.5317.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #37
          to label %bb.u unwind label %bb.s

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit238": ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4316.0.copyload) ]
  %.sroa.0147.0.copyload = load i32, ptr %.sroa.4316.0.copyload, align 1
  %i.de = invoke noundef i32 %"_ZN4core3num21_$LT$impl$u20$u32$GT$13from_le_bytes17h78c96324db6491b7E._ZN4core3num21_$LT$impl$u20$u32$GT$13from_be_bytes17h8258789deec27a58E"(i32 %.sroa.0147.0.copyload)
          to label %bb.v unwind label %bb.s, !callees !567

bb.s:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit238", %bb.r
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = icmp eq i64 %i.da, 0
  br i1 %i.dg, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit", label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4316.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4316.0.copyload, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit"

bb.u:                                             ; preds = %bb.r
  unreachable

bb.v:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit238"
  %i.dh = tail call i32 @llvm.bswap.i32(i32 %i.de)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %i.di, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i32 %i.dh, ptr %.sroa.465.0..sroa_idx, align 2
  %.sroa.465.sroa.4.0..sroa.465.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %.sroa.5193.0.extract.trunc, ptr %.sroa.465.sroa.4.0..sroa.465.0..sroa_idx.sroa_idx, align 2
  store i64 -9223372036854775803, ptr %0, align 8
  %i.dj = icmp eq i64 %i.da, 0
  br i1 %i.dj, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit287", label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4316.0.copyload, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit287"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit": ; preds = %bb.an, %bb.am, %bb.aj, %bb.ai, %bb.ac, %bb.ab, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.fa, %bb.aj ], [ %i.dp, %bb.ac ], [ %i.df, %bb.t ], [ %i.df, %bb.s ], [ %i.dp, %bb.ab ], [ %i.fa, %bb.ai ], [ %i.ff, %bb.am ], [ %i.ff, %bb.an ]
  resume { ptr, i32 } %.pn

bb.x:                                             ; preds = %bb.n
  call fastcc void @"_ZN58_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$hex..FromHex$GT$8from_hex17hfe051d0b566d86d1E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef 32)
  %i.dk = load i64, ptr %i.p, align 8, !range !14, !noundef !4 ; 5 uses
  %i.dl = icmp eq i64 %i.dk, -9223372036854775808
  br i1 %i.dl, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.ac, ptr %i.i, align 8
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.4184.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !568
  store ptr @44, ptr %i.d, align 8, !noalias !569
  %.sroa.4348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.4348.0..sroa_idx, align 8, !noalias !569
  %.sroa.5349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %.sroa.5349.0..sroa_idx, align 8, !noalias !569
  %.sroa.6350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.6350.0..sroa_idx, align 8, !noalias !569
  %.sroa.7351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.7351.0..sroa_idx, align 8, !noalias !569
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.k, align 8
  %.sroa.4188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4188.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !570
  store ptr @31, ptr %i.c, align 8, !noalias !571
  %.sroa.4342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4342.0..sroa_idx, align 8, !noalias !571
  %.sroa.5343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.k, ptr %.sroa.5343.0..sroa_idx, align 8, !noalias !571
  %.sroa.6344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.6344.0..sroa_idx, align 8, !noalias !571
  %.sroa.7345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7345.0..sroa_idx, align 8, !noalias !571
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.ak unwind label %bb.ai

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.o, ptr %i.m, align 8
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @"_ZN63_$LT$hex..error..FromHexError$u20$as$u20$core..fmt..Display$GT$3fmt17h783229eca38a9775E", ptr %.sroa.4152.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !572
  store ptr @31, ptr %i.b, align 8, !noalias !573
  %.sroa.4336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4336.0..sroa_idx, align 8, !noalias !573
  %.sroa.5337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.m, ptr %.sroa.5337.0..sroa_idx, align 8, !noalias !573
  %.sroa.6338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.6338.0..sroa_idx, align 8, !noalias !573
  %.sroa.7339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7339.0..sroa_idx, align 8, !noalias !573
end_hunk_0
begin_hunk_1_@_ZN11procfs_core7keyring3Key9from_line17hd7df97abccecffbfE:bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2059
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !2059
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @123, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 102, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 267, ptr %.sroa.612.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.bd

bb.c:                                             ; preds = %bb.a
  store ptr %i.bo, ptr %i.bl, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.bp, ptr %i.br, align 8
  switch i64 %i.bp, label %bb.f [
    i64 0, label %.loopexit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.bs = load i8, ptr %i.bo, align 1, !alias.scope !2060, !noundef !4
  switch i8 %i.bs, label %.lr.ph.split.i.preheader [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

bb.e:                                             ; preds = %bb.f
  %i.bt = icmp ult i64 %i.bp, 17
  br i1 %i.bt, label %.lr.ph.split.i.preheader, label %.preheader57.i

.lr.ph.split.i.preheader:                         ; preds = %bb.g, %bb.d, %bb.e
  %.sroa.01.170.i.ph = phi ptr [ %i.bu, %bb.g ], [ %i.bo, %bb.e ], [ %i.bo, %bb.d ]
  %.sroa.16.169.i.ph = phi i64 [ %i.bv, %bb.g ], [ %i.bp, %bb.e ], [ 1, %bb.d ]
  br label %.lr.ph.split.i

bb.f:                                             ; preds = %bb.c
  %.pr.i = load i8, ptr %i.bo, align 1, !alias.scope !2060
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  %i.bv = add i64 %i.bp, -1                       ; 2 uses
  %i.bw = icmp ult i64 %i.bp, 18
  br i1 %i.bw, label %.lr.ph.split.i.preheader, label %.preheader57.i

.preheader57.i:                                   ; preds = %bb.g, %bb.e
  %.sroa.16.0.ph.i = phi i64 [ %i.bv, %bb.g ], [ %i.bp, %bb.e ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %i.bu, %bb.g ], [ %i.bo, %bb.e ]
  %.not.i655 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.i655, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit", label %.lr.ph

.preheader57.split.i:                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i658, i64 1
  %i.by = add i64 %.sroa.16.0.i657, -1            ; 2 uses
  %i.bz = shl nuw i64 %.sroa.017.0.i656, 4
  %i.ca = zext nneg i32 %spec.select.i to i64
  %i.cb = or disjoint i64 %i.bz, %i.ca            ; 2 uses
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader57.i, %.preheader57.split.i
  %.sroa.01.0.i658 = phi ptr [ %i.bx, %.preheader57.split.i ], [ %.sroa.01.0.ph.i, %.preheader57.i ] ; 2 uses
  %.sroa.16.0.i657 = phi i64 [ %i.by, %.preheader57.split.i ], [ %.sroa.16.0.ph.i, %.preheader57.i ]
  %.sroa.017.0.i656 = phi i64 [ %i.cb, %.preheader57.split.i ], [ 0, %.preheader57.i ] ; 2 uses
  %i.cc = load i8, ptr %.sroa.01.0.i658, align 1, !alias.scope !2060, !noundef !4 ; 2 uses
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = icmp ugt i8 %i.cc, 57
  %i.cf = add nsw i32 %i.cd, -65
  %i.cg = and i32 %i.cf, -33
  %i.ch = add nuw nsw i32 %i.cg, 10
  %i.ci = add nsw i32 %i.cd, -48
  %spec.select.i = select i1 %i.ce, i32 %i.ch, i32 %i.ci ; 2 uses
  %i.cj = icmp ult i32 %spec.select.i, 16
  br i1 %i.cj, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %i.ck = icmp ugt i64 %.sroa.017.0.i656, 1152921504606846975
  br i1 %i.ck, label %.loopexit, label %.preheader57.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.i
  %.sroa.01.170.i = phi ptr [ %i.cv, %bb.i ], [ %.sroa.01.170.i.ph, %.lr.ph.split.i.preheader ] ; 2 uses
  %.sroa.16.169.i = phi i64 [ %i.cu, %bb.i ], [ %.sroa.16.169.i.ph, %.lr.ph.split.i.preheader ]
  %.sroa.017.168.i = phi i64 [ %i.cx, %bb.i ], [ 0, %.lr.ph.split.i.preheader ]
  %i.cl = load i8, ptr %.sroa.01.170.i, align 1, !alias.scope !2060, !noundef !4 ; 2 uses
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = icmp ugt i8 %i.cl, 57
  %i.co = add nsw i32 %i.cm, -65
  %i.cp = and i32 %i.co, -33
  %i.cq = add nuw nsw i32 %i.cp, 10
  %i.cr = add nsw i32 %i.cm, -48
  %spec.select76.i = select i1 %i.cn, i32 %i.cq, i32 %i.cr ; 2 uses
  %i.cs = icmp ult i32 %spec.select76.i, 16
  br i1 %i.cs, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.ct = shl i64 %.sroa.017.168.i, 4
  %i.cu = add i64 %.sroa.16.169.i, -1             ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.01.170.i, i64 1
  %i.cw = zext nneg i32 %spec.select76.i to i64
  %i.cx = or disjoint i64 %i.ct, %i.cw            ; 2 uses
  %.not51.i = icmp eq i64 %i.cu, 0
  br i1 %.not51.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit", label %.lr.ph.split.i

.loopexit:                                        ; preds = %bb.h, %.lr.ph, %.lr.ph.split.i, %bb.d, %bb.d, %bb.c
  %.sroa.2.0.ph = phi i8 [ 1, %bb.d ], [ 1, %bb.d ], [ 0, %bb.c ], [ 1, %.lr.ph.split.i ], [ 1, %.lr.ph ], [ 2, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store i8 %.sroa.2.0.ph, ptr %i.bi, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store ptr %i.bl, ptr %i.bf, align 8
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.4249.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2061
  store ptr @95, ptr %i.p, align 8, !noalias !2062
  %.sroa.4484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 2, ptr %.sroa.4484.0..sroa_idx, align 8, !noalias !2062
  %.sroa.5485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.bf, ptr %.sroa.5485.0..sroa_idx, align 8, !noalias !2062
  %.sroa.6486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 1, ptr %.sroa.6486.0..sroa_idx, align 8, !noalias !2062
  %.sroa.7487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr null, ptr %.sroa.7487.0..sroa_idx, align 8, !noalias !2062
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store ptr %i.bg, ptr %i.be, align 8
  %.sroa.4257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4257.0..sroa_idx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bi, ptr %i.cy, align 8
  %.sroa.4261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4261.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2063
  store ptr @49, ptr %i.o, align 8, !noalias !2064
  %.sroa.4478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 2, ptr %.sroa.4478.0..sroa_idx, align 8, !noalias !2064
  %.sroa.5479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.be, ptr %.sroa.5479.0..sroa_idx, align 8, !noalias !2064
  %.sroa.6480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 2, ptr %.sroa.6480.0..sroa_idx, align 8, !noalias !2064
  %.sroa.7481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %.sroa.7481.0..sroa_idx, align 8, !noalias !2064
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o)
          to label %bb.bv unwind label %bb.bt

"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit": ; preds = %.preheader57.split.i, %bb.i, %.preheader57.i
  %.sroa.9.0 = phi i64 [ %i.cx, %bb.i ], [ 0, %.preheader57.i ], [ %i.cb, %.preheader57.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %i.cz = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.ac) ; 2 uses
  %i.da = extractvalue { ptr, i64 } %i.cz, 0      ; 2 uses
  %.not401 = icmp eq ptr %i.da, null              ; 2 uses
  %i.db = extractvalue { ptr, i64 } %i.cz, 1
  %.sroa.630.0 = select i1 %.not401, i64 undef, i64 %i.db
  br i1 %.not401, label %bb.j, label %bb.k

bb.j:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store ptr %i.a, ptr %i.bc, align 8
  %.sroa.4265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4265.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2065
  store ptr @31, ptr %i.n, align 8, !noalias !2066
  %.sroa.4490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %.sroa.4490.0..sroa_idx, align 8, !noalias !2066
  %.sroa.5491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.bc, ptr %.sroa.5491.0..sroa_idx, align 8, !noalias !2066
  %.sroa.6492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 1, ptr %.sroa.6492.0..sroa_idx, align 8, !noalias !2066
  %.sroa.7493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr null, ptr %.sroa.7493.0..sroa_idx, align 8, !noalias !2066
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @123, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 102, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 268, ptr %.sroa.640.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.bd

bb.k:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.dd = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.ac) ; 2 uses
  %i.de = extractvalue { ptr, i64 } %i.dd, 0      ; 8 uses
  %.not403 = icmp eq ptr %i.de, null
  %i.df = extractvalue { ptr, i64 } %i.dd, 1      ; 7 uses
  br i1 %.not403, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store ptr %i.a, ptr %i.az, align 8
  %.sroa.4275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4275.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2067
  store ptr @31, ptr %i.m, align 8, !noalias !2068
  %.sroa.4496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %.sroa.4496.0..sroa_idx, align 8, !noalias !2068
  %.sroa.5497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.az, ptr %.sroa.5497.0..sroa_idx, align 8, !noalias !2068
  %.sroa.6498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 1, ptr %.sroa.6498.0..sroa_idx, align 8, !noalias !2068
  %.sroa.7499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %.sroa.7499.0..sroa_idx, align 8, !noalias !2068
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @123, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 102, ptr %.sroa.557.0..sroa_idx, align 8
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 269, ptr %.sroa.658.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.bd

bb.m:                                             ; preds = %bb.k
  store ptr %i.de, ptr %i.bb, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.df, ptr %i.dh, align 8
  switch i64 %i.df, label %bb.o [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.di = load i8, ptr %i.de, align 1, !alias.scope !2069, !noundef !4
  switch i8 %i.di, label %.lr.ph.split.us.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  ]

bb.o:                                             ; preds = %bb.m
  %.pr.i453 = load i8, ptr %i.de, align 1, !alias.scope !2069
  %cond.i454 = icmp eq i8 %.pr.i453, 43
  br i1 %cond.i454, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %i.dk = add i64 %i.df, -1                       ; 2 uses
  %i.dl = icmp ult i64 %i.df, 10
  br i1 %i.dl, label %.lr.ph.split.us.i.preheader, label %.preheader75.i

.preheader75.i:                                   ; preds = %bb.s, %bb.p
  %.sroa.16.0.ph.i455 = phi i64 [ %i.df, %bb.s ], [ %i.dk, %bb.p ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %i.de, %bb.s ], [ %i.dj, %bb.p ]
  %.not.us.i659 = icmp eq i64 %.sroa.16.0.ph.i455, 0
  br i1 %.not.us.i659, label %.loopexit.i452, label %.lr.ph663

.preheader75.split.us.i:                          ; preds = %bb.r
  %.not.us.i = icmp eq i64 %i.dn, 0
  br i1 %.not.us.i, label %.loopexit.i452, label %.lr.ph663

.lr.ph663:                                        ; preds = %.preheader75.i, %.preheader75.split.us.i
  %.sroa.03.0.us.i662 = phi ptr [ %i.dm, %.preheader75.split.us.i ], [ %.sroa.03.0.ph.i, %.preheader75.i ] ; 2 uses
  %.sroa.16.0.us.i661 = phi i64 [ %i.dn, %.preheader75.split.us.i ], [ %.sroa.16.0.ph.i455, %.preheader75.i ]
  %.sroa.019.0.us.i660 = phi i32 [ %i.dv, %.preheader75.split.us.i ], [ 0, %.preheader75.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.03.0.us.i662, i64 1
  %i.dn = add i64 %.sroa.16.0.us.i661, -1         ; 2 uses
  %i.do = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.us.i660, i32 10) ; 2 uses
  %i.dp = extractvalue { i32, i1 } %i.do, 0       ; 2 uses
  %i.dq = extractvalue { i32, i1 } %i.do, 1
  %i.dr = load i8, ptr %.sroa.03.0.us.i662, align 1, !alias.scope !2069, !noundef !4 ; 2 uses
  br i1 %i.dq, label %.split.us.i456, label %bb.q, !prof !10

bb.q:                                             ; preds = %.lr.ph663
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add nsw i32 %i.ds, -48                  ; 2 uses
  %i.du = icmp ult i32 %i.dt, 10
  br i1 %i.du, label %bb.r, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.r:                                             ; preds = %bb.q
  %i.dv = add i32 %i.dt, %i.dp                    ; 3 uses
  %.not66.us.i = icmp ult i32 %i.dv, %i.dp
  br i1 %.not66.us.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %.preheader75.split.us.i

bb.s:                                             ; preds = %bb.o
  %i.dw = icmp ult i64 %i.df, 9
  br i1 %i.dw, label %.lr.ph.split.us.i.preheader, label %.preheader75.i

.lr.ph.split.us.i.preheader:                      ; preds = %bb.p, %bb.s, %bb.n
  %.sroa.03.188.us.i.ph = phi ptr [ %i.dj, %bb.p ], [ %i.de, %bb.s ], [ %i.de, %bb.n ]
  %.sroa.16.187.us.i.ph = phi i64 [ %i.dk, %bb.p ], [ %i.df, %bb.s ], [ 1, %bb.n ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.t
  %.sroa.03.188.us.i = phi ptr [ %i.ed, %bb.t ], [ %.sroa.03.188.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.sroa.16.187.us.i = phi i64 [ %i.ec, %bb.t ], [ %.sroa.16.187.us.i.ph, %.lr.ph.split.us.i.preheader ]
  %.sroa.019.186.us.i = phi i32 [ %i.ee, %bb.t ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.dx = load i8, ptr %.sroa.03.188.us.i, align 1, !alias.scope !2069, !noundef !4
  %i.dy = zext i8 %i.dx to i32
  %i.dz = add nsw i32 %i.dy, -48                  ; 2 uses
  %i.ea = icmp ult i32 %i.dz, 10
  br i1 %i.ea, label %bb.t, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.t:                                             ; preds = %.lr.ph.split.us.i
  %i.eb = mul i32 %.sroa.019.186.us.i, 10
  %i.ec = add nsw i64 %.sroa.16.187.us.i, -1      ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.03.188.us.i, i64 1
  %i.ee = add i32 %i.dz, %i.eb                    ; 2 uses
  %.not67.us.i = icmp eq i64 %i.ec, 0
  br i1 %.not67.us.i, label %.loopexit.i452, label %.lr.ph.split.us.i

.loopexit.i452:                                   ; preds = %.preheader75.split.us.i, %bb.t, %.preheader75.i
  %.sroa.019.2.i = phi i32 [ %i.ee, %bb.t ], [ 0, %.preheader75.i ], [ %i.dv, %.preheader75.split.us.i ]
  %i.ef = zext i32 %.sroa.019.2.i to i64
  %i.eg = shl nuw i64 %i.ef, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

.split.us.i456:                                   ; preds = %.lr.ph663
  %i.eh = add i8 %i.dr, -48
  %i.ei = icmp ult i8 %i.eh, 10
  %spec.select.i457 = select i1 %i.ei, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit": ; preds = %.loopexit.i452, %.split.us.i456
  %.sroa.8.0.insert.insert.i = phi i64 [ %i.eg, %.loopexit.i452 ], [ %spec.select.i457, %.split.us.i456 ] ; 3 uses
  %.sroa.6388.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.6388.0.extract.trunc = trunc nuw i64 %.sroa.6388.0.extract.shift to i32
  %i.ej = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.ej, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %bb.u

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread": ; preds = %bb.q, %bb.r, %.lr.ph.split.us.i, %bb.n, %bb.n, %bb.m, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.8.0.insert.insert.i587 = phi i64 [ %.sroa.8.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit" ], [ 257, %bb.n ], [ 1, %bb.m ], [ 257, %.lr.ph.split.us.i ], [ 257, %bb.n ], [ 513, %bb.r ], [ 257, %bb.q ]
  %.sroa.4386.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i587, 8
  %.sroa.4386.0.extract.trunc = trunc i64 %.sroa.4386.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i8 %.sroa.4386.0.extract.trunc, ptr %i.ay, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store ptr %i.bb, ptr %i.av, align 8
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.4281.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2070
  store ptr @151, ptr %i.l, align 8, !noalias !2071
  %.sroa.4508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 2, ptr %.sroa.4508.0..sroa_idx, align 8, !noalias !2071
  %.sroa.5509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.av, ptr %.sroa.5509.0..sroa_idx, align 8, !noalias !2071
  %.sroa.6510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 1, ptr %.sroa.6510.0..sroa_idx, align 8, !noalias !2071
  %.sroa.7511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %.sroa.7511.0..sroa_idx, align 8, !noalias !2071
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr %i.aw, ptr %i.au, align 8
  %.sroa.4289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4289.0..sroa_idx, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.ay, ptr %i.ek, align 8
  %.sroa.4293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4293.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2072
  store ptr @49, ptr %i.k, align 8, !noalias !2073
  %.sroa.4502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 2, ptr %.sroa.4502.0..sroa_idx, align 8, !noalias !2073
  %.sroa.5503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.au, ptr %.sroa.5503.0..sroa_idx, align 8, !noalias !2073
  %.sroa.6504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 2, ptr %.sroa.6504.0..sroa_idx, align 8, !noalias !2073
  %.sroa.7505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %.sroa.7505.0..sroa_idx, align 8, !noalias !2073
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k)
          to label %bb.br unwind label %bb.bp

bb.u:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.el = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.ac) ; 2 uses
  %i.em = extractvalue { ptr, i64 } %i.el, 0      ; 2 uses
  %.not405 = icmp eq ptr %i.em, null
  %i.en = extractvalue { ptr, i64 } %i.el, 1
  br i1 %.not405, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.a, ptr %i.as, align 8
  %.sroa.4297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4297.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2074
  store ptr @31, ptr %i.j, align 8, !noalias !2075
  %.sroa.4514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %.sroa.4514.0..sroa_idx, align 8, !noalias !2075
  %.sroa.5515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.as, ptr %.sroa.5515.0..sroa_idx, align 8, !noalias !2075
  %.sroa.6516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 1, ptr %.sroa.6516.0..sroa_idx, align 8, !noalias !2075
  %.sroa.7517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %.sroa.7517.0..sroa_idx, align 8, !noalias !2075
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @123, ptr %.sroa.486.0..sroa_idx, align 8
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 102, ptr %.sroa.587.0..sroa_idx, align 8
  %.sroa.688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 270, ptr %.sroa.688.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.bd

bb.w:                                             ; preds = %bb.u
  %i.ep = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.ac) ; 2 uses
  %i.eq = extractvalue { ptr, i64 } %i.ep, 0      ; 2 uses
  %.not407 = icmp eq ptr %i.eq, null
  %i.er = extractvalue { ptr, i64 } %i.ep, 1
  br i1 %.not407, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.a, ptr %i.aq, align 8
  %.sroa.4307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4307.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2076
  store ptr @31, ptr %i.i, align 8, !noalias !2077
  %.sroa.4520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %.sroa.4520.0..sroa_idx, align 8, !noalias !2077
  %.sroa.5521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.aq, ptr %.sroa.5521.0..sroa_idx, align 8, !noalias !2077
  %.sroa.6522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %.sroa.6522.0..sroa_idx, align 8, !noalias !2077
  %.sroa.7523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %.sroa.7523.0..sroa_idx, align 8, !noalias !2077
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @123, ptr %.sroa.4104.0..sroa_idx, align 8
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 102, ptr %.sroa.5105.0..sroa_idx, align 8
  %.sroa.6106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 271, ptr %.sroa.6106.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.bd

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.et = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.ac) ; 2 uses
  %i.eu = extractvalue { ptr, i64 } %i.et, 0      ; 3 uses
  %.not409 = icmp eq ptr %i.eu, null
  br i1 %.not409, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr %i.a, ptr %i.an, align 8
  %.sroa.4317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4317.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2078
  store ptr @31, ptr %i.h, align 8, !noalias !2079
  %.sroa.4526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %.sroa.4526.0..sroa_idx, align 8, !noalias !2079
  %.sroa.5527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.an, ptr %.sroa.5527.0..sroa_idx, align 8, !noalias !2079
  %.sroa.6528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %.sroa.6528.0..sroa_idx, align 8, !noalias !2079
  %.sroa.7529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.7529.0..sroa_idx, align 8, !noalias !2079
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @123, ptr %.sroa.4122.0..sroa_idx, align 8
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 102, ptr %.sroa.5123.0..sroa_idx, align 8
  %.sroa.6124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 272, ptr %.sroa.6124.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.bd

bb.aa:                                            ; preds = %bb.y
  %i.ew = extractvalue { ptr, i64 } %i.et, 1      ; 2 uses
  store ptr %i.eu, ptr %i.ap, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.ew, ptr %i.ex, align 8
  %i.ey = tail call fastcc i64 @"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.eu, i64 noundef %i.ew, i32 noundef 10) ; 3 uses
  %.sroa.6392.0.extract.shift = lshr i64 %i.ey, 32
  %.sroa.6392.0.extract.trunc = trunc nuw i64 %.sroa.6392.0.extract.shift to i32
  %i.ez = trunc i64 %i.ey to i1
  br i1 %i.ez, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.4390.0.extract.shift = lshr i64 %i.ey, 8
  %.sroa.4390.0.extract.trunc = trunc i64 %.sroa.4390.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i8 %.sroa.4390.0.extract.trunc, ptr %i.am, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.ap, ptr %i.aj, align 8
  %.sroa.4323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.4323.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2080
  store ptr @151, ptr %i.g, align 8, !noalias !2081
  %.sroa.4538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.4538.0..sroa_idx, align 8, !noalias !2081
  %.sroa.5539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.aj, ptr %.sroa.5539.0..sroa_idx, align 8, !noalias !2081
  %.sroa.6540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.6540.0..sroa_idx, align 8, !noalias !2081
  %.sroa.7541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.7541.0..sroa_idx, align 8, !noalias !2081
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %i.ak, ptr %i.ai, align 8
  %.sroa.4331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4331.0..sroa_idx, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.am, ptr %i.fa, align 8
  %.sroa.4335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4335.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2082
  store ptr @49, ptr %i.f, align 8, !noalias !2083
  %.sroa.4532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.4532.0..sroa_idx, align 8, !noalias !2083
  %.sroa.5533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
end_hunk_1
begin_hunk_2_@_ZN11procfs_core7keyring7KeyType8from_str17ha66e11c2910c11d9E:bb.a
  br i1 %i.ag, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !17

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.j
  %i.ah = icmp eq i64 %2, 0
  br i1 %i.ah, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %bb.g, %bb.e, %bb.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !2100
  %i.ai = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #38, !noalias !2100 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit"

bb.k:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.j
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.j ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !2101
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.ai, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !2102
  store i64 %2, ptr %0, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.513.0..sroa_idx, align 8
  br label %bb.d

bb.l:                                             ; preds = %bb.i
  store i64 -9223372036854775805, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7keyring7KeyUser8from_str17hf6994ce1ceec79a0E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %i.v = alloca [48 x i8], align 8                ; 8 uses
  %i.w = alloca [48 x i8], align 8                ; 8 uses
  %i.x = alloca [48 x i8], align 8                ; 8 uses
  %i.y = alloca [48 x i8], align 8                ; 8 uses
  %i.z = alloca [48 x i8], align 8                ; 8 uses
  %i.aa = alloca [48 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 2 uses
  %i.af = alloca [1 x i8], align 1                ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 8 uses
  %i.ak = alloca [24 x i8], align 8               ; 2 uses
  %i.al = alloca [1 x i8], align 1                ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 2 uses
  %i.ao = alloca [16 x i8], align 8               ; 7 uses
  %i.ap = alloca [32 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 8 uses
  %i.as = alloca [24 x i8], align 8               ; 2 uses
  %i.at = alloca [1 x i8], align 1                ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 2 uses
  %i.aw = alloca [16 x i8], align 8               ; 7 uses
  %i.ax = alloca [72 x i8], align 8               ; 18 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [24 x i8], align 8               ; 8 uses
  %i.bb = alloca [24 x i8], align 8               ; 2 uses
  %i.bc = alloca [1 x i8], align 1                ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [24 x i8], align 8               ; 2 uses
  %i.bf = alloca [16 x i8], align 8               ; 7 uses
  %i.bg = alloca [32 x i8], align 8               ; 7 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [24 x i8], align 8               ; 8 uses
  %i.bj = alloca [24 x i8], align 8               ; 2 uses
  %i.bk = alloca [1 x i8], align 1                ; 4 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [24 x i8], align 8               ; 2 uses
  %i.bn = alloca [16 x i8], align 8               ; 7 uses
  %i.bo = alloca [72 x i8], align 8               ; 18 uses
  %i.bp = alloca [32 x i8], align 8               ; 7 uses
  %i.bq = alloca [16 x i8], align 8               ; 5 uses
  %i.br = alloca [24 x i8], align 8               ; 8 uses
  %i.bs = alloca [24 x i8], align 8               ; 2 uses
  %i.bt = alloca [1 x i8], align 1                ; 4 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [24 x i8], align 8               ; 2 uses
  %i.bw = alloca [16 x i8], align 8               ; 7 uses
  %i.bx = alloca [32 x i8], align 8               ; 7 uses
  %i.by = alloca [16 x i8], align 8               ; 5 uses
  %i.bz = alloca [24 x i8], align 8               ; 8 uses
  %i.ca = alloca [24 x i8], align 8               ; 2 uses
  %i.cb = alloca [1 x i8], align 1                ; 4 uses
  %i.cc = alloca [16 x i8], align 8               ; 6 uses
  %i.cd = alloca [72 x i8], align 8               ; 17 uses
  %i.ce = alloca [16 x i8], align 8               ; 5 uses
  %i.cf = alloca [24 x i8], align 8               ; 2 uses
  %i.cg = alloca [16 x i8], align 8               ; 5 uses
  %i.ch = alloca [24 x i8], align 8               ; 2 uses
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [24 x i8], align 8               ; 2 uses
  %i.ck = alloca [32 x i8], align 8               ; 7 uses
  %i.cl = alloca [16 x i8], align 8               ; 5 uses
  %i.cm = alloca [24 x i8], align 8               ; 8 uses
  %i.cn = alloca [24 x i8], align 8               ; 2 uses
  %i.co = alloca [1 x i8], align 1                ; 4 uses
  %i.cp = alloca [16 x i8], align 8               ; 5 uses
  %i.cq = alloca [24 x i8], align 8               ; 2 uses
  %i.cr = alloca [16 x i8], align 8               ; 7 uses
  %i.cs = alloca [16 x i8], align 8               ; 5 uses
  %i.ct = alloca [24 x i8], align 8               ; 2 uses
  %i.cu = alloca [64 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store i64 0, ptr %i.cu, align 8
  %.sroa.4321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %2, ptr %.sroa.4321.0..sroa_idx, align 8
  %.sroa.5322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %1, ptr %.sroa.5322.0..sroa_idx, align 8
  %.sroa.5322.sroa.4.0..sroa.5322.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i64 %2, ptr %.sroa.5322.sroa.4.0..sroa.5322.0..sroa_idx.sroa_idx, align 8
  %.sroa.5322.sroa.5.0..sroa.5322.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store ptr %1, ptr %.sroa.5322.sroa.5.0..sroa.5322.0..sroa_idx.sroa_idx, align 8
  %.sroa.5322.sroa.6.0..sroa.5322.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store ptr %i.cv, ptr %.sroa.5322.sroa.6.0..sroa.5322.0..sroa_idx.sroa_idx, align 8
  %.sroa.5322.sroa.7.0..sroa.5322.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  store i64 0, ptr %.sroa.5322.sroa.7.0..sroa.5322.0..sroa_idx.sroa_idx, align 8
  %.sroa.6323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  store i8 1, ptr %.sroa.6323.0..sroa_idx, align 8
  %.sroa.7324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 57
  store i8 0, ptr %.sroa.7324.0..sroa_idx, align 1
  %i.cw = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.cu) ; 2 uses
  %i.cx = extractvalue { ptr, i64 } %i.cw, 0      ; 5 uses
  %.not = icmp eq ptr %i.cx, null                 ; 2 uses
  %i.cy = extractvalue { ptr, i64 } %i.cw, 1
  %.sroa.7.0 = select i1 %.not, i64 undef, i64 %i.cy ; 3 uses
  %.sink961.sroa.gep = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sink961.sroa.gep1007 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sink961.sroa.gep1008 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sink961.sroa.gep1009 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sink961.sroa.gep1010 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sink961.sroa.gep1011 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sink961.sroa.gep1012 = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sink961.sroa.gep1013 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  store ptr %i.a, ptr %i.cs, align 8
  %.sroa.4333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4333.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2300
  store ptr @31, ptr %i.aa, align 8, !noalias !2301
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2301
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.cs, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2301
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2301
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !2301
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 337, ptr %.sroa.612.0..sroa_idx, align 8
  br label %bb.bd

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  %i.cz = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.cu) ; 2 uses
  %i.da = extractvalue { ptr, i64 } %i.cz, 0      ; 8 uses
  %.not564 = icmp eq ptr %i.da, null
  %i.db = extractvalue { ptr, i64 } %i.cz, 1      ; 7 uses
  br i1 %.not564, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  store ptr %i.a, ptr %i.cp, align 8
  %.sroa.4343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4343.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2302
  store ptr @31, ptr %i.z, align 8, !noalias !2303
  %.sroa.4662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 1, ptr %.sroa.4662.0..sroa_idx, align 8, !noalias !2303
  %.sroa.5663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.cp, ptr %.sroa.5663.0..sroa_idx, align 8, !noalias !2303
  %.sroa.6664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 1, ptr %.sroa.6664.0..sroa_idx, align 8, !noalias !2303
  %.sroa.7665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr null, ptr %.sroa.7665.0..sroa_idx, align 8, !noalias !2303
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false)
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 338, ptr %.sroa.630.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.bd

bb.e:                                             ; preds = %bb.c
  store ptr %i.da, ptr %i.cr, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %i.db, ptr %i.dc, align 8
  switch i64 %i.db, label %bb.g [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.dd = load i8, ptr %i.da, align 1, !alias.scope !2304, !noundef !4
  switch i8 %i.dd, label %.lr.ph.split.us.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  ]

bb.g:                                             ; preds = %bb.e
  %.pr.i = load i8, ptr %i.da, align 1, !alias.scope !2304
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 1 ; 2 uses
  %i.df = add i64 %i.db, -1                       ; 2 uses
  %i.dg = icmp ult i64 %i.db, 10
  br i1 %i.dg, label %.lr.ph.split.us.i.preheader, label %.preheader75.i

.preheader75.i:                                   ; preds = %bb.k, %bb.h
  %.sroa.16.0.ph.i = phi i64 [ %i.db, %bb.k ], [ %i.df, %bb.h ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %i.da, %bb.k ], [ %i.de, %bb.h ]
  %.not.us.i980 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.us.i980, label %.loopexit.i, label %.lr.ph

.preheader75.split.us.i:                          ; preds = %bb.j
  %.not.us.i = icmp eq i64 %i.di, 0
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader75.i, %.preheader75.split.us.i
  %.sroa.03.0.us.i983 = phi ptr [ %i.dh, %.preheader75.split.us.i ], [ %.sroa.03.0.ph.i, %.preheader75.i ] ; 2 uses
  %.sroa.16.0.us.i982 = phi i64 [ %i.di, %.preheader75.split.us.i ], [ %.sroa.16.0.ph.i, %.preheader75.i ]
  %.sroa.019.0.us.i981 = phi i32 [ %i.dq, %.preheader75.split.us.i ], [ 0, %.preheader75.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.03.0.us.i983, i64 1
  %i.di = add i64 %.sroa.16.0.us.i982, -1         ; 2 uses
  %i.dj = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.us.i981, i32 10) ; 2 uses
  %i.dk = extractvalue { i32, i1 } %i.dj, 0       ; 2 uses
  %i.dl = extractvalue { i32, i1 } %i.dj, 1
  %i.dm = load i8, ptr %.sroa.03.0.us.i983, align 1, !alias.scope !2304, !noundef !4 ; 2 uses
  br i1 %i.dl, label %.split.us.i, label %bb.i, !prof !10

bb.i:                                             ; preds = %.lr.ph
  %i.dn = zext i8 %i.dm to i32
  %i.do = add nsw i32 %i.dn, -48                  ; 2 uses
  %i.dp = icmp ult i32 %i.do, 10
  br i1 %i.dp, label %bb.j, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.j:                                             ; preds = %bb.i
  %i.dq = add i32 %i.do, %i.dk                    ; 3 uses
  %.not66.us.i = icmp ult i32 %i.dq, %i.dk
  br i1 %.not66.us.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %.preheader75.split.us.i

bb.k:                                             ; preds = %bb.g
  %i.dr = icmp ult i64 %i.db, 9
  br i1 %i.dr, label %.lr.ph.split.us.i.preheader, label %.preheader75.i

.lr.ph.split.us.i.preheader:                      ; preds = %bb.h, %bb.k, %bb.f
  %.sroa.03.188.us.i.ph = phi ptr [ %i.de, %bb.h ], [ %i.da, %bb.k ], [ %i.da, %bb.f ]
  %.sroa.16.187.us.i.ph = phi i64 [ %i.df, %bb.h ], [ %i.db, %bb.k ], [ 1, %bb.f ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.l
  %.sroa.03.188.us.i = phi ptr [ %i.dy, %bb.l ], [ %.sroa.03.188.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.sroa.16.187.us.i = phi i64 [ %i.dx, %bb.l ], [ %.sroa.16.187.us.i.ph, %.lr.ph.split.us.i.preheader ]
  %.sroa.019.186.us.i = phi i32 [ %i.dz, %bb.l ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.ds = load i8, ptr %.sroa.03.188.us.i, align 1, !alias.scope !2304, !noundef !4
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nsw i32 %i.dt, -48                  ; 2 uses
  %i.dv = icmp ult i32 %i.du, 10
  br i1 %i.dv, label %bb.l, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.l:                                             ; preds = %.lr.ph.split.us.i
  %i.dw = mul i32 %.sroa.019.186.us.i, 10
  %i.dx = add nsw i64 %.sroa.16.187.us.i, -1      ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.03.188.us.i, i64 1
  %i.dz = add i32 %i.du, %i.dw                    ; 2 uses
  %.not67.us.i = icmp eq i64 %i.dx, 0
  br i1 %.not67.us.i, label %.loopexit.i, label %.lr.ph.split.us.i

.loopexit.i:                                      ; preds = %.preheader75.split.us.i, %bb.l, %.preheader75.i
  %.sroa.019.2.i = phi i32 [ %i.dz, %bb.l ], [ 0, %.preheader75.i ], [ %i.dq, %.preheader75.split.us.i ]
  %i.ea = zext i32 %.sroa.019.2.i to i64
  %i.eb = shl nuw i64 %i.ea, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

.split.us.i:                                      ; preds = %.lr.ph
  %i.ec = add i8 %i.dm, -48
  %i.ed = icmp ult i8 %i.ec, 10
  %spec.select.i = select i1 %i.ed, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit": ; preds = %.loopexit.i, %.split.us.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %i.eb, %.loopexit.i ], [ %spec.select.i, %.split.us.i ] ; 3 uses
  %.sroa.6533.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.6533.0.extract.trunc = trunc nuw i64 %.sroa.6533.0.extract.shift to i32
  %i.ee = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.ee, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %bb.m

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread": ; preds = %bb.i, %bb.j, %.lr.ph.split.us.i, %bb.f, %bb.f, %bb.e, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.8.0.insert.insert.i852 = phi i64 [ %.sroa.8.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit" ], [ 257, %bb.f ], [ 1, %bb.e ], [ 257, %.lr.ph.split.us.i ], [ 257, %bb.f ], [ 513, %bb.j ], [ 257, %bb.i ]
  %.sroa.4531.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i852, 8
  %.sroa.4531.0.extract.trunc = trunc i64 %.sroa.4531.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store i8 %.sroa.4531.0.extract.trunc, ptr %i.co, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  store ptr %i.cr, ptr %i.cl, align 8
  %.sroa.4349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.4349.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2305
  store ptr @151, ptr %i.y, align 8, !noalias !2306
  %.sroa.4674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 2, ptr %.sroa.4674.0..sroa_idx, align 8, !noalias !2306
  %.sroa.5675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.cl, ptr %.sroa.5675.0..sroa_idx, align 8, !noalias !2306
  %.sroa.6676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 1, ptr %.sroa.6676.0..sroa_idx, align 8, !noalias !2306
  %.sroa.7677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %.sroa.7677.0..sroa_idx, align 8, !noalias !2306
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  store ptr %i.cm, ptr %i.ck, align 8
  %.sroa.4357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4357.0..sroa_idx, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.co, ptr %i.ef, align 8
  %.sroa.4361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4361.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2307
  store ptr @49, ptr %i.x, align 8, !noalias !2308
  %.sroa.4668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 2, ptr %.sroa.4668.0..sroa_idx, align 8, !noalias !2308
  %.sroa.5669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ck, ptr %.sroa.5669.0..sroa_idx, align 8, !noalias !2308
  %.sroa.6670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 2, ptr %.sroa.6670.0..sroa_idx, align 8, !noalias !2308
  %.sroa.7671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr null, ptr %.sroa.7671.0..sroa_idx, align 8, !noalias !2308
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cn, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.x)
          to label %bb.cd unwind label %bb.cc

bb.m:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  %i.eg = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.cu) ; 2 uses
  %i.eh = extractvalue { ptr, i64 } %i.eg, 0      ; 11 uses
  %.not566 = icmp eq ptr %i.eh, null              ; 2 uses
  %i.ei = extractvalue { ptr, i64 } %i.eg, 1      ; 6 uses
  %.sroa.650.0 = select i1 %.not566, i64 undef, i64 %i.ei ; 6 uses
  br i1 %.not566, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  store ptr %i.a, ptr %i.ci, align 8
  %.sroa.4365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4365.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2309
  store ptr @31, ptr %i.w, align 8, !noalias !2310
  %.sroa.4680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 1, ptr %.sroa.4680.0..sroa_idx, align 8, !noalias !2310
  %.sroa.5681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.ci, ptr %.sroa.5681.0..sroa_idx, align 8, !noalias !2310
  %.sroa.6682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 1, ptr %.sroa.6682.0..sroa_idx, align 8, !noalias !2310
  %.sroa.7683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr null, ptr %.sroa.7683.0..sroa_idx, align 8, !noalias !2310
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false)
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.559.0..sroa_idx, align 8
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 339, ptr %.sroa.660.0..sroa_idx, align 8
  br label %bb.bd

bb.o:                                             ; preds = %bb.m
  %i.ej = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.cu) ; 2 uses
  %i.ek = extractvalue { ptr, i64 } %i.ej, 0      ; 2 uses
  %.not568 = icmp eq ptr %i.ek, null              ; 2 uses
  %i.el = extractvalue { ptr, i64 } %i.ej, 1
  %.sroa.764.0 = select i1 %.not568, i64 undef, i64 %i.el ; 3 uses
  br i1 %.not568, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store ptr %i.a, ptr %i.cg, align 8
  %.sroa.4375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4375.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2311
  store ptr @31, ptr %i.v, align 8, !noalias !2312
  %.sroa.4686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %.sroa.4686.0..sroa_idx, align 8, !noalias !2312
  %.sroa.5687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.cg, ptr %.sroa.5687.0..sroa_idx, align 8, !noalias !2312
  %.sroa.6688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 1, ptr %.sroa.6688.0..sroa_idx, align 8, !noalias !2312
  %.sroa.7689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr null, ptr %.sroa.7689.0..sroa_idx, align 8, !noalias !2312
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false)
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.577.0..sroa_idx, align 8
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 340, ptr %.sroa.678.0..sroa_idx, align 8
  br label %bb.bd

bb.q:                                             ; preds = %bb.o
  %i.em = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.cu) ; 2 uses
  %i.en = extractvalue { ptr, i64 } %i.em, 0      ; 2 uses
  %.not570 = icmp eq ptr %i.en, null              ; 2 uses
  %i.eo = extractvalue { ptr, i64 } %i.em, 1
  %.sroa.782.0 = select i1 %.not570, i64 undef, i64 %i.eo ; 3 uses
  br i1 %.not570, label %bb.r, label %.lr.ph.split.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  store ptr %i.a, ptr %i.ce, align 8
  %.sroa.4385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4385.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2313
  store ptr @31, ptr %i.u, align 8, !noalias !2314
  %.sroa.4692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %.sroa.4692.0..sroa_idx, align 8, !noalias !2314
  %.sroa.5693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.ce, ptr %.sroa.5693.0..sroa_idx, align 8, !noalias !2314
  %.sroa.6694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 1, ptr %.sroa.6694.0..sroa_idx, align 8, !noalias !2314
  %.sroa.7695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr null, ptr %.sroa.7695.0..sroa_idx, align 8, !noalias !2314
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false)
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.494.0..sroa_idx, align 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.595.0..sroa_idx, align 8
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 341, ptr %.sroa.696.0..sroa_idx, align 8
  br label %bb.bd

.lr.ph.split.i.i:                                 ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store i64 0, ptr %i.cd, align 8
  %.sroa.4387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %i.ei, ptr %.sroa.4387.0..sroa_idx, align 8
  %.sroa.5388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.eh, ptr %.sroa.5388.0..sroa_idx, align 8
  %.sroa.5388.sroa.4.0..sroa.5388.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i64 %i.ei, ptr %.sroa.5388.sroa.4.0..sroa.5388.0..sroa_idx.sroa_idx, align 8
  %.sroa.5388.sroa.5.0..sroa.5388.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 2 uses
  %.sroa.5388.sroa.6.0..sroa.5388.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store i64 %i.ei, ptr %.sroa.5388.sroa.6.0..sroa.5388.0..sroa_idx.sroa_idx, align 8
  %.sroa.5388.sroa.7.0..sroa.5388.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 2 uses
  store i32 47, ptr %.sroa.5388.sroa.7.0..sroa.5388.0..sroa_idx.sroa_idx, align 8
  %.sroa.5388.sroa.8.0..sroa.5388.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 52
  store i32 47, ptr %.sroa.5388.sroa.8.0..sroa.5388.0..sroa_idx.sroa_idx, align 4
  %.sroa.5388.sroa.9.0..sroa.5388.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  store i8 1, ptr %.sroa.5388.sroa.9.0..sroa.5388.0..sroa_idx.sroa_idx, align 8
  %.sroa.6389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  store i8 1, ptr %.sroa.6389.0..sroa_idx, align 8
  %.sroa.7390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 65 ; 2 uses
  store i8 0, ptr %.sroa.7390.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2315)
  %rhsc = load i8, ptr %.sroa.5388.sroa.7.0..sroa.5388.0..sroa_idx.sroa_idx, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.lr.ph.split.i.i
  %i.ep = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.fc, %bb.u ] ; 6 uses
  %i.eq = sub nuw i64 %.sroa.650.0, %i.ep         ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ep ; 2 uses
  %i.es = icmp ult i64 %i.eq, 16
  br i1 %i.es, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.s
  %.not.i.i.i = icmp eq i64 %.sroa.650.0, %i.ep
  br i1 %.not.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.t
  %.sroa.01.05.i.i.i = phi i64 [ %i.ew, %bb.t ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.01.05.i.i.i
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !2316, !noalias !2317, !noundef !4
  %i.ev = icmp eq i8 %i.eu, 47
  br i1 %i.ev, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.ew = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ew, %i.eq
  br i1 %exitcond.not.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE.exit", label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %bb.s
  %i.ex = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 47, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.er, i64 noundef %i.eq), !noalias !2317 ; 2 uses
  %i.ey = extractvalue { i64, i64 } %i.ex, 0
  %i.ez = extractvalue { i64, i64 } %i.ex, 1
  %i.fa = trunc nuw i64 %i.ey to i1
  br i1 %i.fa, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE.exit"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %.sroa.4.0.i27.i.i = phi i64 [ %i.ez, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.fb = add i64 %i.ep, 1
  %i.fc = add i64 %i.fb, %.sroa.4.0.i27.i.i       ; 5 uses
  %.not21.i.i = icmp ugt i64 %i.fc, %i.ei
  %i.fd = add i64 %i.ep, %.sroa.4.0.i27.i.i
  %or.cond.i.i.not = icmp ult i64 %i.fd, %i.ei
  br i1 %or.cond.i.i.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.v, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  br i1 %.not21.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE.exit", label %bb.s

bb.v:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.fe = add i64 %i.ep, %.sroa.4.0.i27.i.i       ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.fe
  %lhsc = load i8, ptr %i.ff, align 1
  %i.fg = icmp eq i8 %lhsc, %rhsc
  br i1 %i.fg, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE.exit.thread", label %bb.u

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE.exit.thread": ; preds = %bb.v
  store i64 %i.fc, ptr %.sroa.5388.sroa.5.0..sroa.5388.0..sroa_idx.sroa_idx, align 8
  store i64 %i.fc, ptr %i.cd, align 8, !alias.scope !2315
  br label %bb.w

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE.exit": ; preds = %bb.u, %.preheader.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i, %bb.t
  %storemerge = phi i64 [ %.sroa.650.0, %bb.t ], [ %.sroa.650.0, %.preheader.i.i.i ], [ %.sroa.650.0, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %i.fc, %bb.u ]
  store i64 %storemerge, ptr %.sroa.5388.sroa.5.0..sroa.5388.0..sroa_idx.sroa_idx, align 8
  store i8 1, ptr %.sroa.7390.0..sroa_idx, align 1, !alias.scope !2318
  br label %bb.w

bb.w:                                             ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE.exit", %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE.exit.thread"
  %.sroa.7100.0856 = phi i64 [ %i.fe, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE.exit.thread" ], [ %.sroa.650.0, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE.exit" ] ; 7 uses
  store ptr %i.eh, ptr %i.cc, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %.sroa.7100.0856, ptr %i.fh, align 8
  switch i64 %.sroa.7100.0856, label %bb.y [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637.thread"
    i64 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.fi = load i8, ptr %i.eh, align 1, !alias.scope !2319, !noundef !4
  switch i8 %i.fi, label %.lr.ph.split.us.i615.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637.thread"
  ]

bb.y:                                             ; preds = %bb.w
  %.pr.i622 = load i8, ptr %i.eh, align 1, !alias.scope !2319
  %cond.i623 = icmp eq i8 %.pr.i622, 43
  br i1 %cond.i623, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 2 uses
  %i.fk = add i64 %.sroa.7100.0856, -1            ; 2 uses
  %i.fl = icmp ult i64 %.sroa.7100.0856, 10
  br i1 %i.fl, label %.lr.ph.split.us.i615.preheader, label %.preheader75.i624

.preheader75.i624:                                ; preds = %bb.ac, %bb.z
  %.sroa.16.0.ph.i625 = phi i64 [ %.sroa.7100.0856, %bb.ac ], [ %i.fk, %bb.z ] ; 2 uses
  %.sroa.03.0.ph.i626 = phi ptr [ %i.eh, %bb.ac ], [ %i.fj, %bb.z ]
  %.not.us.i631984 = icmp eq i64 %.sroa.16.0.ph.i625, 0
  br i1 %.not.us.i631984, label %.loopexit.i620, label %.lr.ph988

.preheader75.split.us.i627:                       ; preds = %bb.ab
  %.not.us.i631 = icmp eq i64 %i.fn, 0
  br i1 %.not.us.i631, label %.loopexit.i620, label %.lr.ph988

.lr.ph988:                                        ; preds = %.preheader75.i624, %.preheader75.split.us.i627
  %.sroa.03.0.us.i630987 = phi ptr [ %i.fm, %.preheader75.split.us.i627 ], [ %.sroa.03.0.ph.i626, %.preheader75.i624 ] ; 2 uses
  %.sroa.16.0.us.i629986 = phi i64 [ %i.fn, %.preheader75.split.us.i627 ], [ %.sroa.16.0.ph.i625, %.preheader75.i624 ]
  %.sroa.019.0.us.i628985 = phi i32 [ %i.fv, %.preheader75.split.us.i627 ], [ 0, %.preheader75.i624 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.03.0.us.i630987, i64 1
  %i.fn = add i64 %.sroa.16.0.us.i629986, -1      ; 2 uses
  %i.fo = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.us.i628985, i32 10) ; 2 uses
  %i.fp = extractvalue { i32, i1 } %i.fo, 0       ; 2 uses
  %i.fq = extractvalue { i32, i1 } %i.fo, 1
  %i.fr = load i8, ptr %.sroa.03.0.us.i630987, align 1, !alias.scope !2319, !noundef !4 ; 2 uses
  br i1 %i.fq, label %.split.us.i633, label %bb.aa, !prof !10

bb.aa:                                            ; preds = %.lr.ph988
  %i.fs = zext i8 %i.fr to i32
  %i.ft = add nsw i32 %i.fs, -48                  ; 2 uses
  %i.fu = icmp ult i32 %i.ft, 10
  br i1 %i.fu, label %bb.ab, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637.thread"

bb.ab:                                            ; preds = %bb.aa
  %i.fv = add i32 %i.ft, %i.fp                    ; 3 uses
  %.not66.us.i632 = icmp ult i32 %i.fv, %i.fp
  br i1 %.not66.us.i632, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637.thread", label %.preheader75.split.us.i627

bb.ac:                                            ; preds = %bb.y
  %i.fw = icmp ult i64 %.sroa.7100.0856, 9
  br i1 %i.fw, label %.lr.ph.split.us.i615.preheader, label %.preheader75.i624

.lr.ph.split.us.i615.preheader:                   ; preds = %bb.z, %bb.ac, %bb.x
  %.sroa.03.188.us.i616.ph = phi ptr [ %i.fj, %bb.z ], [ %i.eh, %bb.ac ], [ %i.eh, %bb.x ]
  %.sroa.16.187.us.i617.ph = phi i64 [ %i.fk, %bb.z ], [ %.sroa.7100.0856, %bb.ac ], [ 1, %bb.x ]
  br label %.lr.ph.split.us.i615

.lr.ph.split.us.i615:                             ; preds = %.lr.ph.split.us.i615.preheader, %bb.ad
  %.sroa.03.188.us.i616 = phi ptr [ %i.gd, %bb.ad ], [ %.sroa.03.188.us.i616.ph, %.lr.ph.split.us.i615.preheader ] ; 2 uses
  %.sroa.16.187.us.i617 = phi i64 [ %i.gc, %bb.ad ], [ %.sroa.16.187.us.i617.ph, %.lr.ph.split.us.i615.preheader ]
  %.sroa.019.186.us.i618 = phi i32 [ %i.ge, %bb.ad ], [ 0, %.lr.ph.split.us.i615.preheader ]
  %i.fx = load i8, ptr %.sroa.03.188.us.i616, align 1, !alias.scope !2319, !noundef !4
  %i.fy = zext i8 %i.fx to i32
  %i.fz = add nsw i32 %i.fy, -48                  ; 2 uses
  %i.ga = icmp ult i32 %i.fz, 10
  br i1 %i.ga, label %bb.ad, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637.thread"

bb.ad:                                            ; preds = %.lr.ph.split.us.i615
  %i.gb = mul i32 %.sroa.019.186.us.i618, 10
  %i.gc = add nsw i64 %.sroa.16.187.us.i617, -1   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.03.188.us.i616, i64 1
  %i.ge = add i32 %i.fz, %i.gb                    ; 2 uses
  %.not67.us.i619 = icmp eq i64 %i.gc, 0
  br i1 %.not67.us.i619, label %.loopexit.i620, label %.lr.ph.split.us.i615

.loopexit.i620:                                   ; preds = %.preheader75.split.us.i627, %bb.ad, %.preheader75.i624
  %.sroa.019.2.i621 = phi i32 [ %i.ge, %bb.ad ], [ 0, %.preheader75.i624 ], [ %i.fv, %.preheader75.split.us.i627 ]
  %i.gf = zext i32 %.sroa.019.2.i621 to i64
  %i.gg = shl nuw i64 %i.gf, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637"

.split.us.i633:                                   ; preds = %.lr.ph988
  %i.gh = add i8 %i.fr, -48
  %i.gi = icmp ult i8 %i.gh, 10
  %spec.select.i634 = select i1 %i.gi, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637"

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637": ; preds = %.loopexit.i620, %.split.us.i633
  %.sroa.8.0.insert.insert.i611 = phi i64 [ %i.gg, %.loopexit.i620 ], [ %spec.select.i634, %.split.us.i633 ] ; 3 uses
  %.sroa.6537.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i611, 32
  %.sroa.6537.0.extract.trunc = trunc nuw i64 %.sroa.6537.0.extract.shift to i32
  %i.gj = trunc i64 %.sroa.8.0.insert.insert.i611 to i1
  br i1 %i.gj, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637.thread", label %bb.ae

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637.thread": ; preds = %bb.aa, %bb.ab, %.lr.ph.split.us.i615, %bb.x, %bb.x, %bb.w, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637"
  %.sroa.8.0.insert.insert.i611877 = phi i64 [ %.sroa.8.0.insert.insert.i611, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637" ], [ 257, %bb.x ], [ 1, %bb.w ], [ 257, %.lr.ph.split.us.i615 ], [ 257, %bb.x ], [ 513, %bb.ab ], [ 257, %bb.aa ]
  %.sroa.4535.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i611877, 8
  %.sroa.4535.0.extract.trunc = trunc i64 %.sroa.4535.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  store i8 %.sroa.4535.0.extract.trunc, ptr %i.cb, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store ptr %i.cc, ptr %i.by, align 8
  %.sroa.4403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.4403.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2320
  store ptr @151, ptr %i.t, align 8, !noalias !2321
  %.sroa.4710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 2, ptr %.sroa.4710.0..sroa_idx, align 8, !noalias !2321
  %.sroa.5711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.by, ptr %.sroa.5711.0..sroa_idx, align 8, !noalias !2321
  %.sroa.6712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 1, ptr %.sroa.6712.0..sroa_idx, align 8, !noalias !2321
  %.sroa.7713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %.sroa.7713.0..sroa_idx, align 8, !noalias !2321
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store ptr %i.bz, ptr %i.bx, align 8
  %.sroa.4407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4407.0..sroa_idx, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.cb, ptr %i.gk, align 8
  %.sroa.4411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4411.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2322
  store ptr @49, ptr %i.s, align 8, !noalias !2323
  %.sroa.4704.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 2, ptr %.sroa.4704.0..sroa_idx, align 8, !noalias !2323
  %.sroa.5705.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.bx, ptr %.sroa.5705.0..sroa_idx, align 8, !noalias !2323
  %.sroa.6706.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 2, ptr %.sroa.6706.0..sroa_idx, align 8, !noalias !2323
  %.sroa.7707.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %.sroa.7707.0..sroa_idx, align 8, !noalias !2323
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.s)
          to label %bb.ca unwind label %bb.bz

bb.ae:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.gl = call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE"(ptr noalias noundef align 8 dereferenceable(72) %i.cd) ; 2 uses
  %i.gm = extractvalue { ptr, i64 } %i.gl, 0      ; 3 uses
  %.not573 = icmp eq ptr %i.gm, null
  br i1 %.not573, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store ptr %i.a, ptr %i.bu, align 8
  %.sroa.4415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4415.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2324
  store ptr @31, ptr %i.r, align 8, !noalias !2325
  %.sroa.4716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 1, ptr %.sroa.4716.0..sroa_idx, align 8, !noalias !2325
  %.sroa.5717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.bu, ptr %.sroa.5717.0..sroa_idx, align 8, !noalias !2325
  %.sroa.6718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 1, ptr %.sroa.6718.0..sroa_idx, align 8, !noalias !2325
  %.sroa.7719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr null, ptr %.sroa.7719.0..sroa_idx, align 8, !noalias !2325
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false)
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.4144.0..sroa_idx, align 8
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.5145.0..sroa_idx, align 8
  %.sroa.6146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 345, ptr %.sroa.6146.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %bb.by

bb.ag:                                            ; preds = %bb.ae
  %i.gn = extractvalue { ptr, i64 } %i.gl, 1      ; 2 uses
  store ptr %i.gm, ptr %i.bw, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.gn, ptr %i.go, align 8
  %i.gp = tail call fastcc i64 @"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gm, i64 noundef %i.gn, i32 noundef 10) ; 3 uses
  %.sroa.6541.0.extract.shift = lshr i64 %i.gp, 32
  %.sroa.6541.0.extract.trunc = trunc nuw i64 %.sroa.6541.0.extract.shift to i32
  %i.gq = trunc i64 %i.gp to i1
  br i1 %i.gq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.4539.0.extract.shift = lshr i64 %i.gp, 8
  %.sroa.4539.0.extract.trunc = trunc i64 %.sroa.4539.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store i8 %.sroa.4539.0.extract.trunc, ptr %i.bt, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  store ptr %i.bw, ptr %i.bq, align 8
  %.sroa.4421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.4421.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2326
  store ptr @151, ptr %i.q, align 8, !noalias !2327
  %.sroa.4728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 2, ptr %.sroa.4728.0..sroa_idx, align 8, !noalias !2327
  %.sroa.5729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.bq, ptr %.sroa.5729.0..sroa_idx, align 8, !noalias !2327
  %.sroa.6730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 1, ptr %.sroa.6730.0..sroa_idx, align 8, !noalias !2327
  %.sroa.7731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %.sroa.7731.0..sroa_idx, align 8, !noalias !2327
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.br, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store ptr %i.br, ptr %i.bp, align 8
  %.sroa.4431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4431.0..sroa_idx, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.bt, ptr %i.gr, align 8
  %.sroa.4435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4435.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2328
  store ptr @49, ptr %i.p, align 8, !noalias !2329
  %.sroa.4722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 2, ptr %.sroa.4722.0..sroa_idx, align 8, !noalias !2329
  %.sroa.5723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.bp, ptr %.sroa.5723.0..sroa_idx, align 8, !noalias !2329
  %.sroa.6724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 2, ptr %.sroa.6724.0..sroa_idx, align 8, !noalias !2329
  %.sroa.7725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr null, ptr %.sroa.7725.0..sroa_idx, align 8, !noalias !2329
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.p)
          to label %bb.bw unwind label %bb.bv

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store i64 0, ptr %i.bo, align 8
  %.sroa.4423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %.sroa.764.0, ptr %.sroa.4423.0..sroa_idx, align 8
  %.sroa.5424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %i.ek, ptr %.sroa.5424.0..sroa_idx, align 8
  %.sroa.5424.sroa.4.0..sroa.5424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 %.sroa.764.0, ptr %.sroa.5424.sroa.4.0..sroa.5424.0..sroa_idx.sroa_idx, align 8
  %.sroa.5424.sroa.5.0..sroa.5424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store i64 0, ptr %.sroa.5424.sroa.5.0..sroa.5424.0..sroa_idx.sroa_idx, align 8
  %.sroa.5424.sroa.6.0..sroa.5424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store i64 %.sroa.764.0, ptr %.sroa.5424.sroa.6.0..sroa.5424.0..sroa_idx.sroa_idx, align 8
  %.sroa.5424.sroa.7.0..sroa.5424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store i32 47, ptr %.sroa.5424.sroa.7.0..sroa.5424.0..sroa_idx.sroa_idx, align 8
  %.sroa.5424.sroa.8.0..sroa.5424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 52
  store i32 47, ptr %.sroa.5424.sroa.8.0..sroa.5424.0..sroa_idx.sroa_idx, align 4
  %.sroa.5424.sroa.9.0..sroa.5424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store i8 1, ptr %.sroa.5424.sroa.9.0..sroa.5424.0..sroa_idx.sroa_idx, align 8
  %.sroa.6425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store i8 1, ptr %.sroa.6425.0..sroa_idx, align 8
  %.sroa.7426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 65
  store i8 0, ptr %.sroa.7426.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.gs = call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE"(ptr noalias noundef align 8 dereferenceable(72) %i.bo) ; 2 uses
  %i.gt = extractvalue { ptr, i64 } %i.gs, 0      ; 3 uses
  %.not574 = icmp eq ptr %i.gt, null
  br i1 %.not574, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store ptr %i.a, ptr %i.bl, align 8
  %.sroa.4439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4439.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2330
  store ptr @31, ptr %i.o, align 8, !noalias !2331
  %.sroa.4734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %.sroa.4734.0..sroa_idx, align 8, !noalias !2331
  %.sroa.5735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.bl, ptr %.sroa.5735.0..sroa_idx, align 8, !noalias !2331
  %.sroa.6736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 1, ptr %.sroa.6736.0..sroa_idx, align 8, !noalias !2331
  %.sroa.7737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %.sroa.7737.0..sroa_idx, align 8, !noalias !2331
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.4176.0..sroa_idx, align 8
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.5177.0..sroa_idx, align 8
  %.sroa.6178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 349, ptr %.sroa.6178.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.bd

bb.ak:                                            ; preds = %bb.ai
  %i.gu = extractvalue { ptr, i64 } %i.gs, 1      ; 2 uses
  store ptr %i.gt, ptr %i.bn, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.gu, ptr %i.gv, align 8
  %i.gw = tail call fastcc i64 @"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gt, i64 noundef %i.gu, i32 noundef 10) ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN11procfs_core7process5mount16NFSOperationStat8from_str17h897dbf289f786e83E:bb.a
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 108, ptr %.sroa.5133.0..sroa_idx, align 8
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 558, ptr %.sroa.6134.0..sroa_idx, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1000000000, ptr %i.ju, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %bb.at

bb.bg:                                            ; preds = %bb.ab
  %i.jv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val451 = load i64, ptr %i.bl, align 8         ; 2 uses
  %i.jw = icmp eq i64 %.val451, 0
  br i1 %i.jw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split"

bb.bh:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %.val449 = load i64, ptr %i.bl, align 8         ; 2 uses
  %i.jx = icmp eq i64 %.val449, 0
  br i1 %i.jx, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit544", label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jy = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val450 = load ptr, ptr %i.jy, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val450, i64 noundef %.val449, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit544"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit544": ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @198, ptr %.sroa.4104.0..sroa_idx, align 8
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 108, ptr %.sroa.5105.0..sroa_idx, align 8
  %.sroa.6106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 557, ptr %.sroa.6106.0..sroa_idx, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1000000000, ptr %i.jz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.at

bb.bj:                                            ; preds = %.loopexit
  %i.ka = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val447 = load i64, ptr %i.bu, align 8         ; 2 uses
  %i.kb = icmp eq i64 %.val447, 0
  br i1 %i.kb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split"

bb.bk:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %.val445 = load i64, ptr %i.bu, align 8         ; 2 uses
  %i.kc = icmp eq i64 %.val445, 0
  br i1 %i.kc, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit546", label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kd = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.val446 = load ptr, ptr %i.kd, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val446, i64 noundef %.val445, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit546"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit546": ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false)
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @198, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 108, ptr %.sroa.577.0..sroa_idx, align 8
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 556, ptr %.sroa.678.0..sroa_idx, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1000000000, ptr %i.ke, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.at

bb.bm:                                            ; preds = %.loopexit740
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val443 = load i64, ptr %i.cc, align 8         ; 2 uses
  %i.kg = icmp eq i64 %.val443, 0
  br i1 %i.kg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split"

bb.bn:                                            ; preds = %.loopexit740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %.val441 = load i64, ptr %i.cc, align 8         ; 2 uses
  %i.kh = icmp eq i64 %.val441, 0
  br i1 %i.kh, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit548", label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ki = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.val442 = load ptr, ptr %i.ki, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val442, i64 noundef %.val441, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit548"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit548": ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false)
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @198, ptr %.sroa.448.0..sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 108, ptr %.sroa.549.0..sroa_idx, align 8
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 555, ptr %.sroa.650.0..sroa_idx, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1000000000, ptr %i.kj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br label %bb.at

bb.bp:                                            ; preds = %.loopexit743
  %i.kk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val439 = load i64, ptr %i.ck, align 8         ; 2 uses
  %i.kl = icmp eq i64 %.val439, 0
  br i1 %i.kl, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split"

bb.bq:                                            ; preds = %.loopexit743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %.val = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.km = icmp eq i64 %.val, 0
  br i1 %i.km, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit550", label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.val438 = load ptr, ptr %i.kn, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val438, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit550"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit550": ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @198, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 108, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 554, ptr %.sroa.622.0..sroa_idx, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1000000000, ptr %i.ko, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7process5mount18MountNFSStatistics11server_caps17hf270ca1c537e783cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(440) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.l, 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.sroa.027.063 = phi ptr [ %i.bp, %bb.i ], [ %i.j, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.027.063, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 3 uses
  %.not.i.i = icmp ult i64 %i.p, 7
  br i1 %.not.i.i, label %bb.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit.i": ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.027.063, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 1
  %i.t = xor i32 1936744803, %i.s
  %i.u = getelementptr i8, ptr %i.r, i64 3
  %i.v = load i32, ptr %i.u, align 1
  %i.w = xor i32 2016427379, %i.v
  %i.x = or i32 %i.t, %i.w
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %bcmp.i.i.fr.i = freeze i32 %i.z
  %i.aa = icmp eq i32 %bcmp.i.i.fr.i, 0
  br i1 %i.aa, label %bb.b, label %bb.i

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ab, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.o

bb.b:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit.i"
  %i.ac = add i64 %i.p, -7                        ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 7 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ad, ptr %i.h, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ac, ptr %i.ae, align 8
  switch i64 %i.ac, label %bb.d [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.af = load i8, ptr %i.ad, align 1, !alias.scope !3730, !noundef !4
  switch i8 %i.af, label %.lr.ph.split.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  ]

.lr.ph.split.i.preheader:                         ; preds = %bb.e, %bb.f, %bb.c
  %.sroa.03.188.i.ph = phi ptr [ %i.ag, %bb.e ], [ %i.ad, %bb.f ], [ %i.ad, %bb.c ]
  %.sroa.16.187.i.ph = phi i64 [ %i.ah, %bb.e ], [ %i.ac, %bb.f ], [ 1, %bb.c ]
  br label %.lr.ph.split.i

bb.d:                                             ; preds = %bb.b
  %.pr.i = load i8, ptr %i.ad, align 1, !alias.scope !3730
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ah = add i64 %i.p, -8                        ; 3 uses
  %i.ai = icmp ult i64 %i.ac, 10
  br i1 %i.ai, label %.lr.ph.split.i.preheader, label %.preheader75.i

.preheader75.i:                                   ; preds = %bb.e
  %.not.i64 = icmp eq i64 %i.ah, 0
  br i1 %.not.i64, label %.loopexit.i, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %bb.f, %.preheader75.i
  %.sroa.03.0.i67.ph = phi ptr [ %i.ad, %bb.f ], [ %i.ag, %.preheader75.i ]
  %.sroa.16.0.i66.ph = phi i64 [ %i.ac, %bb.f ], [ %i.ah, %.preheader75.i ]
  br label %.lr.ph68

.preheader75.split.i:                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i67, i64 1
  %i.ak = add i64 %.sroa.16.0.i66, -1             ; 2 uses
  %i.al = shl nuw i32 %.sroa.019.0.i65, 4
  %i.am = or disjoint i32 %spec.select92.i, %i.al ; 2 uses
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph68

bb.f:                                             ; preds = %bb.d
  %i.an = icmp ult i64 %i.ac, 9
  br i1 %i.an, label %.lr.ph.split.i.preheader, label %.lr.ph68.preheader

.loopexit.i:                                      ; preds = %.preheader75.split.i, %bb.h, %.preheader75.i
  %.sroa.019.2.i = phi i32 [ %i.bn, %bb.h ], [ 0, %.preheader75.i ], [ %i.am, %.preheader75.split.i ]
  %i.ao = zext i32 %.sroa.019.2.i to i64
  %i.ap = shl nuw i64 %i.ao, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.preheader75.split.i
  %.sroa.03.0.i67 = phi ptr [ %i.aj, %.preheader75.split.i ], [ %.sroa.03.0.i67.ph, %.lr.ph68.preheader ] ; 2 uses
  %.sroa.16.0.i66 = phi i64 [ %i.ak, %.preheader75.split.i ], [ %.sroa.16.0.i66.ph, %.lr.ph68.preheader ]
  %.sroa.019.0.i65 = phi i32 [ %i.am, %.preheader75.split.i ], [ 0, %.lr.ph68.preheader ] ; 2 uses
  %i.aq = icmp ugt i32 %.sroa.019.0.i65, 268435455
  %i.ar = load i8, ptr %.sroa.03.0.i67, align 1, !alias.scope !3730, !noundef !4 ; 2 uses
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = icmp ugt i8 %i.ar, 57                   ; 2 uses
  %i.au = add nsw i32 %i.as, -65                  ; 2 uses
  %i.av = add nsw i32 %i.as, -48                  ; 2 uses
  br i1 %i.aq, label %.split.us.i, label %bb.g, !prof !10

bb.g:                                             ; preds = %.lr.ph68
  %i.aw = and i32 %i.au, -33
  %i.ax = add nuw nsw i32 %i.aw, 10
  %spec.select92.i = select i1 %i.at, i32 %i.ax, i32 %i.av ; 2 uses
  %i.ay = icmp ult i32 %spec.select92.i, 16
  br i1 %i.ay, label %.preheader75.split.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

.split.us.i:                                      ; preds = %.lr.ph68
  %i.az = and i32 %i.au, -34
  %i.ba = add nuw nsw i32 %i.az, 10
  %.sroa.02.0.i69.i = select i1 %i.at, i32 %i.ba, i32 %i.av
  %i.bb = icmp ult i32 %.sroa.02.0.i69.i, 16
  %spec.select.i38 = select i1 %i.bb, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.h
  %.sroa.03.188.i = phi ptr [ %i.bm, %bb.h ], [ %.sroa.03.188.i.ph, %.lr.ph.split.i.preheader ] ; 2 uses
  %.sroa.16.187.i = phi i64 [ %i.bl, %bb.h ], [ %.sroa.16.187.i.ph, %.lr.ph.split.i.preheader ]
  %.sroa.019.186.i = phi i32 [ %i.bn, %bb.h ], [ 0, %.lr.ph.split.i.preheader ]
  %i.bc = load i8, ptr %.sroa.03.188.i, align 1, !alias.scope !3730, !noundef !4 ; 2 uses
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = icmp ugt i8 %i.bc, 57
  %i.bf = add nsw i32 %i.bd, -65
  %i.bg = and i32 %i.bf, -33
  %i.bh = add nuw nsw i32 %i.bg, 10
  %i.bi = add nsw i32 %i.bd, -48
  %spec.select93.i = select i1 %i.be, i32 %i.bh, i32 %i.bi ; 2 uses
  %i.bj = icmp ult i32 %spec.select93.i, 16
  br i1 %i.bj, label %bb.h, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.bk = shl i32 %.sroa.019.186.i, 4
  %i.bl = add nsw i64 %.sroa.16.187.i, -1         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.03.188.i, i64 1
  %i.bn = or disjoint i32 %spec.select93.i, %i.bk ; 2 uses
  %.not67.i = icmp eq i64 %i.bl, 0
  br i1 %.not67.i, label %.loopexit.i, label %.lr.ph.split.i

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit": ; preds = %.loopexit.i, %.split.us.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %i.ap, %.loopexit.i ], [ %spec.select.i38, %.split.us.i ] ; 4 uses
  %i.bo = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.bo, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %bb.j

bb.i:                                             ; preds = %.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit.i"
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.027.063, i64 24 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.m
  br i1 %i.bq, label %._crit_edge, label %.lr.ph

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread": ; preds = %bb.g, %.lr.ph.split.i, %bb.c, %bb.c, %bb.b, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.8.0.insert.insert.i50 = phi i64 [ %.sroa.8.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit" ], [ 1, %bb.b ], [ 257, %.lr.ph.split.i ], [ 257, %bb.c ], [ 257, %bb.c ], [ 257, %bb.g ]
  %.sroa.429.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i50, 8
  %.sroa.429.0.extract.trunc = trunc i64 %.sroa.429.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 %.sroa.429.0.extract.trunc, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3731
  store ptr @200, ptr %i.b, align 8, !noalias !3732
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.441.0..sroa_idx, align 8, !noalias !3732
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %.sroa.542.0..sroa_idx, align 8, !noalias !3732
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.643.0..sroa_idx, align 8, !noalias !3732
  %.sroa.744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.744.0..sroa_idx, align 8, !noalias !3732
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.422.0..sroa_idx, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.g, ptr %i.br, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.426.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3733
  store ptr @49, ptr %i.a, align 8, !noalias !3734
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !3734
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !3734
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !3734
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3734
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.m unwind label %bb.k

bb.j:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.631.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.631.0.extract.trunc = trunc nuw i64 %.sroa.631.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bs = icmp ult i64 %.sroa.8.0.insert.insert.i, 288230376151711744 ; 2 uses
  %. = zext i1 %i.bs to i32
  %.sroa.631.0.extract.trunc. = select i1 %i.bs, i32 %.sroa.631.0.extract.trunc, i32 undef
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %., ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.631.0.extract.trunc., ptr %i.bu, align 4
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.o

bb.k:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %.val36 = load i64, ptr %i.e, align 8           ; 2 uses
  %i.bw = icmp eq i64 %.val36, 0
  br i1 %i.bw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val37 = load ptr, ptr %i.bx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val37, i64 noundef %.val36, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.m:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val = load i64, ptr %i.e, align 8             ; 2 uses
  %i.by = icmp eq i64 %.val, 0
  br i1 %i.by, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit39", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val35 = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val35, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit39"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit39": ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @198, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 108, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 382, ptr %.sroa.611.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit39", %._crit_edge
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.bv
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process5mount1_89_$LT$impl$u20$core..fmt..Octal$u20$for$u20$procfs_core..process..mount..NFSServerCaps$GT$3fmt17heb345ba731913f0fE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3738
  store i32 %i.b, ptr %i.a, align 4, !noalias !3738
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u32$GT$3fmt17h0c8928584ba225fcE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3738
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process5mount1_90_$LT$impl$u20$core..fmt..Binary$u20$for$u20$procfs_core..process..mount..NFSServerCaps$GT$3fmt17h81489ce21c116624E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3743
  store i32 %i.b, ptr %i.a, align 4, !noalias !3743
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u32$GT$3fmt17hea37071c6b23d768E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3743
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process5mount1_92_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$procfs_core..process..mount..NFSServerCaps$GT$3fmt17h88f7751902ffb36dE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3748
  store i32 %i.b, ptr %i.a, align 4, !noalias !3748
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3748
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process5mount1_92_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$procfs_core..process..mount..NFSServerCaps$GT$3fmt17h9c74a0132a2ee832E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3753
  store i32 %i.b, ptr %i.a, align 4, !noalias !3753
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3753
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7process5mount9MountInfo9from_line17ha1873a9b89bbdaddE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 2 uses
  %i.aa = alloca [80 x i8], align 8               ; 18 uses
  %i.ab = alloca [72 x i8], align 8               ; 15 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 2 uses
  %i.ae = alloca [48 x i8], align 8               ; 10 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 2 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 2 uses
  %i.aj = alloca [48 x i8], align 8               ; 6 uses
  %i.ak = alloca [48 x i8], align 8               ; 6 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 2 uses
  %i.an = alloca [48 x i8], align 8               ; 6 uses
  %i.ao = alloca [48 x i8], align 8               ; 4 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 2 uses
  %i.ar = alloca [48 x i8], align 8               ; 6 uses
  %i.as = alloca [48 x i8], align 8               ; 4 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
end_hunk_3
begin_hunk_4_@_ZN11procfs_core7process6status6Status10parse_sigq17h42e8a1cc101b6ad1E:.lr.ph.split.i.i
  store ptr null, ptr %.sroa.7196.0..sroa_idx, align 8, !noalias !4049
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.x unwind label %bb.w

"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit165": ; preds = %.preheader57.split.us.i141, %bb.r, %.preheader57.i138
  %.sroa.9191.0 = phi i64 [ %i.cs, %bb.r ], [ 0, %.preheader57.i138 ], [ %i.dg, %.preheader57.split.us.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9191.0, ptr %i.dj, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit169", %bb.o, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit167", %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit165"
  ret void

bb.w:                                             ; preds = %.loopexit
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val102 = load i64, ptr %i.i, align 8          ; 2 uses
  %i.dl = icmp eq i64 %.val102, 0
  br i1 %i.dl, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split"

bb.x:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val100 = load i64, ptr %i.i, align 8          ; 2 uses
  %i.dm = icmp eq i64 %.val100, 0
  br i1 %i.dm, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit167", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val101 = load ptr, ptr %i.dn, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val101, i64 noundef %.val100, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit167"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit167": ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @232, ptr %.sroa.448.0..sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 109, ptr %.sroa.549.0..sroa_idx, align 8
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 302, ptr %.sroa.650.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.v

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split": ; preds = %bb.w, %bb.z
  %.sink319.sroa.phi = phi ptr [ %.sink319.sroa.gep, %bb.z ], [ %.sink319.sroa.gep355, %bb.w ]
  %.val98.sink = phi i64 [ %.val98, %bb.z ], [ %.val102, %bb.w ]
  %.pn.ph = phi { ptr, i32 } [ %i.do, %bb.z ], [ %i.dk, %bb.w ]
  %.val99 = load ptr, ptr %.sink319.sroa.phi, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val99, i64 noundef %.val98.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split", %bb.z, %bb.w
  %.pn = phi { ptr, i32 } [ %i.do, %bb.z ], [ %i.dk, %bb.w ], [ %.pn.ph, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split" ]
  resume { ptr, i32 } %.pn

bb.z:                                             ; preds = %.loopexit240
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val98 = load i64, ptr %i.q, align 8           ; 2 uses
  %i.dp = icmp eq i64 %.val98, 0
  br i1 %i.dp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split"

bb.aa:                                            ; preds = %.loopexit240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.val = load i64, ptr %i.q, align 8             ; 2 uses
  %i.dq = icmp eq i64 %.val, 0
  br i1 %i.dq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit169", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val97 = load ptr, ptr %i.dr, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val97, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit169"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit169": ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @232, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 109, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 301, ptr %.sroa.622.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.v
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7process6status6Status13parse_allowed17hbb6d9944f9aea8b8E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph109:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.b

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.q ], [ %i.ce, %bb.p ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val47 = load i64, ptr %i.j, align 8           ; 2 uses
  %i.n = icmp eq i64 %.val47, 0
  br i1 %i.n, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h5891f1548f64d606E.exit", label %bb.a

bb.a:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
  %.val48 = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.o = shl nuw i64 %.val47, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val48, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 4) #38
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h5891f1548f64d606E.exit"

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i, %bb.n, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.b:                                             ; preds = %.lr.ph109, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf99a3b33bcac4accE.exit"
  %i.p = phi ptr [ inttoptr (i64 4 to ptr), %.lr.ph109 ], [ %i.ca, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf99a3b33bcac4accE.exit" ]
  %i.q = phi i64 [ 0, %.lr.ph109 ], [ %i.cc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf99a3b33bcac4accE.exit" ] ; 3 uses
  %.lcssa94114 = phi i64 [ 0, %.lr.ph109 ], [ %.lcssa94112, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf99a3b33bcac4accE.exit" ] ; 3 uses
  %.lcssa82101106 = phi i64 [ 0, %.lr.ph109 ], [ %.lcssa82100, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf99a3b33bcac4accE.exit" ] ; 7 uses
  %i.r = icmp ult i64 %2, %.lcssa94114
  br i1 %i.r, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.b, %bb.d
  %i.s = phi i64 [ %i.af, %bb.d ], [ %.lcssa94114, %bb.b ] ; 6 uses
  %i.t = sub nuw i64 %2, %i.s                     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 2 uses
  %i.v = icmp ult i64 %i.t, 16
  br i1 %i.v, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %2, %i.s
  br i1 %.not.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.z, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.05.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !4075, !noalias !4076, !noundef !4
  %i.y = icmp eq i8 %i.x, 44
  br i1 %i.y, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.z = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.t
  br i1 %exitcond.not.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %.lr.ph.split.i.i
  %i.aa = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 44, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.u, i64 noundef %i.t)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  %i.ad = trunc nuw i64 %i.ab to i1
  br i1 %i.ad, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %.noexc
  %.sroa.4.0.i27.i.i = phi i64 [ %i.ac, %.noexc ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ae = add i64 %i.s, 1
  %i.af = add i64 %i.ae, %.sroa.4.0.i27.i.i       ; 5 uses
  %.not21.i.i = icmp ugt i64 %i.af, %2
  %i.ag = add i64 %i.s, %.sroa.4.0.i27.i.i
  %or.cond.i.i.not = icmp ult i64 %i.ag, %2
  br i1 %or.cond.i.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  br i1 %.not21.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.lr.ph.split.i.i

bb.e:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.ah = add i64 %i.s, %.sroa.4.0.i27.i.i        ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %lhsc = load i8, ptr %i.ai, align 1
  %i.aj = icmp eq i8 %lhsc, 44
  br i1 %i.aj, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %bb.d

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i": ; preds = %bb.e, %.noexc, %.preheader.i.i.i, %bb.d, %bb.c, %bb.b
  %.lcssa94112 = phi i64 [ %.lcssa94114, %bb.b ], [ %2, %bb.c ], [ %i.af, %bb.e ], [ %2, %.noexc ], [ %2, %.preheader.i.i.i ], [ %i.af, %bb.d ]
  %.lcssa82100 = phi i64 [ %.lcssa82101106, %bb.b ], [ %.lcssa82101106, %bb.c ], [ %i.af, %bb.e ], [ %.lcssa82101106, %.noexc ], [ %.lcssa82101106, %.preheader.i.i.i ], [ %.lcssa82101106, %bb.d ]
  %i.ak = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.e ], [ true, %.noexc ], [ true, %.preheader.i.i.i ], [ true, %bb.d ]
  %.pn119 = phi i64 [ %2, %bb.b ], [ %2, %bb.c ], [ %i.ah, %bb.e ], [ %2, %.noexc ], [ %2, %.preheader.i.i.i ], [ %2, %bb.d ]
  %.sroa.4.1.i.ph = sub nuw i64 %.pn119, %.lcssa82101106 ; 7 uses
  %.sroa.0.1.i.ph = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa82101106 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %.sroa.0.1.i.ph, ptr %i.i, align 8
  store i64 %.sroa.4.1.i.ph, ptr %i.m, align 8
  switch i64 %.sroa.4.1.i.ph, label %bb.g [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.loopexit77"
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"
  %i.al = load i8, ptr %.sroa.0.1.i.ph, align 1, !alias.scope !4077, !noundef !4
  switch i8 %i.al, label %.lr.ph.split.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.loopexit77"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.loopexit77"
  ]

.lr.ph.split.i.preheader:                         ; preds = %bb.h, %bb.i, %bb.f
  %.sroa.03.188.i.ph = phi ptr [ %i.am, %bb.h ], [ %.sroa.0.1.i.ph, %bb.i ], [ %.sroa.0.1.i.ph, %bb.f ]
  %.sroa.16.187.i.ph = phi i64 [ %i.an, %bb.h ], [ %.sroa.4.1.i.ph, %bb.i ], [ 1, %bb.f ]
  br label %.lr.ph.split.i

bb.g:                                             ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"
  %.pr.i = load i8, ptr %.sroa.0.1.i.ph, align 1, !alias.scope !4077
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.ph, i64 1 ; 2 uses
  %i.an = add i64 %.sroa.4.1.i.ph, -1             ; 2 uses
  %i.ao = icmp ult i64 %.sroa.4.1.i.ph, 10
  br i1 %i.ao, label %.lr.ph.split.i.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h, %bb.i
  %.sroa.03.0.i98.ph = phi ptr [ %i.am, %bb.h ], [ %.sroa.0.1.i.ph, %bb.i ]
  %.sroa.16.0.i97.ph = phi i64 [ %i.an, %bb.h ], [ %.sroa.4.1.i.ph, %bb.i ]
  br label %.lr.ph

.preheader75.split.i:                             ; preds = %bb.j
  %i.ap = shl nuw i32 %.sroa.019.0.i96, 4
  %i.aq = or disjoint i32 %spec.select92.i, %i.ap ; 2 uses
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph

bb.i:                                             ; preds = %bb.g
  %i.ar = icmp ult i64 %.sroa.4.1.i.ph, 9
  br i1 %i.ar, label %.lr.ph.split.i.preheader, label %.lr.ph.preheader

.loopexit.i:                                      ; preds = %.preheader75.split.i, %bb.k
  %.sroa.019.2.i = phi i32 [ %i.bt, %bb.k ], [ %i.aq, %.preheader75.split.i ]
  %i.as = zext i32 %.sroa.019.2.i to i64
  %i.at = shl nuw i64 %i.as, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader75.split.i
  %.sroa.03.0.i98 = phi ptr [ %i.au, %.preheader75.split.i ], [ %.sroa.03.0.i98.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.16.0.i97 = phi i64 [ %i.av, %.preheader75.split.i ], [ %.sroa.16.0.i97.ph, %.lr.ph.preheader ]
  %.sroa.019.0.i96 = phi i32 [ %i.aq, %.preheader75.split.i ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i98, i64 1
  %i.av = add i64 %.sroa.16.0.i97, -1             ; 2 uses
  %i.aw = icmp ugt i32 %.sroa.019.0.i96, 268435455
  %i.ax = load i8, ptr %.sroa.03.0.i98, align 1, !alias.scope !4077, !noundef !4 ; 2 uses
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = icmp ugt i8 %i.ax, 57                   ; 2 uses
  %i.ba = add nsw i32 %i.ay, -65                  ; 2 uses
  %i.bb = add nsw i32 %i.ay, -48                  ; 2 uses
  br i1 %i.aw, label %.split.us.i, label %bb.j, !prof !10

bb.j:                                             ; preds = %.lr.ph
  %i.bc = and i32 %i.ba, -33
  %i.bd = add nuw nsw i32 %i.bc, 10
  %spec.select92.i = select i1 %i.az, i32 %i.bd, i32 %i.bb ; 2 uses
  %i.be = icmp ult i32 %spec.select92.i, 16
  br i1 %i.be, label %.preheader75.split.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

.split.us.i:                                      ; preds = %.lr.ph
  %i.bf = and i32 %i.ba, -34
  %i.bg = add nuw nsw i32 %i.bf, 10
  %.sroa.02.0.i69.i = select i1 %i.az, i32 %i.bg, i32 %i.bb
  %i.bh = icmp ult i32 %.sroa.02.0.i69.i, 16
  %spec.select.i = select i1 %i.bh, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.k
  %.sroa.03.188.i = phi ptr [ %i.bs, %bb.k ], [ %.sroa.03.188.i.ph, %.lr.ph.split.i.preheader ] ; 2 uses
  %.sroa.16.187.i = phi i64 [ %i.br, %bb.k ], [ %.sroa.16.187.i.ph, %.lr.ph.split.i.preheader ]
  %.sroa.019.186.i = phi i32 [ %i.bt, %bb.k ], [ 0, %.lr.ph.split.i.preheader ]
  %i.bi = load i8, ptr %.sroa.03.188.i, align 1, !alias.scope !4077, !noundef !4 ; 2 uses
  %i.bj = zext i8 %i.bi to i32                    ; 2 uses
  %i.bk = icmp ugt i8 %i.bi, 57
  %i.bl = add nsw i32 %i.bj, -65
  %i.bm = and i32 %i.bl, -33
  %i.bn = add nuw nsw i32 %i.bm, 10
  %i.bo = add nsw i32 %i.bj, -48
  %spec.select93.i = select i1 %i.bk, i32 %i.bn, i32 %i.bo ; 2 uses
  %i.bp = icmp ult i32 %spec.select93.i, 16
  br i1 %i.bp, label %bb.k, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.k:                                             ; preds = %.lr.ph.split.i
  %i.bq = shl i32 %.sroa.019.186.i, 4
  %i.br = add nsw i64 %.sroa.16.187.i, -1         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.03.188.i, i64 1
  %i.bt = or disjoint i32 %spec.select93.i, %i.bq ; 2 uses
  %.not67.i = icmp eq i64 %i.br, 0
  br i1 %.not67.i, label %.loopexit.i, label %.lr.ph.split.i

bb.l:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf99a3b33bcac4accE.exit"
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 -9223372036854775803, ptr %0, align 8
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h5891f1548f64d606E.exit54"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h5891f1548f64d606E.exit54": ; preds = %bb.t, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit53", %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit": ; preds = %.split.us.i, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %i.at, %.loopexit.i ], [ %spec.select.i, %.split.us.i ] ; 3 uses
  %i.bv = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.bv, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.loopexit77", label %bb.m

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.loopexit77": ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit", %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", %bb.f, %bb.f
  %.sroa.8.0.insert.insert.i73.ph = phi i64 [ 257, %bb.f ], [ 257, %bb.f ], [ 1, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i" ], [ %.sroa.8.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit" ]
  %i.bw = lshr i64 %.sroa.8.0.insert.insert.i73.ph, 8
  %i.bx = trunc i64 %i.bw to i8
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread": ; preds = %bb.j, %.lr.ph.split.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.loopexit77"
  %.sroa.8.0.insert.insert.i73 = phi i8 [ %i.bx, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.loopexit77" ], [ 1, %.lr.ph.split.i ], [ 1, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %.sroa.8.0.insert.insert.i73, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.426.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4078
  store ptr @236, ptr %i.b, align 8, !noalias !4079
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.456.0..sroa_idx, align 8, !noalias !4079
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %.sroa.557.0..sroa_idx, align 8, !noalias !4079
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.658.0..sroa_idx, align 8, !noalias !4079
  %.sroa.759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.759.0..sroa_idx, align 8, !noalias !4079
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.640.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.640.0.extract.trunc = trunc nuw i64 %.sroa.640.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4080)
  %i.by = load i64, ptr %i.j, align 8, !range !15, !alias.scope !4080, !noundef !4
  %i.bz = icmp eq i64 %i.q, %i.by
  br i1 %i.bz, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf99a3b33bcac4accE.exit"

bb.n:                                             ; preds = %bb.m
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2d28541b5a905683E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf99a3b33bcac4accE.exit_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf99a3b33bcac4accE.exit_crit_edge": ; preds = %bb.n
  %.pre = load ptr, ptr %i.k, align 8, !alias.scope !4080
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf99a3b33bcac4accE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf99a3b33bcac4accE.exit": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf99a3b33bcac4accE.exit_crit_edge", %bb.m
  %i.ca = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf99a3b33bcac4accE.exit_crit_edge" ], [ %i.p, %bb.m ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.q
  store i32 %.sroa.640.0.extract.trunc, ptr %i.cb, align 4, !noalias !4080
  %i.cc = add i64 %i.q, 1                         ; 2 uses
  store i64 %i.cc, ptr %i.l, align 8, !alias.scope !4080
  br i1 %i.ak, label %bb.l, label %bb.b

bb.o:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.430.0..sroa_idx, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.h, ptr %i.cd, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.434.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4081
  store ptr @49, ptr %i.a, align 8, !noalias !4082
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4082
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !4082
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !4082
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !4082
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val43 = load i64, ptr %i.f, align 8           ; 2 uses
  %i.cf = icmp eq i64 %.val43, 0
  br i1 %i.cf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val44 = load ptr, ptr %i.cg, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val44, i64 noundef %.val43, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val = load i64, ptr %i.f, align 8             ; 2 uses
  %i.ch = icmp eq i64 %.val, 0
  br i1 %i.ch, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit53", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val42 = load ptr, ptr %i.ci, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit53"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit53": ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @232, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 109, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 317, ptr %.sroa.610.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val45 = load i64, ptr %i.j, align 8           ; 2 uses
  %i.cj = icmp eq i64 %.val45, 0
  br i1 %i.cj, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h5891f1548f64d606E.exit54", label %bb.t

bb.t:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit53"
  %.val46 = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.ck = shl nuw i64 %.val45, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 4) #38
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h5891f1548f64d606E.exit54"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h5891f1548f64d606E.exit": ; preds = %bb.a, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7process6status6Status13parse_uid_gid17hf07314112a9b3c74E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [64 x i8], align 8                ; 14 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store i64 0, ptr %i.l, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %1, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %2, ptr %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx, align 8
  %.sroa.537.sroa.5.0..sroa.537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %1, ptr %.sroa.537.sroa.5.0..sroa.537.0..sroa_idx.sroa_idx, align 8
  %.sroa.537.sroa.6.0..sroa.537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.n, ptr %.sroa.537.sroa.6.0..sroa.537.0..sroa_idx.sroa_idx, align 8
  %.sroa.537.sroa.7.0..sroa.537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 0, ptr %.sroa.537.sroa.7.0..sroa.537.0..sroa_idx.sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i8 1, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  store i8 0, ptr %.sroa.739.0..sroa_idx, align 1
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h47c9c59356cd9ed0E.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.q, %bb.b ], [ %3, %bb.a ]
  %i.o = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h47c9c59356cd9ed0E.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.q = add i64 %.sroa.01.0.i, -1                ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h47c9c59356cd9ed0E.exit.thread, label %.preheader

_ZN4core4iter6traits8iterator8Iterator8try_fold17h47c9c59356cd9ed0E.exit.thread: ; preds = %bb.b, %bb.a
  %i.s = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.l) ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0        ; 8 uses
  %.not73 = icmp eq ptr %i.t, null
  %i.u = extractvalue { ptr, i64 } %i.s, 1        ; 7 uses
  br i1 %.not73, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h47c9c59356cd9ed0E.exit, label %bb.c

_ZN4core4iter6traits8iterator8Iterator8try_fold17h47c9c59356cd9ed0E.exit: ; preds = %.preheader, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h47c9c59356cd9ed0E.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.a, ptr %i.j, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.450.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4106
  store ptr @31, ptr %i.d, align 8, !noalias !4107
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4107
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !4107
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !4107
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !4107
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @232, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 109, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 296, ptr %.sroa.610.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.k

bb.c:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17h47c9c59356cd9ed0E.exit.thread
  store ptr %i.t, ptr %i.m, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.u, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  switch i64 %i.u, label %bb.e [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.t, align 1, !alias.scope !4108, !noundef !4
  switch i8 %i.w, label %.lr.ph.split.us.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  ]

bb.e:                                             ; preds = %bb.c
  %.pr.i = load i8, ptr %i.t, align 1, !alias.scope !4108
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.y = add i64 %i.u, -1                         ; 2 uses
  %i.z = icmp ult i64 %i.u, 10
  br i1 %i.z, label %.lr.ph.split.us.i.preheader, label %.preheader75.i

.preheader75.i:                                   ; preds = %bb.i, %bb.f
  %.sroa.16.0.ph.i = phi i64 [ %i.u, %bb.i ], [ %i.y, %bb.f ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %i.t, %bb.i ], [ %i.x, %bb.f ]
  %.not.us.i136 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.us.i136, label %.loopexit.i, label %.lr.ph

.preheader75.split.us.i:                          ; preds = %bb.h
  %.not.us.i = icmp eq i64 %i.ab, 0
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader75.i, %.preheader75.split.us.i
  %.sroa.03.0.us.i139 = phi ptr [ %i.aa, %.preheader75.split.us.i ], [ %.sroa.03.0.ph.i, %.preheader75.i ] ; 2 uses
  %.sroa.16.0.us.i138 = phi i64 [ %i.ab, %.preheader75.split.us.i ], [ %.sroa.16.0.ph.i, %.preheader75.i ]
  %.sroa.019.0.us.i137 = phi i32 [ %i.aj, %.preheader75.split.us.i ], [ 0, %.preheader75.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.0.us.i139, i64 1
  %i.ab = add i64 %.sroa.16.0.us.i138, -1         ; 2 uses
  %i.ac = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.us.i137, i32 10) ; 2 uses
  %i.ad = extractvalue { i32, i1 } %i.ac, 0       ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ac, 1
  %i.af = load i8, ptr %.sroa.03.0.us.i139, align 1, !alias.scope !4108, !noundef !4 ; 2 uses
  br i1 %i.ae, label %.split.us.i, label %bb.g, !prof !10

bb.g:                                             ; preds = %.lr.ph
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -48                  ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 10
  br i1 %i.ai, label %bb.h, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.h:                                             ; preds = %bb.g
  %i.aj = add i32 %i.ah, %i.ad                    ; 3 uses
  %.not66.us.i = icmp ult i32 %i.aj, %i.ad
  br i1 %.not66.us.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %.preheader75.split.us.i

bb.i:                                             ; preds = %bb.e
  %i.ak = icmp ult i64 %i.u, 9
  br i1 %i.ak, label %.lr.ph.split.us.i.preheader, label %.preheader75.i

.lr.ph.split.us.i.preheader:                      ; preds = %bb.f, %bb.i, %bb.d
  %.sroa.03.188.us.i.ph = phi ptr [ %i.x, %bb.f ], [ %i.t, %bb.i ], [ %i.t, %bb.d ]
  %.sroa.16.187.us.i.ph = phi i64 [ %i.y, %bb.f ], [ %i.u, %bb.i ], [ 1, %bb.d ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.j
  %.sroa.03.188.us.i = phi ptr [ %i.ar, %bb.j ], [ %.sroa.03.188.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.sroa.16.187.us.i = phi i64 [ %i.aq, %bb.j ], [ %.sroa.16.187.us.i.ph, %.lr.ph.split.us.i.preheader ]
  %.sroa.019.186.us.i = phi i32 [ %i.as, %bb.j ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.al = load i8, ptr %.sroa.03.188.us.i, align 1, !alias.scope !4108, !noundef !4
  %i.am = zext i8 %i.al to i32
  %i.an = add nsw i32 %i.am, -48                  ; 2 uses
  %i.ao = icmp ult i32 %i.an, 10
  br i1 %i.ao, label %bb.j, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.ap = mul i32 %.sroa.019.186.us.i, 10
  %i.aq = add nsw i64 %.sroa.16.187.us.i, -1      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.188.us.i, i64 1
  %i.as = add i32 %i.an, %i.ap                    ; 2 uses
  %.not67.us.i = icmp eq i64 %i.aq, 0
  br i1 %.not67.us.i, label %.loopexit.i, label %.lr.ph.split.us.i

.loopexit.i:                                      ; preds = %.preheader75.split.us.i, %bb.j, %.preheader75.i
  %.sroa.019.2.i = phi i32 [ %i.as, %bb.j ], [ 0, %.preheader75.i ], [ %i.aj, %.preheader75.split.us.i ]
  %i.at = zext i32 %.sroa.019.2.i to i64
  %i.au = shl nuw i64 %i.at, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

.split.us.i:                                      ; preds = %.lr.ph
  %i.av = add i8 %i.af, -48
  %i.aw = icmp ult i8 %i.av, 10
  %spec.select.i = select i1 %i.aw, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit": ; preds = %.loopexit.i, %.split.us.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %i.au, %.loopexit.i ], [ %spec.select.i, %.split.us.i ] ; 3 uses
  %i.ax = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.ax, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %bb.l

bb.k:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit78", %bb.l, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h47c9c59356cd9ed0E.exit
  ret void

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread": ; preds = %bb.g, %bb.h, %.lr.ph.split.us.i, %bb.d, %bb.d, %bb.c, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.8.0.insert.insert.i104 = phi i64 [ %.sroa.8.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit" ], [ 257, %bb.d ], [ 1, %bb.c ], [ 257, %.lr.ph.split.us.i ], [ 257, %bb.d ], [ 513, %bb.h ], [ 257, %bb.g ]
  %.sroa.466.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i104, 8
  %.sroa.466.0.extract.trunc = trunc i64 %.sroa.466.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 %.sroa.466.0.extract.trunc, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.m, ptr %i.f, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.456.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4109
  store ptr @238, ptr %i.c, align 8, !noalias !4110
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.486.0..sroa_idx, align 8, !noalias !4110
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %.sroa.587.0..sroa_idx, align 8, !noalias !4110
  %.sroa.688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.688.0..sroa_idx, align 8, !noalias !4110
  %.sroa.789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.789.0..sroa_idx, align 8, !noalias !4110
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.460.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.i, ptr %i.ay, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.464.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4111
  store ptr @49, ptr %i.b, align 8, !noalias !4112
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.480.0..sroa_idx, align 8, !noalias !4112
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %.sroa.581.0..sroa_idx, align 8, !noalias !4112
  %.sroa.682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %.sroa.682.0..sroa_idx, align 8, !noalias !4112
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.783.0..sroa_idx, align 8, !noalias !4112
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.o unwind label %bb.m

bb.l:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.668.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.668.0.extract.trunc = trunc nuw i64 %.sroa.668.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.668.0.extract.trunc, ptr %i.az, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.k

bb.m:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %.val76 = load i64, ptr %i.g, align 8           ; 2 uses
  %i.bb = icmp eq i64 %.val76, 0
  br i1 %i.bb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val77 = load ptr, ptr %i.bc, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val77, i64 noundef %.val76, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.o:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val = load i64, ptr %i.g, align 8             ; 2 uses
  %i.bd = icmp eq i64 %.val, 0
  br i1 %i.bd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit78", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val75 = load ptr, ptr %i.be, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val75, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit78"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit78": ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @232, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 109, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 296, ptr %.sroa.622.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.k

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.ba
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7process6status6Status18parse_allowed_list17hb74b87069f18189fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [1 x i8], align 1                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 2 uses
  %i.u = alloca [1 x i8], align 1                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 10 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 2 uses
  %i.ab = alloca [1 x i8], align 1                ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 2 uses
  %i.ai = alloca [1 x i8], align 1                ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  store i64 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %bb.b

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.br, %bb.bq, %bb.bm, %bb.bl, %bb.ag, %bb.af, %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.jc, %bb.br ], [ %i.iw, %bb.bm ], [ %i.es, %bb.ag ], [ %i.em, %bb.ab ], [ %i.em, %bb.aa ], [ %i.es, %bb.af ], [ %i.iw, %bb.bl ], [ %i.jc, %bb.bq ], [ %lpad.loopexit.split-lp969, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val184 = load i64, ptr %i.ak, align 8         ; 2 uses
  %i.ar = icmp eq i64 %.val184, 0
  br i1 %i.ar, label %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$u32$RP$$GT$$GT$17hb5e3f25b422d4df7E.exit", label %bb.a

bb.a:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
  %.val185 = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  %i.as = shl nuw i64 %.val184, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val185, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 4) #38
  br label %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$u32$RP$$GT$$GT$17hb5e3f25b422d4df7E.exit"

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i300, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i236, %bb.f, %bb.y, %bb.bj, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352.thread", %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290.thread", %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217.thread", %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  %lpad.loopexit.split-lp969 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.b:                                             ; preds = %.lr.ph, %.thread456
  %i.at = phi ptr [ inttoptr (i64 4 to ptr), %.lr.ph ], [ %i.ej, %.thread456 ] ; 2 uses
  %i.au = phi i64 [ 0, %.lr.ph ], [ %i.ek, %.thread456 ] ; 7 uses
  %.lcssa556596 = phi i64 [ 0, %.lr.ph ], [ %.lcssa556594, %.thread456 ] ; 3 uses
  %.lcssa491573590 = phi i64 [ 0, %.lr.ph ], [ %.lcssa491572, %.thread456 ] ; 7 uses
  %i.av = icmp ult i64 %2, %.lcssa556596
  br i1 %i.av, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.b, %bb.d
  %i.aw = phi i64 [ %i.bj, %bb.d ], [ %.lcssa556596, %bb.b ] ; 6 uses
  %i.ax = sub nuw i64 %2, %i.aw                   ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw ; 2 uses
  %i.az = icmp ult i64 %i.ax, 16
  br i1 %i.az, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %2, %i.aw
  br i1 %.not.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.bd, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.01.05.i.i.i
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !4206, !noalias !4207, !noundef !4
  %i.bc = icmp eq i8 %i.bb, 44
  br i1 %i.bc, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %.lr.ph.split.i.i
  %i.be = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 44, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ay, i64 noundef %i.ax)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %i.bf = extractvalue { i64, i64 } %i.be, 0
  %i.bg = extractvalue { i64, i64 } %i.be, 1
  %i.bh = trunc nuw i64 %i.bf to i1
  br i1 %i.bh, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %.noexc
  %.sroa.4.0.i27.i.i = phi i64 [ %i.bg, %.noexc ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.bi = add i64 %i.aw, 1
  %i.bj = add i64 %i.bi, %.sroa.4.0.i27.i.i       ; 5 uses
  %.not21.i.i = icmp ugt i64 %i.bj, %2
  %i.bk = add i64 %i.aw, %.sroa.4.0.i27.i.i
  %or.cond.i.i.not = icmp ult i64 %i.bk, %2
  br i1 %or.cond.i.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  br i1 %.not21.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.lr.ph.split.i.i

bb.e:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.bl = add i64 %i.aw, %.sroa.4.0.i27.i.i       ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  %lhsc = load i8, ptr %i.bm, align 1
  %i.bn = icmp eq i8 %lhsc, 44
  br i1 %i.bn, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %bb.d

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i": ; preds = %bb.e, %bb.b, %bb.c, %.noexc, %.preheader.i.i.i, %bb.d
  %.lcssa556594 = phi i64 [ %i.bj, %bb.d ], [ %2, %bb.c ], [ %.lcssa556596, %bb.b ], [ %2, %.noexc ], [ %2, %.preheader.i.i.i ], [ %i.bj, %bb.e ]
  %.lcssa491572 = phi i64 [ %.lcssa491573590, %bb.b ], [ %.lcssa491573590, %bb.d ], [ %.lcssa491573590, %.preheader.i.i.i ], [ %.lcssa491573590, %.noexc ], [ %.lcssa491573590, %bb.c ], [ %i.bj, %bb.e ]
  %i.bo = phi i1 [ true, %bb.b ], [ true, %bb.d ], [ true, %.preheader.i.i.i ], [ true, %.noexc ], [ true, %bb.c ], [ false, %bb.e ]
  %.pn613 = phi i64 [ %2, %bb.b ], [ %2, %bb.d ], [ %2, %.preheader.i.i.i ], [ %2, %.noexc ], [ %2, %bb.c ], [ %i.bl, %bb.e ]
  %.sroa.4.1.i.ph = sub nuw i64 %.pn613, %.lcssa491573590 ; 41 uses
  %.sroa.0.1.i.ph = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa491573590 ; 28 uses
  %i.bp = icmp ult i64 %.sroa.4.1.i.ph, 16
  br i1 %i.bp, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"
  %.not.i.i187 = icmp eq i64 %.sroa.4.1.i.ph, 0
  br i1 %.not.i.i187, label %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread.thread", label %.lr.ph.i.i188

"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread.thread": ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %.sroa.0.1.i.ph, ptr %i.v, align 8
  store i64 0, ptr %i.an, align 8
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.f:                                             ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"
  %i.bq = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 45, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.1.i.ph, i64 noundef %.sroa.4.1.i.ph)
          to label %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i.i188:                                    ; preds = %.preheader.i.i, %bb.g
  %.sroa.01.05.i.i = phi i64 [ %i.bu, %bb.g ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.ph, i64 %.sroa.01.05.i.i
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !4208, !noundef !4
  %i.bt = icmp eq i8 %i.bs, 45
  br i1 %i.bt, label %.lr.ph.split.i.i234, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i188
  %i.bu = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bu, %.sroa.4.1.i.ph
  br i1 %exitcond.not.i.i, label %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread", label %.lr.ph.i.i188

bb.h:                                             ; preds = %.thread456
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  store i64 -9223372036854775803, ptr %0, align 8
  br label %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$u32$RP$$GT$$GT$17hb5e3f25b422d4df7E.exit228"

"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$u32$RP$$GT$$GT$17hb5e3f25b422d4df7E.exit228": ; preds = %bb.ak, %bb.aj, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  ret void

"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit": ; preds = %bb.f
  %i.bw = extractvalue { i64, i64 } %i.bq, 0
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %.lr.ph.split.i.i234, label %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread.thread801"

"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread.thread801": ; preds = %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %.sroa.0.1.i.ph, ptr %i.v, align 8
  store i64 %.sroa.4.1.i.ph, ptr %i.an, align 8
  br label %bb.j

"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread": ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %.sroa.0.1.i.ph, ptr %i.v, align 8
  store i64 %.sroa.4.1.i.ph, ptr %i.an, align 8
  %cond = icmp eq i64 %.sroa.4.1.i.ph, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread"
  %i.by = load i8, ptr %.sroa.0.1.i.ph, align 1, !alias.scope !4209, !noundef !4 ; 2 uses
  switch i8 %i.by, label %.lr.ph.i [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  ]

bb.j:                                             ; preds = %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread.thread801", %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread"
  %.pr.i = load i8, ptr %.sroa.0.1.i.ph, align 1, !alias.scope !4209 ; 5 uses
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.ph, i64 1 ; 2 uses
  %i.ca = add i64 %.sroa.4.1.i.ph, -1             ; 2 uses
  %i.cb = icmp ult i64 %.sroa.4.1.i.ph, 10
  br i1 %i.cb, label %.lr.ph.i, label %.preheader75.i

.preheader75.i:                                   ; preds = %bb.n, %bb.k
  %.sroa.16.0.ph.i = phi i64 [ %.sroa.4.1.i.ph, %bb.n ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %.sroa.0.1.i.ph, %bb.n ], [ %i.bz, %bb.k ]
  %.not.us.i929 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.us.i929, label %.loopexit.i, label %.lr.ph933

.preheader75.split.us.i:                          ; preds = %bb.m
  %.not.us.i = icmp eq i64 %i.cd, 0
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph933

.lr.ph933:                                        ; preds = %.preheader75.i, %.preheader75.split.us.i
  %.sroa.03.0.us.i932 = phi ptr [ %i.cc, %.preheader75.split.us.i ], [ %.sroa.03.0.ph.i, %.preheader75.i ] ; 2 uses
  %.sroa.16.0.us.i931 = phi i64 [ %i.cd, %.preheader75.split.us.i ], [ %.sroa.16.0.ph.i, %.preheader75.i ]
  %.sroa.019.0.us.i930 = phi i32 [ %i.cl, %.preheader75.split.us.i ], [ 0, %.preheader75.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.03.0.us.i932, i64 1
  %i.cd = add i64 %.sroa.16.0.us.i931, -1         ; 2 uses
  %i.ce = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.us.i930, i32 10) ; 2 uses
  %i.cf = extractvalue { i32, i1 } %i.ce, 0       ; 2 uses
  %i.cg = extractvalue { i32, i1 } %i.ce, 1
  %i.ch = load i8, ptr %.sroa.03.0.us.i932, align 1, !alias.scope !4209, !noundef !4 ; 2 uses
  br i1 %i.cg, label %.split.us.i, label %bb.l, !prof !10

bb.l:                                             ; preds = %.lr.ph933
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 10
  br i1 %i.ck, label %bb.m, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.m:                                             ; preds = %bb.l
  %i.cl = add i32 %i.cj, %i.cf                    ; 3 uses
  %.not66.us.i = icmp ult i32 %i.cl, %i.cf
  br i1 %.not66.us.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %.preheader75.split.us.i

bb.n:                                             ; preds = %bb.j
  %i.cm = icmp ult i64 %.sroa.4.1.i.ph, 9
  br i1 %i.cm, label %.lr.ph.i, label %.preheader75.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.n, %bb.i
  %i.cn = phi i8 [ %i.by, %bb.i ], [ %.pr.i, %bb.n ], [ 43, %bb.k ]
  %.sroa.03.1.ph125.i = phi ptr [ %.sroa.0.1.i.ph, %bb.i ], [ %.sroa.0.1.i.ph, %bb.n ], [ %i.bz, %bb.k ]
  %.sroa.16.1.ph124.i = phi i64 [ 1, %bb.i ], [ %.sroa.4.1.i.ph, %bb.n ], [ %i.ca, %bb.k ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.o, %.lr.ph.i
  %.sroa.03.188.us.i = phi ptr [ %i.cu, %bb.o ], [ %.sroa.03.1.ph125.i, %.lr.ph.i ] ; 2 uses
  %.sroa.16.187.us.i = phi i64 [ %i.ct, %bb.o ], [ %.sroa.16.1.ph124.i, %.lr.ph.i ]
  %.sroa.019.186.us.i = phi i32 [ %i.cv, %bb.o ], [ 0, %.lr.ph.i ]
  %i.co = load i8, ptr %.sroa.03.188.us.i, align 1, !alias.scope !4209, !noundef !4
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, -48                  ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 10
  br i1 %i.cr, label %bb.o, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.o:                                             ; preds = %.lr.ph.split.us.i
  %i.cs = mul i32 %.sroa.019.186.us.i, 10
  %i.ct = add nsw i64 %.sroa.16.187.us.i, -1      ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.03.188.us.i, i64 1
  %i.cv = add i32 %i.cq, %i.cs                    ; 2 uses
  %.not67.us.i = icmp eq i64 %i.ct, 0
  br i1 %.not67.us.i, label %.loopexit.i, label %.lr.ph.split.us.i

.loopexit.i:                                      ; preds = %.preheader75.split.us.i, %bb.o, %.preheader75.i
  %i.cw = phi i8 [ %.pr.i, %.preheader75.i ], [ %i.cn, %bb.o ], [ %.pr.i, %.preheader75.split.us.i ]
  %.sroa.019.2.i = phi i32 [ 0, %.preheader75.i ], [ %i.cv, %bb.o ], [ %i.cl, %.preheader75.split.us.i ]
  %i.cx = zext i32 %.sroa.019.2.i to i64
  %i.cy = shl nuw i64 %i.cx, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

.split.us.i:                                      ; preds = %.lr.ph933
  %i.cz = add i8 %i.ch, -48
  %i.da = icmp ult i8 %i.cz, 10
  %spec.select.i = select i1 %i.da, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit": ; preds = %.split.us.i, %.loopexit.i
  %.pr.i202 = phi i8 [ %i.cw, %.loopexit.i ], [ %.pr.i, %.split.us.i ] ; 2 uses
  %.sroa.8.0.insert.insert.i = phi i64 [ %i.cy, %.loopexit.i ], [ %spec.select.i, %.split.us.i ] ; 3 uses
  %.sroa.6151.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.6151.0.extract.trunc = trunc nuw i64 %.sroa.6151.0.extract.shift to i32
  %i.db = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.db, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %bb.p

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread": ; preds = %bb.i, %bb.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit", %bb.l, %bb.m, %.lr.ph.split.us.i, %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread.thread"
  %.sroa.8.0.insert.insert.i439 = phi i64 [ 257, %bb.l ], [ 257, %.lr.ph.split.us.i ], [ 1, %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread.thread" ], [ 513, %bb.m ], [ 257, %bb.i ], [ 257, %bb.i ], [ %.sroa.8.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit" ]
  %.sroa.4149.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i439, 8
  %.sroa.4149.0.extract.trunc = trunc i64 %.sroa.4149.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i8 %.sroa.4149.0.extract.trunc, ptr %i.u, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.v, ptr %i.q, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.4126.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4210
  store ptr @240, ptr %i.h, align 8, !noalias !4211
  %.sroa.4396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %.sroa.4396.0..sroa_idx, align 8, !noalias !4211
  %.sroa.5397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.q, ptr %.sroa.5397.0..sroa_idx, align 8, !noalias !4211
  %.sroa.6398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %.sroa.6398.0..sroa_idx, align 8, !noalias !4211
  %.sroa.7399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.7399.0..sroa_idx, align 8, !noalias !4211
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %.sroa.0.1.i.ph, ptr %i.o, align 8
  store i64 %.sroa.4.1.i.ph, ptr %i.ao, align 8
  switch i64 %.sroa.4.1.i.ph, label %bb.r [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217.thread"
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  switch i8 %.pr.i202, label %.lr.ph.split.us.i195.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217.thread"
  ]

bb.r:                                             ; preds = %bb.p
  %cond.i203 = icmp eq i8 %.pr.i202, 43
  br i1 %cond.i203, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.ph, i64 1 ; 2 uses
  %i.dd = add i64 %.sroa.4.1.i.ph, -1             ; 2 uses
  %i.de = icmp ult i64 %.sroa.4.1.i.ph, 10
  br i1 %i.de, label %.lr.ph.split.us.i195.preheader, label %.preheader75.i204

.preheader75.i204:                                ; preds = %bb.v, %bb.s
  %.sroa.16.0.ph.i205 = phi i64 [ %.sroa.4.1.i.ph, %bb.v ], [ %i.dd, %bb.s ] ; 2 uses
  %.sroa.03.0.ph.i206 = phi ptr [ %.sroa.0.1.i.ph, %bb.v ], [ %i.dc, %bb.s ]
  %.not.us.i211934 = icmp eq i64 %.sroa.16.0.ph.i205, 0
  br i1 %.not.us.i211934, label %.loopexit.i200, label %.lr.ph938

.preheader75.split.us.i207:                       ; preds = %bb.u
  %.not.us.i211 = icmp eq i64 %i.dg, 0
  br i1 %.not.us.i211, label %.loopexit.i200, label %.lr.ph938

.lr.ph938:                                        ; preds = %.preheader75.i204, %.preheader75.split.us.i207
  %.sroa.03.0.us.i210937 = phi ptr [ %i.df, %.preheader75.split.us.i207 ], [ %.sroa.03.0.ph.i206, %.preheader75.i204 ] ; 2 uses
  %.sroa.16.0.us.i209936 = phi i64 [ %i.dg, %.preheader75.split.us.i207 ], [ %.sroa.16.0.ph.i205, %.preheader75.i204 ]
  %.sroa.019.0.us.i208935 = phi i32 [ %i.do, %.preheader75.split.us.i207 ], [ 0, %.preheader75.i204 ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.03.0.us.i210937, i64 1
  %i.dg = add i64 %.sroa.16.0.us.i209936, -1      ; 2 uses
  %i.dh = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.us.i208935, i32 10) ; 2 uses
  %i.di = extractvalue { i32, i1 } %i.dh, 0       ; 2 uses
  %i.dj = extractvalue { i32, i1 } %i.dh, 1
  %i.dk = load i8, ptr %.sroa.03.0.us.i210937, align 1, !alias.scope !4212, !noundef !4 ; 2 uses
  br i1 %i.dj, label %.split.us.i213, label %bb.t, !prof !10

bb.t:                                             ; preds = %.lr.ph938
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add nsw i32 %i.dl, -48                  ; 2 uses
  %i.dn = icmp ult i32 %i.dm, 10
  br i1 %i.dn, label %bb.u, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217.thread"

bb.u:                                             ; preds = %bb.t
  %i.do = add i32 %i.dm, %i.di                    ; 3 uses
  %.not66.us.i212 = icmp ult i32 %i.do, %i.di
  br i1 %.not66.us.i212, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217.thread", label %.preheader75.split.us.i207

bb.v:                                             ; preds = %bb.r
  %i.dp = icmp ult i64 %.sroa.4.1.i.ph, 9
  br i1 %i.dp, label %.lr.ph.split.us.i195.preheader, label %.preheader75.i204

.lr.ph.split.us.i195.preheader:                   ; preds = %bb.s, %bb.v, %bb.q
  %.sroa.03.188.us.i196.ph = phi ptr [ %i.dc, %bb.s ], [ %.sroa.0.1.i.ph, %bb.v ], [ %.sroa.0.1.i.ph, %bb.q ]
  %.sroa.16.187.us.i197.ph = phi i64 [ %i.dd, %bb.s ], [ %.sroa.4.1.i.ph, %bb.v ], [ 1, %bb.q ]
  br label %.lr.ph.split.us.i195

.lr.ph.split.us.i195:                             ; preds = %.lr.ph.split.us.i195.preheader, %bb.w
  %.sroa.03.188.us.i196 = phi ptr [ %i.dw, %bb.w ], [ %.sroa.03.188.us.i196.ph, %.lr.ph.split.us.i195.preheader ] ; 2 uses
  %.sroa.16.187.us.i197 = phi i64 [ %i.dv, %bb.w ], [ %.sroa.16.187.us.i197.ph, %.lr.ph.split.us.i195.preheader ]
  %.sroa.019.186.us.i198 = phi i32 [ %i.dx, %bb.w ], [ 0, %.lr.ph.split.us.i195.preheader ]
  %i.dq = load i8, ptr %.sroa.03.188.us.i196, align 1, !alias.scope !4212, !noundef !4
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, -48                  ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 10
  br i1 %i.dt, label %bb.w, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217.thread"

bb.w:                                             ; preds = %.lr.ph.split.us.i195
  %i.du = mul i32 %.sroa.019.186.us.i198, 10
  %i.dv = add nsw i64 %.sroa.16.187.us.i197, -1   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.03.188.us.i196, i64 1
  %i.dx = add i32 %i.ds, %i.du                    ; 2 uses
  %.not67.us.i199 = icmp eq i64 %i.dv, 0
  br i1 %.not67.us.i199, label %.loopexit.i200, label %.lr.ph.split.us.i195

.loopexit.i200:                                   ; preds = %.preheader75.split.us.i207, %bb.w, %.preheader75.i204
  %.sroa.019.2.i201 = phi i32 [ %i.dx, %bb.w ], [ 0, %.preheader75.i204 ], [ %i.do, %.preheader75.split.us.i207 ]
  %i.dy = zext i32 %.sroa.019.2.i201 to i64
  %i.dz = shl nuw i64 %i.dy, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217"

.split.us.i213:                                   ; preds = %.lr.ph938
  %i.ea = add i8 %i.dk, -48
  %i.eb = icmp ult i8 %i.ea, 10
  %spec.select.i214 = select i1 %i.eb, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217"

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217": ; preds = %.split.us.i213, %.loopexit.i200
  %.sroa.8.0.insert.insert.i191 = phi i64 [ %i.dz, %.loopexit.i200 ], [ %spec.select.i214, %.split.us.i213 ] ; 3 uses
  %i.ec = trunc i64 %.sroa.8.0.insert.insert.i191 to i1
  br i1 %i.ec, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217.thread", label %bb.x

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217.thread": ; preds = %bb.q, %bb.q, %bb.p, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217", %bb.t, %bb.u, %.lr.ph.split.us.i195
  %.sroa.8.0.insert.insert.i191441 = phi i64 [ 257, %bb.t ], [ 257, %.lr.ph.split.us.i195 ], [ 513, %bb.u ], [ 257, %bb.q ], [ 1, %bb.p ], [ %.sroa.8.0.insert.insert.i191, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217" ], [ 257, %bb.q ]
  %.sroa.4153.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i191441, 8
  %.sroa.4153.0.extract.trunc = trunc i64 %.sroa.4153.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 %.sroa.4153.0.extract.trunc, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.o, ptr %i.j, align 8
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.4138.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4213
  store ptr @240, ptr %i.g, align 8, !noalias !4214
  %.sroa.4408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.4408.0..sroa_idx, align 8, !noalias !4214
  %.sroa.5409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.j, ptr %.sroa.5409.0..sroa_idx, align 8, !noalias !4214
  %.sroa.6410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.6410.0..sroa_idx, align 8, !noalias !4214
  %.sroa.7411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.7411.0..sroa_idx, align 8, !noalias !4214
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217"
  %.sroa.6155.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i191, 32
  %.sroa.6155.0.extract.trunc = trunc nuw i64 %.sroa.6155.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4215)
  %i.ed = load i64, ptr %i.ak, align 8, !range !15, !alias.scope !4215, !noundef !4
  %i.ee = icmp eq i64 %i.au, %i.ed
  br i1 %i.ee, label %bb.y, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit"

bb.y:                                             ; preds = %bb.x
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0e16405a7a5d6465E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @239)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit_crit_edge": ; preds = %bb.y
  %.pre = load ptr, ptr %i.al, align 8, !alias.scope !4215
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit_crit_edge", %bb.x
  %i.ef = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit_crit_edge" ], [ %i.at, %bb.x ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.au ; 2 uses
  store i32 %.sroa.6151.0.extract.trunc, ptr %i.eg, align 4, !noalias !4215
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i32 %.sroa.6155.0.extract.trunc, ptr %i.eh, align 4, !noalias !4215
  %i.ei = add i64 %i.au, 1                        ; 2 uses
  store i64 %i.ei, ptr %i.am, align 8, !alias.scope !4215
  br label %.thread456

.thread456:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit356", %bb.aw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit"
  %i.ej = phi ptr [ %i.ef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit" ], [ %i.at, %bb.aw ], [ %i.ir, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit356" ]
  %i.ek = phi i64 [ %i.ei, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit" ], [ %i.au, %bb.aw ], [ %i.iu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit356" ]
  br i1 %i.bo, label %bb.h, label %bb.b

bb.z:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit217.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.l, ptr %i.i, align 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4142.0..sroa_idx, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.n, ptr %i.el, align 8
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4146.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4216
  store ptr @49, ptr %i.f, align 8, !noalias !4217
  %.sroa.4402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.4402.0..sroa_idx, align 8, !noalias !4217
  %.sroa.5403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.i, ptr %.sroa.5403.0..sroa_idx, align 8, !noalias !4217
  %.sroa.6404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 2, ptr %.sroa.6404.0..sroa_idx, align 8, !noalias !4217
  %.sroa.7405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.7405.0..sroa_idx, align 8, !noalias !4217
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val180 = load i64, ptr %i.l, align 8          ; 2 uses
  %i.en = icmp eq i64 %.val180, 0
  br i1 %i.en, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val181 = load ptr, ptr %i.eo, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val181, i64 noundef %.val180, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val178 = load i64, ptr %i.l, align 8          ; 2 uses
  %i.ep = icmp eq i64 %.val178, 0
  br i1 %i.ep, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit223", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val179 = load ptr, ptr %i.eq, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val179, i64 noundef %.val178, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit223"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit223": ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @232, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 109, ptr %.sroa.573.0..sroa_idx, align 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 334, ptr %.sroa.674.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.aj

bb.ae:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.s, ptr %i.p, align 8
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4130.0..sroa_idx, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.u, ptr %i.er, align 8
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4134.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4218
  store ptr @49, ptr %i.e, align 8, !noalias !4219
  %.sroa.4390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.4390.0..sroa_idx, align 8, !noalias !4219
  %.sroa.5391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.p, ptr %.sroa.5391.0..sroa_idx, align 8, !noalias !4219
  %.sroa.6392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2, ptr %.sroa.6392.0..sroa_idx, align 8, !noalias !4219
  %.sroa.7393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.7393.0..sroa_idx, align 8, !noalias !4219
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val176 = load i64, ptr %i.s, align 8          ; 2 uses
  %i.et = icmp eq i64 %.val176, 0
  br i1 %i.et, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val177 = load ptr, ptr %i.eu, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val177, i64 noundef %.val176, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val174 = load i64, ptr %i.s, align 8          ; 2 uses
  %i.ev = icmp eq i64 %.val174, 0
  br i1 %i.ev, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit227", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val175 = load ptr, ptr %i.ew, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val175, i64 noundef %.val174, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit227"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit227": ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @232, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 109, ptr %.sroa.559.0..sroa_idx, align 8
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 333, ptr %.sroa.660.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit223", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit227", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit364", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit360"
  %.val182 = load i64, ptr %i.ak, align 8         ; 2 uses
  %i.ex = icmp eq i64 %.val182, 0
  br i1 %i.ex, label %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$u32$RP$$GT$$GT$17hb5e3f25b422d4df7E.exit228", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val183 = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  %i.ey = shl nuw i64 %.val182, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val183, i64 noundef %i.ey, i64 noundef range(i64 1, -9223372036854775807) 4) #38
  br label %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$u32$RP$$GT$$GT$17hb5e3f25b422d4df7E.exit228"

.lr.ph.split.i.i234:                              ; preds = %.lr.ph.i.i188, %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.lr.ph.split.i.i234
  %i.ez = phi i64 [ 0, %.lr.ph.split.i.i234 ], [ %i.fm, %bb.an ] ; 6 uses
  %i.fa = sub nuw i64 %.sroa.4.1.i.ph, %i.ez      ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.ph, i64 %i.ez ; 2 uses
  %i.fc = icmp ult i64 %i.fa, 16
  br i1 %i.fc, label %.preheader.i.i.i255, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i236

.preheader.i.i.i255:                              ; preds = %bb.al
  %.not.i.i.i256 = icmp eq i64 %.sroa.4.1.i.ph, %i.ez
  br i1 %.not.i.i.i256, label %.thread442, label %.lr.ph.i.i.i257

.lr.ph.i.i.i257:                                  ; preds = %.preheader.i.i.i255, %bb.am
  %.sroa.01.05.i.i.i258 = phi i64 [ %i.fg, %bb.am ], [ 0, %.preheader.i.i.i255 ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.sroa.01.05.i.i.i258
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !4220, !noalias !4221, !noundef !4
  %i.ff = icmp eq i8 %i.fe, 45
  br i1 %i.ff, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i248, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i257
  %i.fg = add nuw nsw i64 %.sroa.01.05.i.i.i258, 1 ; 2 uses
  %exitcond.not.i.i.i259 = icmp eq i64 %i.fg, %i.fa
  br i1 %exitcond.not.i.i.i259, label %.thread442, label %.lr.ph.i.i.i257

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i236: ; preds = %bb.al
  %i.fh = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 45, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fb, i64 noundef %i.fa)
          to label %.noexc260 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc260:                                        ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i236
  %i.fi = extractvalue { i64, i64 } %i.fh, 0
  %i.fj = extractvalue { i64, i64 } %i.fh, 1
  %i.fk = trunc nuw i64 %i.fi to i1
  br i1 %i.fk, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i248, label %.thread442

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i248: ; preds = %.lr.ph.i.i.i257, %.noexc260
  %.sroa.4.0.i27.i.i249 = phi i64 [ %i.fj, %.noexc260 ], [ %.sroa.01.05.i.i.i258, %.lr.ph.i.i.i257 ] ; 3 uses
  %i.fl = add i64 %i.ez, 1
  %i.fm = add i64 %i.fl, %.sroa.4.0.i27.i.i249    ; 5 uses
  %.not21.i.i251 = icmp ugt i64 %i.fm, %.sroa.4.1.i.ph
  %i.fn = add i64 %i.ez, %.sroa.4.0.i27.i.i249
  %or.cond.i.i252.not = icmp ult i64 %i.fn, %.sroa.4.1.i.ph
  br i1 %or.cond.i.i252.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.ao, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i248
  br i1 %.not21.i.i251, label %.thread442, label %bb.al

bb.ao:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i248
  %i.fo = add i64 %i.ez, %.sroa.4.0.i27.i.i249    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.ph, i64 %i.fo
  %lhsc797 = load i8, ptr %i.fp, align 1
  %i.fq = icmp eq i8 %lhsc797, 45
  br i1 %i.fq, label %.thread442, label %bb.an

.thread442:                                       ; preds = %bb.am, %.noexc260, %.preheader.i.i.i255, %bb.an, %bb.ao
  %.pre.i2.i303 = phi i64 [ %i.fm, %bb.ao ], [ 0, %bb.an ], [ 0, %.preheader.i.i.i255 ], [ 0, %.noexc260 ], [ 0, %bb.am ] ; 2 uses
  %.promoted564 = phi i64 [ %i.fm, %bb.ao ], [ %i.fm, %bb.an ], [ %.sroa.4.1.i.ph, %.preheader.i.i.i255 ], [ %.sroa.4.1.i.ph, %.noexc260 ], [ %.sroa.4.1.i.ph, %bb.am ] ; 2 uses
  %i.fr = phi i1 [ false, %bb.ao ], [ true, %bb.an ], [ true, %.preheader.i.i.i255 ], [ true, %.noexc260 ], [ true, %bb.am ]
  %.sroa.75.0446 = phi i64 [ %i.fo, %bb.ao ], [ %.sroa.4.1.i.ph, %bb.an ], [ %.sroa.4.1.i.ph, %.preheader.i.i.i255 ], [ %.sroa.4.1.i.ph, %.noexc260 ], [ %.sroa.4.1.i.ph, %bb.am ] ; 7 uses
  store ptr %.sroa.0.1.i.ph, ptr %i.aj, align 8
  store i64 %.sroa.75.0446, ptr %i.ap, align 8
  switch i64 %.sroa.75.0446, label %bb.aq [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290.thread"
    i64 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %.thread442
  %i.fs = load i8, ptr %.sroa.0.1.i.ph, align 1, !alias.scope !4222, !noundef !4
  switch i8 %i.fs, label %.lr.ph.split.us.i268.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290.thread"
  ]

bb.aq:                                            ; preds = %.thread442
  %.pr.i275 = load i8, ptr %.sroa.0.1.i.ph, align 1, !alias.scope !4222
  %cond.i276 = icmp eq i8 %.pr.i275, 43
  br i1 %cond.i276, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.ph, i64 1 ; 2 uses
  %i.fu = add i64 %.sroa.75.0446, -1              ; 2 uses
  %i.fv = icmp ult i64 %.sroa.75.0446, 10
  br i1 %i.fv, label %.lr.ph.split.us.i268.preheader, label %.preheader75.i277

.preheader75.i277:                                ; preds = %bb.au, %bb.ar
  %.sroa.16.0.ph.i278 = phi i64 [ %.sroa.75.0446, %bb.au ], [ %i.fu, %bb.ar ] ; 2 uses
  %.sroa.03.0.ph.i279 = phi ptr [ %.sroa.0.1.i.ph, %bb.au ], [ %i.ft, %bb.ar ]
  %.not.us.i284940 = icmp eq i64 %.sroa.16.0.ph.i278, 0
  br i1 %.not.us.i284940, label %.loopexit.i273, label %.lr.ph944

.preheader75.split.us.i280:                       ; preds = %bb.at
  %.not.us.i284 = icmp eq i64 %i.fx, 0
  br i1 %.not.us.i284, label %.loopexit.i273, label %.lr.ph944

.lr.ph944:                                        ; preds = %.preheader75.i277, %.preheader75.split.us.i280
  %.sroa.03.0.us.i283943 = phi ptr [ %i.fw, %.preheader75.split.us.i280 ], [ %.sroa.03.0.ph.i279, %.preheader75.i277 ] ; 2 uses
  %.sroa.16.0.us.i282942 = phi i64 [ %i.fx, %.preheader75.split.us.i280 ], [ %.sroa.16.0.ph.i278, %.preheader75.i277 ]
  %.sroa.019.0.us.i281941 = phi i32 [ %i.gf, %.preheader75.split.us.i280 ], [ 0, %.preheader75.i277 ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.us.i283943, i64 1
  %i.fx = add i64 %.sroa.16.0.us.i282942, -1      ; 2 uses
  %i.fy = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.us.i281941, i32 10) ; 2 uses
  %i.fz = extractvalue { i32, i1 } %i.fy, 0       ; 2 uses
  %i.ga = extractvalue { i32, i1 } %i.fy, 1
  %i.gb = load i8, ptr %.sroa.03.0.us.i283943, align 1, !alias.scope !4222, !noundef !4 ; 2 uses
  br i1 %i.ga, label %.split.us.i286, label %bb.as, !prof !10

bb.as:                                            ; preds = %.lr.ph944
  %i.gc = zext i8 %i.gb to i32
  %i.gd = add nsw i32 %i.gc, -48                  ; 2 uses
  %i.ge = icmp ult i32 %i.gd, 10
  br i1 %i.ge, label %bb.at, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290.thread"

bb.at:                                            ; preds = %bb.as
  %i.gf = add i32 %i.gd, %i.fz                    ; 3 uses
  %.not66.us.i285 = icmp ult i32 %i.gf, %i.fz
  br i1 %.not66.us.i285, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290.thread", label %.preheader75.split.us.i280

bb.au:                                            ; preds = %bb.aq
  %i.gg = icmp ult i64 %.sroa.75.0446, 9
  br i1 %i.gg, label %.lr.ph.split.us.i268.preheader, label %.preheader75.i277

.lr.ph.split.us.i268.preheader:                   ; preds = %bb.ar, %bb.au, %bb.ap
  %.sroa.03.188.us.i269.ph = phi ptr [ %i.ft, %bb.ar ], [ %.sroa.0.1.i.ph, %bb.au ], [ %.sroa.0.1.i.ph, %bb.ap ]
  %.sroa.16.187.us.i270.ph = phi i64 [ %i.fu, %bb.ar ], [ %.sroa.75.0446, %bb.au ], [ 1, %bb.ap ]
  br label %.lr.ph.split.us.i268

.lr.ph.split.us.i268:                             ; preds = %.lr.ph.split.us.i268.preheader, %bb.av
  %.sroa.03.188.us.i269 = phi ptr [ %i.gn, %bb.av ], [ %.sroa.03.188.us.i269.ph, %.lr.ph.split.us.i268.preheader ] ; 2 uses
  %.sroa.16.187.us.i270 = phi i64 [ %i.gm, %bb.av ], [ %.sroa.16.187.us.i270.ph, %.lr.ph.split.us.i268.preheader ]
  %.sroa.019.186.us.i271 = phi i32 [ %i.go, %bb.av ], [ 0, %.lr.ph.split.us.i268.preheader ]
  %i.gh = load i8, ptr %.sroa.03.188.us.i269, align 1, !alias.scope !4222, !noundef !4
  %i.gi = zext i8 %i.gh to i32
  %i.gj = add nsw i32 %i.gi, -48                  ; 2 uses
  %i.gk = icmp ult i32 %i.gj, 10
  br i1 %i.gk, label %bb.av, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290.thread"

bb.av:                                            ; preds = %.lr.ph.split.us.i268
  %i.gl = mul i32 %.sroa.019.186.us.i271, 10
  %i.gm = add nsw i64 %.sroa.16.187.us.i270, -1   ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.03.188.us.i269, i64 1
  %i.go = add i32 %i.gj, %i.gl                    ; 2 uses
  %.not67.us.i272 = icmp eq i64 %i.gm, 0
  br i1 %.not67.us.i272, label %.loopexit.i273, label %.lr.ph.split.us.i268

.loopexit.i273:                                   ; preds = %.preheader75.split.us.i280, %bb.av, %.preheader75.i277
  %.sroa.019.2.i274 = phi i32 [ %i.go, %bb.av ], [ 0, %.preheader75.i277 ], [ %i.gf, %.preheader75.split.us.i280 ]
  %i.gp = zext i32 %.sroa.019.2.i274 to i64
  %i.gq = shl nuw i64 %i.gp, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290"

.split.us.i286:                                   ; preds = %.lr.ph944
  %i.gr = add i8 %i.gb, -48
  %i.gs = icmp ult i8 %i.gr, 10
  %spec.select.i287 = select i1 %i.gs, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290"

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290": ; preds = %.split.us.i286, %.loopexit.i273
  %.sroa.8.0.insert.insert.i264 = phi i64 [ %i.gq, %.loopexit.i273 ], [ %spec.select.i287, %.split.us.i286 ] ; 3 uses
  %.sroa.6159.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i264, 32
  %.sroa.6159.0.extract.trunc = trunc nuw i64 %.sroa.6159.0.extract.shift to i32
  %i.gt = trunc i64 %.sroa.8.0.insert.insert.i264 to i1
  br i1 %i.gt, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290.thread", label %bb.aw

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290.thread": ; preds = %bb.ap, %bb.ap, %.thread442, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290", %bb.as, %bb.at, %.lr.ph.split.us.i268
  %.sroa.8.0.insert.insert.i264455 = phi i64 [ 257, %bb.as ], [ 257, %.lr.ph.split.us.i268 ], [ 513, %bb.at ], [ 257, %bb.ap ], [ 1, %.thread442 ], [ %.sroa.8.0.insert.insert.i264, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290" ], [ 257, %bb.ap ]
  %.sroa.4157.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i264455, 8
  %.sroa.4157.0.extract.trunc = trunc i64 %.sroa.4157.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i8 %.sroa.4157.0.extract.trunc, ptr %i.ai, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.aj, ptr %i.ae, align 8
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.4102.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4223
  store ptr @151, ptr %i.d, align 8, !noalias !4224
  %.sroa.4372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.4372.0..sroa_idx, align 8, !noalias !4224
  %.sroa.5373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ae, ptr %.sroa.5373.0..sroa_idx, align 8, !noalias !4224
  %.sroa.6374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.6374.0..sroa_idx, align 8, !noalias !4224
  %.sroa.7375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.7375.0..sroa_idx, align 8, !noalias !4224
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br i1 %i.fr, label %.thread456, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gu = icmp ult i64 %.sroa.4.1.i.ph, %.promoted564
  br i1 %i.gu, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i318", label %.lr.ph.split.i.i298

.lr.ph.split.i.i298:                              ; preds = %bb.ba, %bb.ax, %bb.az
  %i.gv = phi i64 [ %i.hi, %bb.az ], [ %.promoted564, %bb.ax ], [ %i.hi, %bb.ba ] ; 6 uses
  %i.gw = sub nuw i64 %.sroa.4.1.i.ph, %i.gv      ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.ph, i64 %i.gv ; 2 uses
  %i.gy = icmp ult i64 %i.gw, 16
  br i1 %i.gy, label %.preheader.i.i.i319, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i300

.preheader.i.i.i319:                              ; preds = %.lr.ph.split.i.i298
  %.not.i.i.i320 = icmp eq i64 %.sroa.4.1.i.ph, %i.gv
  br i1 %.not.i.i.i320, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i318", label %.lr.ph.i.i.i321

.lr.ph.i.i.i321:                                  ; preds = %.preheader.i.i.i319, %bb.ay
  %.sroa.01.05.i.i.i322 = phi i64 [ %i.hc, %bb.ay ], [ 0, %.preheader.i.i.i319 ] ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.sroa.01.05.i.i.i322
  %i.ha = load i8, ptr %i.gz, align 1, !alias.scope !4225, !noalias !4226, !noundef !4
  %i.hb = icmp eq i8 %i.ha, 45
  br i1 %i.hb, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i312, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i321
  %i.hc = add nuw nsw i64 %.sroa.01.05.i.i.i322, 1 ; 2 uses
  %exitcond.not.i.i.i323 = icmp eq i64 %i.hc, %i.gw
  br i1 %exitcond.not.i.i.i323, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i318", label %.lr.ph.i.i.i321

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i300: ; preds = %.lr.ph.split.i.i298
  %i.hd = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 45, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gx, i64 noundef %i.gw)
          to label %.noexc324 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc324:                                        ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i300
  %i.he = extractvalue { i64, i64 } %i.hd, 0
  %i.hf = extractvalue { i64, i64 } %i.hd, 1
  %i.hg = trunc nuw i64 %i.he to i1
  br i1 %i.hg, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i312, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i318"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i312: ; preds = %.lr.ph.i.i.i321, %.noexc324
  %.sroa.4.0.i27.i.i313 = phi i64 [ %i.hf, %.noexc324 ], [ %.sroa.01.05.i.i.i322, %.lr.ph.i.i.i321 ] ; 3 uses
  %i.hh = add i64 %i.gv, 1
  %i.hi = add i64 %i.hh, %.sroa.4.0.i27.i.i313    ; 3 uses
  %.not21.i.i315 = icmp ugt i64 %i.hi, %.sroa.4.1.i.ph ; 2 uses
  %i.hj = add i64 %i.gv, %.sroa.4.0.i27.i.i313
  %or.cond.i.i316.not = icmp ult i64 %i.hj, %.sroa.4.1.i.ph
  br i1 %or.cond.i.i316.not, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i312
  br i1 %.not21.i.i315, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i318", label %.lr.ph.split.i.i298

bb.ba:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i312
  %i.hk = add i64 %i.gv, %.sroa.4.0.i27.i.i313    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.ph, i64 %i.hk
  %lhsc799 = load i8, ptr %i.hl, align 1
  %i.hm = icmp eq i8 %lhsc799, 45                 ; 2 uses
  %brmerge = or i1 %i.hm, %.not21.i.i315
  %.mux = select i1 %i.hm, i64 %i.hk, i64 %.sroa.4.1.i.ph
  br i1 %brmerge, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i318", label %.lr.ph.split.i.i298

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i318": ; preds = %bb.ba, %bb.ax, %bb.az, %.preheader.i.i.i319, %.noexc324, %bb.ay
  %.sroa.4.1.i.ph.pn = phi i64 [ %.mux, %bb.ba ], [ %.sroa.4.1.i.ph, %bb.ay ], [ %.sroa.4.1.i.ph, %.noexc324 ], [ %.sroa.4.1.i.ph, %.preheader.i.i.i319 ], [ %.sroa.4.1.i.ph, %bb.az ], [ %.sroa.4.1.i.ph, %bb.ax ]
  %.sroa.4.1.i310 = sub nuw i64 %.sroa.4.1.i.ph.pn, %.pre.i2.i303 ; 7 uses
  %.sroa.0.1.i311 = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.ph, i64 %.pre.i2.i303 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %.sroa.0.1.i311, ptr %i.ac, align 8
  store i64 %.sroa.4.1.i310, ptr %i.aq, align 8
  switch i64 %.sroa.4.1.i310, label %bb.bc [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352.thread"
    i64 1, label %bb.bb
  ]

bb.bb:                                            ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i318"
  %i.hn = load i8, ptr %.sroa.0.1.i311, align 1, !alias.scope !4227, !noundef !4
  switch i8 %i.hn, label %.lr.ph.split.us.i330.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352.thread"
  ]

bb.bc:                                            ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i318"
  %.pr.i337 = load i8, ptr %.sroa.0.1.i311, align 1, !alias.scope !4227
  %cond.i338 = icmp eq i8 %.pr.i337, 43
  br i1 %cond.i338, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i311, i64 1 ; 2 uses
  %i.hp = add i64 %.sroa.4.1.i310, -1             ; 2 uses
  %i.hq = icmp ult i64 %.sroa.4.1.i310, 10
  br i1 %i.hq, label %.lr.ph.split.us.i330.preheader, label %.preheader75.i339

.preheader75.i339:                                ; preds = %bb.bg, %bb.bd
  %.sroa.16.0.ph.i340 = phi i64 [ %.sroa.4.1.i310, %bb.bg ], [ %i.hp, %bb.bd ] ; 2 uses
  %.sroa.03.0.ph.i341 = phi ptr [ %.sroa.0.1.i311, %bb.bg ], [ %i.ho, %bb.bd ]
  %.not.us.i346946 = icmp eq i64 %.sroa.16.0.ph.i340, 0
  br i1 %.not.us.i346946, label %.loopexit.i335, label %.lr.ph950

.preheader75.split.us.i342:                       ; preds = %bb.bf
  %.not.us.i346 = icmp eq i64 %i.hs, 0
  br i1 %.not.us.i346, label %.loopexit.i335, label %.lr.ph950

.lr.ph950:                                        ; preds = %.preheader75.i339, %.preheader75.split.us.i342
  %.sroa.03.0.us.i345949 = phi ptr [ %i.hr, %.preheader75.split.us.i342 ], [ %.sroa.03.0.ph.i341, %.preheader75.i339 ] ; 2 uses
  %.sroa.16.0.us.i344948 = phi i64 [ %i.hs, %.preheader75.split.us.i342 ], [ %.sroa.16.0.ph.i340, %.preheader75.i339 ]
  %.sroa.019.0.us.i343947 = phi i32 [ %i.ia, %.preheader75.split.us.i342 ], [ 0, %.preheader75.i339 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.03.0.us.i345949, i64 1
  %i.hs = add i64 %.sroa.16.0.us.i344948, -1      ; 2 uses
  %i.ht = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.us.i343947, i32 10) ; 2 uses
  %i.hu = extractvalue { i32, i1 } %i.ht, 0       ; 2 uses
  %i.hv = extractvalue { i32, i1 } %i.ht, 1
  %i.hw = load i8, ptr %.sroa.03.0.us.i345949, align 1, !alias.scope !4227, !noundef !4 ; 2 uses
  br i1 %i.hv, label %.split.us.i348, label %bb.be, !prof !10

bb.be:                                            ; preds = %.lr.ph950
  %i.hx = zext i8 %i.hw to i32
  %i.hy = add nsw i32 %i.hx, -48                  ; 2 uses
  %i.hz = icmp ult i32 %i.hy, 10
  br i1 %i.hz, label %bb.bf, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352.thread"

bb.bf:                                            ; preds = %bb.be
  %i.ia = add i32 %i.hy, %i.hu                    ; 3 uses
  %.not66.us.i347 = icmp ult i32 %i.ia, %i.hu
  br i1 %.not66.us.i347, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352.thread", label %.preheader75.split.us.i342

bb.bg:                                            ; preds = %bb.bc
  %i.ib = icmp ult i64 %.sroa.4.1.i310, 9
  br i1 %i.ib, label %.lr.ph.split.us.i330.preheader, label %.preheader75.i339

.lr.ph.split.us.i330.preheader:                   ; preds = %bb.bd, %bb.bg, %bb.bb
  %.sroa.03.188.us.i331.ph = phi ptr [ %i.ho, %bb.bd ], [ %.sroa.0.1.i311, %bb.bg ], [ %.sroa.0.1.i311, %bb.bb ]
  %.sroa.16.187.us.i332.ph = phi i64 [ %i.hp, %bb.bd ], [ %.sroa.4.1.i310, %bb.bg ], [ 1, %bb.bb ]
  br label %.lr.ph.split.us.i330

.lr.ph.split.us.i330:                             ; preds = %.lr.ph.split.us.i330.preheader, %bb.bh
  %.sroa.03.188.us.i331 = phi ptr [ %i.ii, %bb.bh ], [ %.sroa.03.188.us.i331.ph, %.lr.ph.split.us.i330.preheader ] ; 2 uses
  %.sroa.16.187.us.i332 = phi i64 [ %i.ih, %bb.bh ], [ %.sroa.16.187.us.i332.ph, %.lr.ph.split.us.i330.preheader ]
  %.sroa.019.186.us.i333 = phi i32 [ %i.ij, %bb.bh ], [ 0, %.lr.ph.split.us.i330.preheader ]
  %i.ic = load i8, ptr %.sroa.03.188.us.i331, align 1, !alias.scope !4227, !noundef !4
  %i.id = zext i8 %i.ic to i32
  %i.ie = add nsw i32 %i.id, -48                  ; 2 uses
  %i.if = icmp ult i32 %i.ie, 10
  br i1 %i.if, label %bb.bh, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352.thread"

bb.bh:                                            ; preds = %.lr.ph.split.us.i330
  %i.ig = mul i32 %.sroa.019.186.us.i333, 10
  %i.ih = add nsw i64 %.sroa.16.187.us.i332, -1   ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.03.188.us.i331, i64 1
  %i.ij = add i32 %i.ie, %i.ig                    ; 2 uses
  %.not67.us.i334 = icmp eq i64 %i.ih, 0
  br i1 %.not67.us.i334, label %.loopexit.i335, label %.lr.ph.split.us.i330

.loopexit.i335:                                   ; preds = %.preheader75.split.us.i342, %bb.bh, %.preheader75.i339
  %.sroa.019.2.i336 = phi i32 [ %i.ij, %bb.bh ], [ 0, %.preheader75.i339 ], [ %i.ia, %.preheader75.split.us.i342 ]
  %i.ik = zext i32 %.sroa.019.2.i336 to i64
  %i.il = shl nuw i64 %i.ik, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352"

.split.us.i348:                                   ; preds = %.lr.ph950
  %i.im = add i8 %i.hw, -48
  %i.in = icmp ult i8 %i.im, 10
  %spec.select.i349 = select i1 %i.in, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352"

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352": ; preds = %.split.us.i348, %.loopexit.i335
  %.sroa.8.0.insert.insert.i326 = phi i64 [ %i.il, %.loopexit.i335 ], [ %spec.select.i349, %.split.us.i348 ] ; 3 uses
  %i.io = trunc i64 %.sroa.8.0.insert.insert.i326 to i1
  br i1 %i.io, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352.thread", label %bb.bi

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352.thread": ; preds = %bb.bb, %bb.bb, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i318", %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352", %bb.be, %bb.bf, %.lr.ph.split.us.i330
  %.sroa.8.0.insert.insert.i326461 = phi i64 [ 257, %bb.be ], [ 257, %.lr.ph.split.us.i330 ], [ 513, %bb.bf ], [ 257, %bb.bb ], [ 1, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i318" ], [ %.sroa.8.0.insert.insert.i326, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352" ], [ 257, %bb.bb ]
  %.sroa.4161.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i326461, 8
  %.sroa.4161.0.extract.trunc = trunc i64 %.sroa.4161.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 %.sroa.4161.0.extract.trunc, ptr %i.ab, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.ac, ptr %i.x, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.4114.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4228
  store ptr @243, ptr %i.c, align 8, !noalias !4229
  %.sroa.4384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.4384.0..sroa_idx, align 8, !noalias !4229
  %.sroa.5385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.x, ptr %.sroa.5385.0..sroa_idx, align 8, !noalias !4229
  %.sroa.6386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.6386.0..sroa_idx, align 8, !noalias !4229
  %.sroa.7387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7387.0..sroa_idx, align 8, !noalias !4229
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352"
  %.sroa.6163.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i326, 32
  %.sroa.6163.0.extract.trunc = trunc nuw i64 %.sroa.6163.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4230)
  %i.ip = load i64, ptr %i.ak, align 8, !range !15, !alias.scope !4230, !noundef !4
  %i.iq = icmp eq i64 %i.au, %i.ip
  br i1 %i.iq, label %bb.bj, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit356"

bb.bj:                                            ; preds = %bb.bi
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0e16405a7a5d6465E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @241)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit356" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hefd0d85440753053E.exit356": ; preds = %bb.bj, %bb.bi
  %i.ir = load ptr, ptr %i.al, align 8, !alias.scope !4230, !nonnull !4, !noundef !4 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.au ; 2 uses
  store i32 %.sroa.6159.0.extract.trunc, ptr %i.is, align 4, !noalias !4230
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  store i32 %.sroa.6163.0.extract.trunc, ptr %i.it, align 4, !noalias !4230
  %i.iu = add i64 %i.au, 1                        ; 2 uses
  store i64 %i.iu, ptr %i.am, align 8, !alias.scope !4230
  br label %.thread456

bb.bk:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit352.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.z, ptr %i.w, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4118.0..sroa_idx, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.ab, ptr %i.iv, align 8
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4122.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4231
  store ptr @49, ptr %i.b, align 8, !noalias !4232
  %.sroa.4378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.4378.0..sroa_idx, align 8, !noalias !4232
  %.sroa.5379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.w, ptr %.sroa.5379.0..sroa_idx, align 8, !noalias !4232
  %.sroa.6380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %.sroa.6380.0..sroa_idx, align 8, !noalias !4232
  %.sroa.7381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7381.0..sroa_idx, align 8, !noalias !4232
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.bn unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val172 = load i64, ptr %i.z, align 8          ; 2 uses
  %i.ix = icmp eq i64 %.val172, 0
  br i1 %i.ix, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iy = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val173 = load ptr, ptr %i.iy, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val173, i64 noundef %.val172, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.bn:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.val170 = load i64, ptr %i.z, align 8          ; 2 uses
  %i.iz = icmp eq i64 %.val170, 0
  br i1 %i.iz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit360", label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ja = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val171 = load ptr, ptr %i.ja, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val171, i64 noundef %.val170, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit360"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit360": ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @232, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 109, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 329, ptr %.sroa.646.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.aj

bb.bp:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit290.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.ag, ptr %i.ad, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4106.0..sroa_idx, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ai, ptr %i.jb, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4110.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4233
  store ptr @49, ptr %i.a, align 8, !noalias !4234
  %.sroa.4366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4366.0..sroa_idx, align 8, !noalias !4234
  %.sroa.5367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ad, ptr %.sroa.5367.0..sroa_idx, align 8, !noalias !4234
  %.sroa.6368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6368.0..sroa_idx, align 8, !noalias !4234
  %.sroa.7369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7369.0..sroa_idx, align 8, !noalias !4234
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.bs unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val168 = load i64, ptr %i.ag, align 8         ; 2 uses
  %i.jd = icmp eq i64 %.val168, 0
  br i1 %i.jd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.je = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val169 = load ptr, ptr %i.je, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val169, i64 noundef %.val168, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.bs:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.val = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.jf = icmp eq i64 %.val, 0
  br i1 %i.jf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit364", label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val167 = load ptr, ptr %i.jg, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val167, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit364"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit364": ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @232, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 109, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 327, ptr %.sroa.628.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.aj

"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$u32$RP$$GT$$GT$17hb5e3f25b422d4df7E.exit": ; preds = %bb.a, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, -2147483647) i32 @_ZN11procfs_core7process7VmFlags8from_str17hca5b6f7627a6b0f9E(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %1, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 1
  %i.c = icmp ne i16 %i.b, 25714
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.d ], [ 4, %bb.e ], [ 8, %bb.f ], [ 16, %bb.g ], [ 32, %bb.h ], [ 64, %bb.i ], [ 128, %bb.j ], [ 256, %bb.k ], [ 512, %bb.l ], [ 1024, %bb.m ], [ 2048, %bb.n ], [ 4096, %bb.o ], [ 8192, %bb.p ], [ 16384, %bb.q ], [ 32768, %bb.r ], [ 65536, %bb.s ], [ 131072, %bb.t ], [ 262144, %bb.u ], [ 524288, %bb.v ], [ 1048576, %bb.w ], [ 2097152, %bb.x ], [ 4194304, %bb.y ], [ 8388608, %bb.z ], [ 16777216, %bb.aa ], [ 33554432, %bb.ab ], [ 67108864, %bb.ac ], [ 134217728, %bb.ad ], [ 268435456, %bb.ae ], [ 536870912, %bb.af ], [ %., %bb.ah ], [ 1073741824, %bb.ag ]
  ret i32 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = load i16, ptr %0, align 1
  %i.g = icmp ne i16 %i.f, 29303
end_hunk_4
begin_hunk_5_@_ZN11procfs_core7process8MMapPath4from17h62208f595140dd30E:bb.a
  %i.dq = icmp ugt i8 %i.do, 57
  %i.dr = add nsw i32 %i.dp, -65
  %i.ds = and i32 %i.dr, -33
  %i.dt = add nuw nsw i32 %i.ds, 10
  %i.du = add nsw i32 %i.dp, -48
  %spec.select93.i = select i1 %i.dq, i32 %i.dt, i32 %i.du ; 2 uses
  %i.dv = icmp ult i32 %spec.select93.i, 16
  br i1 %i.dv, label %bb.u, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.u:                                             ; preds = %.lr.ph.split.i
  %i.dw = shl i32 %.sroa.019.186.i, 4
  %i.dx = add nsw i64 %.sroa.16.187.i, -1         ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.03.188.i, i64 1
  %i.dz = or disjoint i32 %spec.select93.i, %i.dw ; 2 uses
  %.not67.i = icmp eq i64 %i.dx, 0
  br i1 %.not67.i, label %.loopexit.i, label %.lr.ph.split.i

.split7.i150.thread:                              ; preds = %bb.q, %bb.t, %bb.s, %.split7.i150
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.r, i64 noundef %i.s, i64 noundef 5, i64 noundef 13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #37
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread": ; preds = %.lr.ph.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4357)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 1, ptr %i.g, align 1, !noalias !4357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4357
  store ptr %i.g, ptr %i.f, align 8, !noalias !4357
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4358
  store ptr @1, ptr %i.e, align 8, !noalias !4359
  %.sroa.4.0..sroa_idx.i154 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i154, align 8, !noalias !4359
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4359
  %.sroa.6.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i155, align 8, !noalias !4359
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !4359
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ea, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4357
  store i64 -9223372036854775804, ptr %i.h, align 8, !alias.scope !4357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ap

bb.v:                                             ; preds = %bb.n
  %i.eb = add i64 %i.s, -2                        ; 6 uses
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %bb.w, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i156, !prof !7

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i156: ; preds = %bb.v
  %i.ed = icmp eq i64 %i.eb, 0
  br i1 %i.ed, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit162", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i157"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i157": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i156
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !4360
  %i.ee = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.eb, i64 noundef range(i64 1, 9) 1) #38, !noalias !4360 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.w, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit162"

bb.w:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i157", %bb.v
  %.sroa.4.0.ph.i.i161 = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i157" ], [ 0, %bb.v ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i161, i64 %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !4361
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit162": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i156, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i157"
  %.sroa.10.0.i.i158 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i156 ], [ %i.ee, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i157" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i158, ptr nonnull readonly align 1 %i.da, i64 %i.eb, i1 false), !noalias !4362
  br label %.loopexit.i

bb.x:                                             ; preds = %bb.n, %bb.m
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.r, i64 noundef %i.s, i64 noundef 1, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #37
  unreachable

.lr.ph.i.i.i.i:                                   ; preds = %bb.k
  %i.eg = add i64 %i.s, -2                        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %i.eh = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.eu, %bb.aa ] ; 6 uses
  %i.ei = sub nuw i64 %i.eg, %i.eh                ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.eh ; 2 uses
  %i.ek = icmp ult i64 %i.ei, 16
  br i1 %i.ek, label %.preheader.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.y
  %.not.i.i.i.i.i = icmp eq i64 %i.eg, %i.eh
  br i1 %.not.i.i.i.i.i, label %.thread258, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.z
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.eo, %bb.z ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.01.05.i.i.i.i.i
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !4363, !noalias !4364, !noundef !4
  %i.en = icmp eq i8 %i.em, 58
  br i1 %i.en, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.eo = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.eo, %i.ei
  br i1 %exitcond.not.i.i.i.i.i, label %.thread258, label %.lr.ph.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i: ; preds = %bb.y
  %i.ep = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ej, i64 noundef %i.ei), !noalias !4364 ; 2 uses
  %i.eq = extractvalue { i64, i64 } %i.ep, 0
  %i.er = extractvalue { i64, i64 } %i.ep, 1
  %i.es = trunc nuw i64 %i.eq to i1
  br i1 %i.es, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i, label %.thread258

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i
  %.sroa.4.0.i27.i.i.i.i = phi i64 [ %i.er, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.et = add i64 %i.eh, 1
  %i.eu = add i64 %i.et, %.sroa.4.0.i27.i.i.i.i   ; 6 uses
  %.not21.i.i.i.i = icmp ugt i64 %i.eu, %i.eg
  %i.ev = add i64 %i.eh, %.sroa.4.0.i27.i.i.i.i
  %or.cond.i.i.i.i.not = icmp ult i64 %i.ev, %i.eg
  br i1 %or.cond.i.i.i.i.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i
  br i1 %.not21.i.i.i.i, label %.thread258, label %bb.y

bb.ab:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i
  %i.ew = getelementptr i8, ptr %i.cg, i64 %i.eh
  %i.ex = getelementptr i8, ptr %i.ew, i64 %.sroa.4.0.i27.i.i.i.i
  %lhsc = load i8, ptr %i.ex, align 1
  %i.ey = icmp eq i8 %lhsc, 58
  br i1 %i.ey, label %bb.ad, label %bb.aa

bb.ac:                                            ; preds = %bb.k, %bb.j
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.r, i64 noundef %i.s, i64 noundef 1, i64 noundef %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @246) #37
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ez = icmp ult i64 %i.eg, %i.eu
  br i1 %i.ez, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.backedge

.backedge:                                        ; preds = %bb.ad, %.backedge.backedge
  %i.fa = phi i64 [ %i.fn, %.backedge.backedge ], [ %i.eu, %bb.ad ] ; 6 uses
  %i.fb = sub nuw i64 %i.eg, %i.fa                ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fa ; 2 uses
  %i.fd = icmp ult i64 %i.fb, 16
  br i1 %i.fd, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %.backedge
  %.not.i.i.i = icmp eq i64 %i.eg, %i.fa
  br i1 %.not.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.ae
  %.sroa.01.05.i.i.i = phi i64 [ %i.fh, %bb.ae ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.sroa.01.05.i.i.i
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !4365, !noalias !4366, !noundef !4
  %i.fg = icmp eq i8 %i.ff, 58
  br i1 %i.fg, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.fh = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.fh, %i.fb
  br i1 %exitcond.not.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %.backedge
  %i.fi = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fc, i64 noundef %i.fb), !noalias !4366 ; 2 uses
  %i.fj = extractvalue { i64, i64 } %i.fi, 0
  %i.fk = extractvalue { i64, i64 } %i.fi, 1
  %i.fl = trunc nuw i64 %i.fj to i1
  br i1 %i.fl, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %.sroa.4.0.i27.i.i = phi i64 [ %i.fk, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.fm = add i64 %i.fa, 1
  %i.fn = add i64 %i.fm, %.sroa.4.0.i27.i.i       ; 2 uses
  %.not21.i.i = icmp ugt i64 %i.fn, %i.eg         ; 2 uses
  %i.fo = add i64 %i.fa, %.sroa.4.0.i27.i.i
  %or.cond.i.i.not = icmp ult i64 %i.fo, %i.eg
  br i1 %or.cond.i.i.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  br i1 %.not21.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.af, %bb.ag
  br label %.backedge

bb.ag:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.fp = add i64 %i.fa, %.sroa.4.0.i27.i.i       ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fp
  %lhsc333 = load i8, ptr %i.fq, align 1
  %i.fr = icmp eq i8 %lhsc333, 58                 ; 2 uses
  %brmerge = or i1 %i.fr, %.not21.i.i
  br i1 %brmerge, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.loopexit374.split.loop.exit391", label %.backedge.backedge

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.loopexit374.split.loop.exit391": ; preds = %bb.ag
  %.mux.le = select i1 %i.fr, i64 %i.fp, i64 %i.eg
  br label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i": ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.loopexit374.split.loop.exit391", %bb.af, %.preheader.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i, %bb.ae, %bb.ad
  %.pn = phi i64 [ %i.eg, %bb.ad ], [ %i.eg, %bb.ae ], [ %i.eg, %.preheader.i.i.i ], [ %.mux.le, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.loopexit374.split.loop.exit391" ], [ %i.eg, %bb.af ], [ %i.eg, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ]
  %.sroa.4.1.i = sub nuw i64 %.pn, %i.eu          ; 7 uses
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.eu ; 7 uses
  store ptr %.sroa.0.1.i, ptr %i.p, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.4.1.i, ptr %i.fs, align 8
  switch i64 %.sroa.4.1.i, label %bb.ai [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182.thread"
    i64 1, label %bb.ah
  ]

.thread258:                                       ; preds = %bb.aa, %.preheader.i.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.a, ptr %i.n, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.465.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4367
  store ptr @31, ptr %i.d, align 8, !noalias !4368
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4368
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !4368
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !4368
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !4368
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @249, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 106, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 474, ptr %.sroa.626.0..sroa_idx, align 8
  br label %bb.au

bb.ah:                                            ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"
  %i.ft = load i8, ptr %.sroa.0.1.i, align 1, !alias.scope !4369, !noundef !4
  switch i8 %i.ft, label %.lr.ph.split.us.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182.thread"
  ]

bb.ai:                                            ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"
  %.pr.i172 = load i8, ptr %.sroa.0.1.i, align 1, !alias.scope !4369
  %cond.i173 = icmp eq i8 %.pr.i172, 43
  br i1 %cond.i173, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 1 ; 2 uses
  %i.fv = add i64 %.sroa.4.1.i, -1                ; 2 uses
  %i.fw = icmp ult i64 %.sroa.4.1.i, 10
  br i1 %i.fw, label %.lr.ph.split.us.i.preheader, label %.preheader75.i174

.preheader75.i174:                                ; preds = %bb.am, %bb.aj
  %.sroa.16.0.ph.i175 = phi i64 [ %.sroa.4.1.i, %bb.am ], [ %i.fv, %bb.aj ] ; 2 uses
  %.sroa.03.0.ph.i176 = phi ptr [ %.sroa.0.1.i, %bb.am ], [ %i.fu, %bb.aj ]
  %.not.us.i363 = icmp eq i64 %.sroa.16.0.ph.i175, 0
  br i1 %.not.us.i363, label %.loopexit.i170, label %.lr.ph

.preheader75.split.us.i:                          ; preds = %bb.al
  %.not.us.i = icmp eq i64 %i.fy, 0
  br i1 %.not.us.i, label %.loopexit.i170, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader75.i174, %.preheader75.split.us.i
  %.sroa.03.0.us.i366 = phi ptr [ %i.fx, %.preheader75.split.us.i ], [ %.sroa.03.0.ph.i176, %.preheader75.i174 ] ; 2 uses
  %.sroa.16.0.us.i365 = phi i64 [ %i.fy, %.preheader75.split.us.i ], [ %.sroa.16.0.ph.i175, %.preheader75.i174 ]
  %.sroa.019.0.us.i364 = phi i32 [ %i.gg, %.preheader75.split.us.i ], [ 0, %.preheader75.i174 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.us.i366, i64 1
  %i.fy = add i64 %.sroa.16.0.us.i365, -1         ; 2 uses
  %i.fz = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.us.i364, i32 10) ; 2 uses
  %i.ga = extractvalue { i32, i1 } %i.fz, 0       ; 2 uses
  %i.gb = extractvalue { i32, i1 } %i.fz, 1
  %i.gc = load i8, ptr %.sroa.03.0.us.i366, align 1, !alias.scope !4369, !noundef !4 ; 2 uses
  br i1 %i.gb, label %.split.us.i177, label %bb.ak, !prof !10

bb.ak:                                            ; preds = %.lr.ph
  %i.gd = zext i8 %i.gc to i32
  %i.ge = add nsw i32 %i.gd, -48                  ; 2 uses
  %i.gf = icmp ult i32 %i.ge, 10
  br i1 %i.gf, label %bb.al, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182.thread"

bb.al:                                            ; preds = %bb.ak
  %i.gg = add i32 %i.ge, %i.ga                    ; 3 uses
  %.not66.us.i = icmp ult i32 %i.gg, %i.ga
  br i1 %.not66.us.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182.thread", label %.preheader75.split.us.i

bb.am:                                            ; preds = %bb.ai
  %i.gh = icmp ult i64 %.sroa.4.1.i, 9
  br i1 %i.gh, label %.lr.ph.split.us.i.preheader, label %.preheader75.i174

.lr.ph.split.us.i.preheader:                      ; preds = %bb.aj, %bb.am, %bb.ah
  %.sroa.03.188.us.i.ph = phi ptr [ %i.fu, %bb.aj ], [ %.sroa.0.1.i, %bb.am ], [ %.sroa.0.1.i, %bb.ah ]
  %.sroa.16.187.us.i.ph = phi i64 [ %i.fv, %bb.aj ], [ %.sroa.4.1.i, %bb.am ], [ 1, %bb.ah ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.an
  %.sroa.03.188.us.i = phi ptr [ %i.go, %bb.an ], [ %.sroa.03.188.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.sroa.16.187.us.i = phi i64 [ %i.gn, %bb.an ], [ %.sroa.16.187.us.i.ph, %.lr.ph.split.us.i.preheader ]
  %.sroa.019.186.us.i = phi i32 [ %i.gp, %bb.an ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.gi = load i8, ptr %.sroa.03.188.us.i, align 1, !alias.scope !4369, !noundef !4
  %i.gj = zext i8 %i.gi to i32
  %i.gk = add nsw i32 %i.gj, -48                  ; 2 uses
  %i.gl = icmp ult i32 %i.gk, 10
  br i1 %i.gl, label %bb.an, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182.thread"

bb.an:                                            ; preds = %.lr.ph.split.us.i
  %i.gm = mul i32 %.sroa.019.186.us.i, 10
  %i.gn = add nsw i64 %.sroa.16.187.us.i, -1      ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.03.188.us.i, i64 1
  %i.gp = add i32 %i.gk, %i.gm                    ; 2 uses
  %.not67.us.i = icmp eq i64 %i.gn, 0
  br i1 %.not67.us.i, label %.loopexit.i170, label %.lr.ph.split.us.i

.loopexit.i170:                                   ; preds = %.preheader75.split.us.i, %bb.an, %.preheader75.i174
  %.sroa.019.2.i171 = phi i32 [ %i.gp, %bb.an ], [ 0, %.preheader75.i174 ], [ %i.gg, %.preheader75.split.us.i ]
  %i.gq = zext i32 %.sroa.019.2.i171 to i64
  %i.gr = shl nuw i64 %i.gq, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182"

.split.us.i177:                                   ; preds = %.lr.ph
  %i.gs = add i8 %i.gc, -48
  %i.gt = icmp ult i8 %i.gs, 10
  %spec.select.i179 = select i1 %i.gt, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182"

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182": ; preds = %.loopexit.i170, %.split.us.i177
  %.sroa.8.0.insert.insert.i166 = phi i64 [ %i.gr, %.loopexit.i170 ], [ %spec.select.i179, %.split.us.i177 ] ; 3 uses
  %i.gu = trunc i64 %.sroa.8.0.insert.insert.i166 to i1
  br i1 %i.gu, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182.thread", label %bb.ao

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182.thread": ; preds = %bb.ak, %bb.al, %.lr.ph.split.us.i, %bb.ah, %bb.ah, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182"
  %.sroa.8.0.insert.insert.i166264 = phi i64 [ %.sroa.8.0.insert.insert.i166, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182" ], [ 257, %bb.ah ], [ 1, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i" ], [ 257, %.lr.ph.split.us.i ], [ 257, %bb.ah ], [ 513, %bb.al ], [ 257, %bb.ak ]
  %.sroa.4107.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i166264, 8
  %.sroa.4107.0.extract.trunc = trunc i64 %.sroa.4107.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 %.sroa.4107.0.extract.trunc, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.p, ptr %i.j, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.471.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4370
  store ptr @248, ptr %i.c, align 8, !noalias !4371
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.4191.0..sroa_idx, align 8, !noalias !4371
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.j, ptr %.sroa.5192.0..sroa_idx, align 8, !noalias !4371
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.6193.0..sroa_idx, align 8, !noalias !4371
  %.sroa.7194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7194.0..sroa_idx, align 8, !noalias !4371
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.475.0..sroa_idx, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.m, ptr %i.gv, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.479.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4372
  store ptr @49, ptr %i.b, align 8, !noalias !4373
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.4185.0..sroa_idx, align 8, !noalias !4373
  %.sroa.5186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %.sroa.5186.0..sroa_idx, align 8, !noalias !4373
  %.sroa.6187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %.sroa.6187.0..sroa_idx, align 8, !noalias !4373
  %.sroa.7188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7188.0..sroa_idx, align 8, !noalias !4373
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.as unwind label %bb.aq

bb.ao:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182"
  %.sroa.6109.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i166, 32
  %.sroa.6109.0.extract.trunc = trunc nuw i64 %.sroa.6109.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.loopexit.i

bb.ap:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", %bb.au, %.loopexit.i
  ret void

bb.aq:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182.thread"
  %i.gw = landingpad { ptr, i32 }
          cleanup
  %.val124 = load i64, ptr %i.k, align 8          ; 2 uses
  %i.gx = icmp eq i64 %.val124, 0
  br i1 %i.gx, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val125 = load ptr, ptr %i.gy, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val125, i64 noundef %.val124, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.as:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val = load i64, ptr %i.k, align 8             ; 2 uses
  %i.gz = icmp eq i64 %.val, 0
  br i1 %i.gz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit183", label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ha = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val123 = load ptr, ptr %i.ha, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val123, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit183"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit183": ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @249, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 106, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 474, ptr %.sroa.638.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.au

bb.au:                                            ; preds = %.thread258, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit183"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ap

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %bb.ar, %bb.aq
  resume { ptr, i32 } %i.gw
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7process9MemoryMap9from_line17hecf8740dfdcb4bebE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.split.i.i:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.7152 = alloca [32 x i8], align 8         ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [1 x i8], align 1                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [1 x i8], align 1                 ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.0104.sroa.0.sroa.0 = alloca [64 x i8], align 8 ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 2 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 2 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 2 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 2 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %.lr.ph.split.i.i
  %i.ak = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.ax, %bb.c ] ; 7 uses
  %i.al = sub nuw i64 %2, %i.ak                   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak ; 2 uses
  %i.an = icmp ult i64 %i.al, 16
  br i1 %i.an, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %2, %i.ak
  br i1 %.not.i.i.i, label %.thread576, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.b
  %.sroa.01.05.i.i.i = phi i64 [ %i.ar, %bb.b ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.01.05.i.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !4481, !noalias !4482, !noundef !4
  %i.aq = icmp eq i8 %i.ap, 32
  br i1 %i.aq, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ar, %i.al
  br i1 %exitcond.not.i.i.i, label %.thread576, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %bb.a
  %i.as = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 32, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.am, i64 noundef %i.al), !noalias !4482 ; 2 uses
  %i.at = extractvalue { i64, i64 } %i.as, 0
  %i.au = extractvalue { i64, i64 } %i.as, 1
  %i.av = trunc nuw i64 %i.at to i1
  br i1 %i.av, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %.thread576

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %.sroa.4.0.i27.i.i = phi i64 [ %i.au, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %i.aw = add i64 %i.ak, 1
  %i.ax = add i64 %i.aw, %.sroa.4.0.i27.i.i       ; 6 uses
  %.not21.i.i = icmp ugt i64 %i.ax, %2
  %i.ay = add i64 %i.ak, %.sroa.4.0.i27.i.i
  %or.cond.i.i.not = icmp ult i64 %i.ay, %2
  br i1 %or.cond.i.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  br i1 %.not21.i.i, label %.thread576, label %bb.a

bb.d:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.az = add i64 %i.ak, %.sroa.4.0.i27.i.i       ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.az
  %lhsc = load i8, ptr %i.ba, align 1
  %i.bb = icmp eq i8 %lhsc, 32
  br i1 %i.bb, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.bc = icmp ult i64 %2, %i.ax
  br i1 %i.bc, label %.thread581, label %.lr.ph.split.i.i297

.lr.ph.split.i.i297:                              ; preds = %bb.e, %bb.g
  %i.bd = phi i64 [ %i.bq, %bb.g ], [ %i.ax, %bb.e ] ; 7 uses
  %i.be = sub nuw i64 %2, %i.bd                   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd ; 2 uses
  %i.bg = icmp ult i64 %i.be, 16
  br i1 %i.bg, label %.preheader.i.i.i318, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i299
end_hunk_5
begin_hunk_6_@"_ZN78_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17hdf5f554c5af6f620E"
define noundef zeroext i1 @"_ZN78_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17hdf5f554c5af6f620E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i32, ptr %0, align 4, !noundef !4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @"_ZN80_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17hc69ecd45faf1871aE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @312, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6058
  store ptr @313, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @314, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..Octal$GT$3fmt17h0abed64d4200300bE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !4
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u8$GT$3fmt17h7cacf98b1b32ad44E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..Octal$GT$3fmt17h2029f0d8205a7644E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u32$GT$3fmt17h0c8928584ba225fcE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..Octal$GT$3fmt17h9021c451c6e248e1E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u32$GT$3fmt17h0c8928584ba225fcE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..Octal$GT$3fmt17hccb5013a91a427ddE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u32$GT$3fmt17h0c8928584ba225fcE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN78_$LT$procfs_core..sys..kernel..SysRq$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h85924dfea6112c94E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6084)
  switch i64 %2, label %bb.c [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i"
    i64 1, label %bb.b
  ]

.loopexit61.split.loop.exit64.i.i:                ; preds = %.lr.ph
  %.mux.le.i.i = select i1 %i.p, i32 257, i32 513
  br label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !alias.scope !6085, !noundef !4
  switch i8 %i.e, label %.lr.ph.split.us.i.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i"
  ]

bb.c:                                             ; preds = %bb.a
  %.pr.i.i = load i8, ptr %1, align 1, !alias.scope !6085
  %cond.i.i = icmp eq i8 %.pr.i.i, 43
  br i1 %cond.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.g = add i64 %2, -1                           ; 2 uses
  %i.h = icmp ult i64 %2, 6
  br i1 %i.h, label %.lr.ph.split.us.i.i.preheader, label %.preheader59.i.i

.preheader59.i.i:                                 ; preds = %bb.f, %bb.d
  %.sroa.16.0.ph.i.i = phi i64 [ %2, %bb.f ], [ %i.g, %bb.d ] ; 2 uses
  %.sroa.02.0.ph.i.i = phi ptr [ %1, %bb.f ], [ %i.f, %bb.d ]
  %.not.us.i.i30 = icmp eq i64 %.sroa.16.0.ph.i.i, 0
  br i1 %.not.us.i.i30, label %.loopexit.i.i, label %.lr.ph

.preheader59.split.us.i.i:                        ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.us.i.i33, i64 1
  %i.j = add i64 %.sroa.16.0.us.i.i32, -1         ; 2 uses
  %.not.us.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.us.i.i, label %.loopexit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader59.i.i, %.preheader59.split.us.i.i
  %.sroa.02.0.us.i.i33 = phi ptr [ %i.i, %.preheader59.split.us.i.i ], [ %.sroa.02.0.ph.i.i, %.preheader59.i.i ] ; 2 uses
  %.sroa.16.0.us.i.i32 = phi i64 [ %i.j, %.preheader59.split.us.i.i ], [ %.sroa.16.0.ph.i.i, %.preheader59.i.i ]
  %.sroa.018.0.us.i.i31 = phi i16 [ %i.s, %.preheader59.split.us.i.i ], [ 0, %.preheader59.i.i ]
  %i.k = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.018.0.us.i.i31, i16 10) ; 2 uses
  %i.l = extractvalue { i16, i1 } %i.k, 1
  %i.m = load i8, ptr %.sroa.02.0.us.i.i33, align 1, !alias.scope !6085, !noundef !4
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %i.p = icmp ugt i32 %i.o, 9                     ; 2 uses
  %brmerge.us.i.i = or i1 %i.l, %i.p
  br i1 %brmerge.us.i.i, label %.loopexit61.split.loop.exit64.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = extractvalue { i16, i1 } %i.k, 0         ; 2 uses
  %i.r = trunc nuw nsw i32 %i.o to i16
  %i.s = add i16 %i.q, %i.r                       ; 3 uses
  %.not52.us.i.i = icmp ult i16 %i.s, %i.q
  br i1 %.not52.us.i.i, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i", label %.preheader59.split.us.i.i

bb.f:                                             ; preds = %bb.c
  %i.t = icmp ult i64 %2, 5
  br i1 %i.t, label %.lr.ph.split.us.i.i.preheader, label %.preheader59.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %bb.f, %bb.d, %bb.b
  %.sroa.02.171.us.i.i.ph = phi ptr [ %i.f, %bb.d ], [ %1, %bb.f ], [ %1, %bb.b ]
  %.sroa.16.170.us.i.i.ph = phi i64 [ %i.g, %bb.d ], [ %2, %bb.f ], [ 1, %bb.b ]
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader, %bb.g
  %.sroa.02.171.us.i.i = phi ptr [ %i.aa, %bb.g ], [ %.sroa.02.171.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %.sroa.16.170.us.i.i = phi i64 [ %i.z, %bb.g ], [ %.sroa.16.170.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ]
  %.sroa.018.169.us.i.i = phi i16 [ %i.ac, %bb.g ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %i.u = load i8, ptr %.sroa.02.171.us.i.i, align 1, !alias.scope !6085, !noundef !4
  %i.v = zext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -48                    ; 2 uses
  %i.x = icmp ult i32 %i.w, 10
  br i1 %i.x, label %bb.g, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i"

bb.g:                                             ; preds = %.lr.ph.split.us.i.i
  %i.y = mul i16 %.sroa.018.169.us.i.i, 10
  %i.z = add nsw i64 %.sroa.16.170.us.i.i, -1     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.02.171.us.i.i, i64 1
  %i.ab = trunc nuw nsw i32 %i.w to i16
  %i.ac = add i16 %i.y, %i.ab                     ; 2 uses
  %.not53.us.i.i = icmp eq i64 %i.z, 0
  br i1 %.not53.us.i.i, label %.loopexit.i.i, label %.lr.ph.split.us.i.i

.loopexit.i.i:                                    ; preds = %.preheader59.split.us.i.i, %bb.g, %.preheader59.i.i
  %.sroa.018.2.i.i = phi i16 [ %i.ac, %bb.g ], [ 0, %.preheader59.i.i ], [ %i.s, %.preheader59.split.us.i.i ]
  %i.ad = zext i16 %.sroa.018.2.i.i to i32
  %i.ae = shl nuw i32 %i.ad, 16
  br label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.i"

"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.i": ; preds = %.loopexit.i.i, %.loopexit61.split.loop.exit64.i.i
  %.sroa.8.0.insert.insert.i.i = phi i32 [ %i.ae, %.loopexit.i.i ], [ %.mux.le.i.i, %.loopexit61.split.loop.exit64.i.i ] ; 3 uses
  %.sroa.55.0.extract.shift.i = lshr i32 %.sroa.8.0.insert.insert.i.i, 16
  %.sroa.55.0.extract.trunc.i = trunc nuw i32 %.sroa.55.0.extract.shift.i to i16 ; 3 uses
  %i.af = trunc i32 %.sroa.8.0.insert.insert.i.i to i1
  br i1 %i.af, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i", label %bb.h

"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i": ; preds = %bb.e, %.lr.ph.split.us.i.i, %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.i", %bb.b, %bb.b, %bb.a
  %.sroa.8.0.insert.insert.i10.i = phi i32 [ %.sroa.8.0.insert.insert.i.i, %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.i" ], [ 257, %.lr.ph.split.us.i.i ], [ 1, %bb.a ], [ 257, %bb.b ], [ 257, %bb.b ], [ 513, %bb.e ]
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.8.0.insert.insert.i10.i, 8
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6087)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6086
  store i8 %.sroa.4.0.extract.trunc.i, ptr %i.c, align 1, !noalias !6088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6088
  store ptr %i.c, ptr %i.b, align 8, !noalias !6088
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !6088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6089
  store ptr @1, ptr %i.a, align 8, !noalias !6090
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6090
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !6090
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !6090
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !6090
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6088
  store i64 -9223372036854775804, ptr %i.d, align 8, !alias.scope !6087, !noalias !6086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !6084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6086
  br label %_ZN11procfs_core3sys6kernel5SysRq8from_str17ha953e6f060081ffcE.exit

bb.h:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.i"
  switch i16 %.sroa.55.0.extract.trunc.i, label %bb.i [
    i16 0, label %bb.j
    i16 1, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ah = and i16 %.sroa.55.0.extract.trunc.i, -511
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %i.aj, align 8, !alias.scope !6083
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !6083
  br label %_ZN11procfs_core3sys6kernel5SysRq8from_str17ha953e6f060081ffcE.exit

bb.k:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.ak, align 8, !alias.scope !6083
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !6083
  br label %_ZN11procfs_core3sys6kernel5SysRq8from_str17ha953e6f060081ffcE.exit

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6091
  %i.al = tail call noundef dereferenceable_or_null(13) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 13, i64 noundef range(i64 1, 9) 1) #38, !noalias !6091 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.m, label %"_ZN77_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0196dd0316ea147eE.exit.i"

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !6092
  unreachable

"_ZN77_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0196dd0316ea147eE.exit.i": ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.al, ptr noundef nonnull readonly align 1 dereferenceable(13) @69, i64 13, i1 false), !noalias !6093
  store i64 -9223372036854775804, ptr %0, align 8, !alias.scope !6083
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !6083
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !6083
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 13, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6083
  br label %_ZN11procfs_core3sys6kernel5SysRq8from_str17ha953e6f060081ffcE.exit

bb.n:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.an, align 8, !alias.scope !6083
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.55.0.extract.trunc.i, ptr %i.ao, align 2, !alias.scope !6083
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !6083
  br label %_ZN11procfs_core3sys6kernel5SysRq8from_str17ha953e6f060081ffcE.exit

_ZN11procfs_core3sys6kernel5SysRq8from_str17ha953e6f060081ffcE.exit: ; preds = %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i", %bb.j, %bb.k, %"_ZN77_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0196dd0316ea147eE.exit.i", %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$procfs_core..keyring.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17h0907cb70e884656cE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u32$GT$3fmt17hea37071c6b23d768E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$procfs_core..keyring.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17h3e58d380d12b312bE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u32$GT$3fmt17hea37071c6b23d768E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17h6b56fb41bea0f545E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !4
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u8$GT$3fmt17h64a589b259a2d727E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17hac78879c54525dacE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u32$GT$3fmt17hea37071c6b23d768E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17hc01a4c8485a0b6f0E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u32$GT$3fmt17hea37071c6b23d768E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17hd390027d3a1745ebE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u32$GT$3fmt17hea37071c6b23d768E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !16, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !8, !alias.scope !6103, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17hb7442b423b123bbdE.exit.thread7", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !6103, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !6103, !noundef !4 ; 16 uses
  %.promoted26 = load i8, ptr %i.g, align 8, !alias.scope !6103 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6104)
  %i.l = trunc nuw i8 %.promoted26 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit74

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !6105, !noalias !6106, !noundef !4
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit74

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
end_hunk_6
