Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@_ZN5insta6output15SnapshotPrinter5print17hf7cfba0d17a4ec8bE:bb.a
  %i.aj = alloca [24 x i8], align 8               ; 8 uses
  %i.ak = alloca [72 x i8], align 8               ; 13 uses
  %i.al = alloca [24 x i8], align 8               ; 8 uses
  %i.am = alloca [72 x i8], align 8               ; 13 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [32 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 8 uses
  %i.aq = alloca [72 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 8 uses
  %i.as = alloca [72 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 8 uses
  %i.au = alloca [72 x i8], align 8               ; 13 uses
  %i.av = alloca [32 x i8], align 8               ; 8 uses
  %i.aw = alloca [32 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 8 uses
  %i.ay = alloca [72 x i8], align 8               ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 5 uses
  %i.ba = alloca [40 x i8], align 8               ; 11 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [48 x i8], align 8               ; 8 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [40 x i8], align 8               ; 10 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [24 x i8], align 8               ; 11 uses
  %i.bj = alloca [48 x i8], align 8               ; 12 uses
  %i.bk = alloca [48 x i8], align 8               ; 8 uses
  %i.bl = alloca [24 x i8], align 8               ; 6 uses
  %i.bm = alloca [48 x i8], align 8               ; 10 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [48 x i8], align 8               ; 8 uses
  %i.bp = alloca [48 x i8], align 8               ; 12 uses
  %i.bq = alloca [16 x i8], align 8               ; 5 uses
  %i.br = alloca [48 x i8], align 8               ; 8 uses
  %i.bs = alloca [48 x i8], align 8               ; 10 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [48 x i8], align 8               ; 8 uses
  %i.bv = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.bw = alloca [24 x i8], align 8               ; 9 uses
  %i.bx = alloca [32 x i8], align 8               ; 8 uses
  %i.by = alloca [32 x i8], align 8               ; 6 uses
  %i.bz = alloca [24 x i8], align 8               ; 8 uses
  %i.ca = alloca [72 x i8], align 8               ; 7 uses
  %i.cb = alloca [48 x i8], align 8               ; 8 uses
  %i.cc = alloca [32 x i8], align 8               ; 7 uses
  %i.cd = alloca [16 x i8], align 8               ; 5 uses
  %i.ce = alloca [24 x i8], align 8               ; 4 uses
  %i.cf = alloca [56 x i8], align 8               ; 11 uses
  %i.cg = alloca [48 x i8], align 8               ; 9 uses
  %i.ch = alloca [16 x i8], align 8               ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !align !31, !noundef !17 ; 2 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !17
  store ptr %i.cj, ptr %i.ch, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.cl, ptr %i.cm, align 8
  %i.cn = tail call fastcc noundef i64 @_ZN5insta5utils10term_width17hc96ac73894589751E()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store ptr %i.ch, ptr %i.cd, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7b792248e218ac2cE", ptr %.sroa.44.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !9416
  store ptr @341, ptr %i.cb, align 8, !noalias !9417
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !9417
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %i.cd, ptr %.sroa.549.0..sroa_idx, align 8, !noalias !9417
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store i64 1, ptr %.sroa.650.0..sroa_idx, align 8, !noalias !9417
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !9417
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.cb), !noalias !9418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !9416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.experimental.noalias.scope.decl(metadata !9419)
  call void @llvm.experimental.noalias.scope.decl(metadata !9420)
  %.sroa.0.0.copyload18 = load i64, ptr %i.ce, align 8, !alias.scope !9421, !noalias !9422 ; 3 uses
  %.sroa.5.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.5.0.copyload20 = load ptr, ptr %.sroa.5.0..sroa_idx19, align 8, !alias.scope !9421, !noalias !9422 ; 3 uses
  %.sroa.6.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.6.0.copyload22 = load i64, ptr %.sroa.6.0..sroa_idx21, align 8, !alias.scope !9421, !noalias !9422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !9423
  store i64 0, ptr %i.ca, align 8, !alias.scope !9424, !noalias !9425
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store i64 0, ptr %i.co, align 8, !alias.scope !9424, !noalias !9425
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  store i64 0, ptr %i.cp, align 8, !alias.scope !9424, !noalias !9425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !9426
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bz, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ca), !noalias !9423
  %i.cq = load ptr, ptr %i.bz, align 8, !noalias !9426, !noundef !17
  %.not3.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not3.i.i.i.i.i.i.i, label %_ZN7console5utils5style17hdf5c3fef998b15b0E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !9426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !9426
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bz, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ca), !noalias !9423
  %i.cr = load ptr, ptr %i.bz, align 8, !noalias !9426, !noundef !17
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7console5utils5style17hdf5c3fef998b15b0E.exit, label %.lr.ph.i.i.i.i.i.i.i

_ZN7console5utils5style17hdf5c3fef998b15b0E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !9426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !9423
  call void @llvm.experimental.noalias.scope.decl(metadata !9427)
  call void @llvm.experimental.noalias.scope.decl(metadata !9428)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !9429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !9429
  store ptr null, ptr %i.bx, align 8, !noalias !9427
  %.sroa.927.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 0, ptr %.sroa.927.24..sroa_idx, align 8, !noalias !9427
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i8 9, ptr %.sroa.10.24..sroa_idx, align 8, !noalias !9427
  %.sroa.1134.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 26
  store i8 9, ptr %.sroa.1134.24..sroa_idx, align 2, !noalias !9427
  %.sroa.1239.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.1239.24..sroa_idx, align 4, !noalias !9427
  invoke fastcc void @_ZN7console5utils5Style4attr17hbad207136d17f2d6E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.by, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bx, i8 noundef 0)
          to label %"_ZN7console5utils21StyledObject$LT$D$GT$4attr17hca45f72e32ee0357E.exit" unwind label %bb.c, !noalias !9429

