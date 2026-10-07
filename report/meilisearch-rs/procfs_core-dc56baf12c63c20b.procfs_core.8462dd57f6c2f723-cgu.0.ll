Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs_core-dc56baf12c63c20b.procfs_core.8462dd57f6c2f723-cgu.0?download=true
inline.NumInlined: 2766
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN11procfs_core7keyring3Key9from_line17hd7df97abccecffbfE:bb.a
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [24 x i8], align 8               ; 2 uses
  %i.bl = alloca [16 x i8], align 8               ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store i64 0, ptr %i.ac, align 8
  %.sroa.4231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %2, ptr %.sroa.4231.0..sroa_idx, align 8
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %1, ptr %.sroa.5232.0..sroa_idx, align 8
  %.sroa.5232.sroa.4.0..sroa.5232.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %2, ptr %.sroa.5232.sroa.4.0..sroa.5232.0..sroa_idx.sroa_idx, align 8
  %.sroa.5232.sroa.5.0..sroa.5232.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %1, ptr %.sroa.5232.sroa.5.0..sroa.5232.0..sroa_idx.sroa_idx, align 8
  %.sroa.5232.sroa.6.0..sroa.5232.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %i.bm, ptr %.sroa.5232.sroa.6.0..sroa.5232.0..sroa_idx.sroa_idx, align 8
  %.sroa.5232.sroa.7.0..sroa.5232.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 0, ptr %.sroa.5232.sroa.7.0..sroa.5232.0..sroa_idx.sroa_idx, align 8
  %.sroa.6233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i8 1, ptr %.sroa.6233.0..sroa_idx, align 8
  %.sroa.7234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 57
  store i8 0, ptr %.sroa.7234.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.bn = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.ac) ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 8 uses
  %.not = icmp eq ptr %i.bo, null
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 7 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store ptr %i.a, ptr %i.bj, align 8
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4243.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2134
  store ptr @31, ptr %i.q, align 8, !noalias !2135
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2135
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.bj, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2135
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2135
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !2135
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2134
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
  %i.bs = load i8, ptr %i.bo, align 1, !alias.scope !2136, !noalias !2137, !noundef !4
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
  %.pr.i = load i8, ptr %i.bo, align 1, !alias.scope !2136, !noalias !2137
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
  %i.cc = load i8, ptr %.sroa.01.0.i658, align 1, !alias.scope !2136, !noalias !2137, !noundef !4 ; 2 uses
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
  %i.cl = load i8, ptr %.sroa.01.170.i, align 1, !alias.scope !2136, !noalias !2137, !noundef !4 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2138
  store ptr @95, ptr %i.p, align 8, !noalias !2139
  %.sroa.4484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 2, ptr %.sroa.4484.0..sroa_idx, align 8, !noalias !2139
  %.sroa.5485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.bf, ptr %.sroa.5485.0..sroa_idx, align 8, !noalias !2139
  %.sroa.6486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 1, ptr %.sroa.6486.0..sroa_idx, align 8, !noalias !2139
  %.sroa.7487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr null, ptr %.sroa.7487.0..sroa_idx, align 8, !noalias !2139
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store ptr %i.bg, ptr %i.be, align 8
  %.sroa.4257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4257.0..sroa_idx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bi, ptr %i.cy, align 8
  %.sroa.4261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4261.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2140
  store ptr @49, ptr %i.o, align 8, !noalias !2141
  %.sroa.4478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 2, ptr %.sroa.4478.0..sroa_idx, align 8, !noalias !2141
  %.sroa.5479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.be, ptr %.sroa.5479.0..sroa_idx, align 8, !noalias !2141
  %.sroa.6480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 2, ptr %.sroa.6480.0..sroa_idx, align 8, !noalias !2141
  %.sroa.7481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %.sroa.7481.0..sroa_idx, align 8, !noalias !2141
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2142
  store ptr @31, ptr %i.n, align 8, !noalias !2143
  %.sroa.4490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %.sroa.4490.0..sroa_idx, align 8, !noalias !2143
  %.sroa.5491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.bc, ptr %.sroa.5491.0..sroa_idx, align 8, !noalias !2143
  %.sroa.6492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 1, ptr %.sroa.6492.0..sroa_idx, align 8, !noalias !2143
  %.sroa.7493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr null, ptr %.sroa.7493.0..sroa_idx, align 8, !noalias !2143
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2142
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2144
  store ptr @31, ptr %i.m, align 8, !noalias !2145
  %.sroa.4496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %.sroa.4496.0..sroa_idx, align 8, !noalias !2145
  %.sroa.5497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.az, ptr %.sroa.5497.0..sroa_idx, align 8, !noalias !2145
  %.sroa.6498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 1, ptr %.sroa.6498.0..sroa_idx, align 8, !noalias !2145
  %.sroa.7499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %.sroa.7499.0..sroa_idx, align 8, !noalias !2145
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2144
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
  %i.di = load i8, ptr %i.de, align 1, !alias.scope !2146, !noundef !4
  switch i8 %i.di, label %.lr.ph.split.us.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  ]

