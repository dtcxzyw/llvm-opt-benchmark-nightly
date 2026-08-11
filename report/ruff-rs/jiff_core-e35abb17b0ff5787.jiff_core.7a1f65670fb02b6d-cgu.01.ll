inline.NumInlined: 202
inline.NumDeleted: 114
begin_hunk_0_@_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone5parse:bb.a
  %i.r = alloca [232 x i8], align 8               ; 26 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [232 x i8], align 8               ; 25 uses
  %.sroa.589 = alloca [216 x i8], align 8         ; 5 uses
  %i.w = alloca [232 x i8], align 8               ; 17 uses
  %.sroa.16206 = alloca [216 x i8], align 8       ; 5 uses
  %.sroa.10 = alloca [216 x i8], align 8          ; 5 uses
  %i.x = alloca [232 x i8], align 8               ; 47 uses
  %i.y = icmp samesign ult i64 %2, 44
  br i1 %i.y, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i32, ptr %1, align 1, !alias.scope !206, !noalias !209, !noundef !4
  %.not.i = icmp eq i32 %i.aa, 1718180436
  br i1 %.not.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsau3t54nuvpx_9jiff_core.exit97.i, label %bb.f

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsau3t54nuvpx_9jiff_core.exit97.i: ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ai = add nsw i64 %2, -44                     ; 3 uses
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.ab, align 1, !alias.scope !211, !noalias !209 ; 3 uses
  %i.aj = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %.sroa.02.0.copyload.i.i133.i = load i32, ptr %i.ac, align 1, !alias.scope !216, !noalias !209 ; 3 uses
  %i.al = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i133.i)
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %.sroa.02.0.copyload.i.i134.i = load i32, ptr %i.ad, align 1, !alias.scope !221, !noalias !209
  %i.an = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i134.i)
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %.sroa.02.0.copyload.i.i135.i = load i32, ptr %i.ae, align 1, !alias.scope !226, !noalias !209 ; 2 uses
  %i.ap = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i135.i)
  %i.aq = zext i32 %i.ap to i64                   ; 6 uses
  %.sroa.02.0.copyload.i.i136.i = load i32, ptr %i.af, align 1, !alias.scope !231, !noalias !209 ; 4 uses
  %i.ar = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i136.i) ; 2 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %.sroa.02.0.copyload.i.i137.i = load i32, ptr %i.ag, align 1, !alias.scope !236, !noalias !209 ; 2 uses
  %i.at = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i137.i)
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = icmp ne i32 %.sroa.02.0.copyload.i.i.i, 0
  %i.aw = icmp ne i32 %.sroa.02.0.copyload.i.i.i, %.sroa.02.0.copyload.i.i136.i
  %or.cond.i = and i1 %i.av, %i.aw
  br i1 %or.cond.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsau3t54nuvpx_9jiff_core.exit97.i
  %i.ax = icmp ne i32 %.sroa.02.0.copyload.i.i133.i, 0
  %i.ay = icmp ne i32 %.sroa.02.0.copyload.i.i133.i, %.sroa.02.0.copyload.i.i136.i
  %or.cond1.i = and i1 %i.ax, %i.ay
  br i1 %or.cond1.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = icmp eq i32 %.sroa.02.0.copyload.i.i136.i, 0
  br i1 %i.az, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = icmp eq i32 %.sroa.02.0.copyload.i.i137.i, 0
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.b, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsau3t54nuvpx_9jiff_core.exit97.i, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.ph = phi i64 [ 2306, %bb.e ], [ 2562, %bb.d ], [ 1282, %bb.c ], [ 1538, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsau3t54nuvpx_9jiff_core.exit97.i ], [ 1026, %bb.b ], [ 2050, %bb.a ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph, ptr %i.bb, align 8
  store i64 2, ptr %0, align 8
  br label %bb.fs

bb.g:                                             ; preds = %bb.e
  %i.bc = load i8, ptr %i.z, align 1, !alias.scope !206, !noalias !209, !noundef !4 ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.h, label %bb.z

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !241
  store i64 0, ptr %i.v, align 8, !noalias !241
  %.sroa.021.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.021.sroa.4.0..sroa_idx.i, align 8, !noalias !241
  %.sroa.021.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !241
  %.sroa.021.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i8 -1, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !241
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store i32 0, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !241
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 108
  store i8 0, ptr %.sroa.623.0..sroa_idx.i, align 4, !noalias !241
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 3 uses
  store i64 0, ptr %i.be, align 8, !noalias !241
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 120 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !241
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 128 ; 4 uses
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !241
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !241
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.537.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !241
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx.i, align 8, !noalias !241
  %.sroa.638.sroa.5.0..sroa.638.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  %.sroa.739.sroa.4.0..sroa.739.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.638.sroa.5.0..sroa.638.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !241
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.739.sroa.4.0..sroa.739.0..sroa_idx.sroa_idx.i, align 8, !noalias !241
  %.sroa.739.sroa.5.0..sroa.739.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 216 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.739.sroa.5.0..sroa.739.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !241
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx.i, align 8, !noalias !241
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 224 ; 2 uses
  store i64 0, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i, align 8, !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !241
  invoke fastcc void @_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone17parse_transitions(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.u, ptr noalias noundef align 8 dereferenceable(232) %i.v, i64 4, i64 %i.aq, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.ai)
          to label %bb.j unwind label %.loopexit.split-lp.i, !noalias !246

.loopexit.i:                                      ; preds = %bb.s
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12chunks_exactCsau3t54nuvpx_9jiff_core.exit.i.i, %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_local_time_types.exit.i, %bb.o, %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser14ParsedTimeZoneEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.v) #18
          to label %common.resume unwind label %bb.y, !noalias !246