bb.c:                                             ; preds = %_ZN7console5utils5style17hdf5c3fef998b15b0E.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = icmp eq i64 %.sroa.0.0.copyload18, 0
  br i1 %i.ct, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload20) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload20, i64 noundef %.sroa.0.0.copyload18, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !9430
  br label %common.resume

common.resume:                                    ; preds = %bb.bx, %bb.h, %bb.i, %.loopexit.split-lp585.i.i.i, %bb.o, %bb.x, %bb.ab, %.loopexit.split-lp.i.i.i, %bb.ag, %bb.au, %bb.bk, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.pq, %bb.bk ], [ %i.cs, %bb.c ], [ %i.cs, %bb.d ], [ %.pn150.i.i.i, %.loopexit.split-lp.i.i.i ], [ %i.ig, %bb.au ], [ %.pn.i.i.i, %bb.o ], [ %i.gf, %bb.ab ], [ %i.fz, %bb.x ], [ %i.eb, %bb.i ], [ %i.eb, %bb.h ], [ %.pn.i.i.i, %.loopexit.split-lp585.i.i.i ], [ %.pn150.i.i.i, %bb.ag ], [ %i.tf, %bb.bx ]
  resume { ptr, i32 } %common.resume.op

"_ZN7console5utils21StyledObject$LT$D$GT$4attr17hca45f72e32ee0357E.exit": ; preds = %_ZN7console5utils5style17hdf5c3fef998b15b0E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !9429
  %.sroa.623.24.copyload24 = load ptr, ptr %i.by, align 8, !noalias !9427
  %.sroa.9.24..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.10.24..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.cu = load <8 x i8>, ptr %.sroa.10.24..sroa_idx30, align 8, !noalias !9427
  %i.cv = load <2 x i64>, ptr %.sroa.9.24..sroa_idx25, align 8, !noalias !9427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !9429
  store i64 %.sroa.0.0.copyload18, ptr %i.cf, align 8, !alias.scope !9429
  store ptr %.sroa.5.0.copyload20, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9429
  store i64 %.sroa.6.0.copyload22, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !9429
  store ptr %.sroa.623.24.copyload24, ptr %.sroa.623.0..sroa_idx, align 8, !alias.scope !9429
  store <2 x i64> %i.cv, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !9429
  store <8 x i8> %i.cu, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !9429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  %i.cw = trunc nuw i64 %i.cn to i16
  store ptr %i.cf, ptr %i.cc, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h664fa4cd280b4615E", ptr %.sroa.48.0..sroa_idx, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr null, ptr %i.cx, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i16 %i.cw, ptr %.sroa.412.0..sroa_idx, align 8
  store ptr @285, ptr %i.cg, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 2, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store ptr @342, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store i64 1, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr %i.cc, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store i64 2, ptr %i.dc, align 8
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.cg)
          to label %bb.by unwind label %bb.bx

bb.e:                                             ; preds = %bb.by, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !9431)
  call void @llvm.experimental.noalias.scope.decl(metadata !9432)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !9433, !nonnull !17, !align !31, !noundef !17 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !9433, !noundef !17 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !9433, !nonnull !17, !align !50, !noundef !17 ; 12 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !9433, !align !31, !noundef !17 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !9433 ; 2 uses
  %i.dn = load i32, ptr %0, align 8, !range !65, !alias.scope !9433, !noundef !17 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !alias.scope !9433
  call void @llvm.experimental.noalias.scope.decl(metadata !9434)
  %.not.i.i.i = icmp eq i32 %i.dn, 0              ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dr = load i32, ptr %i.dq, align 16, !range !65, !alias.scope !9434, !noalias !9435
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 68
  %i.dt = load i32, ptr %i.ds, align 4, !alias.scope !9434, !noalias !9435
  %.sroa.4.0.i.i.i = select i1 %.not.i.i.i, i32 %i.dt, i32 %i.dp
  %.sroa.03.0.i.i.i = select i1 %.not.i.i.i, i32 %i.dr, i32 %i.dn
  %.not142.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not142.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !9436
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !9436
  call void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bv, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.de, i64 noundef %i.dg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dk, i64 noundef %i.dm), !noalias !9437
  %i.du = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !9436, !nonnull !17, !noundef !17 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !9436, !noundef !17
  %i.dy = invoke { ptr, i64 } @_ZN3std4path4Path13_strip_prefix17h70fd9b124dcff30fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dv, i64 noundef %i.dx, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.de, i64 noundef %i.dg)
          to label %_ZN3std4path4Path12strip_prefix17h054bafaaa23b5492E.exit.i.i.i unwind label %bb.h, !noalias !9437 ; 2 uses

