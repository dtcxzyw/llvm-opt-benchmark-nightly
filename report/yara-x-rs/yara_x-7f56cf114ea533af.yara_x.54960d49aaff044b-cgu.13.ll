Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.13?download=true
inline.NumInlined: 4254
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13verify_regexpNCNvMs0_B2_NtB2_11ScanContext17handle_atom_match0EB6_:bb.a
  %.sroa.940.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.1041.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %.sroa.01.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.01.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.01.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.52.0..sroa_idx.i290.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.64.0..sroa_idx.i292.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.8.0..sroa_idx.i294.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %spec.select627.i = or disjoint i8 %spec.select.i, 1
  %.sroa.334.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.738.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.940.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.1041.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.01.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.01.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.promoted1799 = load i64, ptr %i.ad, align 8
  %.promoted1822 = load i64, ptr %i.aa, align 1
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i, %.lr.ph625.i
  %.us-phi3621824 = phi i64 [ %.promoted1822, %.lr.ph625.i ], [ %.us-phi3621823, %.loopexit.i ] ; 29 uses
  %.us-phi3611801 = phi i64 [ %.promoted1799, %.lr.ph625.i ], [ %.us-phi3611800, %.loopexit.i ] ; 30 uses
  %.promoted = phi i64 [ 0, %.lr.ph625.i ], [ %.promoted631, %.loopexit.i ] ; 9 uses
  %.val256624.i = phi i64 [ %.val256622.i, %.lr.ph625.i ], [ %.val256.i, %.loopexit.i ] ; 8 uses
  %.sroa.0.0623.i = phi i64 [ %i.ba, %.lr.ph625.i ], [ %i.ec, %.loopexit.i ] ; 12 uses
  %i.bw = load i64, ptr %i.bb, align 8, !alias.scope !3635, !noalias !3637, !noundef !10 ; 10 uses
  %i.bx = icmp ugt i64 %.sroa.0.0623.i, %i.bw
  br i1 %i.bx, label %bb.z, label %bb.j, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %i.bc, align 8, !alias.scope !3635, !noalias !3637, !nonnull !10, !noundef !10 ; 2 uses
  %i.bz = sub nuw i64 %i.bw, %.sroa.0.0623.i      ; 14 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sroa.0.0623.i ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3638)
  %.not.i222.i = icmp eq i64 %i.bw, %.sroa.0.0623.i
  br i1 %.not.i222.i, label %bb.k, label %bb.l, !prof !14

bb.k:                                             ; preds = %bb.j
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #39, !noalias !3639
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !3638, !noalias !3640, !noundef !10 ; 2 uses
  switch i8 %i.cb, label %bb.m [
    i8 1, label %bb.n
    i8 2, label %bb.p
    i8 7, label %bb.t
    i8 3, label %.lr.ph604.i
    i8 4, label %bb.v
    i8 5, label %.lr.ph596.i
    i8 6, label %bb.x
    i8 0, label %.lr.ph.preheader.i
  ], !prof !49

bb.m:                                             ; preds = %bb.l
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3641
  store i8 %i.cb, ptr %i.s, align 1, !noalias !3641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3641
  store ptr %i.s, ptr %i.r, align 8, !noalias !3641
  %.sroa.443.0..sroa_idx.i254.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.443.0..sroa_idx.i254.i, align 8, !noalias !3641
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @354, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @355) #39, !noalias !3639
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %.sroa.044.0.copyload.i250.i = load i16, ptr %i.cc, align 1, !alias.scope !3638, !noalias !3640
  %i.cd = zext i16 %.sroa.044.0.copyload.i250.i to i64 ; 6 uses
  %i.ce = add nuw nsw i64 %i.cd, 3                ; 3 uses
  %.not60.i251.i = icmp samesign ugt i64 %i.ce, %i.bz
  br i1 %.not60.i251.i, label %bb.o, label %.lr.ph620.i, !prof !14