bb.j:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %i.u, align 8, !noalias !241, !noundef !4 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.049.0.copyload.i = load i64, ptr %i.bh, align 8, !noalias !241 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !241
  br i1 %i.bg, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val80.i = load ptr, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx.i, align 8, !noalias !241 ; 2 uses
  %.val81.i = load i64, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i, align 8, !noalias !241 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.bi = icmp ult i64 %.sroa.049.0.copyload.i, %i.aq
  br i1 %i.bi, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.aq ; 3 uses
  %i.bk = sub nuw nsw i64 %.sroa.049.0.copyload.i, %i.aq ; 2 uses
  %i.bl = icmp eq i32 %.sroa.02.0.copyload.i.i135.i, 0
  br i1 %i.bl, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.val81.i, i64 1)
  %i.bm = add i64 %umax.i.i, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.preheader.i.i
  %i.bn = phi i64 [ %i.bt, %bb.n ], [ 2, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.8.016.i.i = phi i64 [ %i.bn, %bb.n ], [ 1, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.03.015.i.i = phi ptr [ %i.bo, %bb.n ], [ %i.bf, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.015.i.i, i64 1 ; 2 uses
  %i.bp = load i8, ptr %.sroa.03.015.i.i, align 1, !alias.scope !247, !noalias !250, !noundef !4 ; 2 uses
  %i.bq = zext i8 %i.bp to i32
  %.not9.i.i = icmp ugt i32 %i.ar, %i.bq
  br i1 %.not9.i.i, label %bb.m, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit.thread

bb.m:                                             ; preds = %.lr.ph.i.i
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.bm
  br i1 %exitcond.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val80.i) ]
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.val80.i, i64 %.sroa.8.016.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.bp, ptr %i.bs, align 1, !noalias !252
  %i.bt = add nuw i64 %i.bn, 1
  %i.bu = icmp eq ptr %i.bo, %i.bj
  br i1 %i.bu, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.i, label %.lr.ph.i.i

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i, i64 noundef %.val81.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !246

.noexc.i:                                         ; preds = %bb.o
  unreachable

_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.i: ; preds = %bb.n, %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.bv = mul nuw nsw i64 %i.as, 6                ; 4 uses
  %i.bw = icmp ugt i64 %i.bv, %i.bk
  br i1 %i.bw, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit.thread, label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bv
  %i.by = sub nuw nsw i64 %i.bk, %i.bv
  br label %.lr.ph.i92.i

.lr.ph.i92.i:                                     ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8push_mutBK_.exit.i.i, %bb.p
  %.sroa.63.013.i.i = phi i64 [ %i.bv, %bb.p ], [ %i.ca, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8push_mutBK_.exit.i.i ]
  %.sroa.02.012.i.i = phi ptr [ %i.bj, %bb.p ], [ %i.bz, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8push_mutBK_.exit.i.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.02.012.i.i, i64 6
  %i.ca = add i64 %.sroa.63.013.i.i, -6           ; 2 uses
  %.sroa.02.0.copyload.i.i.i101 = load i32, ptr %.sroa.02.012.i.i, align 1, !alias.scope !258, !noalias !261
  %i.cb = call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i.i101) ; 3 uses
  %i.cc = add i32 %i.cb, 93599
  %or.cond.i.i = icmp ult i32 %i.cc, 187199
  br i1 %or.cond.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i92.i
  %.sroa.447.0.insert.ext.i.i = zext i32 %i.cb to i64
  %.sroa.447.0.insert.shift.i.i = shl nuw i64 %.sroa.447.0.insert.ext.i.i, 32
  %.sroa.045.0.insert.insert.i.i = or disjoint i64 %.sroa.447.0.insert.shift.i.i, 6
  br label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit.thread

bb.r:                                             ; preds = %.lr.ph.i92.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.02.012.i.i, i64 4
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !256, !noalias !261, !noundef !4
  %i.cf = icmp eq i8 %i.ce, 1
  %..i.i = select i1 %i.cf, i64 281474976710656, i64 0
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.02.012.i.i, i64 5
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !256, !noalias !261, !noundef !4
  %.sroa.449.0.insert.ext.i.i = zext i8 %i.ch to i64
  %.sroa.449.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.449.0.insert.ext.i.i, 32
  %.sroa.449.0.insert.insert.i.i = or disjoint i64 %.sroa.449.0.insert.shift.i.i, %..i.i
  %.sroa.048.0.insert.ext.i.i = zext i32 %i.cb to i64
  %.sroa.048.0.insert.insert.i.i = or disjoint i64 %.sroa.449.0.insert.insert.i.i, %.sroa.048.0.insert.ext.i.i
  %i.ci = load i64, ptr %.sroa.531.0..sroa_idx.i, align 8, !alias.scope !263, !noalias !266, !noundef !4 ; 3 uses
  %i.cj = load i64, ptr %i.be, align 8, !range !95, !alias.scope !263, !noalias !266, !noundef !4
  %i.ck = icmp eq i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.s, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8push_mutBK_.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8push_mutBK_.exit.i.i unwind label %.loopexit.i, !noalias !246

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8push_mutBK_.exit.i.i: ; preds = %bb.s, %bb.r
  %i.cl = load ptr, ptr %.sroa.430.0..sroa_idx.i, align 8, !alias.scope !263, !noalias !266, !nonnull !4, !noundef !4
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ci
  store i64 %.sroa.048.0.insert.insert.i.i, ptr %i.cm, align 4, !noalias !267
  %i.cn = add i64 %i.ci, 1
  store i64 %i.cn, ptr %.sroa.531.0..sroa_idx.i, align 8, !alias.scope !263, !noalias !266
  %.not.i.i = icmp ult i64 %i.ca, 6
  br i1 %.not.i.i, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_local_time_types.exit.i, label %.lr.ph.i92.i

_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_local_time_types.exit.i: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8push_mutBK_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !241
  invoke fastcc void @_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone28parse_time_zone_designations(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.t, ptr noalias noundef align 8 dereferenceable(232) %i.v, i64 %i.au, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef %i.by)
          to label %bb.t unwind label %.loopexit.split-lp.i, !noalias !246

bb.t:                                             ; preds = %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_local_time_types.exit.i
  %i.co = load ptr, ptr %i.t, align 8, !noalias !241, !noundef !4 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.cp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cr = load i8, ptr %i.cq, align 8, !range !268, !noalias !241, !noundef !4
  %.sroa.611.8.insert.ext.i = zext nneg i8 %i.cr to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !241
  %.sroa.465.0.insert.shift.i = shl nuw nsw i64 %.sroa.611.8.insert.ext.i, 8
  %.sroa.064.0.insert.insert.i = or disjoint i64 %.sroa.465.0.insert.shift.i, 8
  br label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.cs = load i64, ptr %i.cq, align 8, !noalias !241, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !241
  %i.ct = shl nuw nsw i64 %i.ao, 3                ; 3 uses
  %i.cu = icmp ugt i64 %i.ct, %i.cs
  br i1 %i.cu, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit.thread, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12chunks_exactCsau3t54nuvpx_9jiff_core.exit.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12chunks_exactCsau3t54nuvpx_9jiff_core.exit.i.i: ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ct
  %i.cw = sub nuw nsw i64 %i.cs, %i.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !241
  %.val88.i = load ptr, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !241
  %.val89.i = load i64, ptr %.sroa.531.0..sroa_idx.i, align 8, !noalias !241
  invoke fastcc void @_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone16parse_indicators(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.s, ptr %.val88.i, i64 %.val89.i, i64 %i.ak, i64 %i.am, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cw)
          to label %bb.w unwind label %.loopexit.split-lp.i, !noalias !246

bb.w:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12chunks_exactCsau3t54nuvpx_9jiff_core.exit.i.i
  %i.cx = load ptr, ptr %i.s, align 8, !noalias !241, !noundef !4
  %i.cy = icmp eq ptr %i.cx, null
  %i.cz = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  br i1 %i.cy, label %bb.x, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit

bb.x:                                             ; preds = %bb.w
  %i.da = load i8, ptr %i.cz, align 8, !range !268, !noalias !241, !noundef !4
  %.sroa.618.8.insert.ext.i = zext nneg i8 %i.da to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !241
  %.sroa.474.0.insert.shift.i = shl nuw nsw i64 %.sroa.618.8.insert.ext.i, 8
  %.sroa.073.0.insert.insert.i = or disjoint i64 %.sroa.474.0.insert.shift.i, 5
  br label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit.thread

_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit.thread: ; preds = %.lr.ph.i.i, %bb.j, %bb.k, %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.i, %bb.q, %bb.u, %bb.v, %bb.x
  %.sroa.073.0.insert.insert.sink.i = phi i64 [ %.sroa.073.0.insert.insert.i, %bb.x ], [ 263, %bb.v ], [ %.sroa.064.0.insert.insert.i, %bb.u ], [ 519, %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.i ], [ %.sroa.049.0.copyload.i, %bb.j ], [ 1545, %bb.k ], [ %.sroa.045.0.insert.insert.i.i, %bb.q ], [ 65289, %.lr.ph.i.i ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser14ParsedTimeZoneEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.v), !noalias !246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !241
  br label %bb.bb

bb.y:                                             ; preds = %bb.i
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !246
  unreachable

common.resume:                                    ; preds = %.critedge, %bb.fo, %bb.fq, %bb.ah, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i106, %bb.ah ], [ %lpad.phi.i, %bb.i ], [ %.pn.pn.pn.pn.pn6572.i, %bb.fo ], [ %.pn.pn.pn.pn.pn6572.i, %bb.fq ], [ %eh.lpad-body.ph, %.critedge ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit: ; preds = %bb.w
  %i.dc = load i64, ptr %i.cz, align 8, !noalias !241, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !241
  %.sroa.0203.0.copyload = load i64, ptr %i.v, align 8, !noalias !269 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.021.sroa.4.0..sroa_idx.i, align 8, !noalias !269 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.021.sroa.5.0..sroa_idx.i, i64 216, i1 false), !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !241
  %i.dd = icmp eq i64 %.sroa.0203.0.copyload, -1
  br i1 %i.dd, label %bb.bb, label %bb.bc