bb.g:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit175.i.i.i", %bb.e
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 176
  %i.ea = load i64, ptr %i.dz, align 16, !range !30, !alias.scope !9434, !noalias !9435, !noundef !17
  %.not146.i.i.i = icmp eq i64 %i.ea, -9223372036854775808
  br i1 %.not146.i.i.i, label %bb.w, label %bb.v

bb.h:                                             ; preds = %.thread.i.i.i, %bb.j, %bb.f
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val160.i.i.i = load i64, ptr %i.bv, align 8, !noalias !9436 ; 2 uses
  %i.ec = icmp eq i64 %.val160.i.i.i, 0
  br i1 %i.ec, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dv, i64 noundef %.val160.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !9437
  br label %common.resume

_ZN3std4path4Path12strip_prefix17h054bafaaa23b5492E.exit.i.i.i: ; preds = %bb.f
  %i.ed = extractvalue { ptr, i64 } %i.dy, 0      ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %.thread.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN3std4path4Path12strip_prefix17h054bafaaa23b5492E.exit.i.i.i
  %i.ef = extractvalue { ptr, i64 } %i.dy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !9436
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.az, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ed, i64 noundef %i.ef)
          to label %bb.k unwind label %bb.h, !noalias !9437

bb.k:                                             ; preds = %bb.j
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.az, align 8, !noalias !9436 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !9436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !9436
  %.not144.i.i.i = icmp eq i64 %.sroa.07.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not144.i.i.i, label %.thread.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.420.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i, i64 16, i1 false), !noalias !9436
  store i64 %.sroa.07.0.copyload.i.i.i, ptr %i.bw, align 8, !noalias !9436
  br label %bb.m

.thread.i.i.i:                                    ; preds = %bb.k, %_ZN3std4path4Path12strip_prefix17h054bafaaa23b5492E.exit.i.i.i
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dk, i64 noundef %i.dm)
          to label %bb.m unwind label %bb.h, !noalias !9437

bb.m:                                             ; preds = %.thread.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  %.val158.i.i.i = load i64, ptr %i.bv, align 8, !noalias !9436 ; 2 uses
  %i.eg = icmp eq i64 %.val158.i.i.i, 0
  br i1 %i.eg, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit166.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dv, i64 noundef %.val158.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !9437
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit166.i.i.i"

.loopexit.split-lp585.i.i.i:                      ; preds = %bb.q, %.loopexit.split-lp585.loopexit.split-lp.i.i.i, %.loopexit.split-lp585.loopexit.i.i.i, %.loopexit584.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ew, %bb.q ], [ %lpad.loopexit586.i.i.i, %.loopexit584.i.i.i ], [ %lpad.loopexit589.i.i.i, %.loopexit.split-lp585.loopexit.i.i.i ], [ %lpad.loopexit.split-lp590.i.i.i, %.loopexit.split-lp585.loopexit.split-lp.i.i.i ] ; 2 uses
  %.val156.i.i.i = load i64, ptr %i.bw, align 8, !noalias !9436 ; 2 uses
  %i.eh = icmp eq i64 %.val156.i.i.i, 0
  br i1 %i.eh, label %common.resume, label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp585.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ej, i64 noundef %.val156.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !9437
  br label %common.resume

.loopexit584.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.i171.i.i.i
  %lpad.loopexit586.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp585.i.i.i

.loopexit.split-lp585.loopexit.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit589.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp585.i.i.i

.loopexit.split-lp585.loopexit.split-lp.i.i.i:    ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i.i.i.i", %.loopexit592.i.i.i, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit166.i.i.i"
  %lpad.loopexit.split-lp590.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp585.i.i.i

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit166.i.i.i": ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !9436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !9436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !9436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !9436
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !9436, !nonnull !17, !noundef !17 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !noalias !9436, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !9438
  store i64 0, ptr %i.ay, align 8, !alias.scope !9439, !noalias !9440
  %i.em = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i64 0, ptr %i.em, align 8, !alias.scope !9439, !noalias !9440
  %i.en = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  store i64 0, ptr %i.en, align 8, !alias.scope !9439, !noalias !9440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !9441
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ay)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp585.loopexit.split-lp.i.i.i, !noalias !9437

.noexc.i.i.i:                                     ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit166.i.i.i"
  %i.eo = load ptr, ptr %i.ax, align 8, !noalias !9441, !noundef !17
  %.not3.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i, label %.loopexit592.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i, %.noexc168.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !9441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !9441
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ay)
          to label %.noexc168.i.i.i unwind label %.loopexit.split-lp585.loopexit.i.i.i, !noalias !9437