bb.o:                                             ; preds = %bb.n
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef %i.ce, i64 noundef range(i64 0, -9223372036854775808) %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @348) #39, !noalias !3639
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %.sroa.045.0.copyload.i243.i = load i16, ptr %i.cf, align 1, !alias.scope !3638, !noalias !3640
  %i.cg = zext i16 %.sroa.045.0.copyload.i243.i to i64 ; 8 uses
  %i.ch = add nuw nsw i64 %i.cg, 3                ; 5 uses
  %.not58.i244.i = icmp samesign ugt i64 %i.ch, %i.bz
  br i1 %.not58.i244.i, label %bb.q, label %bb.r, !prof !14

bb.q:                                             ; preds = %bb.p
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef %i.ch, i64 noundef range(i64 0, -9223372036854775808) %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @350) #39, !noalias !3639
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 3 ; 3 uses
  %i.cj = add nuw nsw i64 %i.ch, %i.cg            ; 2 uses
  %.not59.i245.i = icmp samesign ugt i64 %i.cj, %i.bz
  br i1 %.not59.i245.i, label %bb.s, label %.lr.ph617.i, !prof !14

bb.s:                                             ; preds = %bb.r
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ch, i64 noundef %i.cj, i64 noundef range(i64 0, -9223372036854775808) %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @349) #39, !noalias !3639
  unreachable

bb.t:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %.sroa.046.0.copyload.i239.i = load i16, ptr %i.ck, align 1, !alias.scope !3638, !noalias !3640
  %i.cl = zext i16 %.sroa.046.0.copyload.i239.i to i64 ; 2 uses
  %i.cm = add nuw nsw i64 %i.cl, 3                ; 3 uses
  %.not57.i240.i = icmp samesign ugt i64 %i.cm, %i.bz
  br i1 %.not57.i240.i, label %bb.u, label %.split612.i, !prof !14

bb.u:                                             ; preds = %bb.t
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef %i.cm, i64 noundef range(i64 0, -9223372036854775808) %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @351) #39, !noalias !3639
  unreachable

bb.v:                                             ; preds = %bb.l
  %i.cn = icmp samesign ult i64 %i.bz, 3
  br i1 %i.cn, label %bb.w, label %bb.br, !prof !14

bb.w:                                             ; preds = %bb.v
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.bz, i64 noundef range(i64 0, -9223372036854775808) %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @352) #39, !noalias !3639
  unreachable

bb.x:                                             ; preds = %bb.l
  %i.co = icmp samesign ult i64 %i.bz, 3
  br i1 %i.co, label %bb.y, label %bb.br, !prof !14

bb.y:                                             ; preds = %bb.x
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.bz, i64 noundef range(i64 0, -9223372036854775808) %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #39, !noalias !3639
  unreachable

bb.z:                                             ; preds = %bb.i
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0623.i, i64 noundef %i.bw, i64 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39, !noalias !3642
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.l
  %i.cp = add i64 %.sroa.0.0623.i, 1              ; 2 uses
  %.val273.i = load ptr, ptr %i.bd, align 8, !alias.scope !3635, !noalias !3637, !nonnull !10, !noundef !10 ; 4 uses
  %.idx.i = shl nuw nsw i64 %.val256624.i, 3      ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val273.i, i64 %.idx.i
  br i1 %i.as, label %.lr.ph.i.us, label %.lr.ph.preheader.i.split

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %.backedge469.i.us
  %i.cr = phi i64 [ %i.cx, %.backedge469.i.us ], [ %.us-phi3611801, %.lr.ph.preheader.i ]
  %i.cs = phi i64 [ %i.cy, %.backedge469.i.us ], [ %.promoted, %.lr.ph.preheader.i ]
  %.sroa.093.0594.i.us = phi ptr [ %i.ct, %.backedge469.i.us ], [ %.val273.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.093.0594.i.us, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3643
  %i.cu = load i64, ptr %.sroa.093.0594.i.us, align 8, !noalias !3642, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !3644)
  store ptr %i.ar, ptr %i.x, align 8, !alias.scope !3645, !noalias !3643
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx317.i, align 8, !alias.scope !3645, !noalias !3643
  store i64 %i.cu, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3645, !noalias !3643
  store i64 1, ptr %.sroa.6.0..sroa_idx318.i, align 8, !alias.scope !3645, !noalias !3643
  store i64 1, ptr %i.bf, align 8, !alias.scope !3646, !noalias !3647
  store i8 1, ptr %i.bg, align 8, !alias.scope !3646, !noalias !3647
  %i.cv = call noundef zeroext i1 @_RINvXs6_NtNtNtCskKLDkoKarTP_4core4iter8adapters7step_byINtB6_6StepByINtNtB8_4skip4SkipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterhEEEEINtB6_10StepByImplB14_E13spec_try_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3J_6FastVM9try_matchNtB3N_10FwdCodeLocNCINvNtNtB3P_7scanner7context13verify_regexpNCNvMs0_B59_NtB59_11ScanContext17handle_atom_match0E0Es_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.x), !noalias !3642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3643
  br i1 %i.cv, label %.backedge469.i.us, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.us
  %i.cw = load i64, ptr %.sroa.093.0594.i.us, align 8, !noalias !3642, !noundef !10 ; 2 uses
  br i1 %.not.i285.i, label %.split.us.loopexit, label %.backedge469.i.us