bb.z:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.de = shl nuw nsw i64 %i.aq, 2
  %i.df = mul nuw nsw i64 %i.aq, 5                ; 2 uses
  %i.dg = icmp samesign ult i64 %i.df, %i.de
  br i1 %i.dg, label %bb.aa, label %_RNvMs1_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB5_6Header14data_block_len.exit.i, !prof !139

_RNvMs1_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB5_6Header14data_block_len.exit.i: ; preds = %bb.z
  %i.dh = shl nuw nsw i64 %i.ao, 3
  %i.di = mul nuw nsw i64 %i.as, 6
  %i.dj = add nuw nsw i64 %i.am, %i.ak
  %i.dk = add nuw nsw i64 %i.dj, %i.dh
  %i.dl = add nuw nsw i64 %i.dk, %i.df
  %i.dm = add nuw nsw i64 %i.dl, %i.di
  %i.dn = add nuw nsw i64 %i.dm, %i.au            ; 3 uses
  %i.do = icmp samesign ugt i64 %i.dn, %i.ai
  br i1 %i.do, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit.thread, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dp = zext i8 %i.bc to i64
  %i.dq = shl nuw nsw i64 %i.dp, 16
  %i.dr = or disjoint i64 %i.dq, 1
  br label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit.thread

bb.ab:                                            ; preds = %_RNvMs1_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB5_6Header14data_block_len.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dn ; 9 uses
  %i.dt = sub nuw nsw i64 %i.ai, %i.dn            ; 2 uses
  %i.du = icmp samesign ult i64 %i.dt, 44
  br i1 %i.du, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.dw = load i32, ptr %i.ds, align 1, !alias.scope !273, !noalias !276, !noundef !4
  %.not.i.i102 = icmp eq i32 %i.dw, 1718180436
  br i1 %.not.i.i102, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsau3t54nuvpx_9jiff_core.exit97.i.i, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit.thread

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsau3t54nuvpx_9jiff_core.exit97.i.i: ; preds = %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 36
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ds, i64 44
  %i.ee = add nsw i64 %i.dt, -44
  %.sroa.02.0.copyload.i.i.i.i = load i32, ptr %i.dx, align 1, !alias.scope !280, !noalias !276 ; 3 uses
  %i.ef = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i.i.i)
  %i.eg = zext i32 %i.ef to i64
  %.sroa.02.0.copyload.i.i133.i.i = load i32, ptr %i.dy, align 1, !alias.scope !285, !noalias !276 ; 3 uses
  %i.eh = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i133.i.i)
  %i.ei = zext i32 %i.eh to i64
  %.sroa.02.0.copyload.i.i134.i.i = load i32, ptr %i.dz, align 1, !alias.scope !290, !noalias !276
  %i.ej = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i134.i.i)
  %i.ek = zext i32 %i.ej to i64
  %.sroa.02.0.copyload.i.i135.i.i = load i32, ptr %i.ea, align 1, !alias.scope !295, !noalias !276 ; 2 uses
  %i.el = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i135.i.i)
  %i.em = zext i32 %i.el to i64                   ; 4 uses
  %.sroa.02.0.copyload.i.i136.i.i = load i32, ptr %i.eb, align 1, !alias.scope !300, !noalias !276 ; 4 uses
  %i.en = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i136.i.i) ; 2 uses
  %i.eo = zext i32 %i.en to i64
  %.sroa.02.0.copyload.i.i137.i.i = load i32, ptr %i.ec, align 1, !alias.scope !305, !noalias !276 ; 2 uses
  %i.ep = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i137.i.i)
  %i.eq = zext i32 %i.ep to i64
  %i.er = icmp ne i32 %.sroa.02.0.copyload.i.i.i.i, 0
  %i.es = icmp ne i32 %.sroa.02.0.copyload.i.i.i.i, %.sroa.02.0.copyload.i.i136.i.i
  %or.cond.i.i103 = and i1 %i.er, %i.es
  br i1 %or.cond.i.i103, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsau3t54nuvpx_9jiff_core.exit97.i.i
  %i.et = icmp ne i32 %.sroa.02.0.copyload.i.i133.i.i, 0
  %i.eu = icmp ne i32 %.sroa.02.0.copyload.i.i133.i.i, %.sroa.02.0.copyload.i.i136.i.i
  %or.cond1.i.i = and i1 %i.et, %i.eu
  br i1 %or.cond1.i.i, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ev = icmp eq i32 %.sroa.02.0.copyload.i.i136.i.i, 0
  br i1 %i.ev, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ew = icmp eq i32 %.sroa.02.0.copyload.i.i137.i.i, 0
  br i1 %i.ew, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ex = load i8, ptr %i.dv, align 1, !alias.scope !273, !noalias !276, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !310
  store i64 0, ptr %i.r, align 8, !alias.scope !311, !noalias !310
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !311, !noalias !310
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !311, !noalias !310
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i8 -1, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !311, !noalias !310
  %.sroa.5.0..sroa_idx.i140.i = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  store i32 0, ptr %.sroa.5.0..sroa_idx.i140.i, align 8, !alias.scope !311, !noalias !310
  %.sroa.6.0..sroa_idx.i141.i = getelementptr inbounds nuw i8, ptr %i.r, i64 108
  store i8 %i.ex, ptr %.sroa.6.0..sroa_idx.i141.i, align 4, !alias.scope !311, !noalias !310
  %i.ey = getelementptr inbounds nuw i8, ptr %i.r, i64 112 ; 3 uses
  store i64 0, ptr %i.ey, align 8, !alias.scope !311, !noalias !310
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 120 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !311, !noalias !310
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 128 ; 4 uses
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !311, !noalias !310
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i.i, align 8, !alias.scope !311, !noalias !310
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  %.sroa.613.sroa.4.0..sroa.613.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !311, !noalias !310
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.613.sroa.4.0..sroa.613.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !311, !noalias !310
  %.sroa.613.sroa.5.0..sroa.613.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %.sroa.714.sroa.4.0..sroa.714.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.sroa.5.0..sroa.613.0..sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !311, !noalias !310
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.714.sroa.4.0..sroa.714.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !311, !noalias !310
  %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 216 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !311, !noalias !310
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !311, !noalias !310
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 224 ; 2 uses
  store i64 0, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !311, !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !310
  invoke fastcc void @_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone17parse_transitions(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.q, ptr noalias noundef align 8 dereferenceable(232) %i.r, i64 8, i64 %i.em, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ed, i64 noundef %i.ee)
          to label %bb.ai unwind label %.loopexit.split-lp.i104, !noalias !314