.noexc168.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ep = load ptr, ptr %i.ax, align 8, !noalias !9441, !noundef !17
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit592.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit592.i.i.i:                               ; preds = %.noexc168.i.i.i, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !9441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !9438
  call void @llvm.experimental.noalias.scope.decl(metadata !9442)
  call void @llvm.experimental.noalias.scope.decl(metadata !9443)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !9444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !9444
  store ptr null, ptr %i.av, align 8, !noalias !9445
  %.sroa.0.sroa.9.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 0, ptr %.sroa.0.sroa.9.16..sroa_idx.i.i.i, align 8, !noalias !9445
  %.sroa.6340.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i8 6, ptr %.sroa.6340.16..sroa_idx.i.i.i, align 8, !noalias !9445
  %.sroa.7.sroa.5.0..sroa.7.16..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 26
  store i8 9, ptr %.sroa.7.sroa.5.0..sroa.7.16..sroa_idx.sroa_idx.i.i.i, align 2, !noalias !9445
  %.sroa.7.sroa.7.0..sroa.7.16..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.7.sroa.7.0..sroa.7.16..sroa_idx.sroa_idx.i.i.i, align 4, !noalias !9445
  invoke fastcc void @_ZN7console5utils5Style4attr17hbad207136d17f2d6E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.aw, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.av, i8 noundef 3)
          to label %bb.p unwind label %.loopexit.split-lp585.loopexit.split-lp.i.i.i, !noalias !9437

bb.p:                                             ; preds = %.loopexit592.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !9444
  %.sroa.0.sroa.5.16.copyload511.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !9445
  %.sroa.0.sroa.8.16..sroa_idx512.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.6340.16..sroa_idx341.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %.sroa.0.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %.sroa.0.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %.sroa.6340.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.eq = load <8 x i8>, ptr %.sroa.6340.16..sroa_idx341.i.i.i, align 8, !noalias !9445
  %i.er = load <2 x i64>, ptr %.sroa.0.sroa.8.16..sroa_idx512.i.i.i, align 8, !noalias !9445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !9444
  store ptr %i.ej, ptr %i.bs, align 8, !alias.scope !9446, !noalias !9436
  store i64 %i.el, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !9446, !noalias !9436
  store ptr %.sroa.0.sroa.5.16.copyload511.i.i.i, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !9446, !noalias !9436
  store <2 x i64> %i.er, ptr %.sroa.0.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !9446, !noalias !9436
  store <8 x i8> %i.eq, ptr %.sroa.6340.0..sroa_idx.i.i.i, align 8, !alias.scope !9446, !noalias !9436
  store ptr %i.bs, ptr %i.bt, align 8, !noalias !9436
  %.sroa.445.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h74e3106c42c9e55aE", ptr %.sroa.445.0..sroa_idx.i.i.i, align 8, !noalias !9436
  store ptr @354, ptr %i.bu, align 8, !noalias !9436
  %i.es = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 2, ptr %i.es, align 8, !noalias !9436
  %i.et = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr null, ptr %i.et, align 8, !noalias !9436
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.bt, ptr %i.eu, align 8, !noalias !9436
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i64 1, ptr %i.ev, align 8, !noalias !9436
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bu)
          to label %bb.r unwind label %bb.q, !noalias !9437

bb.q:                                             ; preds = %bb.p
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$console..utils..StyledObject$LT$std..path..Display$GT$$GT$17hfe5ca47f3aad441eE"(ptr noalias noundef align 8 dereferenceable(48) %i.bs) #55
          to label %.loopexit.split-lp585.i.i.i unwind label %bb.u, !noalias !9437

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !9436
  call void @llvm.experimental.noalias.scope.decl(metadata !9447)
  call void @llvm.experimental.noalias.scope.decl(metadata !9448)
  call void @llvm.experimental.noalias.scope.decl(metadata !9449)
  call void @llvm.experimental.noalias.scope.decl(metadata !9450)
  call void @llvm.experimental.noalias.scope.decl(metadata !9451)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !9452
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !9453, !noalias !9436 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i.i.i.i", label %bb.s
end_hunk_0
begin_hunk_1_@_ZN5insta6output15SnapshotPrinter5print17hf7cfba0d17a4ec8bE:bb.a
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i209.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store ptr %.sroa.0.0.copyload.i.i.i.i.i199.i.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i209.i.i.i, align 8, !alias.scope !9480, !noalias !9481
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i210.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i.i.i204.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i210.i.i.i, align 8, !alias.scope !9480, !noalias !9481
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i211.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i211.i.i.i": ; preds = %bb.z, %bb.y
  %.sink23.i.i.i.i.i.i212.i.i.i = phi i64 [ 1, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i.i213.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i202.i.i.i, %bb.z ], [ 0, %bb.y ]
  store i64 %.sink23.i.i.i.i.i.i212.i.i.i, ptr %i.am, align 8, !alias.scope !9480, !noalias !9481
  %i.ga = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 %.sink23.i.i.i.i.i.i212.i.i.i, ptr %i.ga, align 8, !alias.scope !9480, !noalias !9481
  %i.gb = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i213.i.i.i, ptr %i.gb, align 8, !alias.scope !9480, !noalias !9481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !9482
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.am), !noalias !9483
  %i.gc = load ptr, ptr %i.al, align 8, !noalias !9482, !noundef !17
  %.not3.i.i.i.i.i.i.i214.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not3.i.i.i.i.i.i.i214.i.i.i, label %"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i215.i.i.i