.backedge469.i.us:                                ; preds = %bb.aa, %.lr.ph.i.us
  %i.cx = phi i64 [ %i.cr, %.lr.ph.i.us ], [ %i.cw, %bb.aa ] ; 2 uses
  %i.cy = phi i64 [ %i.cs, %.lr.ph.i.us ], [ 1, %bb.aa ] ; 3 uses
  %i.cz = icmp eq ptr %i.ct, %i.cq
  br i1 %i.cz, label %.loopexit.i, label %.lr.ph.i.us

.lr.ph.preheader.i.split:                         ; preds = %.lr.ph.preheader.i
  br i1 %.not.i285.i, label %.split, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i.split
  %scevgep = getelementptr i8, ptr %.val273.i, i64 -8
  %scevgep629 = getelementptr i8, ptr %scevgep, i64 %.idx.i
  %i.da = load i64, ptr %scevgep629, align 8, !noalias !3642, !noundef !10
  br label %.loopexit.i

.lr.ph620.i:                                      ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 3 ; 3 uses
  %.val271.i = load ptr, ptr %i.bd, align 8, !alias.scope !3635, !noalias !3637, !nonnull !10, !noundef !10 ; 2 uses
  %.idx635.i = shl nuw nsw i64 %.val256624.i, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %.val271.i, i64 %.idx635.i
  %i.dd = shl nuw nsw i64 %i.cd, 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cd
  %i.df = shl nuw nsw i64 %i.cd, %i.bi
  br label %bb.ab

.lr.ph617.i:                                      ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ch ; 3 uses
  %i.dh = shl nuw nsw i64 %i.cg, 1                ; 2 uses
  %.val269.i = load ptr, ptr %i.bd, align 8, !alias.scope !3635, !noalias !3637, !nonnull !10, !noundef !10 ; 2 uses
  %.idx634.i = shl nuw nsw i64 %.val256624.i, 3
  %i.di = getelementptr inbounds nuw i8, ptr %.val269.i, i64 %.idx634.i
  %i.dj = shl nuw nsw i64 %i.cg, %i.bi
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cg ; 2 uses
  br label %bb.aj

.split612.i:                                      ; preds = %bb.t
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  %i.dn = add i64 %i.cm, %.sroa.0.0623.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3643
  store ptr %i.dm, ptr %i.w, align 8, !noalias !3643
  store i64 %i.cl, ptr %i.bk, align 8, !noalias !3643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3643
  call void @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast5instrNtB5_11InstrParserNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w), !noalias !3642
  %i.do = load i16, ptr %i.v, align 8, !range !3648, !noalias !3643, !noundef !10 ; 2 uses
  %.not218613.i = icmp eq i16 %i.do, -1
  br i1 %.not218613.i, label %._crit_edge614.i, label %.split.i