bb.o:                                             ; preds = %bb.m
  %.pr.i453 = load i8, ptr %i.de, align 1, !alias.scope !2146
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
  %i.dr = load i8, ptr %.sroa.03.0.us.i662, align 1, !alias.scope !2146, !noundef !4 ; 2 uses
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
  %i.dx = load i8, ptr %.sroa.03.188.us.i, align 1, !alias.scope !2146, !noundef !4
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2147
  store ptr @151, ptr %i.l, align 8, !noalias !2148
  %.sroa.4508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 2, ptr %.sroa.4508.0..sroa_idx, align 8, !noalias !2148
  %.sroa.5509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.av, ptr %.sroa.5509.0..sroa_idx, align 8, !noalias !2148
  %.sroa.6510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 1, ptr %.sroa.6510.0..sroa_idx, align 8, !noalias !2148
  %.sroa.7511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %.sroa.7511.0..sroa_idx, align 8, !noalias !2148
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
end_hunk_0
begin_hunk_1_@_ZN11procfs_core7keyring3Key9from_line17hd7df97abccecffbfE:bb.a
  br i1 %.not407, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.a, ptr %i.aq, align 8
  %.sroa.4307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4307.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2153
  store ptr @31, ptr %i.i, align 8, !noalias !2154
  %.sroa.4520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %.sroa.4520.0..sroa_idx, align 8, !noalias !2154
  %.sroa.5521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.aq, ptr %.sroa.5521.0..sroa_idx, align 8, !noalias !2154
  %.sroa.6522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %.sroa.6522.0..sroa_idx, align 8, !noalias !2154
  %.sroa.7523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %.sroa.7523.0..sroa_idx, align 8, !noalias !2154
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2153
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2155
  store ptr @31, ptr %i.h, align 8, !noalias !2156
  %.sroa.4526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %.sroa.4526.0..sroa_idx, align 8, !noalias !2156
  %.sroa.5527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.an, ptr %.sroa.5527.0..sroa_idx, align 8, !noalias !2156
  %.sroa.6528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %.sroa.6528.0..sroa_idx, align 8, !noalias !2156
  %.sroa.7529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.7529.0..sroa_idx, align 8, !noalias !2156
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2155
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2157
  store ptr @151, ptr %i.g, align 8, !noalias !2158
  %.sroa.4538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.4538.0..sroa_idx, align 8, !noalias !2158
  %.sroa.5539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.aj, ptr %.sroa.5539.0..sroa_idx, align 8, !noalias !2158
  %.sroa.6540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.6540.0..sroa_idx, align 8, !noalias !2158
  %.sroa.7541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.7541.0..sroa_idx, align 8, !noalias !2158
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %i.ak, ptr %i.ai, align 8
  %.sroa.4331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4331.0..sroa_idx, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.am, ptr %i.fa, align 8
  %.sroa.4335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4335.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2159
  store ptr @49, ptr %i.f, align 8, !noalias !2160
  %.sroa.4532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.4532.0..sroa_idx, align 8, !noalias !2160
  %.sroa.5533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.ai, ptr %.sroa.5533.0..sroa_idx, align 8, !noalias !2160
  %.sroa.6534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 2, ptr %.sroa.6534.0..sroa_idx, align 8, !noalias !2160
  %.sroa.7535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.7535.0..sroa_idx, align 8, !noalias !2160
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.bn unwind label %bb.bl

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.fb = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.ac) ; 2 uses
  %i.fc = extractvalue { ptr, i64 } %i.fb, 0      ; 4 uses
  %.not411 = icmp eq ptr %i.fc, null
  %i.fd = extractvalue { ptr, i64 } %i.fb, 1      ; 3 uses
  br i1 %.not411, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.a, ptr %i.ag, align 8
  %.sroa.4339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4339.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2161
  store ptr @31, ptr %i.e, align 8, !noalias !2162
  %.sroa.4544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.4544.0..sroa_idx, align 8, !noalias !2162
  %.sroa.5545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.ag, ptr %.sroa.5545.0..sroa_idx, align 8, !noalias !2162
  %.sroa.6546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.6546.0..sroa_idx, align 8, !noalias !2162
  %.sroa.7547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.7547.0..sroa_idx, align 8, !noalias !2162
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @123, ptr %.sroa.4154.0..sroa_idx, align 8
  %.sroa.5155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 102, ptr %.sroa.5155.0..sroa_idx, align 8
  %.sroa.6156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 273, ptr %.sroa.6156.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.bd