.lr.ph.i.i.i.i.i.i.i215.i.i.i:                    ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i211.i.i.i", %.lr.ph.i.i.i.i.i.i.i215.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !9482
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.am), !noalias !9483
  %i.gd = load ptr, ptr %i.al, align 8, !noalias !9482, !noundef !17
  %.not.i.i.i.i.i.i.i216.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i.i216.i.i.i, label %"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i215.i.i.i

"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i215.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i211.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !9478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !9436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !9436
  br label %bb.aa

bb.aa:                                            ; preds = %"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit235.i.i.i", %"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !9436
  call void @_ZN5insta8snapshot8MetaData19get_relative_source17h74053ae71b93966aE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(256) %i.di, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.de, i64 noundef %i.dg), !noalias !9433
  %i.ge = load i64, ptr %i.bl, align 8, !range !30, !noalias !9436, !noundef !17 ; 5 uses
  %.not147.i.i.i = icmp eq i64 %i.ge, -9223372036854775808
  br i1 %.not147.i.i.i, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hde2d505bd749e340E.exit.i.i.i", label %bb.ae

bb.ab:                                            ; preds = %_ZN7console5utils5style17hb381d313d45317d3E.exit.i.i.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E"(ptr noalias noundef align 8 dereferenceable(48) %i.bp) #55
          to label %common.resume unwind label %bb.u, !noalias !9437

bb.ac:                                            ; preds = %_ZN7console5utils5style17hb381d313d45317d3E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !9436
  call void @llvm.experimental.noalias.scope.decl(metadata !9484)
  call void @llvm.experimental.noalias.scope.decl(metadata !9485)
  call void @llvm.experimental.noalias.scope.decl(metadata !9486)
  call void @llvm.experimental.noalias.scope.decl(metadata !9487)
  call void @llvm.experimental.noalias.scope.decl(metadata !9488)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !9489
  %.sroa.0.0.copyload.i.i.i.i.i217.i.i.i = load ptr, ptr %.sroa.059.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !9490, !noalias !9436 ; 3 uses
  %.not.i.i.i.i.i.i218.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i217.i.i.i, null
  br i1 %.not.i.i.i.i.i.i218.i.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i229.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.5.0.copyload.i.i.i.i.i220.i.i.i = load i64, ptr %.sroa.059.sroa.9.0..sroa_idx.i.i.i, align 8, !alias.scope !9490, !noalias !9436
  %.sroa.4.0.copyload.i.i.i.i.i222.i.i.i = load i64, ptr %.sroa.059.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !9490, !noalias !9436 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i223.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i223.i.i.i, align 8, !alias.scope !9491, !noalias !9492
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i224.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i.i.i217.i.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i224.i.i.i, align 8, !alias.scope !9491, !noalias !9492
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i225.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i.i222.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i225.i.i.i, align 8, !alias.scope !9491, !noalias !9492
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i226.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i226.i.i.i, align 8, !alias.scope !9491, !noalias !9492
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i227.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store ptr %.sroa.0.0.copyload.i.i.i.i.i217.i.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i227.i.i.i, align 8, !alias.scope !9491, !noalias !9492
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i228.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i.i.i222.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i228.i.i.i, align 8, !alias.scope !9491, !noalias !9492
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i229.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i229.i.i.i": ; preds = %bb.ad, %bb.ac
  %.sink23.i.i.i.i.i.i230.i.i.i = phi i64 [ 1, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i.i231.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i220.i.i.i, %bb.ad ], [ 0, %bb.ac ]
  store i64 %.sink23.i.i.i.i.i.i230.i.i.i, ptr %i.ak, align 8, !alias.scope !9491, !noalias !9492
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i64 %.sink23.i.i.i.i.i.i230.i.i.i, ptr %i.gg, align 8, !alias.scope !9491, !noalias !9492
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i231.i.i.i, ptr %i.gh, align 8, !alias.scope !9491, !noalias !9492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !9493
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ak), !noalias !9494
  %i.gi = load ptr, ptr %i.aj, align 8, !noalias !9493, !noundef !17
  %.not3.i.i.i.i.i.i.i232.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not3.i.i.i.i.i.i.i232.i.i.i, label %"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit235.i.i.i", label %.lr.ph.i.i.i.i.i.i.i233.i.i.i

.lr.ph.i.i.i.i.i.i.i233.i.i.i:                    ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i229.i.i.i", %.lr.ph.i.i.i.i.i.i.i233.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !9493
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ak), !noalias !9494
  %i.gj = load ptr, ptr %i.aj, align 8, !noalias !9493, !noundef !17
  %.not.i.i.i.i.i.i.i234.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i.i.i.i234.i.i.i, label %"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit235.i.i.i", label %.lr.ph.i.i.i.i.i.i.i233.i.i.i

"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit235.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i233.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i229.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !9436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !9436
  br label %bb.aa

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !9436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !9436
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !noalias !9436, !nonnull !17, !noundef !17 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !9436, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !9495
  store i64 0, ptr %i.ai, align 8, !alias.scope !9496, !noalias !9497
  %i.go = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i64 0, ptr %i.go, align 8, !alias.scope !9496, !noalias !9497
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store i64 0, ptr %i.gp, align 8, !alias.scope !9496, !noalias !9497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !9498
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ai)
          to label %.noexc247.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !9437