.lr.ph604.i:                                      ; preds = %bb.l
  %.val267.i = load ptr, ptr %i.bd, align 8, !alias.scope !3635, !noalias !3637, !nonnull !10, !noundef !10 ; 2 uses
  %.idx632.i = shl nuw nsw i64 %.val256624.i, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %.val267.i, i64 %.idx632.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %.sroa.047.0.copyload.i237.i = load i16, ptr %i.dq, align 1, !alias.scope !3638, !noalias !3640
  %i.dr = zext i16 %.sroa.047.0.copyload.i237.i to i64
  %i.ds = shl nuw nsw i64 %i.dr, %i.bi
  br label %bb.bm

.lr.ph596.i:                                      ; preds = %bb.l
  %.val265.i = load ptr, ptr %i.bd, align 8, !alias.scope !3635, !noalias !3637, !nonnull !10, !noundef !10 ; 2 uses
  %.idx628.i = shl nuw nsw i64 %.val256624.i, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %.val265.i, i64 %.idx628.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %.sroa.050.0.copyload.i229.i = load i16, ptr %i.du, align 1, !alias.scope !3638, !noalias !3640
  %i.dv = zext i16 %.sroa.050.0.copyload.i229.i to i64
  %i.dw = shl nuw nsw i64 %i.dv, %i.bi            ; 2 uses
  br label %bb.bn

.split:                                           ; preds = %.lr.ph.preheader.i.split
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  %7 = load i64, ptr %.val273.i, align 8, !noalias !3642, !noundef !10
  br label %.split.us

.split.us.loopexit:                               ; preds = %bb.aa
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  br label %.split.us

.split.us:                                        ; preds = %.split.us.loopexit, %.split
  %.us-phi = phi i64 [ %7, %.split ], [ %i.cw, %.split.us.loopexit ]
  store i64 1, ptr %i.aa, align 8
  store i64 %.us-phi, ptr %i.ad, align 8
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE5clearB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.ap) #41, !noalias !3642
  br label %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit.thread

.loopexit.i.loopexit:                             ; preds = %.backedge457.i
  %i.dx = add i64 %i.ce, %.sroa.0.0623.i
  br label %.loopexit.i

.loopexit.i.loopexit390:                          ; preds = %.backedge459.i
  %i.dy = add i64 %.sroa.0.0623.i, 3
  %i.dz = add i64 %i.dy, %i.dh
  br label %.loopexit.i

.loopexit.i.loopexit391.a:                        ; preds = %bb.bm
  %i.ea = add i64 %.sroa.0.0623.i, 3
  br label %.loopexit.i

