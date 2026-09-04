Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.13?download=true
inline.NumInlined: 4254
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMs6_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_2IR24find_hoisting_candidates:bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  store ptr %1, ptr %i.cw, align 8, !alias.scope !4989, !noalias !4990
  store i64 1, ptr %i.c, align 8, !alias.scope !4989, !noalias !4990
  %.sroa.4.0..sroa_idx1.i.i69 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.cu, ptr %.sroa.4.0..sroa_idx1.i.i69, align 8, !alias.scope !4989, !noalias !4990
  %.sroa.5.0..sroa_idx2.i.i70 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx2.i.i70, align 8, !alias.scope !4989, !noalias !4990
  %.sroa.6.0..sroa_idx.i.i71 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx.i.i71, align 8, !alias.scope !4989, !noalias !4990
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %i.cx, align 8, !alias.scope !4989, !noalias !4990
  %.sroa.4.0..sroa_idx.i.i72 = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i.i72, align 8, !alias.scope !4989, !noalias !4990
  %.sroa.5.0..sroa_idx.i.i73 = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i73, align 8, !alias.scope !4989, !noalias !4990
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 0, ptr %i.cy, align 8, !alias.scope !4989, !noalias !4990
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge, %_RNvMs6_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_2IR14dfs_with_scope.exit75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfsNtB5_16DFSWithScopeIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %bb.ae unwind label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %bb.bb, %bb.bi
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %.invoke299, %.invoke297, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfs16DFSWithScopeIterEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c) #43
          to label %bb.h unwind label %bb.bo

bb.ae:                                            ; preds = %bb.ac
  %i.cz = load i32, ptr %i.b, align 4, !range !27, !noundef !10 ; 2 uses
  %.not60 = icmp eq i32 %i.cz, 2
  br i1 %.not60, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.626.0.copyload = load i32, ptr %.sroa.626.0..sroa_idx, align 4 ; 3 uses
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 4
  %i.da = trunc nuw i32 %i.cz to i1
  br i1 %i.da, label %bb.ah, label %.backedge

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfs16DFSWithScopeIterEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c)
          to label %bb.bk unwind label %.loopexit.split-lp142

bb.ah:                                            ; preds = %bb.af
  %i.db = zext i32 %.sroa.626.0.copyload to i64   ; 8 uses
  %i.dc = icmp samesign ugt i64 %i.i, %i.db
  br i1 %i.dc, label %bb.ai, label %.invoke, !prof !20

.backedge:                                        ; preds = %bb.ar, %bb.af, %bb.ap, %bb.at, %bb.ai, %bb.ai, %bb.ai, %bb.aj, %bb.bj, %bb.bc, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