.noexc247.i.i.i:                                  ; preds = %bb.ae
  %i.gq = load ptr, ptr %i.ah, align 8, !noalias !9498, !noundef !17
  %.not3.i.i.i.i.i.i.i244.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not3.i.i.i.i.i.i.i244.i.i.i, label %.loopexit583.i.i.i, label %.lr.ph.i.i.i.i.i.i.i245.i.i.i

.lr.ph.i.i.i.i.i.i.i245.i.i.i:                    ; preds = %.noexc247.i.i.i, %.noexc248.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !9498
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ai)
          to label %.noexc248.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !9437

.noexc248.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i245.i.i.i
  %i.gr = load ptr, ptr %i.ah, align 8, !noalias !9498, !noundef !17
  %.not.i.i.i.i.i.i.i246.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i.i.i246.i.i.i, label %.loopexit583.i.i.i, label %.lr.ph.i.i.i.i.i.i.i245.i.i.i

.loopexit569.i.i.i:                               ; preds = %.noexc308.i.i.i, %.noexc307.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !9499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !9500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !9436
  %switch595.i.i.i = icmp sgt i64 %i.ge, 0
  br i1 %switch595.i.i.i, label %bb.af, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hde2d505bd749e340E.exit.i.i.i"

bb.af:                                            ; preds = %.loopexit569.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gl, i64 noundef %i.ge, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !9437
  br label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hde2d505bd749e340E.exit.i.i.i"

"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hde2d505bd749e340E.exit.i.i.i": ; preds = %bb.af, %.loopexit569.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !9436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !9436
  %i.gs = getelementptr inbounds nuw i8, ptr %i.di, i64 144
  %i.gt = load i64, ptr %i.gs, align 16, !range !30, !alias.scope !9434, !noalias !9435, !noundef !17
  %.not152.not.i.i.i = icmp eq i64 %i.gt, -9223372036854775808
  br i1 %.not152.not.i.i.i, label %_ZN5insta6output15SnapshotPrinter22print_snapshot_summary17hb3ae91076a862a57E.exit.i, label %bb.at

.loopexit.split-lp.i.i.i:                         ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i.i.i", %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i
  %.pn150.i.i.i = phi { ptr, i32 } [ %.pn148.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i.i.i" ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit580.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp581.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ] ; 2 uses
  %switch.i.i.i = icmp sgt i64 %i.ge, 0
  br i1 %switch.i.i.i, label %bb.ag, label %common.resume

bb.ag:                                            ; preds = %.loopexit.split-lp.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gl, i64 noundef %i.ge, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !9437
  br label %common.resume

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i305.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i245.i.i.i
  %lpad.loopexit580.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i:       ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i301.i.i.i", %bb.ae
  %lpad.loopexit.split-lp581.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit583.i.i.i:                               ; preds = %.noexc248.i.i.i, %.noexc247.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !9495
  store ptr %i.gl, ptr %i.bj, align 8, !noalias !9436
  %.sroa.090.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.gn, ptr %.sroa.090.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !9436
  %.sroa.090.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  store ptr null, ptr %.sroa.090.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !9436
  %.sroa.090.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.090.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  store i64 0, ptr %.sroa.090.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !9436
  %.sroa.692.0..sroa_idx93.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store i8 6, ptr %.sroa.692.0..sroa_idx93.i.i.i, align 8, !noalias !9436
  %.sroa.1098.0..sroa_idx99.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 42
  store i8 9, ptr %.sroa.1098.0..sroa_idx99.i.i.i, align 2, !noalias !9436
  %.sroa.1098.sroa.7.0..sroa.1098.0..sroa_idx99.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 44
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.1098.sroa.7.0..sroa.1098.0..sroa_idx99.sroa_idx.i.i.i, align 4, !noalias !9436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !9436
  %1 = trunc nuw i32 %.sroa.03.0.i.i.i to i1
  br i1 %1, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %.loopexit583.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !9436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !9436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !9436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !9501
  store i64 0, ptr %i.ag, align 8, !alias.scope !9502, !noalias !9503
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 0, ptr %i.gu, align 8, !alias.scope !9502, !noalias !9503
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store i64 0, ptr %i.gv, align 8, !alias.scope !9502, !noalias !9503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !9504
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ag)
          to label %.noexc262.i.i.i unwind label %.loopexit.split-lp571.loopexit.split-lp.i.i.i, !noalias !9437

.noexc262.i.i.i:                                  ; preds = %bb.ah
  %i.gw = load ptr, ptr %i.af, align 8, !noalias !9504, !noundef !17
  %.not3.i.i.i.i.i.i.i259.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not3.i.i.i.i.i.i.i259.i.i.i, label %.loopexit579.i.i.i, label %.lr.ph.i.i.i.i.i.i.i260.i.i.i

.lr.ph.i.i.i.i.i.i.i260.i.i.i:                    ; preds = %.noexc262.i.i.i, %.noexc263.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !9504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !9504
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ag)
          to label %.noexc263.i.i.i unwind label %.loopexit.split-lp571.loopexit.i.i.i, !noalias !9437