.loopexit.i.loopexit395:                          ; preds = %bb.bq
  %i.eb = add i64 %.sroa.0.0623.i, 3
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.backedge466.i, %.backedge464.i, %.backedge462.i, %.lr.ph.i.preheader, %.backedge469.i.us, %.loopexit.i.loopexit395, %.loopexit.i.loopexit391.a, %.loopexit.i.loopexit390, %.loopexit.i.loopexit, %._crit_edge614.i
  %.us-phi3621823 = phi i64 [ %.us-phi3621824, %.loopexit.i.loopexit395 ], [ %.us-phi3621824, %.loopexit.i.loopexit ], [ %.us-phi3621824, %.backedge462.i ], [ %i.cy, %.backedge469.i.us ], [ %.us-phi3621824, %.loopexit.i.loopexit390 ], [ %.us-phi3621824, %._crit_edge614.i ], [ %.us-phi3621824, %.backedge464.i ], [ %.us-phi3621824, %.loopexit.i.loopexit391.a ], [ 1, %.lr.ph.i.preheader ], [ %.us-phi3621824, %.backedge466.i ] ; 2 uses
  %.us-phi3611800 = phi i64 [ %.us-phi3611801, %.loopexit.i.loopexit395 ], [ %.us-phi3611801, %.loopexit.i.loopexit ], [ %.us-phi3611801, %.backedge462.i ], [ %i.cx, %.backedge469.i.us ], [ %.us-phi3611801, %.loopexit.i.loopexit390 ], [ %.us-phi3611801, %._crit_edge614.i ], [ %.us-phi3611801, %.backedge464.i ], [ %.us-phi3611801, %.loopexit.i.loopexit391.a ], [ %i.da, %.lr.ph.i.preheader ], [ %.us-phi3611801, %.backedge466.i ] ; 2 uses
  %.promoted631 = phi i64 [ %.promoted, %.loopexit.i.loopexit395 ], [ %.promoted, %.loopexit.i.loopexit ], [ %.promoted, %.backedge462.i ], [ %i.cy, %.backedge469.i.us ], [ %.promoted, %.loopexit.i.loopexit390 ], [ %.promoted, %._crit_edge614.i ], [ %.promoted, %.backedge464.i ], [ %.promoted, %.loopexit.i.loopexit391.a ], [ 1, %.lr.ph.i.preheader ], [ %.promoted, %.backedge466.i ] ; 2 uses
  %i.ec = phi i64 [ %i.eb, %.loopexit.i.loopexit395 ], [ %i.dx, %.loopexit.i.loopexit ], [ %i.ko, %.backedge462.i ], [ %i.cp, %.lr.ph.i.preheader ], [ %i.dz, %.loopexit.i.loopexit390 ], [ %i.dn, %._crit_edge614.i ], [ %i.ko, %.backedge464.i ], [ %i.ea, %.loopexit.i.loopexit391.a ], [ %i.cp, %.backedge469.i.us ], [ %i.ko, %.backedge466.i ]
  %i.ed = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !3649, !noalias !3637
  %i.ee = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !3650, !noalias !3637
  store <2 x i64> %i.ed, ptr %i.ap, align 8, !alias.scope !3650, !noalias !3637
  store <2 x i64> %i.ee, ptr %i.bj, align 8, !alias.scope !3649, !noalias !3637
  %i.ef = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !3651, !noalias !3637
  %i.eg = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !3652, !noalias !3637
  store <2 x i64> %i.ef, ptr %i.aw, align 8, !alias.scope !3652, !noalias !3637
  store <2 x i64> %i.eg, ptr %i.bl, align 8, !alias.scope !3651, !noalias !3637
  %i.eh = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !3653, !noalias !3637
  %i.ei = load <2 x i64>, ptr %i.bm, align 8, !alias.scope !3654, !noalias !3637
  store <2 x i64> %i.eh, ptr %i.bm, align 8, !alias.scope !3654, !noalias !3637
  store <2 x i64> %i.ei, ptr %i.bn, align 8, !alias.scope !3653, !noalias !3637
  %i.ej = load <2 x i64>, ptr %i.bp, align 8, !alias.scope !3655, !noalias !3637
  %i.ek = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !3656, !noalias !3637
  store <2 x i64> %i.ej, ptr %i.bo, align 8, !alias.scope !3656, !noalias !3637
  store <2 x i64> %i.ek, ptr %i.bp, align 8, !alias.scope !3655, !noalias !3637
  %i.el = load <2 x i64>, ptr %i.br, align 8, !alias.scope !3657, !noalias !3637
  %i.em = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !3658, !noalias !3637
  store <2 x i64> %i.el, ptr %i.bq, align 8, !alias.scope !3658, !noalias !3637
  store <2 x i64> %i.em, ptr %i.br, align 8, !alias.scope !3657, !noalias !3637
  %i.en = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !3659, !noalias !3637
  %i.eo = load <2 x i64>, ptr %i.bs, align 8, !alias.scope !3660, !noalias !3637
  store <2 x i64> %i.en, ptr %i.bs, align 8, !alias.scope !3660, !noalias !3637
  store <2 x i64> %i.eo, ptr %i.bt, align 8, !alias.scope !3659, !noalias !3637
  call void @llvm.experimental.noalias.scope.decl(metadata !3661)
  call void @llvm.experimental.noalias.scope.decl(metadata !3662)
  %.sroa.0.0.copyload.i.i.i.12.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !3663, !noalias !3664
  %.sroa.02.0.copyload.i.i.i.12.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !3665, !noalias !3666
  store i64 %.sroa.02.0.copyload.i.i.i.12.i.i.i, ptr %i.bu, align 8, !alias.scope !3663, !noalias !3664
  store i64 %.sroa.0.0.copyload.i.i.i.12.i.i.i, ptr %i.bv, align 8, !alias.scope !3665, !noalias !3666
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE5clearB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.bj) #41, !noalias !3642
  %.val256.i = load i64, ptr %i.aw, align 8, !alias.scope !3635, !noalias !3637, !noundef !10 ; 3 uses
  %i.ep = icmp ult i64 %.val256.i, 1152921504606846976
  call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp eq i64 %.val256.i, 0
  br i1 %i.eq, label %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit.loopexit, label %bb.i