.loopexit.i132:                                   ; preds = %bb.ar
  %lpad.loopexit.i133 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp.i104:                          ; preds = %bb.av, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12chunks_exactCsau3t54nuvpx_9jiff_core.exit.i.i130, %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_local_time_types.exit.i129, %bb.an, %bb.ag
  %lpad.loopexit.split-lp.i105 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp.i104, %.loopexit.i132
  %lpad.phi.i106 = phi { ptr, i32 } [ %lpad.loopexit.i133, %.loopexit.i132 ], [ %lpad.loopexit.split-lp.i105, %.loopexit.split-lp.i104 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser14ParsedTimeZoneEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.r) #18
          to label %common.resume unwind label %bb.ba, !noalias !314

bb.ai:                                            ; preds = %bb.ag
  %i.ez = load ptr, ptr %i.q, align 8, !noalias !310, !noundef !4 ; 3 uses
  %i.fa = icmp eq ptr %i.ez, null
  %i.fb = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.085.0.copyload.i = load i64, ptr %i.fb, align 8, !noalias !310 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !310
  br i1 %i.fa, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.thread.i113, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val124.i = load ptr, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !310 ; 2 uses
  %.val125.i = load i64, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !310 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.fc = icmp ult i64 %.sroa.085.0.copyload.i, %i.em
  br i1 %i.fc, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.thread.i113, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.em ; 3 uses
  %i.fe = sub nuw nsw i64 %.sroa.085.0.copyload.i, %i.em ; 2 uses
  %i.ff = icmp eq i32 %.sroa.02.0.copyload.i.i135.i.i, 0
  br i1 %i.ff, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.i115, label %.lr.ph.preheader.i.i107