bb.ae:                                            ; preds = %bb.ac
  %i.ff = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.ac) ; 2 uses
  %i.fg = extractvalue { ptr, i64 } %i.ff, 0      ; 2 uses
  %.not413 = icmp eq ptr %i.fg, null
  %i.fh = extractvalue { ptr, i64 } %i.ff, 1
  br i1 %.not413, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.a, ptr %i.ae, align 8
  %.sroa.4349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4349.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2163
  store ptr @31, ptr %i.d, align 8, !noalias !2164
  %.sroa.4550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4550.0..sroa_idx, align 8, !noalias !2164
  %.sroa.5551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ae, ptr %.sroa.5551.0..sroa_idx, align 8, !noalias !2164
  %.sroa.6552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.6552.0..sroa_idx, align 8, !noalias !2164
  %.sroa.7553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.7553.0..sroa_idx, align 8, !noalias !2164
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @123, ptr %.sroa.4172.0..sroa_idx, align 8
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 102, ptr %.sroa.5173.0..sroa_idx, align 8
  %.sroa.6174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 274, ptr %.sroa.6174.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.bd

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hee7a6c659cfbaf0cE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0176)
  %i.fj = tail call fastcc noundef i32 @_ZN11procfs_core7keyring8KeyFlags8from_str17he0df25ee570e0033E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.da, i64 noundef %.sroa.630.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke fastcc void @_ZN11procfs_core7keyring10KeyTimeout8from_str17h0b4cd66e0b7c5075E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ab, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.em, i64 noundef %i.en)
          to label %bb.aj unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val447 = load i64, ptr %i.ad, align 8         ; 2 uses
  %i.fl = icmp eq i64 %.val447, 0
  br i1 %i.fl, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val448 = load ptr, ptr %i.fm, align 8, !nonnull !4, !noundef !4
  %i.fn = shl nuw i64 %.val447, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val448, i64 noundef %i.fn, i64 noundef range(i64 1, -9223372036854775807) 8) #38
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit"

bb.aj:                                            ; preds = %bb.ag
  %i.fo = load i64, ptr %i.ab, align 8, !range !13, !noundef !4 ; 2 uses
  %.not415 = icmp eq i64 %i.fo, -9223372036854775803
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.fq = load i64, ptr %i.fp, align 8            ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.fs = load i32, ptr %i.fr, align 8            ; 2 uses
  br i1 %.not415, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.6359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %.sroa.4363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4363.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6359.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fo, ptr %i.ft, align 8
  %.sroa.2361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fq, ptr %.sroa.2361.0..sroa_idx, align 8
  %.sroa.3362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.fs, ptr %.sroa.3362.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0176)
  %.val445 = load i64, ptr %i.ad, align 8         ; 2 uses
  %i.fu = icmp eq i64 %.val445, 0
  br i1 %i.fu, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit461", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val446 = load ptr, ptr %i.fv, align 8, !nonnull !4, !noundef !4
  %i.fw = shl nuw i64 %.val445, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val446, i64 noundef %i.fw, i64 noundef range(i64 1, -9223372036854775807) 8) #38
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit461"

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke fastcc void @_ZN11procfs_core7keyring11Permissions8from_str17h2bb46ccf199c83d4E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.eq, i64 noundef %i.er)
          to label %bb.ap unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val443 = load i64, ptr %i.ad, align 8         ; 2 uses
  %i.fy = icmp eq i64 %.val443, 0
  br i1 %i.fy, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val444 = load ptr, ptr %i.fz, align 8, !nonnull !4, !noundef !4
  %i.ga = shl nuw i64 %.val443, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val444, i64 noundef %i.ga, i64 noundef range(i64 1, -9223372036854775807) 8) #38
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit"