bb.ab:                                            ; preds = %.backedge457.i, %.lr.ph620.i
  %.sroa.098.0618.i = phi ptr [ %.val271.i, %.lr.ph620.i ], [ %i.er, %.backedge457.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.098.0618.i, i64 8 ; 2 uses
  %i.es = load i64, ptr %.sroa.098.0618.i, align 8, !noalias !3642, !noundef !10 ; 4 uses
  %.not221.i = icmp ult i64 %i.es, %..i.i
  br i1 %.not221.i, label %bb.ac, label %.backedge457.i

bb.ac:                                            ; preds = %bb.ab
  %i.et = sub nuw nsw i64 %..i.i, %i.es           ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.es ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3667)
  call void @llvm.experimental.noalias.scope.decl(metadata !3668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3643
  br i1 %i.as, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = icmp samesign ult i64 %i.et, %i.cd
  br i1 %i.ev, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.ew = icmp samesign ult i64 %i.et, %i.dd
  br i1 %i.ew, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ex = lshr i64 %i.et, 1
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.eu, i64 %i.ex
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noundef nonnull readonly %i.eu, ptr noundef nonnull readonly %i.ey, ptr noundef nonnull readonly %i.db, ptr noundef nonnull readonly %i.de), !noalias !3642
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.q, align 8, !noalias !3669 ; 2 uses
  %.sroa.52.0.copyload.i.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !3669 ; 2 uses
  %.sroa.64.0.copyload.i.i = load i64, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !3669 ; 3 uses
  %.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !3669 ; 2 uses
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.sroa.64.0.copyload.i.i, i64 %.sroa.8.0.copyload.i.i)
  %exitcond.not.i.i1294.not = icmp ult i64 %.sroa.64.0.copyload.i.i, %.sroa.8.0.copyload.i.i
  br i1 %exitcond.not.i.i1294.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.preheader, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread432.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.preheader: ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload.i.i) ]
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

bb.ag:                                            ; preds = %bb.ah
  %i.ez = add i64 %.sroa.64.0.i.i1295, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ez, %umax.i.i
  br i1 %exitcond.not.i.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread432.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread432.i: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3643
  br label %bb.ai

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.preheader, %bb.ag
  %.sroa.64.0.i.i1295 = phi i64 [ %i.ez, %bb.ag ], [ %.sroa.64.0.copyload.i.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.preheader ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.copyload.i.i, i64 %.sroa.64.0.i.i1295 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload.i.i, i64 %.sroa.64.0.i.i1295
  %i.fc = load i8, ptr %i.fa, align 1, !noalias !3642, !noundef !10
  %i.fd = load i8, ptr %i.fb, align 1, !noalias !3642, !noundef !10
  %.not5.i.i = icmp eq i8 %i.fc, %i.fd
  br i1 %.not5.i.i, label %bb.ah, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread.i

bb.ah:                                            ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !noalias !3642, !noundef !10
  %i.fg = icmp eq i8 %i.ff, 0
  br i1 %i.fg, label %bb.ag, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread.i: ; preds = %bb.ah, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i, %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3643
  br label %.backedge457.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.i: ; preds = %bb.ad
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %i.eu, ptr nonnull readonly %i.db, i64 range(i64 0, -9223372036854775808) %i.cd), !alias.scope !3670, !noalias !3642
  %i.fh = icmp eq i32 %bcmp.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3643
  br i1 %i.fh, label %bb.ai, label %.backedge457.i