.noexc263.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i260.i.i.i
  %i.gx = load ptr, ptr %i.af, align 8, !noalias !9504, !noundef !17
  %.not.i.i.i.i.i.i.i261.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i.i.i.i261.i.i.i, label %.loopexit579.i.i.i, label %.lr.ph.i.i.i.i.i.i.i260.i.i.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i.i.i": ; preds = %bb.ap, %bb.ao, %bb.aj, %.loopexit.split-lp571.loopexit.split-lp.i.i.i, %.loopexit.split-lp571.loopexit.i.i.i, %.loopexit570.i.i.i
  %.pn148.i.i.i = phi { ptr, i32 } [ %i.hk, %bb.ap ], [ %i.ha, %bb.aj ], [ %i.hk, %bb.ao ], [ %lpad.loopexit572.i.i.i, %.loopexit570.i.i.i ], [ %lpad.loopexit576.i.i.i, %.loopexit.split-lp571.loopexit.i.i.i ], [ %lpad.loopexit.split-lp577.i.i.i, %.loopexit.split-lp571.loopexit.split-lp.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$console..utils..StyledObject$LT$std..path..Display$GT$$GT$17hfe5ca47f3aad441eE"(ptr noalias noundef align 8 dereferenceable(48) %i.bj) #55
          to label %.loopexit.split-lp.i.i.i unwind label %bb.u, !noalias !9437

.loopexit570.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.i282.i.i.i
  %lpad.loopexit572.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i.i.i"

.loopexit.split-lp571.loopexit.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i260.i.i.i
  %lpad.loopexit576.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i.i.i"

.loopexit.split-lp571.loopexit.split-lp.i.i.i:    ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i278.i.i.i", %.loopexit579.i.i.i, %bb.ah
  %lpad.loopexit.split-lp577.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i.i.i"

.loopexit579.i.i.i:                               ; preds = %.noexc263.i.i.i, %.noexc262.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !9504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9501
  call void @llvm.experimental.noalias.scope.decl(metadata !9505)
  call void @llvm.experimental.noalias.scope.decl(metadata !9506)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !9507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !9507
  store ptr null, ptr %i.ad, align 8, !noalias !9508
  %.sroa.6423.0..sroa_idx424.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %.sroa.6423.0..sroa_idx424.i.i.i, align 8, !noalias !9508
  %.sroa.7428.0..sroa_idx429.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 9, ptr %.sroa.7428.0..sroa_idx429.i.i.i, align 8, !noalias !9508
  %.sroa.8438.0..sroa_idx439.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 26
  store i8 9, ptr %.sroa.8438.0..sroa_idx439.i.i.i, align 2, !noalias !9508
  %.sroa.9448.0..sroa_idx449.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.9448.0..sroa_idx449.i.i.i, align 4, !noalias !9508
  invoke fastcc void @_ZN7console5utils5Style4attr17hbad207136d17f2d6E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ae, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ad, i8 noundef 0)
          to label %bb.ai unwind label %.loopexit.split-lp571.loopexit.split-lp.i.i.i, !noalias !9437

bb.ai:                                            ; preds = %.loopexit579.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9507
  %.sroa.0415.0.copyload417.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !9508
  %.sroa.6418.0..sroa_idx421.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.7428.0..sroa_idx431.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.6418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %.sroa.6423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.7428.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.gy = load <8 x i8>, ptr %.sroa.7428.0..sroa_idx431.i.i.i, align 8, !noalias !9508
  %i.gz = load <2 x i64>, ptr %.sroa.6418.0..sroa_idx421.i.i.i, align 8, !noalias !9508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !9507
  store ptr %.sroa.0415.0.copyload417.i.i.i, ptr %i.bf, align 8, !alias.scope !9509, !noalias !9436
  store <2 x i64> %i.gz, ptr %.sroa.6418.0..sroa_idx.i.i.i, align 8, !alias.scope !9509, !noalias !9436
  store <8 x i8> %i.gy, ptr %.sroa.7428.0..sroa_idx.i.i.i, align 8, !alias.scope !9509, !noalias !9436
  %.sroa.13468.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store i32 %.sroa.4.0.i.i.i, ptr %.sroa.13468.0..sroa_idx.i.i.i, align 8, !alias.scope !9509, !noalias !9436
  store ptr %i.bf, ptr %i.bg, align 8, !noalias !9436
  %.sroa.4103.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd1fcfc902e4e8e90E", ptr %.sroa.4103.0..sroa_idx.i.i.i, align 8, !noalias !9436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !9510
  store ptr @358, ptr %i.ac, align 8, !noalias !9511
  %.sroa.4410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 1, ptr %.sroa.4410.0..sroa_idx.i.i.i, align 8, !noalias !9511
  %.sroa.5411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.bg, ptr %.sroa.5411.0..sroa_idx.i.i.i, align 8, !noalias !9511
  %.sroa.6412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 1, ptr %.sroa.6412.0..sroa_idx.i.i.i, align 8, !noalias !9511
  %.sroa.7413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr null, ptr %.sroa.7413.0..sroa_idx.i.i.i, align 8, !noalias !9511
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ac)
          to label %bb.ak unwind label %bb.aj, !noalias !9437