.invoke:                                          ; preds = %.thread258, %bb.ah
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #40
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %i.db
  %i.de = load i8, ptr %i.dd, align 8, !range !25, !noundef !10 ; 2 uses
  %i.df = icmp samesign ugt i8 %i.de, 9
  %i.dg = zext nneg i8 %i.de to i64
  %i.dh = add nsw i64 %i.dg, -9
  %i.di = select i1 %i.df, i64 %i.dh, i64 0
  switch i64 %i.di, label %bb.aj [
    i64 0, label %.backedge
    i64 1, label %.backedge
    i64 41, label %.backedge
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.dj = icmp eq i8 %.sroa.7.0.copyload, 2
  br i1 %i.dj, label %.backedge, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load ptr, ptr %i.ad, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dl = load i64, ptr %i.ac, align 8, !noundef !10 ; 4 uses
  %i.dm = icmp ugt i64 %i.dl, %i.db
  br i1 %i.dm, label %bb.al, label %.invoke297

bb.al:                                            ; preds = %bb.ak
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.dk, i64 %i.db ; 2 uses
  %.sroa.027.0.copyload = load i32, ptr %i.dn, align 4 ; 2 uses
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %.sroa.628.0.copyload = load i32, ptr %.sroa.628.0..sroa_idx, align 4 ; 3 uses
  %i.do = icmp ugt i64 %i.z, %i.db
  br i1 %i.do, label %bb.am, label %.invoke297

.invoke297:                                       ; preds = %bb.an, %bb.al, %bb.ak
  %i.dp = phi i64 [ %i.db, %bb.al ], [ %i.db, %bb.ak ], [ %i.dv, %bb.an ]
  %i.dq = phi i64 [ %i.z, %bb.al ], [ %i.dl, %bb.ak ], [ %i.dl, %bb.an ]
  %i.dr = phi ptr [ @238, %bb.al ], [ @237, %bb.ak ], [ @239, %bb.an ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dp, i64 noundef %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr) #40
          to label %.cont298 unwind label %.loopexit.split-lp

.cont298:                                         ; preds = %.invoke297
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.db
  %i.dt = load i32, ptr %i.ds, align 4, !noundef !10 ; 2 uses
  %i.du = icmp eq i32 %i.dt, -1
  br i1 %i.du, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dv = zext i32 %i.dt to i64                   ; 3 uses
  %i.dw = icmp ugt i64 %i.dl, %i.dv
  br i1 %i.dw, label %bb.ao, label %.invoke297

bb.ao:                                            ; preds = %bb.an
  %i.dx = trunc i32 %.sroa.027.0.copyload to i1
  br i1 %i.dx, label %bb.ap, label %bb.aq

.thread:                                          ; preds = %bb.am
  %i.dy = trunc i32 %.sroa.027.0.copyload to i1
  br i1 %i.dy, label %.thread258, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %i.dk, i64 %i.dv ; 2 uses
  %.sroa.332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %.sroa.332.0.copyload = load i64, ptr %.sroa.332.0..sroa_idx, align 4
  %i.ea = trunc i64 %.sroa.332.0.copyload to i32
  %i.eb = icmp eq i32 %.sroa.628.0.copyload, %i.ea
  %.sroa.031.0.copyload = load i32, ptr %i.dz, align 4
  %i.ec = trunc i32 %.sroa.031.0.copyload to i1
  %.not302 = select i1 %i.ec, i1 %i.eb, i1 false
  br i1 %.not302, label %.backedge, label %.thread258

bb.aq:                                            ; preds = %.thread, %bb.ao
  %i.ed = load ptr, ptr %.sroa.4.0..sroa_idx.i.i72, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ee = load i64, ptr %.sroa.5.0..sroa_idx.i.i73, align 8, !noundef !10 ; 2 uses
  %.idx135 = shl nuw nsw i64 %i.ee, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx135
  %i.eg = icmp eq i64 %i.ee, 0
  br i1 %i.eg, label %.backedge, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.aq
  %i.eh = load ptr, ptr %i.cw, align 8, !nonnull !10, !align !17, !noundef !10 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !4991, !noundef !10
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  br label %bb.as

bb.ar:                                            ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfsNtBW_16DFSWithScopeIter10for_scopes0INtB7_5FnMutTRNtBY_6ExprIdEE8call_mutB12_.exit.i
  %i.el = icmp eq ptr %i.en, %i.ef
  br i1 %i.el, label %.backedge, label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.i77
  %i.em = phi ptr [ %i.ed, %.lr.ph.i77 ], [ %i.en, %bb.ar ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 2 uses
  %.val5.i = load i32, ptr %i.em, align 4, !noalias !4991, !noundef !10 ; 2 uses
  %i.eo = zext i32 %.val5.i to i64                ; 2 uses
  %i.ep = icmp ugt i64 %i.ej, %i.eo
  br i1 %i.ep, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfsNtBW_16DFSWithScopeIter10for_scopes0INtB7_5FnMutTRNtBY_6ExprIdEE8call_mutB12_.exit.i, label %.invoke299, !prof !20

.invoke299:                                       ; preds = %bb.as, %bb.az, %bb.aw
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #39
          to label %.cont300 unwind label %.loopexit.split-lp

.cont300:                                         ; preds = %.invoke299
  unreachable

_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfsNtBW_16DFSWithScopeIter10for_scopes0INtB7_5FnMutTRNtBY_6ExprIdEE8call_mutB12_.exit.i: ; preds = %bb.as
  %i.eq = load ptr, ptr %i.ek, align 8, !noalias !4991, !nonnull !10, !noundef !10
  %i.er = getelementptr inbounds nuw [48 x i8], ptr %i.eq, i64 %i.eo
  %i.es = load i8, ptr %i.er, align 8, !range !25, !noalias !4991, !noundef !10
  %i.et = icmp eq i8 %i.es, 57
  br i1 %i.et, label %bb.bh, label %bb.ar

.thread258:                                       ; preds = %.thread, %bb.ap
  %i.eu = zext i32 %.sroa.628.0.copyload to i64   ; 2 uses
  %i.ev = icmp samesign ugt i64 %i.i, %i.eu
  br i1 %i.ev, label %bb.at, label %.invoke, !prof !20

bb.at:                                            ; preds = %.thread258
  %i.ew = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %i.eu
  %i.ex = load i8, ptr %i.ew, align 8, !range !25, !noundef !10
  %i.ey = icmp eq i8 %i.ex, 57
  br i1 %i.ey, label %bb.au, label %.backedge

bb.au:                                            ; preds = %bb.at
  %i.ez = load ptr, ptr %.sroa.4.0..sroa_idx.i.i72, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.fa = load i64, ptr %.sroa.5.0..sroa_idx.i.i73, align 8, !noundef !10
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.fa ; 3 uses
  %i.fc = load ptr, ptr %i.cw, align 8, !nonnull !10, !align !17, !noundef !10 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %bb.au
  %.sroa.0113.0 = phi ptr [ %i.ez, %bb.au ], [ %i.fk, %bb.ax ] ; 2 uses
  %i.ff = icmp eq ptr %.sroa.0113.0, %i.fb
  br i1 %i.ff, label %thread-pre-split, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %bb.av
  %i.fg = load i64, ptr %i.fd, align 8, !noalias !4992, !noundef !10 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfsNtBW_16DFSWithScopeIter10for_scopes0INtB7_5FnMutTRNtBY_6ExprIdEE8call_mutB12_.exit.i83, %.lr.ph.i80
  %i.fh = phi ptr [ %.sroa.0113.0, %.lr.ph.i80 ], [ %i.fk, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfsNtBW_16DFSWithScopeIter10for_scopes0INtB7_5FnMutTRNtBY_6ExprIdEE8call_mutB12_.exit.i83 ] ; 2 uses
  %.val5.i82 = load i32, ptr %i.fh, align 4, !noalias !4992, !noundef !10 ; 2 uses
  %i.fi = zext i32 %.val5.i82 to i64              ; 2 uses
  %i.fj = icmp ugt i64 %i.fg, %i.fi
  br i1 %i.fj, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfsNtBW_16DFSWithScopeIter10for_scopes0INtB7_5FnMutTRNtBY_6ExprIdEE8call_mutB12_.exit.i83, label %.invoke299, !prof !20

_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfsNtBW_16DFSWithScopeIter10for_scopes0INtB7_5FnMutTRNtBY_6ExprIdEE8call_mutB12_.exit.i83: ; preds = %bb.aw
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 4 uses
  %i.fl = load ptr, ptr %i.fe, align 8, !noalias !4992, !nonnull !10, !noundef !10 ; 2 uses
  %i.fm = getelementptr inbounds nuw [48 x i8], ptr %i.fl, i64 %i.fi
  %i.fn = load i8, ptr %i.fm, align 8, !range !25, !noalias !4992, !noundef !10
  %i.fo = icmp eq i8 %i.fn, 57                    ; 2 uses
  %i.fp = icmp eq ptr %i.fk, %i.fb                ; 2 uses
  %or.cond136 = select i1 %i.fo, i1 true, i1 %i.fp
  br i1 %or.cond136, label %bb.ax, label %bb.aw

bb.ax:                                            ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfsNtBW_16DFSWithScopeIter10for_scopes0INtB7_5FnMutTRNtBY_6ExprIdEE8call_mutB12_.exit.i83
  %i.fq = icmp ne i32 %.val5.i82, %.sroa.628.0.copyload
  %or.cond.not = select i1 %i.fo, i1 %i.fq, i1 false
  br i1 %or.cond.not, label %bb.av, label %.thread128

.thread128:                                       ; preds = %bb.ax
  br i1 %i.fp, label %thread-pre-split, label %bb.az

bb.ay:                                            ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfsNtBW_16DFSWithScopeIter10for_scopes0INtB7_5FnMutTRNtBY_6ExprIdEE8call_mutB12_.exit.i95
  %i.fr = icmp eq ptr %i.ft, %i.fb
  br i1 %i.fr, label %thread-pre-split, label %bb.az

bb.az:                                            ; preds = %.thread128, %bb.ay
  %i.fs = phi ptr [ %i.ft, %bb.ay ], [ %i.fk, %.thread128 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4 ; 2 uses
  %.val5.i94 = load i32, ptr %i.fs, align 4, !noalias !4993, !noundef !10 ; 2 uses
  %i.fu = zext i32 %.val5.i94 to i64              ; 2 uses
  %i.fv = icmp ugt i64 %i.fg, %i.fu
  br i1 %i.fv, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfsNtBW_16DFSWithScopeIter10for_scopes0INtB7_5FnMutTRNtBY_6ExprIdEE8call_mutB12_.exit.i95, label %.invoke299, !prof !20

_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfsNtBW_16DFSWithScopeIter10for_scopes0INtB7_5FnMutTRNtBY_6ExprIdEE8call_mutB12_.exit.i95: ; preds = %bb.az
  %i.fw = getelementptr inbounds nuw [48 x i8], ptr %i.fl, i64 %i.fu
  %i.fx = load i8, ptr %i.fw, align 8, !range !25, !noalias !4993, !noundef !10
  %i.fy = icmp eq i8 %i.fx, 57
  br i1 %i.fy, label %bb.ba, label %bb.ay

bb.ba:                                            ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfsNtBW_16DFSWithScopeIter10for_scopes0INtB7_5FnMutTRNtBY_6ExprIdEE8call_mutB12_.exit.i95
  %i.fz = load i64, ptr %i.l, align 8, !alias.scope !4994, !noundef !10 ; 3 uses
  %i.ga = load i64, ptr %i.f, align 8, !range !11, !alias.scope !4994, !noundef !10
  %i.gb = icmp eq i64 %i.fz, %i.ga
  br i1 %i.gb, label %bb.bb, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdBG_EE8push_mutBM_.exit

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdBN_EE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #38
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdBG_EE8push_mutBM_.exit unwind label %.loopexit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdBG_EE8push_mutBM_.exit: ; preds = %bb.bb, %bb.ba
  %i.gc = load ptr, ptr %i.k, align 8, !alias.scope !4994, !nonnull !10, !noundef !10
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.fz ; 2 uses
  store i32 %.sroa.626.0.copyload, ptr %i.gd, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store i32 %.val5.i94, ptr %i.ge, align 4
  %i.gf = add i64 %i.fz, 1                        ; 2 uses
  store i64 %i.gf, ptr %i.l, align 8, !alias.scope !4994
  br label %bb.bc

thread-pre-split:                                 ; preds = %bb.av, %bb.ay, %.thread128
  %.pr = load i64, ptr %i.l, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %thread-pre-split, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdBG_EE8push_mutBM_.exit
  %i.gg = phi i64 [ %.pr, %thread-pre-split ], [ %i.gf, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdBG_EE8push_mutBM_.exit ] ; 2 uses
  %i.gh = icmp ult i64 %i.gg, 1152921504606846976
  call void @llvm.assume(i1 %i.gh)
  %i.gi = icmp samesign ugt i64 %i.gg, 100
  br i1 %i.gi, label %bb.bd, label %.backedge

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfs16DFSWithScopeIterEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp142

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfs16DFSWithScopeIterEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.e)
          to label %bb.bf unwind label %.split

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdlEEEEB1B_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
  br label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdlEEEEB1B_.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.bh:                                            ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfsNtBW_16DFSWithScopeIter10for_scopes0INtB7_5FnMutTRNtBY_6ExprIdEE8call_mutB12_.exit.i
  %i.gj = load i64, ptr %i.l, align 8, !alias.scope !4995, !noundef !10 ; 3 uses
  %i.gk = load i64, ptr %i.f, align 8, !range !11, !alias.scope !4995, !noundef !10
  %i.gl = icmp eq i64 %i.gj, %i.gk
  br i1 %i.gl, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdBN_EE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #38
          to label %bb.bj unwind label %.loopexit

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.gm = load ptr, ptr %i.k, align 8, !alias.scope !4995, !nonnull !10, !noundef !10
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gj ; 2 uses
  store i32 %.sroa.626.0.copyload, ptr %i.gn, align 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store i32 %.val5.i, ptr %i.go, align 4
  %i.gp = add i64 %i.gj, 1
  store i64 %i.gp, ptr %i.l, align 8, !alias.scope !4995
  br label %.backedge

bb.bk:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfs16DFSWithScopeIterEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.e)
          to label %bb.bl unwind label %.split

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdlEEENtNtNtBK_3ops4drop4Drop4dropB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdlEEEEB1B_.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdlEEENtNtNtBR_3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %bb.bp, %bb.bm
  %common.resume.op = phi { ptr, i32 } [ %i.gq, %bb.bm ], [ %.pn.pn115, %bb.bp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdlEEEEB1B_.exit: ; preds = %bb.bl
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdlEEENtNtNtBR_3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.bg

bb.bo:                                            ; preds = %bb.bq, %bb.bp, %bb.ad, %bb.h
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.bp:                                            ; preds = %.split, %bb.bq, %bb.e
  %.pn.pn115 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.split ], [ %.pn.pn116, %bb.bq ], [ %.pn, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdlEEEEB1B_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #43
          to label %common.resume unwind label %bb.bo

bb.bq:                                            ; preds = %.split.thread, %bb.e
  %.pn.pn116 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdB19_EEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #43
          to label %bb.bp unwind label %bb.bo
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs6_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_2IR25apply_int_read_constraint(ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull captures(none) dereferenceable(1) %1, i32 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.n = zext i32 %2 to i64                       ; 2 uses
  %i.o = icmp ugt i64 %.16.val, %i.n
  br i1 %i.o, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %.8.val, i64 %i.n ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !25, !noundef !10
  %i.r = icmp eq i8 %i.q, 53
  br i1 %i.r, label %bb.d, label %_RNvMs6_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_2IR14add_constraint.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !10
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %_RNvMs6_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_2IR14add_constraint.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !10, !noundef !10
  %i.y = load i32, ptr %i.x, align 4, !noundef !10
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = icmp ugt i64 %.16.val, %i.z
  br i1 %i.aa, label %bb.g, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #39
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %.8.val, i64 %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5007
  call void @_RNvMsh_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_4Expr10type_value(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab)
  %i.ac = load i8, ptr %i.m, align 8, !range !28, !noalias !5007, !noundef !10
  %i.ad = icmp eq i8 %i.ac, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !range !24, !noalias !5007
  %i.ag = icmp eq i64 %i.af, 0
  %or.cond.i = select i1 %i.ad, i1 %i.ag, i1 false ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !5007
  %.sroa.3.0.i = select i1 %or.cond.i, i64 %i.ai, i64 undef ; 14 uses
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5007
  %i.aj = icmp sgt i64 %.sroa.3.0.i, -1
  %or.cond = select i1 %or.cond.i, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.h, label %_RNvMs6_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_2IR14add_constraint.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.s, align 8, !nonnull !10, !noundef !10
  %i.al = getelementptr i8, ptr %i.ak, i64 32
  %.val = load ptr, ptr %i.al, align 8, !nonnull !10, !noundef !10
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.an = call { ptr, i64 } @_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types4funcNtB2_13MangledFnName10plain_name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am) ; 2 uses
end_hunk_0