.backedge457.i:                                   ; preds = %bb.ai, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.i, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread.i, %bb.ab
  %i.fi = icmp eq ptr %i.er, %i.dc
  br i1 %i.fi, label %.loopexit.i.loopexit, label %bb.ab

bb.ai:                                            ; preds = %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.i, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread432.i
  %i.fj = add nuw nsw i64 %i.es, %i.df
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.bj, i64 noundef %i.fj) #41
  br label %.backedge457.i

bb.aj:                                            ; preds = %.backedge459.i, %.lr.ph617.i
  %.sroa.0102.0615.i = phi ptr [ %.val269.i, %.lr.ph617.i ], [ %i.fk, %.backedge459.i ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0102.0615.i, i64 8 ; 2 uses
  %i.fl = load i64, ptr %.sroa.0102.0615.i, align 8, !noalias !3642, !noundef !10 ; 4 uses
  %.not220.i = icmp ult i64 %i.fl, %..i.i
  br i1 %.not220.i, label %bb.ak, label %.backedge459.i

bb.ak:                                            ; preds = %bb.aj
  %i.fm = sub nuw nsw i64 %..i.i, %i.fl           ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.fl ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3671)
  br i1 %i.as, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fo = icmp samesign ult i64 %i.fm, %i.cg
  br i1 %i.fo, label %.backedge459.i, label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.fp = icmp samesign ult i64 %i.fm, %i.dh
  br i1 %i.fp, label %.backedge459.i, label %bb.ap

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3673
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.ci, ptr noundef nonnull readonly %i.dk, ptr noundef nonnull readonly %i.dg, ptr noundef nonnull readonly %i.dl), !noalias !3674
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noundef nonnull readonly %i.fn, ptr noundef nonnull readonly %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !3675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3673
  %.sroa.032.0.copyload.i = load ptr, ptr %i.b, align 8, !noalias !3672 ; 2 uses
  %.sroa.334.0.copyload.i = load ptr, ptr %.sroa.334.0..sroa_idx.i, align 8, !noalias !3672 ; 2 uses
  %.sroa.536.0.copyload.i = load ptr, ptr %.sroa.536.0..sroa_idx.i, align 8, !noalias !3672 ; 2 uses
  %.sroa.738.0.copyload.i = load i64, ptr %.sroa.738.0..sroa_idx.i, align 8, !noalias !3672
  %.sroa.940.0.copyload.i = load i64, ptr %.sroa.940.0..sroa_idx.i, align 8, !noalias !3672 ; 3 uses
  %.sroa.1041.0.copyload.i = load i64, ptr %.sroa.1041.0..sroa_idx.i, align 8, !noalias !3672 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3672
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.940.0.copyload.i, i64 %.sroa.1041.0.copyload.i)
  %exitcond.not.i1292.not = icmp ult i64 %.sroa.940.0.copyload.i, %.sroa.1041.0.copyload.i
  br i1 %exitcond.not.i1292.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_fwd.exit

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader: ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.032.0.copyload.i) ], !noalias !3642
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.334.0.copyload.i) ], !noalias !3642
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.536.0.copyload.i) ], !noalias !3642
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i

bb.ao:                                            ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i
  %i.fq = add i64 %.sroa.830.0.i1293, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fq, %umax.i
  br i1 %exitcond.not.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_fwd.exit, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader, %bb.ao
  %.sroa.830.0.i1293 = phi i64 [ %i.fq, %bb.ao ], [ %.sroa.940.0.copyload.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.032.0.copyload.i, i64 %.sroa.830.0.i1293
  %i.fs = add i64 %.sroa.830.0.i1293, %.sroa.738.0.copyload.i ; 2 uses
end_hunk_0