.lr.ph.preheader.i.i107:                          ; preds = %bb.ak
  %umax.i.i108 = call i64 @llvm.umax.i64(i64 %.val125.i, i64 1)
  %i.fg = add i64 %umax.i.i108, 1
  br label %.lr.ph.i.i109

.lr.ph.i.i109:                                    ; preds = %bb.am, %.lr.ph.preheader.i.i107
  %i.fh = phi i64 [ %i.fn, %bb.am ], [ 2, %.lr.ph.preheader.i.i107 ] ; 3 uses
  %.sroa.8.016.i.i110 = phi i64 [ %i.fh, %bb.am ], [ 1, %.lr.ph.preheader.i.i107 ] ; 2 uses
  %.sroa.03.015.i.i111 = phi ptr [ %i.fi, %bb.am ], [ %i.ez, %.lr.ph.preheader.i.i107 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.03.015.i.i111, i64 1 ; 2 uses
  %i.fj = load i8, ptr %.sroa.03.015.i.i111, align 1, !alias.scope !315, !noalias !318, !noundef !4 ; 2 uses
  %i.fk = zext i8 %i.fj to i32
  %.not9.i.i112 = icmp ugt i32 %i.en, %i.fk
  br i1 %.not9.i.i112, label %bb.al, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.thread.i113

bb.al:                                            ; preds = %.lr.ph.i.i109
  %exitcond.not.i.i114 = icmp eq i64 %i.fh, %i.fg
  br i1 %exitcond.not.i.i114, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val124.i) ]
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %.val124.i, i64 %.sroa.8.016.i.i110
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store i8 %i.fj, ptr %i.fm, align 1, !noalias !320
  %i.fn = add nuw i64 %i.fh, 1
  %i.fo = icmp eq ptr %i.fi, %i.fd
  br i1 %i.fo, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.i115, label %.lr.ph.i.i109

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i110, i64 noundef %.val125.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19
          to label %.noexc.i134 unwind label %.loopexit.split-lp.i104, !noalias !314