bb.ap:                                            ; preds = %bb.am
  %i.gb = load i64, ptr %i.aa, align 8, !range !13, !noundef !4 ; 2 uses
  %.not417 = icmp eq i64 %i.gb, -9223372036854775803
  %i.gc = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7195, ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i64 16, i1 false)
  br i1 %.not417, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.5369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.3372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3372.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5369.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.sroa.2371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2371.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7195, i64 16, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gb, ptr %i.gd, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.bj

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ge = icmp eq i64 %i.fd, 2
  br i1 %i.ge, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gf = load i16, ptr %i.fc, align 1
  %i.gg = icmp ne i16 %i.gf, 12589
  %i.gh = zext i1 %i.gg to i32
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.fc, ptr %i.z, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.fd, ptr %i.gj, align 8
  %i.gk = tail call fastcc i64 @"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fc, i64 noundef %i.fd, i32 noundef 10) ; 3 uses
  %i.gl = trunc i64 %i.gk to i1
  br i1 %i.gl, label %bb.ax, label %bb.ay

bb.au:                                            ; preds = %bb.as, %bb.ay
  %.sroa.0202.0 = phi i32 [ 1, %bb.ay ], [ 0, %bb.as ]
  %.sroa.6203.0 = phi i32 [ %.sroa.6399.0.extract.trunc, %bb.ay ], [ undef, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke fastcc void @_ZN11procfs_core7keyring7KeyType8from_str17ha66e11c2910c11d9E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fg, i64 noundef %i.fh)
          to label %bb.az unwind label %bb.aw

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %bb.ba, %bb.bg, %bb.bf, %bb.aw
  %.pn = phi { ptr, i32 } [ %i.gu, %bb.ba ], [ %i.gp, %bb.aw ], [ %i.gz, %bb.bf ], [ %i.gz, %bb.bg ] ; 2 uses
  %.val441 = load i64, ptr %i.ad, align 8         ; 2 uses
  %i.gm = icmp eq i64 %.val441, 0
  br i1 %i.gm, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit", label %bb.av

bb.av:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val442 = load ptr, ptr %i.gn, align 8, !nonnull !4, !noundef !4
  %i.go = shl nuw i64 %.val441, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val442, i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) 8) #38
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit"

bb.aw:                                            ; preds = %bb.ax, %bb.au
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.ax:                                            ; preds = %bb.at
  %.sroa.4397.0.extract.shift = lshr i64 %i.gk, 8
  %.sroa.4397.0.extract.trunc = trunc i64 %.sroa.4397.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i8 %.sroa.4397.0.extract.trunc, ptr %i.y, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.z, ptr %i.u, align 8
  %.sroa.4376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.4376.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2165
  store ptr @150, ptr %i.c, align 8, !noalias !2166
  %.sroa.4562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.4562.0..sroa_idx, align 8, !noalias !2166
  %.sroa.5563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.u, ptr %.sroa.5563.0..sroa_idx, align 8, !noalias !2166
  %.sroa.6564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.6564.0..sroa_idx, align 8, !noalias !2166
  %.sroa.7565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7565.0..sroa_idx, align 8, !noalias !2166
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.be unwind label %bb.aw

bb.ay:                                            ; preds = %bb.at
  %.sroa.6399.0.extract.shift = lshr i64 %i.gk, 32
  %.sroa.6399.0.extract.trunc = trunc nuw i64 %.sroa.6399.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.au