bb.aj:                                            ; preds = %bb.ai
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$console..utils..StyledObject$LT$u32$GT$$GT$17ha8c7d47eb966d682E"(ptr noalias noundef align 8 dereferenceable(40) %i.bf) #55
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i.i.i" unwind label %bb.u, !noalias !9437

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !9510
  call void @llvm.experimental.noalias.scope.decl(metadata !9512)
  call void @llvm.experimental.noalias.scope.decl(metadata !9513)
  call void @llvm.experimental.noalias.scope.decl(metadata !9514)
  call void @llvm.experimental.noalias.scope.decl(metadata !9515)
  call void @llvm.experimental.noalias.scope.decl(metadata !9516)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !9517
  %.sroa.0.0.copyload.i.i.i.i.i266.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !9518, !noalias !9436 ; 3 uses
  %.not.i.i.i.i.i.i267.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i266.i.i.i, null
  br i1 %.not.i.i.i.i.i.i267.i.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i278.i.i.i", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.5.0.copyload.i.i.i.i.i269.i.i.i = load i64, ptr %.sroa.6423.0..sroa_idx.i.i.i, align 8, !alias.scope !9518, !noalias !9436
  %.sroa.4.0.copyload.i.i.i.i.i271.i.i.i = load i64, ptr %.sroa.6418.0..sroa_idx.i.i.i, align 8, !alias.scope !9518, !noalias !9436 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i272.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i272.i.i.i, align 8, !alias.scope !9519, !noalias !9520
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i273.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i.i.i266.i.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i273.i.i.i, align 8, !alias.scope !9519, !noalias !9520
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i274.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i.i271.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i274.i.i.i, align 8, !alias.scope !9519, !noalias !9520
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i275.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i275.i.i.i, align 8, !alias.scope !9519, !noalias !9520
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i276.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store ptr %.sroa.0.0.copyload.i.i.i.i.i266.i.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i276.i.i.i, align 8, !alias.scope !9519, !noalias !9520
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i277.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i.i.i271.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i277.i.i.i, align 8, !alias.scope !9519, !noalias !9520
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i278.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i278.i.i.i": ; preds = %bb.al, %bb.ak
  %.sink23.i.i.i.i.i.i279.i.i.i = phi i64 [ 1, %bb.al ], [ 0, %bb.ak ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i.i280.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i269.i.i.i, %bb.al ], [ 0, %bb.ak ]
  store i64 %.sink23.i.i.i.i.i.i279.i.i.i, ptr %i.ab, align 8, !alias.scope !9519, !noalias !9520
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 %.sink23.i.i.i.i.i.i279.i.i.i, ptr %i.hb, align 8, !alias.scope !9519, !noalias !9520
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i280.i.i.i, ptr %i.hc, align 8, !alias.scope !9519, !noalias !9520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9521
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ab)
          to label %.noexc284.i.i.i unwind label %.loopexit.split-lp571.loopexit.split-lp.i.i.i, !noalias !9437

.noexc284.i.i.i:                                  ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i278.i.i.i"
  %i.hd = load ptr, ptr %i.aa, align 8, !noalias !9521, !noundef !17
  %.not3.i.i.i.i.i.i.i281.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not3.i.i.i.i.i.i.i281.i.i.i, label %.loopexit575.i.i.i, label %.lr.ph.i.i.i.i.i.i.i282.i.i.i

.lr.ph.i.i.i.i.i.i.i282.i.i.i:                    ; preds = %.noexc284.i.i.i, %.noexc285.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9521
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ab)
          to label %.noexc285.i.i.i unwind label %.loopexit570.i.i.i, !noalias !9437

.noexc285.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i282.i.i.i
  %i.he = load ptr, ptr %i.aa, align 8, !noalias !9521, !noundef !17
  %.not.i.i.i.i.i.i.i283.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i.i.i.i.i283.i.i.i, label %.loopexit575.i.i.i, label %.lr.ph.i.i.i.i.i.i.i282.i.i.i

.loopexit575.i.i.i:                               ; preds = %.noexc285.i.i.i, %.noexc284.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !9436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !9436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !9436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !9436
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.loopexit575.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !9436
  store ptr %i.bj, ptr %i.be, align 8, !noalias !9436
  %.sroa.4109.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h74e3106c42c9e55aE", ptr %.sroa.4109.0..sroa_idx.i.i.i, align 8, !noalias !9436
  %i.hf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bi, ptr %i.hf, align 8, !noalias !9436
  %.sroa.4113.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4113.0..sroa_idx.i.i.i, align 8, !noalias !9436
  store ptr @360, ptr %i.bk, align 8, !noalias !9436
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 3, ptr %i.hg, align 8, !noalias !9436
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store ptr null, ptr %i.hh, align 8, !noalias !9436
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.be, ptr %i.hi, align 8, !noalias !9436
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i64 2, ptr %i.hj, align 8, !noalias !9436
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bk)
          to label %bb.aq unwind label %bb.ao, !noalias !9437

bb.an:                                            ; preds = %.loopexit583.i.i.i
  store i64 0, ptr %i.bi, align 8, !noalias !9436
  %.sroa.4546.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4546.0..sroa_idx.i.i.i, align 8, !noalias !9436
  %.sroa.5547.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
end_hunk_1