.noexc.i134:                                      ; preds = %bb.an
  unreachable

_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.i115: ; preds = %bb.am, %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.fp = mul nuw nsw i64 %i.eo, 6                ; 4 uses
  %i.fq = icmp ugt i64 %i.fp, %i.fe
  br i1 %i.fq, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.thread.i113, label %bb.ao

bb.ao:                                            ; preds = %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.i115
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fp
  %i.fs = sub nuw nsw i64 %i.fe, %i.fp
  br label %.lr.ph.i145.i

.lr.ph.i145.i:                                    ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8push_mutBK_.exit.i.i128, %bb.ao
  %.sroa.63.013.i.i116 = phi i64 [ %i.fp, %bb.ao ], [ %i.fu, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8push_mutBK_.exit.i.i128 ]
  %.sroa.02.012.i.i117 = phi ptr [ %i.fd, %bb.ao ], [ %i.ft, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8push_mutBK_.exit.i.i128 ] ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.02.012.i.i117, i64 6
  %i.fu = add i64 %.sroa.63.013.i.i116, -6        ; 2 uses
  %.sroa.02.0.copyload.i.i.i118 = load i32, ptr %.sroa.02.012.i.i117, align 1, !alias.scope !326, !noalias !329
  %i.fv = call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i.i118) ; 3 uses
  %i.fw = add i32 %i.fv, 93599
  %or.cond.i146.i = icmp ult i32 %i.fw, 187199
  br i1 %or.cond.i146.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i145.i
  %.sroa.447.0.insert.ext.i.i119 = zext i32 %i.fv to i64
  %.sroa.447.0.insert.shift.i.i120 = shl nuw i64 %.sroa.447.0.insert.ext.i.i119, 32
  %.sroa.045.0.insert.insert.i.i121 = or disjoint i64 %.sroa.447.0.insert.shift.i.i120, 6
  br label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.thread.i113