bb.az:                                            ; preds = %bb.au
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke fastcc void @_ZN5alloc3str17join_generic_copy17h49631780d5dda341E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gr, i64 noundef %i.gt)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gu = landingpad { ptr, i32 }
          cleanup
  %.val449 = load i64, ptr %i.s, align 8, !range !2167, !noundef !4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val450 = load ptr, ptr %i.gv, align 8
  tail call fastcc void @"_ZN4core3ptr50drop_in_place$LT$procfs_core..keyring..KeyType$GT$17h6ea4403dc1161673E"(i64 %.val449, ptr %.val450) #39
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0176, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7195, i64 16, i1 false)
  %.sroa.0176.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0176, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0176.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0176, i64 48, i1 false)
  %.sroa.7177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.0202.0, ptr %.sroa.7177.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.6203.0, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.fq, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_1
begin_hunk_2_@_ZN11procfs_core7keyring7KeyUser8from_str17hf6994ce1ceec79a0E:bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2379
  store ptr @31, ptr %i.z, align 8, !noalias !2380
  %.sroa.4662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 1, ptr %.sroa.4662.0..sroa_idx, align 8, !noalias !2380
  %.sroa.5663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.cp, ptr %.sroa.5663.0..sroa_idx, align 8, !noalias !2380
  %.sroa.6664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 1, ptr %.sroa.6664.0..sroa_idx, align 8, !noalias !2380
  %.sroa.7665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr null, ptr %.sroa.7665.0..sroa_idx, align 8, !noalias !2380
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2379
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
  %i.dd = load i8, ptr %i.da, align 1, !alias.scope !2381, !noundef !4
  switch i8 %i.dd, label %.lr.ph.split.us.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  ]

bb.g:                                             ; preds = %bb.e
  %.pr.i = load i8, ptr %i.da, align 1, !alias.scope !2381
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
  %i.dm = load i8, ptr %.sroa.03.0.us.i983, align 1, !alias.scope !2381, !noundef !4 ; 2 uses
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
  %i.ds = load i8, ptr %.sroa.03.188.us.i, align 1, !alias.scope !2381, !noundef !4
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2382
  store ptr @151, ptr %i.y, align 8, !noalias !2383
  %.sroa.4674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 2, ptr %.sroa.4674.0..sroa_idx, align 8, !noalias !2383
  %.sroa.5675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.cl, ptr %.sroa.5675.0..sroa_idx, align 8, !noalias !2383
  %.sroa.6676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 1, ptr %.sroa.6676.0..sroa_idx, align 8, !noalias !2383
  %.sroa.7677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %.sroa.7677.0..sroa_idx, align 8, !noalias !2383
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  store ptr %i.cm, ptr %i.ck, align 8
  %.sroa.4357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4357.0..sroa_idx, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.co, ptr %i.ef, align 8
  %.sroa.4361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4361.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2384
  store ptr @49, ptr %i.x, align 8, !noalias !2385
  %.sroa.4668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 2, ptr %.sroa.4668.0..sroa_idx, align 8, !noalias !2385
  %.sroa.5669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ck, ptr %.sroa.5669.0..sroa_idx, align 8, !noalias !2385
  %.sroa.6670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 2, ptr %.sroa.6670.0..sroa_idx, align 8, !noalias !2385
  %.sroa.7671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr null, ptr %.sroa.7671.0..sroa_idx, align 8, !noalias !2385
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2386
  store ptr @31, ptr %i.w, align 8, !noalias !2387
  %.sroa.4680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 1, ptr %.sroa.4680.0..sroa_idx, align 8, !noalias !2387
  %.sroa.5681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.ci, ptr %.sroa.5681.0..sroa_idx, align 8, !noalias !2387
  %.sroa.6682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 1, ptr %.sroa.6682.0..sroa_idx, align 8, !noalias !2387
  %.sroa.7683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr null, ptr %.sroa.7683.0..sroa_idx, align 8, !noalias !2387
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2386
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2388
  store ptr @31, ptr %i.v, align 8, !noalias !2389
  %.sroa.4686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %.sroa.4686.0..sroa_idx, align 8, !noalias !2389
  %.sroa.5687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.cg, ptr %.sroa.5687.0..sroa_idx, align 8, !noalias !2389
  %.sroa.6688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 1, ptr %.sroa.6688.0..sroa_idx, align 8, !noalias !2389
  %.sroa.7689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr null, ptr %.sroa.7689.0..sroa_idx, align 8, !noalias !2389
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2388
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2390
  store ptr @31, ptr %i.u, align 8, !noalias !2391
  %.sroa.4692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %.sroa.4692.0..sroa_idx, align 8, !noalias !2391
  %.sroa.5693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.ce, ptr %.sroa.5693.0..sroa_idx, align 8, !noalias !2391
  %.sroa.6694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 1, ptr %.sroa.6694.0..sroa_idx, align 8, !noalias !2391
  %.sroa.7695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr null, ptr %.sroa.7695.0..sroa_idx, align 8, !noalias !2391
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2390
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2392)
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
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !2393, !noalias !2394, !noundef !4
  %i.ev = icmp eq i8 %i.eu, 47
  br i1 %i.ev, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.ew = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ew, %i.eq
  br i1 %exitcond.not.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE.exit", label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %bb.s
  %i.ex = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 47, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.er, i64 noundef %i.eq), !noalias !2394 ; 2 uses
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
  store i64 %i.fc, ptr %i.cd, align 8, !alias.scope !2392
  br label %bb.w

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE.exit": ; preds = %bb.u, %.preheader.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i, %bb.t
  %storemerge = phi i64 [ %.sroa.650.0, %bb.t ], [ %.sroa.650.0, %.preheader.i.i.i ], [ %.sroa.650.0, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %i.fc, %bb.u ]
  store i64 %storemerge, ptr %.sroa.5388.sroa.5.0..sroa.5388.0..sroa_idx.sroa_idx, align 8
  store i8 1, ptr %.sroa.7390.0..sroa_idx, align 1, !alias.scope !2395
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
  %i.fi = load i8, ptr %i.eh, align 1, !alias.scope !2396, !noundef !4
  switch i8 %i.fi, label %.lr.ph.split.us.i615.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637.thread"
  ]