bb.aq:                                            ; preds = %.lr.ph.i145.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.02.012.i.i117, i64 4
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !324, !noalias !329, !noundef !4
  %i.fz = icmp eq i8 %i.fy, 1
  %..i.i122 = select i1 %i.fz, i64 281474976710656, i64 0
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.02.012.i.i117, i64 5
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !324, !noalias !329, !noundef !4
  %.sroa.449.0.insert.ext.i.i123 = zext i8 %i.gb to i64
  %.sroa.449.0.insert.shift.i.i124 = shl nuw nsw i64 %.sroa.449.0.insert.ext.i.i123, 32
  %.sroa.449.0.insert.insert.i.i125 = or disjoint i64 %.sroa.449.0.insert.shift.i.i124, %..i.i122
  %.sroa.048.0.insert.ext.i.i126 = zext i32 %i.fv to i64
  %.sroa.048.0.insert.insert.i.i127 = or disjoint i64 %.sroa.449.0.insert.insert.i.i125, %.sroa.048.0.insert.ext.i.i126
  %i.gc = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !331, !noalias !334, !noundef !4 ; 3 uses
  %i.gd = load i64, ptr %i.ey, align 8, !range !95, !alias.scope !331, !noalias !334, !noundef !4
  %i.ge = icmp eq i64 %i.gc, %i.gd
  br i1 %i.ge, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8push_mutBK_.exit.i.i128

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ey)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8push_mutBK_.exit.i.i128 unwind label %.loopexit.i132, !noalias !314

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8push_mutBK_.exit.i.i128: ; preds = %bb.ar, %bb.aq
  %i.gf = load ptr, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !331, !noalias !334, !nonnull !4, !noundef !4
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gc
  store i64 %.sroa.048.0.insert.insert.i.i127, ptr %i.gg, align 4, !noalias !335
  %i.gh = add i64 %i.gc, 1
  store i64 %i.gh, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !331, !noalias !334
  %.not.i147.i = icmp ult i64 %i.fu, 6
  br i1 %.not.i147.i, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_local_time_types.exit.i129, label %.lr.ph.i145.i

_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_local_time_types.exit.i129: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif13LocalTimeTypeE8push_mutBK_.exit.i.i128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !310
  invoke fastcc void @_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone28parse_time_zone_designations(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.p, ptr noalias noundef align 8 dereferenceable(232) %i.r, i64 %i.eq, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fr, i64 noundef %i.fs)
          to label %bb.as unwind label %.loopexit.split-lp.i104, !noalias !314

bb.as:                                            ; preds = %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_local_time_types.exit.i129
  %i.gi = load ptr, ptr %i.p, align 8, !noalias !310, !noundef !4 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  %i.gk = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.gj, label %bb.az, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gl = load i64, ptr %i.gk, align 8, !noalias !310, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !310
  %i.gm = mul nuw nsw i64 %i.ek, 12               ; 3 uses
  %i.gn = icmp ugt i64 %i.gm, %i.gl
  br i1 %i.gn, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.thread.i113, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12chunks_exactCsau3t54nuvpx_9jiff_core.exit.i.i130

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12chunks_exactCsau3t54nuvpx_9jiff_core.exit.i.i130: ; preds = %bb.at
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gm
  %i.gp = sub nuw nsw i64 %i.gl, %i.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !310
  %.val132.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !310
  %.val133.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !310
  invoke fastcc void @_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone16parse_indicators(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.o, ptr %.val132.i, i64 %.val133.i, i64 %i.eg, i64 %i.ei, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.go, i64 noundef %i.gp)
          to label %bb.au unwind label %.loopexit.split-lp.i104, !noalias !314

bb.au:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12chunks_exactCsau3t54nuvpx_9jiff_core.exit.i.i130
  %i.gq = load ptr, ptr %i.o, align 8, !noalias !310, !noundef !4 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  %i.gs = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %i.gr, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gt = load i64, ptr %i.gs, align 8, !noalias !310, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !310
  invoke fastcc void @_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone12parse_footer(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.n, ptr noalias noundef align 8 dereferenceable(232) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gq, i64 noundef %i.gt)
          to label %bb.aw unwind label %.loopexit.split-lp.i104, !noalias !314

bb.aw:                                            ; preds = %bb.av
  %i.gu = load ptr, ptr %i.n, align 8, !noalias !310, !noundef !4
  %i.gv = icmp eq ptr %i.gu, null
  %i.gw = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br i1 %i.gv, label %bb.ax, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit

bb.ax:                                            ; preds = %bb.aw
  %.sroa.0103.0.copyload.i = load i32, ptr %i.gw, align 8, !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !310
  %.sroa.4.0.insert.ext.i162.i = zext i32 %.sroa.0103.0.copyload.i to i64
  %.sroa.4.0.insert.shift.i163.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i162.i, 8
  br label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.thread.i113

_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.thread.i113: ; preds = %.lr.ph.i.i109, %bb.az, %bb.ay, %bb.ax, %bb.at, %bb.ap, %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.i115, %bb.aj, %bb.ai
  %.sroa.7.0231.sink.i = phi i64 [ 263, %bb.at ], [ %.sroa.01.0.insert.insert.i153.i, %bb.az ], [ %.sroa.01.0.insert.insert.i161.i, %bb.ay ], [ %.sroa.4.0.insert.shift.i163.i, %bb.ax ], [ 519, %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.i115 ], [ %.sroa.085.0.copyload.i, %bb.ai ], [ 1545, %bb.aj ], [ %.sroa.045.0.insert.insert.i.i121, %bb.ap ], [ 65289, %.lr.ph.i.i109 ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser14ParsedTimeZoneEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.r), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !310
  br label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit.thread

bb.ay:                                            ; preds = %bb.au
  %i.gx = load i8, ptr %i.gs, align 8, !range !268, !noalias !310, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !310
  %.sroa.4.0.insert.ext.i159.i = zext nneg i8 %i.gx to i64
  %.sroa.4.0.insert.shift.i160.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i159.i, 8
  %.sroa.01.0.insert.insert.i161.i = or disjoint i64 %.sroa.4.0.insert.shift.i160.i, 5
  br label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.thread.i113

bb.az:                                            ; preds = %bb.as
  %i.gy = load i8, ptr %i.gk, align 8, !range !268, !noalias !310, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !310
  %.sroa.4.0.insert.ext.i151.i = zext nneg i8 %i.gy to i64
  %.sroa.4.0.insert.shift.i152.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i151.i, 8
  %.sroa.01.0.insert.insert.i153.i = or disjoint i64 %.sroa.4.0.insert.shift.i152.i, 8
  br label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.thread.i113

bb.ba:                                            ; preds = %bb.ah
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !314
  unreachable

_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit: ; preds = %bb.aw
  %i.ha = load i64, ptr %i.gw, align 8, !noalias !310, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !310
  %.sroa.0204.0.copyload = load i64, ptr %i.r, align 8, !noalias !336 ; 2 uses
  %.sroa.10205.0.copyload = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !336 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.16206, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.0.sroa.5.0..sroa_idx.i.i, i64 216, i1 false), !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !310
  %i.hb = icmp eq i64 %.sroa.0204.0.copyload, -1
  br i1 %i.hb, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit.thread, label %bb.dg

bb.bb:                                            ; preds = %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit.thread, %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit
  %.sroa.7.0235 = phi i64 [ %.sroa.073.0.insert.insert.sink.i, %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit.thread ], [ %.sroa.7.0.copyload, %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0235, ptr %i.hc, align 8
  store i64 2, ptr %0, align 8
  br label %bb.fs

bb.bc:                                            ; preds = %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse32.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.589, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.10, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.dg, %bb.bc
  %.sroa.088.0 = phi i64 [ %.sroa.0203.0.copyload, %bb.bc ], [ %.sroa.0204.0.copyload, %bb.dg ]
  %.sroa.3.0 = phi i64 [ %.sroa.7.0.copyload, %bb.bc ], [ %.sroa.10205.0.copyload, %bb.dg ]
  %.sroa.391.0 = phi i64 [ %i.dc, %bb.bc ], [ %i.ha, %bb.dg ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %.sroa.088.0, ptr %i.x, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store i64 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.589.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.589, i64 216, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  %i.he = load i8, ptr %i.hd, align 8, !range !3, !alias.scope !337, !noundef !4 ; 6 uses
  %.not.i135 = icmp eq i8 %i.he, -1
  br i1 %.not.i135, label %_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.624.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  switch i8 %i.he, label %default.unreachable [
    i8 0, label %bb.bf
    i8 1, label %bb.bg
    i8 2, label %bb.bh
  ]

default.unreachable:                              ; preds = %bb.ce, %bb.co, %bb.eg, %bb.eb, %bb.bj, %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.be
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.589, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.hf, i64 7, i1 false)
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.68.0.copyload.i.i = load ptr, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !alias.scope !340, !noalias !343
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !340, !noalias !343
  br label %bb.bi

bb.bg:                                            ; preds = %bb.be
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.589, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.hg, i64 7, i1 false)
  %.sroa.68.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.68.0.copyload10.i.i = load ptr, ptr %.sroa.68.0..sroa_idx9.i.i, align 8, !alias.scope !340, !noalias !343
  %.sroa.7.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.7.0.copyload14.i.i = load i64, ptr %.sroa.7.0..sroa_idx13.i.i, align 8, !alias.scope !340, !noalias !343
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %i.hh = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.hi = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hh)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.bh
  %i.hj = extractvalue { ptr, i64 } %i.hi, 0
  %i.hk = extractvalue { ptr, i64 } %i.hi, 1
end_hunk_0