bb.y:                                             ; preds = %bb.w
  %.pr.i622 = load i8, ptr %i.eh, align 1, !alias.scope !2396
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
  %i.fr = load i8, ptr %.sroa.03.0.us.i630987, align 1, !alias.scope !2396, !noundef !4 ; 2 uses
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
  %i.fx = load i8, ptr %.sroa.03.188.us.i616, align 1, !alias.scope !2396, !noundef !4
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2397
  store ptr @151, ptr %i.t, align 8, !noalias !2398
  %.sroa.4710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 2, ptr %.sroa.4710.0..sroa_idx, align 8, !noalias !2398
  %.sroa.5711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.by, ptr %.sroa.5711.0..sroa_idx, align 8, !noalias !2398
  %.sroa.6712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 1, ptr %.sroa.6712.0..sroa_idx, align 8, !noalias !2398
  %.sroa.7713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %.sroa.7713.0..sroa_idx, align 8, !noalias !2398
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store ptr %i.bz, ptr %i.bx, align 8
  %.sroa.4407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4407.0..sroa_idx, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.cb, ptr %i.gk, align 8
  %.sroa.4411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4411.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2399
  store ptr @49, ptr %i.s, align 8, !noalias !2400
  %.sroa.4704.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 2, ptr %.sroa.4704.0..sroa_idx, align 8, !noalias !2400
  %.sroa.5705.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.bx, ptr %.sroa.5705.0..sroa_idx, align 8, !noalias !2400
  %.sroa.6706.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 2, ptr %.sroa.6706.0..sroa_idx, align 8, !noalias !2400
  %.sroa.7707.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %.sroa.7707.0..sroa_idx, align 8, !noalias !2400
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2401
  store ptr @31, ptr %i.r, align 8, !noalias !2402
  %.sroa.4716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 1, ptr %.sroa.4716.0..sroa_idx, align 8, !noalias !2402
  %.sroa.5717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.bu, ptr %.sroa.5717.0..sroa_idx, align 8, !noalias !2402
  %.sroa.6718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 1, ptr %.sroa.6718.0..sroa_idx, align 8, !noalias !2402
  %.sroa.7719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr null, ptr %.sroa.7719.0..sroa_idx, align 8, !noalias !2402
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2401
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
end_hunk_2
