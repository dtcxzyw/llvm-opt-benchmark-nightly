Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SplitFunctions?download=true
inline.NumInlined: 3208
inline.NumDeleted: 1686
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN12_GLOBAL__N_118SplitCacheDirected8fragmentEPPN4llvm4bolt16BinaryBasicBlockES5_:bb.a
  br i1 %.not.i.i.i.not.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !919
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 1240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42, !noalias !919
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !443, !noalias !919 ; 2 uses
  store ptr %i.bg, ptr %i.b, align 8, !tbaa !443, !noalias !919
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 152
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !479, !noalias !919
  %i.bj = add i64 %i.bi, 1
  %i.bk = icmp ult i64 %i.bj, 2
  br i1 %i.bk, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !919
  %.fca.0.extract.i36.i.i = extractvalue { ptr, i8 } %i.bl, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i36.i.i, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !453, !noalias !919 ; 2 uses
  %i.bo = load ptr, ptr %i.ak, align 8, !tbaa !478, !noalias !919
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bn ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !42, !noalias !919 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !431, !noalias !919 ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %.idx.i.i = shl nuw nsw i64 %i.bt, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i.i
  %.not56.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not56.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.bv = icmp ult i64 %i.ad, %i.bn
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i, %.lr.ph.i.i
  %.sroa.092.3.i = phi ptr [ %.sroa.092.0.i, %.lr.ph.i.i ], [ %.sroa.092.4.i, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ] ; 3 uses
  %.sroa.6.3.i = phi ptr [ %.sroa.6.0.i, %.lr.ph.i.i ], [ %.sroa.6.4.i, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ] ; 2 uses
  %.sroa.993.3.i = phi ptr [ %.sroa.993.0.i, %.lr.ph.i.i ], [ %.sroa.993.4.i, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ] ; 3 uses
  %.val.i.i.i.i = phi ptr [ %.val.i.i65.i.i, %.lr.ph.i.i ], [ %.val.i.i68.i.i, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ] ; 8 uses
  %i.bw = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.gu, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ] ; 6 uses
  %i.bx = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.gv, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ] ; 6 uses
  %.03457.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %i.gw, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30, !noalias !919
  %i.by = load ptr, ptr %.03457.i.i, align 8, !tbaa !443, !noalias !919 ; 6 uses
  store ptr %i.by, ptr %i.c, align 8, !tbaa !443, !noalias !919
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !533, !noalias !919
  %i.cb = icmp eq ptr %i.t, %i.ca
  br i1 %i.cb, label %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 152
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !479, !noalias !919 ; 2 uses
  %.not.i37.i.i = icmp eq i64 %i.cd, -1
  %spec.select.i38.i.i = select i1 %.not.i37.i.i, i64 0, i64 %i.cd ; 2 uses
  %i.ce = load ptr, ptr %i.aa, align 8, !tbaa !444, !noalias !920 ; 3 uses
  %i.cf = load ptr, ptr %i.al, align 8, !tbaa !445, !noalias !920 ; 3 uses
  %i.cg = load i32, ptr %i.am, align 4, !tbaa !446, !noalias !920 ; 4 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.loopexit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = add i32 %i.cg, -1                       ; 2 uses
  %i.cj = ptrtoint ptr %i.by to i64
  %i.ck = mul i64 %i.cj, -4658895280553007687     ; 2 uses
  %i.cl = lshr i64 %i.ck, 31
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = trunc i64 %i.cm to i32
  %i.co = and i32 %i.ci, %i.cn                    ; 3 uses
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cp ; 2 uses
  %i.cr = lshr i64 %i.cp, 5
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !447, !noalias !919
  %i.cu = and i32 %i.co, 31
  %i.cv = lshr i32 %i.ct, %i.cu
  %i.cw = trunc i32 %i.cv to i1
  br i1 %i.cw, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !448

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %bb.l
  %i.cx = phi ptr [ %i.dd, %bb.l ], [ %i.cq, %bb.k ] ; 2 uses
  %.024.i.i.i.i = phi i32 [ %i.db, %bb.l ], [ %i.co, %bb.k ]
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !443, !noalias !919
  %i.cz = icmp eq ptr %i.by, %i.cy
  br i1 %i.cz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i.i, label %bb.l, !prof !449

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.da = add nuw i32 %.024.i.i.i.i, 1
  %i.db = and i32 %i.da, %i.ci                    ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.dc ; 2 uses
  %i.de = lshr i64 %i.dc, 5
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !447, !noalias !919
  %i.dh = and i32 %i.db, 31
  %i.di = lshr i32 %i.dg, %i.dh
  %i.dj = trunc i32 %i.di to i1
  br i1 %i.dj, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !450, !llvm.loop !1

.loopexit.i.i.i:                                  ; preds = %bb.l, %bb.k, %bb.j
  %.lcssa28.sink.i.ph.i.i.i = phi ptr [ %i.cq, %bb.k ], [ null, %bb.j ], [ %i.dd, %bb.l ]
  %i.dk = load i32, ptr %i.an, align 8, !tbaa !452, !noalias !919
  %i.dl = shl i32 %i.dk, 2
  %i.dm = add i32 %i.dl, 4
  %i.dn = mul i32 %i.cg, 3
  %.not.i.i45.i.i = icmp ult i32 %i.dm, %i.dn
  br i1 %.not.i.i45.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i, label %bb.m, !prof !449

bb.m:                                             ; preds = %.loopexit.i.i.i
  %i.do = shl i32 %i.cg, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.aa, i32 noundef %i.do), !noalias !919
  %i.dp = load ptr, ptr %i.aa, align 8, !tbaa !444, !noalias !921 ; 5 uses
  %i.dq = load ptr, ptr %i.al, align 8, !tbaa !445, !noalias !921 ; 5 uses
  %i.dr = load i32, ptr %i.am, align 4, !tbaa !446, !noalias !921 ; 2 uses
  %i.ds = icmp ne i32 %i.dr, 0
  call void @llvm.assume(i1 %i.ds)
  %i.dt = add i32 %i.dr, -1                       ; 2 uses
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !443, !noalias !919 ; 5 uses
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = mul i64 %i.dv, -4658895280553007687     ; 2 uses
  %i.dx = lshr i64 %i.dw, 31
  %i.dy = xor i64 %i.dx, %i.dw
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.dt, %i.dz                    ; 3 uses
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.eb ; 2 uses
  %i.ed = lshr i64 %i.eb, 5
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !447, !noalias !919
  %i.eg = and i32 %i.ea, 31
  %i.eh = lshr i32 %i.ef, %i.eg
  %i.ei = trunc i32 %i.eh to i1
  br i1 %i.ei, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i, !prof !448

.lr.ph.i.i.i:                                     ; preds = %bb.m, %bb.n
  %i.ej = phi ptr [ %i.ep, %bb.n ], [ %i.ec, %bb.m ] ; 2 uses
  %.024.i.i.i = phi i32 [ %i.en, %bb.n ], [ %i.ea, %bb.m ]
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !443, !noalias !919
  %i.el = icmp eq ptr %i.du, %i.ek
  br i1 %i.el, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i, label %bb.n, !prof !449

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.em = add nuw i32 %.024.i.i.i, 1
  %i.en = and i32 %i.em, %i.dt                    ; 3 uses
  %i.eo = zext i32 %i.en to i64                   ; 2 uses
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.eo ; 2 uses
  %i.eq = lshr i64 %i.eo, 5
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !447, !noalias !919
  %i.et = and i32 %i.en, 31
  %i.eu = lshr i32 %i.es, %i.et
  %i.ev = trunc i32 %i.eu to i1
  br i1 %i.ev, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i, !prof !450, !llvm.loop !1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i, %bb.m, %.loopexit.i.i.i
  %i.ew = phi ptr [ %i.by, %.loopexit.i.i.i ], [ %i.du, %bb.m ], [ %i.du, %.lr.ph.i.i.i ], [ %i.du, %bb.n ]
  %i.ex = phi ptr [ %i.ce, %.loopexit.i.i.i ], [ %i.dp, %bb.m ], [ %i.dp, %.lr.ph.i.i.i ], [ %i.dp, %bb.n ]
  %i.ey = phi ptr [ %i.cf, %.loopexit.i.i.i ], [ %i.dq, %bb.m ], [ %i.dq, %.lr.ph.i.i.i ], [ %i.dq, %bb.n ]
  %i.ez = phi ptr [ %.lcssa28.sink.i.ph.i.i.i, %.loopexit.i.i.i ], [ %i.ec, %bb.m ], [ %i.ep, %bb.n ], [ %i.ej, %.lr.ph.i.i.i ] ; 3 uses
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ex to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = ashr exact i64 %i.fc, 4                 ; 2 uses
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = and i32 %i.fe, 31
  %i.fg = shl nuw i32 1, %i.ff
  %i.fh = lshr i64 %i.fd, 5
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !447, !noalias !919
  %i.fk = or i32 %i.fg, %i.fj
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !447, !noalias !919
  %i.fl = load i32, ptr %i.an, align 8, !tbaa !452, !noalias !919
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.an, align 8, !tbaa !452, !noalias !919
  store ptr %i.ew, ptr %i.ez, align 8, !tbaa !443, !noalias !919
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i64 0, ptr %i.fn, align 8, !tbaa !453, !noalias !919
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.pre.i.i14 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !453, !noalias !919
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i
  %i.fo = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i ], [ %.pre.i.i14, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i.i ] ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %i.ad
  %i.fq = icmp ult i64 %i.ad, %i.fo
  %i.fr = select i1 %i.bv, i1 %i.fp, i1 %i.fq
  br i1 %i.fr, label %bb.o, label %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i

bb.o:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i
  %i.fs = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !919
  %.fca.0.extract.i40.i.i = extractvalue { ptr, i8 } %i.fs, 0
  %i.ft = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i40.i.i, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !453, !noalias !919
  %i.fv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !919
  %.fca.0.extract.i41.i.i = extractvalue { ptr, i8 } %i.fv, 0
  %i.fw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i41.i.i, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !453, !noalias !919
  %i.fy = add i64 %i.fx, %i.fu
  %i.fz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !919
  %.fca.0.extract.i42.i.i = extractvalue { ptr, i8 } %i.fz, 0
  %i.ga = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i42.i.i, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !453, !noalias !919
  %i.gc = sub i64 %i.fy, %i.gb
  %4 = call noundef i64 @llvm.abs.i64(i64 %i.gc, i1 true) ; 2 uses
  %.not.i43.i.i = icmp eq ptr %i.bx, %i.bw
  br i1 %.not.i43.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %4, ptr %i.bx, align 8, !tbaa !453, !noalias !919
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %spec.select.i38.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !453, !noalias !919
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  br label %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.ge = ptrtoint ptr %i.bw to i64
  %i.gf = ptrtoint ptr %.val.i.i.i.i to i64
  %i.gg = sub i64 %i.ge, %i.gf                    ; 6 uses
  %i.gh = icmp eq i64 %i.gg, 9223372036854775792
  br i1 %i.gh, label %bb.r, label %_ZNKSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #35, !noalias !919
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.q
  %i.gi = ashr exact i64 %i.gg, 4                 ; 3 uses
  %i.gj = icmp eq ptr %i.bw, %.val.i.i.i.i
  %.sroa.speculated.i.i.i.i.i = select i1 %i.gj, i64 1, i64 %i.gi
  %i.gk = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.gi ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gi
  %i.gm = call i64 @llvm.umin.i64(i64 %i.gk, i64 576460752303423487)
  %i.gn = select i1 %i.gl, i64 576460752303423487, i64 %i.gm ; 3 uses
  %.not.i.i.i44.i.i = icmp ne i64 %i.gn, 0
  call void @llvm.assume(i1 %.not.i.i.i44.i.i)
  %i.go = shl nuw nsw i64 %i.gn, 4
  %i.gp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #32, !noalias !919 ; 5 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 %i.gg ; 3 uses
  store i64 %4, ptr %i.gq, align 8, !tbaa !453, !noalias !919
  %.sroa.5.0..sroa_idx47.i.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i64 %spec.select.i38.i.i, ptr %.sroa.5.0..sroa_idx47.i.i, align 8, !tbaa !453, !noalias !919
  %i.gr = icmp sgt i64 %i.gg, 0
  br i1 %i.gr, label %bb.s, label %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gp, ptr align 8 %.val.i.i.i.i, i64 %i.gg, i1 false), !noalias !919
  br label %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i.i.i: ; preds = %bb.s, %_ZNKSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %.not.i21.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i21.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.gg) #33, !noalias !919
  br label %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.t, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i.i.i
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %i.gn ; 2 uses
  br label %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.p, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i, %bb.i
  %.sroa.092.4.i = phi ptr [ %.sroa.092.3.i, %bb.i ], [ %i.gp, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.092.3.i, %bb.p ], [ %.sroa.092.3.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i ] ; 2 uses
  %.sroa.6.4.i = phi ptr [ %.sroa.6.3.i, %bb.i ], [ %i.gs, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.gd, %bb.p ], [ %.sroa.6.3.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i ] ; 2 uses
  %.sroa.993.4.i = phi ptr [ %.sroa.993.3.i, %bb.i ], [ %i.gt, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.993.3.i, %bb.p ], [ %.sroa.993.3.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i ] ; 2 uses
  %.val.i.i68.i.i = phi ptr [ %.val.i.i.i.i, %bb.i ], [ %i.gp, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.val.i.i.i.i, %bb.p ], [ %.val.i.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i ] ; 2 uses
  %i.gu = phi ptr [ %i.bw, %bb.i ], [ %i.gt, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.bw, %bb.p ], [ %i.bw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i ] ; 2 uses
  %i.gv = phi ptr [ %i.bx, %bb.i ], [ %i.gs, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.gd, %bb.p ], [ %i.bx, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30, !noalias !919
  %i.gw = getelementptr inbounds nuw i8, ptr %.03457.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gw, %i.bu
  br i1 %.not.i.i, label %.loopexit.i.i, label %bb.i

.loopexit.i.i:                                    ; preds = %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i, %bb.h, %bb.g
  %.sroa.092.5.i = phi ptr [ %.sroa.092.0.i, %bb.g ], [ %.sroa.092.0.i, %bb.h ], [ %.sroa.092.4.i, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ]
  %.sroa.6.5.i = phi ptr [ %.sroa.6.0.i, %bb.g ], [ %.sroa.6.0.i, %bb.h ], [ %.sroa.6.4.i, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ]
  %.sroa.993.5.i = phi ptr [ %.sroa.993.0.i, %bb.g ], [ %.sroa.993.0.i, %bb.h ], [ %.sroa.993.4.i, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ]
  %.val.i.i67.i.i = phi ptr [ %.val.i.i65.i.i, %bb.g ], [ %.val.i.i65.i.i, %bb.h ], [ %.val.i.i68.i.i, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ]
  %i.gx = phi ptr [ %i.ar, %bb.g ], [ %i.ar, %bb.h ], [ %i.gu, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ]
  %i.gy = phi ptr [ %i.as, %bb.g ], [ %i.as, %bb.h ], [ %i.gv, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !919
  br label %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.thread.i.i

_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.thread.i.i: ; preds = %.loopexit.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.i.i, %bb.f, %bb.e
  %.sroa.092.1.i = phi ptr [ %.sroa.092.0.i, %bb.e ], [ %.sroa.092.0.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.i.i ], [ %.sroa.092.5.i, %.loopexit.i.i ], [ %.sroa.092.0.i, %bb.f ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.0.i, %bb.e ], [ %.sroa.6.0.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.i.i ], [ %.sroa.6.5.i, %.loopexit.i.i ], [ %.sroa.6.0.i, %bb.f ] ; 2 uses
  %.sroa.993.1.i = phi ptr [ %.sroa.993.0.i, %bb.e ], [ %.sroa.993.0.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.i.i ], [ %.sroa.993.5.i, %.loopexit.i.i ], [ %.sroa.993.0.i, %bb.f ] ; 2 uses
  %.val.i.i66.i.i = phi ptr [ %.val.i.i65.i.i, %bb.e ], [ %.val.i.i65.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.i.i ], [ %.val.i.i67.i.i, %.loopexit.i.i ], [ %.val.i.i65.i.i, %bb.f ]
  %i.gz = phi ptr [ %i.ar, %bb.e ], [ %i.ar, %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.i.i ], [ %i.gx, %.loopexit.i.i ], [ %i.ar, %bb.f ]
  %i.ha = phi ptr [ %i.as, %bb.e ], [ %i.as, %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.i.i ], [ %i.gy, %.loopexit.i.i ], [ %i.as, %bb.f ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.050.059.i.i, i64 8 ; 2 uses
  %.not53.i.i = icmp eq ptr %i.hb, %i.aj
  br i1 %.not53.i.i, label %._crit_edge.i.loopexit.i, label %bb.e

_ZN12_GLOBAL__N_118SplitCacheDirected17extractCoverCallsERKN4llvm4bolt14BinaryFunctionE.exit.i: ; preds = %._crit_edge.i.i, %bb.c
  %i.hc = phi ptr [ %i.n, %bb.c ], [ %.pre84, %._crit_edge.i.i ]
  %i.hd = phi i32 [ %i.q, %bb.c ], [ %.pre83, %._crit_edge.i.i ] ; 2 uses
  %.sroa.092.6.i = phi ptr [ null, %bb.c ], [ %.sroa.092.2.i, %._crit_edge.i.i ] ; 5 uses
  %.sroa.6.6.i = phi ptr [ null, %bb.c ], [ %.sroa.6.2.i, %._crit_edge.i.i ] ; 2 uses
  %.sroa.993.6.i = phi i64 [ 0, %bb.c ], [ %.sroa.993.2.i, %._crit_edge.i.i ]
  %i.he = zext i32 %i.hd to i64
  %i.hf = call i64 @llvm.usub.sat.i64(i64 %i.he, i64 1) ; 3 uses
  %exitcond.not.i177 = icmp ult i32 %i.hd, 2
  br i1 %exitcond.not.i177, label %._crit_edge180, label %.lr.ph179

bb.u:                                             ; preds = %.lr.ph179
  %exitcond.not.i = icmp eq i64 %i.hg, %i.hf
  br i1 %exitcond.not.i, label %._crit_edge180, label %.lr.ph179, !llvm.loop !873

.lr.ph179:                                        ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected17extractCoverCallsERKN4llvm4bolt14BinaryFunctionE.exit.i, %bb.u
  %.022.i178 = phi i64 [ %i.hg, %bb.u ], [ 0, %_ZN12_GLOBAL__N_118SplitCacheDirected17extractCoverCallsERKN4llvm4bolt14BinaryFunctionE.exit.i ] ; 2 uses
  %i.hg = add nuw nsw i64 %.022.i178, 1           ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hg
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !443
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 176
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.hj, align 8, !tbaa !447
  %i.hk = icmp eq i32 %.sroa.0.0.copyload.i.i, 1
  br i1 %i.hk, label %._crit_edge, label %bb.u, !llvm.loop !873

._crit_edge:                                      ; preds = %.lr.ph179
  br label %._crit_edge180, !llvm.loop !873

._crit_edge180:                                   ; preds = %bb.u, %._crit_edge, %_ZN12_GLOBAL__N_118SplitCacheDirected17extractCoverCallsERKN4llvm4bolt14BinaryFunctionE.exit.i
  %.022.lcssa.i = phi i64 [ %.022.i178, %._crit_edge ], [ %i.hf, %_ZN12_GLOBAL__N_118SplitCacheDirected17extractCoverCallsERKN4llvm4bolt14BinaryFunctionE.exit.i ], [ %i.hf, %bb.u ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %.not2.i.i.i = icmp eq ptr %.sroa.092.6.i, %.sroa.6.6.i
  br label %bb.x

bb.v:                                             ; preds = %bb.bm
  %.not.i.i.i33.i = icmp eq ptr %.sroa.092.6.i, null
  br i1 %.not.i.i.i33.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ia = ptrtoint ptr %.sroa.092.6.i to i64
  %i.ib = sub i64 %.sroa.993.6.i, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.092.6.i, i64 noundef %i.ib) #33
  br label %_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit

bb.x:                                             ; preds = %bb.bm, %._crit_edge180
  %.0141.i = phi i64 [ 0, %._crit_edge180 ], [ %i.if, %bb.bm ] ; 5 uses
  %.sroa.088.0140.i = phi i64 [ -1, %._crit_edge180 ], [ %.sroa.088.2.i, %bb.bm ] ; 2 uses
  %.sroa.990.0139.i = phi double [ 0.000000e+00, %._crit_edge180 ], [ %.sroa.990.2.i, %bb.bm ] ; 3 uses
  %.sroa.7.0138.i = phi double [ 0.000000e+00, %._crit_edge180 ], [ %.sroa.7.2.i, %bb.bm ] ; 3 uses
  %i.ic = load ptr, ptr %3, align 8, !tbaa !42    ; 3 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %.0141.i
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !443 ; 5 uses
  %i.if = add i64 %.0141.i, 1                     ; 4 uses
  %i.ig = load i32, ptr %i.e, align 8, !tbaa !431 ; 2 uses
  %i.ih = zext i32 %i.ig to i64
  %i.ii = icmp ult i64 %i.if, %i.ih
  br i1 %i.ii, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.if
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !443
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 48
  %i.im = load i32, ptr %i.il, align 8, !tbaa !431
  switch i32 %i.im, label %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i [
    i32 1, label %bb.z
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.in = call noundef ptr @_ZNK4llvm4bolt16BinaryBasicBlock12getSuccessorEPKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(192) %i.ie, ptr noundef null) #30
  br label %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 56
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !42 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !923 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !923 ; 2 uses
  %i.it = icmp ugt i64 %i.iq, %i.is
  br i1 %i.it, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ie, i64 40
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !42
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !443
  br label %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.ix = icmp ult i64 %i.iq, %i.is
  br i1 %i.ix, label %bb.ad, label %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ie, i64 40
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !42
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !443
  br label %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i

_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y
  %.1.i.i = phi ptr [ %i.in, %bb.z ], [ null, %bb.y ], [ null, %bb.ac ], [ %i.iw, %bb.ab ], [ %i.jb, %bb.ad ]
  %i.jc = icmp eq ptr %i.ik, %.1.i.i
  br i1 %i.jc, label %bb.bm, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i
  %.pr.i = load i32, ptr %i.e, align 8, !tbaa !431, !noalias !924
  %.pre.i.i.pre.i = load ptr, ptr %3, align 8, !tbaa !42, !noalias !924
  br label %bb.ae

bb.ae:                                            ; preds = %thread-pre-split.i, %bb.x
  %.pre.i.i.i = phi ptr [ %.pre.i.i.pre.i, %thread-pre-split.i ], [ %i.ic, %bb.x ] ; 3 uses
  %i.jd = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.ig, %bb.x ] ; 2 uses
  %.not64.i.i.i = icmp eq i32 %i.jd, 0
  %.pre.i34.i = load ptr, ptr %.pre.i.i.i, align 8, !tbaa !443, !noalias !924 ; 2 uses
  br i1 %.not64.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.ae
  %i.je = getelementptr inbounds nuw i8, ptr %.pre.i34.i, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i.i18.i.i = load i32, ptr %i.je, align 8, !tbaa !447, !noalias !924
  %i.jf = icmp eq i32 %.sroa.0.0.copyload.i.i18.i.i, 1
  %.pre44.i.i = zext i32 %i.jd to i64             ; 4 uses
  br i1 %i.jf, label %.critedge.i.i.i, label %.lr.ph.i35.i.preheader

.lr.ph.i35.i.preheader:                           ; preds = %.lr.ph.i.preheader.i.i
  %i.jg = add nsw i64 %.pre44.i.i, -1             ; 2 uses
  store i32 0, ptr %i.je, align 8, !tbaa !447, !noalias !924
  %exitcond.not182 = icmp eq i64 %i.jg, 0
  br i1 %exitcond.not182, label %..critedge.loopexit.i_crit_edge.i.i, label %.lr.ph.i.i40.i.lr.ph, !llvm.loop !876

.lr.ph.i.i40.i.lr.ph:                             ; preds = %.lr.ph.i35.i.preheader
  br label %.lr.ph.i.i40.i, !llvm.loop !876

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_118SplitCacheDirected8fragmentEPPN4llvm4bolt16BinaryBasicBlockES5_:bb.a
  %i.nz = or i32 %i.nv, %i.ny
  store i32 %i.nz, ptr %i.nx, align 4, !tbaa !447, !noalias !924
  %i.oa = load i32, ptr %i.hr, align 8, !tbaa !452, !noalias !924
  %i.ob = add i32 %i.oa, 1
  store i32 %i.ob, ptr %i.hr, align 8, !tbaa !452, !noalias !924
  store ptr %.0102.i, ptr %i.no, align 8, !tbaa !443, !noalias !924
  %i.oc = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store i64 0, ptr %i.oc, align 8, !tbaa !453, !noalias !924
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit74.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit74.loopexit.i: ; preds = %.lr.ph.i.i72.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !453, !noalias !924
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit74.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit74.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit74.loopexit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i67.i
  %i.od = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i67.i ], [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit74.loopexit.i ]
  %i.oe = load ptr, ptr %i.ho, align 8, !tbaa !444, !noalias !928 ; 3 uses
  %i.of = load ptr, ptr %i.hs, align 8, !tbaa !445, !noalias !928 ; 3 uses
  %i.og = load i32, ptr %i.ht, align 4, !tbaa !446, !noalias !928 ; 4 uses
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %.loopexit.i47.i, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit74.i
  %i.oi = add i32 %i.og, -1                       ; 2 uses
  %i.oj = ptrtoint ptr %.0102.i to i64
  %i.ok = mul i64 %i.oj, -4658895280553007687     ; 2 uses
  %i.ol = lshr i64 %i.ok, 31
  %i.om = xor i64 %i.ol, %i.ok
  %i.on = trunc i64 %i.om to i32
  %i.oo = and i32 %i.oi, %i.on                    ; 3 uses
  %i.op = zext i32 %i.oo to i64                   ; 2 uses
  %i.oq = getelementptr inbounds nuw [16 x i8], ptr %i.oe, i64 %i.op ; 2 uses
  %i.or = lshr i64 %i.op, 5
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.or
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !447, !noalias !924
  %i.ou = and i32 %i.oo, 31
  %i.ov = lshr i32 %i.ot, %i.ou
  %i.ow = trunc i32 %i.ov to i1
  br i1 %i.ow, label %.lr.ph.i.i58.i, label %.loopexit.i47.i, !prof !448

.lr.ph.i.i58.i:                                   ; preds = %bb.am, %bb.an
  %i.ox = phi ptr [ %i.pd, %bb.an ], [ %i.oq, %bb.am ] ; 2 uses
  %.024.i.i59.i = phi i32 [ %i.pb, %bb.an ], [ %i.oo, %bb.am ]
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !443, !noalias !924
  %i.oz = icmp eq ptr %.0102.i, %i.oy
  br i1 %i.oz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit60.loopexit.i, label %bb.an, !prof !449

bb.an:                                            ; preds = %.lr.ph.i.i58.i
  %i.pa = add nuw i32 %.024.i.i59.i, 1
  %i.pb = and i32 %i.pa, %i.oi                    ; 3 uses
  %i.pc = zext i32 %i.pb to i64                   ; 2 uses
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %i.oe, i64 %i.pc ; 2 uses
  %i.pe = lshr i64 %i.pc, 5
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pe
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !447, !noalias !924
  %i.ph = and i32 %i.pb, 31
  %i.pi = lshr i32 %i.pg, %i.ph
  %i.pj = trunc i32 %i.pi to i1
  br i1 %i.pj, label %.lr.ph.i.i58.i, label %.loopexit.i47.i, !prof !450, !llvm.loop !1

.loopexit.i47.i:                                  ; preds = %bb.an, %bb.am, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit74.i
  %.lcssa28.sink.i.ph.i48.i = phi ptr [ %i.oq, %bb.am ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit74.i ], [ %i.pd, %bb.an ]
  %i.pk = load i32, ptr %i.hu, align 8, !tbaa !452, !noalias !924
  %i.pl = shl i32 %i.pk, 2
  %i.pm = add i32 %i.pl, 4
  %i.pn = mul i32 %i.og, 3
  %.not.i.i49.i = icmp ult i32 %i.pm, %i.pn
  br i1 %.not.i.i49.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53.i, label %bb.ao, !prof !449

bb.ao:                                            ; preds = %.loopexit.i47.i
  %i.po = shl i32 %i.og, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.ho, i32 noundef %i.po), !noalias !924
  %i.pp = load ptr, ptr %i.ho, align 8, !tbaa !444, !noalias !929 ; 5 uses
  %i.pq = load ptr, ptr %i.hs, align 8, !tbaa !445, !noalias !929 ; 5 uses
  %i.pr = load i32, ptr %i.ht, align 4, !tbaa !446, !noalias !929 ; 2 uses
  %i.ps = icmp ne i32 %i.pr, 0
  call void @llvm.assume(i1 %i.ps)
  %i.pt = add i32 %i.pr, -1                       ; 2 uses
  %i.pu = ptrtoint ptr %.0102.i to i64
  %i.pv = mul i64 %i.pu, -4658895280553007687     ; 2 uses
  %i.pw = lshr i64 %i.pv, 31
  %i.px = xor i64 %i.pw, %i.pv
  %i.py = trunc i64 %i.px to i32
  %i.pz = and i32 %i.pt, %i.py                    ; 3 uses
  %i.qa = zext i32 %i.pz to i64                   ; 2 uses
  %i.qb = getelementptr inbounds nuw [16 x i8], ptr %i.pp, i64 %i.qa ; 2 uses
  %i.qc = lshr i64 %i.qa, 5
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !447, !noalias !924
  %i.qf = and i32 %i.pz, 31
  %i.qg = lshr i32 %i.qe, %i.qf
  %i.qh = trunc i32 %i.qg to i1
  br i1 %i.qh, label %.lr.ph.i78.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53.i, !prof !448

.lr.ph.i78.i:                                     ; preds = %bb.ao, %bb.ap
  %i.qi = phi ptr [ %i.qo, %bb.ap ], [ %i.qb, %bb.ao ] ; 2 uses
  %.024.i79.i = phi i32 [ %i.qm, %bb.ap ], [ %i.pz, %bb.ao ]
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !443, !noalias !924
  %i.qk = icmp eq ptr %.0102.i, %i.qj
  br i1 %i.qk, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53.i, label %bb.ap, !prof !449

bb.ap:                                            ; preds = %.lr.ph.i78.i
  %i.ql = add nuw i32 %.024.i79.i, 1
  %i.qm = and i32 %i.ql, %i.pt                    ; 3 uses
  %i.qn = zext i32 %i.qm to i64                   ; 2 uses
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.pp, i64 %i.qn ; 2 uses
  %i.qp = lshr i64 %i.qn, 5
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.qp
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !447, !noalias !924
  %i.qs = and i32 %i.qm, 31
  %i.qt = lshr i32 %i.qr, %i.qs
  %i.qu = trunc i32 %i.qt to i1
  br i1 %i.qu, label %.lr.ph.i78.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53.i, !prof !450, !llvm.loop !1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53.i: ; preds = %bb.ap, %.lr.ph.i78.i, %bb.ao, %.loopexit.i47.i
  %i.qv = phi ptr [ %i.oe, %.loopexit.i47.i ], [ %i.pp, %bb.ao ], [ %i.pp, %.lr.ph.i78.i ], [ %i.pp, %bb.ap ]
  %i.qw = phi ptr [ %i.of, %.loopexit.i47.i ], [ %i.pq, %bb.ao ], [ %i.pq, %.lr.ph.i78.i ], [ %i.pq, %bb.ap ]
  %i.qx = phi ptr [ %.lcssa28.sink.i.ph.i48.i, %.loopexit.i47.i ], [ %i.qb, %bb.ao ], [ %i.qo, %bb.ap ], [ %i.qi, %.lr.ph.i78.i ] ; 3 uses
  %i.qy = ptrtoint ptr %i.qx to i64
  %i.qz = ptrtoint ptr %i.qv to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = ashr exact i64 %i.ra, 4                 ; 2 uses
  %i.rc = trunc i64 %i.rb to i32
  %i.rd = and i32 %i.rc, 31
  %i.re = shl nuw i32 1, %i.rd
  %i.rf = lshr i64 %i.rb, 5
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %i.rf ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !447, !noalias !924
  %i.ri = or i32 %i.re, %i.rh
  store i32 %i.ri, ptr %i.rg, align 4, !tbaa !447, !noalias !924
  %i.rj = load i32, ptr %i.hu, align 8, !tbaa !452, !noalias !924
  %i.rk = add i32 %i.rj, 1
  store i32 %i.rk, ptr %i.hu, align 8, !tbaa !452, !noalias !924
  store ptr %.0102.i, ptr %i.qx, align 8, !tbaa !443, !noalias !924
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  store i64 0, ptr %i.rl, align 8, !tbaa !453, !noalias !924
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit60.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit60.loopexit.i: ; preds = %.lr.ph.i.i58.i
  %.phi.trans.insert175.i = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %.pre176.i = load i64, ptr %.phi.trans.insert175.i, align 8, !tbaa !453, !noalias !924
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit60.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit60.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit60.loopexit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53.i
  %i.rm = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53.i ], [ %.pre176.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit60.loopexit.i ]
  %i.rn = getelementptr inbounds nuw i8, ptr %.03461.i22.i.i, i64 8 ; 3 uses
  %.not38.i.i.i = icmp eq ptr %i.rn, %i.jy
  br i1 %.not38.i.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i.i, label %bb.af

_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit60.i, %bb.af
  %.04752.i.i.i = add i64 %i.rm, %i.od            ; 2 uses
  %i.ro = icmp ult i64 %.04752.i.i.i, %.150.i.i.i
  br i1 %i.ro, label %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i._ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i_crit_edge.i

_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i._ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i_crit_edge.i: ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i.i
  %.val11.pr.pre40.i.pre.i = load i32, ptr %i.e, align 8, !tbaa !431, !noalias !924
  %.val.pre42.i.pre.i = load ptr, ptr %3, align 8, !tbaa !42, !noalias !924
  br label %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i

_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i: ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i._ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i_crit_edge.i, %.lr.ph62.i.i.i, %.critedge.i.i.i
  %.val.pre42.i.i = phi ptr [ %.val.pre42.i.pre.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i._ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i_crit_edge.i ], [ %i.jv, %.critedge.i.i.i ], [ %i.jv, %.lr.ph62.i.i.i ] ; 2 uses
  %.val11.pr.pre40.i.i = phi i32 [ %.val11.pr.pre40.i.pre.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i._ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i_crit_edge.i ], [ 0, %.critedge.i.i.i ], [ %i.jw, %.lr.ph62.i.i.i ] ; 2 uses
  %.04752.i60.i.i = phi i64 [ %.04752.i.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i._ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i_crit_edge.i ], [ 0, %.critedge.i.i.i ], [ 0, %.lr.ph62.i.i.i ]
  %.04954.i59.i.i = phi i64 [ %.150.i.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i._ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i_crit_edge.i ], [ 0, %.critedge.i.i.i ], [ 0, %.lr.ph62.i.i.i ]
  %i.rp = sub nuw i64 %.04752.i60.i.i, %.04954.i59.i.i ; 2 uses
  %i.rq = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 120), align 8, !tbaa !558, !noalias !924
  %i.rr = fcmp oeq double %i.rq, 0.000000e+00
  br i1 %i.rr, label %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i
  %i.rs = zext i32 %.val11.pr.pre40.i.i to i64
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %.val.pre42.i.i, i64 %i.rs
  %i.ru = getelementptr inbounds i8, ptr %i.rt, i64 -8
  %i.rv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hv, ptr noundef nonnull align 8 dereferenceable(8) %i.ru), !noalias !924
  %.fca.0.extract.i.i14.i.i = extractvalue { ptr, i8 } %i.rv, 0
  %i.rw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i14.i.i, i64 8
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !453, !noalias !924
  %i.ry = load ptr, ptr %3, align 8, !tbaa !42, !noalias !924 ; 2 uses
  %i.rz = load i32, ptr %i.e, align 8, !tbaa !431, !noalias !924 ; 2 uses
  %i.sa = zext i32 %i.rz to i64
  %.idx.i15.i.i = shl nuw nsw i64 %i.sa, 3
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 %.idx.i15.i.i
  %.not67.i.i.i = icmp eq i32 %i.rz, 0
  br i1 %.not67.i.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i, label %.lr.ph69.i.i.i

.lr.ph69.i.i.i:                                   ; preds = %bb.aq, %.loopexit.i.i37.i
  %.sroa.9.1.i = phi double [ %.sroa.9.2.i, %.loopexit.i.i37.i ], [ 0.000000e+00, %bb.aq ] ; 2 uses
  %i.sc = phi double [ %i.adh, %.loopexit.i.i37.i ], [ 0.000000e+00, %bb.aq ] ; 3 uses
  %.02568.i.i.i = phi ptr [ %i.adi, %.loopexit.i.i37.i ], [ %i.ry, %bb.aq ] ; 2 uses
  %i.sd = load ptr, ptr %.02568.i.i.i, align 8, !tbaa !443, !noalias !924 ; 7 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 152
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !479, !noalias !924 ; 2 uses
  %i.sg = add i64 %i.sf, 1
  %i.sh = icmp ult i64 %i.sg, 2
  br i1 %i.sh, label %.loopexit.i.i37.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph69.i.i.i
  %i.si = getelementptr inbounds nuw i8, ptr %i.sd, i64 124
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !930, !noalias !924
  %i.sk = zext i32 %i.sj to i64
  %i.sl = load ptr, ptr %i.hv, align 8, !tbaa !444, !noalias !931 ; 3 uses
  %i.sm = load ptr, ptr %i.hx, align 8, !tbaa !445, !noalias !931 ; 3 uses
  %i.sn = load i32, ptr %i.hy, align 4, !tbaa !446, !noalias !931 ; 4 uses
  %i.so = icmp eq i32 %i.sn, 0
  br i1 %i.so, label %.loopexit.i41.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.sp = add i32 %i.sn, -1                       ; 2 uses
  %i.sq = ptrtoint ptr %i.sd to i64
  %i.sr = mul i64 %i.sq, -4658895280553007687     ; 2 uses
  %i.ss = lshr i64 %i.sr, 31
  %i.st = xor i64 %i.ss, %i.sr
  %i.su = trunc i64 %i.st to i32
  %i.sv = and i32 %i.sp, %i.su                    ; 3 uses
  %i.sw = zext i32 %i.sv to i64                   ; 2 uses
  %i.sx = getelementptr inbounds nuw [16 x i8], ptr %i.sl, i64 %i.sw ; 2 uses
  %i.sy = lshr i64 %i.sw, 5
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.sy
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !447, !noalias !924
  %i.tb = and i32 %i.sv, 31
  %i.tc = lshr i32 %i.ta, %i.tb
  %i.td = trunc i32 %i.tc to i1
  br i1 %i.td, label %.lr.ph.i.i45.i, label %.loopexit.i41.i, !prof !448

.lr.ph.i.i45.i:                                   ; preds = %bb.as, %bb.at
  %i.te = phi ptr [ %i.tk, %bb.at ], [ %i.sx, %bb.as ] ; 2 uses
  %.024.i.i46.i = phi i32 [ %i.ti, %bb.at ], [ %i.sv, %bb.as ]
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !443, !noalias !924
  %i.tg = icmp eq ptr %i.sd, %i.tf
  br i1 %i.tg, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i, label %bb.at, !prof !449

bb.at:                                            ; preds = %.lr.ph.i.i45.i
  %i.th = add nuw i32 %.024.i.i46.i, 1
  %i.ti = and i32 %i.th, %i.sp                    ; 3 uses
  %i.tj = zext i32 %i.ti to i64                   ; 2 uses
  %i.tk = getelementptr inbounds nuw [16 x i8], ptr %i.sl, i64 %i.tj ; 2 uses
  %i.tl = lshr i64 %i.tj, 5
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.tl
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !447, !noalias !924
  %i.to = and i32 %i.ti, 31
  %i.tp = lshr i32 %i.tn, %i.to
  %i.tq = trunc i32 %i.tp to i1
  br i1 %i.tq, label %.lr.ph.i.i45.i, label %.loopexit.i41.i, !prof !450, !llvm.loop !1

.loopexit.i41.i:                                  ; preds = %bb.at, %bb.as, %bb.ar
  %.lcssa28.sink.i.ph.i.i = phi ptr [ %i.sx, %bb.as ], [ null, %bb.ar ], [ %i.tk, %bb.at ]
  %i.tr = load i32, ptr %i.hz, align 8, !tbaa !452, !noalias !924
  %i.ts = shl i32 %i.tr, 2
  %i.tt = add i32 %i.ts, 4
  %i.tu = mul i32 %i.sn, 3
  %.not.i.i42.i = icmp ult i32 %i.tt, %i.tu
  br i1 %.not.i.i42.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i, label %bb.au, !prof !449

bb.au:                                            ; preds = %.loopexit.i41.i
  %i.tv = shl i32 %i.sn, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.hv, i32 noundef %i.tv), !noalias !924
  %i.tw = load ptr, ptr %i.hv, align 8, !tbaa !444, !noalias !932 ; 5 uses
  %i.tx = load ptr, ptr %i.hx, align 8, !tbaa !445, !noalias !932 ; 5 uses
  %i.ty = load i32, ptr %i.hy, align 4, !tbaa !446, !noalias !932 ; 2 uses
  %i.tz = icmp ne i32 %i.ty, 0
  call void @llvm.assume(i1 %i.tz)
  %i.ua = add i32 %i.ty, -1                       ; 2 uses
  %i.ub = ptrtoint ptr %i.sd to i64
  %i.uc = mul i64 %i.ub, -4658895280553007687     ; 2 uses
  %i.ud = lshr i64 %i.uc, 31
  %i.ue = xor i64 %i.ud, %i.uc
  %i.uf = trunc i64 %i.ue to i32
  %i.ug = and i32 %i.ua, %i.uf                    ; 3 uses
  %i.uh = zext i32 %i.ug to i64                   ; 2 uses
  %i.ui = getelementptr inbounds nuw [16 x i8], ptr %i.tw, i64 %i.uh ; 2 uses
  %i.uj = lshr i64 %i.uh, 5
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.uj
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !447, !noalias !924
  %i.um = and i32 %i.ug, 31
  %i.un = lshr i32 %i.ul, %i.um
  %i.uo = trunc i32 %i.un to i1
  br i1 %i.uo, label %.lr.ph.i75.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i, !prof !448

.lr.ph.i75.i:                                     ; preds = %bb.au, %bb.av
  %i.up = phi ptr [ %i.uv, %bb.av ], [ %i.ui, %bb.au ] ; 2 uses
  %.024.i.i = phi i32 [ %i.ut, %bb.av ], [ %i.ug, %bb.au ]
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !443, !noalias !924
  %i.ur = icmp eq ptr %i.sd, %i.uq
  br i1 %i.ur, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i, label %bb.av, !prof !449

bb.av:                                            ; preds = %.lr.ph.i75.i
  %i.us = add nuw i32 %.024.i.i, 1
  %i.ut = and i32 %i.us, %i.ua                    ; 3 uses
  %i.uu = zext i32 %i.ut to i64                   ; 2 uses
  %i.uv = getelementptr inbounds nuw [16 x i8], ptr %i.tw, i64 %i.uu ; 2 uses
  %i.uw = lshr i64 %i.uu, 5
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.uw
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !447, !noalias !924
  %i.uz = and i32 %i.ut, 31
  %i.va = lshr i32 %i.uy, %i.uz
  %i.vb = trunc i32 %i.va to i1
  br i1 %i.vb, label %.lr.ph.i75.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i, !prof !450, !llvm.loop !1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i: ; preds = %bb.av, %.lr.ph.i75.i, %bb.au, %.loopexit.i41.i
  %i.vc = phi ptr [ %i.sl, %.loopexit.i41.i ], [ %i.tw, %bb.au ], [ %i.tw, %.lr.ph.i75.i ], [ %i.tw, %bb.av ]
  %i.vd = phi ptr [ %i.sm, %.loopexit.i41.i ], [ %i.tx, %bb.au ], [ %i.tx, %.lr.ph.i75.i ], [ %i.tx, %bb.av ]
  %i.ve = phi ptr [ %.lcssa28.sink.i.ph.i.i, %.loopexit.i41.i ], [ %i.ui, %bb.au ], [ %i.uv, %bb.av ], [ %i.up, %.lr.ph.i75.i ] ; 3 uses
  %i.vf = ptrtoint ptr %i.ve to i64
  %i.vg = ptrtoint ptr %i.vc to i64
  %i.vh = sub i64 %i.vf, %i.vg
  %i.vi = ashr exact i64 %i.vh, 4                 ; 2 uses
  %i.vj = trunc i64 %i.vi to i32
  %i.vk = and i32 %i.vj, 31
  %i.vl = shl nuw i32 1, %i.vk
  %i.vm = lshr i64 %i.vi, 5
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.vm ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !447, !noalias !924
  %i.vp = or i32 %i.vl, %i.vo
  store i32 %i.vp, ptr %i.vn, align 4, !tbaa !447, !noalias !924
  %i.vq = load i32, ptr %i.hz, align 8, !tbaa !452, !noalias !924
  %i.vr = add i32 %i.vq, 1
  store i32 %i.vr, ptr %i.hz, align 8, !tbaa !452, !noalias !924
  store ptr %i.sd, ptr %i.ve, align 8, !tbaa !443, !noalias !924
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  store i64 0, ptr %i.vs, align 8, !tbaa !453, !noalias !924
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i: ; preds = %.lr.ph.i.i45.i
  %.phi.trans.insert179.i = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %.pre180.i = load i64, ptr %.phi.trans.insert179.i, align 8, !tbaa !453, !noalias !924
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i
  %i.vt = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i ], [ %.pre180.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i ]
  %i.vu = load ptr, ptr %i.hw, align 8, !tbaa !478, !noalias !924
  %i.vv = getelementptr inbounds nuw [16 x i8], ptr %i.vu, i64 %i.vt ; 2 uses
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !42, !noalias !924 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vy = load i32, ptr %i.vx, align 8, !tbaa !431, !noalias !924 ; 2 uses
  %i.vz = zext i32 %i.vy to i64
  %.idx70.i.i.i = shl nuw nsw i64 %i.vz, 3
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vw, i64 %.idx70.i.i.i
  %.not2865.i.i.i = icmp eq i32 %i.vy, 0
  br i1 %.not2865.i.i.i, label %.loopexit.i.i37.i, label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i
  %i.wb = uitofp i64 %i.sf to double
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bf, %.lr.ph.i16.i.i
  %i.wc = phi double [ %i.sc, %.lr.ph.i16.i.i ], [ %i.adf, %bb.bf ]
  %.02466.i.i.i = phi ptr [ %i.vw, %.lr.ph.i16.i.i ], [ %i.adg, %bb.bf ] ; 2 uses
  %i.wd = load ptr, ptr %.02466.i.i.i, align 8, !tbaa !443, !noalias !924 ; 10 uses
  %i.we = load ptr, ptr %i.hm, align 8, !tbaa !444, !noalias !933 ; 3 uses
  %i.wf = load ptr, ptr %i.hp, align 8, !tbaa !445, !noalias !933 ; 3 uses
  %i.wg = load i32, ptr %i.hq, align 4, !tbaa !446, !noalias !933 ; 4 uses
  %i.wh = icmp eq i32 %i.wg, 0
  br i1 %i.wh, label %.loopexit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.wi = add i32 %i.wg, -1                       ; 2 uses
  %i.wj = ptrtoint ptr %i.wd to i64
  %i.wk = mul i64 %i.wj, -4658895280553007687     ; 2 uses
  %i.wl = lshr i64 %i.wk, 31
  %i.wm = xor i64 %i.wl, %i.wk
  %i.wn = trunc i64 %i.wm to i32
  %i.wo = and i32 %i.wi, %i.wn                    ; 3 uses
  %i.wp = zext i32 %i.wo to i64                   ; 2 uses
  %i.wq = getelementptr inbounds nuw [16 x i8], ptr %i.we, i64 %i.wp ; 2 uses
  %i.wr = lshr i64 %i.wp, 5
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %i.wr
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !447, !noalias !924
  %i.wu = and i32 %i.wo, 31
  %i.wv = lshr i32 %i.wt, %i.wu
  %i.ww = trunc i32 %i.wv to i1
  br i1 %i.ww, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !448

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ax, %bb.ay
  %i.wx = phi ptr [ %i.xd, %bb.ay ], [ %i.wq, %bb.ax ] ; 2 uses
  %.024.i.i.i.i.i = phi i32 [ %i.xb, %bb.ay ], [ %i.wo, %bb.ax ]
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !443, !noalias !924
  %i.wz = icmp eq ptr %i.wd, %i.wy
  br i1 %i.wz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i.i.i, label %bb.ay, !prof !449

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.xa = add nuw i32 %.024.i.i.i.i.i, 1
  %i.xb = and i32 %i.xa, %i.wi                    ; 3 uses
  %i.xc = zext i32 %i.xb to i64                   ; 2 uses
  %i.xd = getelementptr inbounds nuw [16 x i8], ptr %i.we, i64 %i.xc ; 2 uses
  %i.xe = lshr i64 %i.xc, 5
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %i.xe
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !447, !noalias !924
  %i.xh = and i32 %i.xb, 31
  %i.xi = lshr i32 %i.xg, %i.xh
  %i.xj = trunc i32 %i.xi to i1
  br i1 %i.xj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !450, !llvm.loop !1

.loopexit.i.i.i.i:                                ; preds = %bb.ay, %bb.ax, %bb.aw
  %.lcssa28.sink.i.ph.i.i.i.i = phi ptr [ %i.wq, %bb.ax ], [ null, %bb.aw ], [ %i.xd, %bb.ay ]
  %i.xk = load i32, ptr %i.hr, align 8, !tbaa !452, !noalias !924
  %i.xl = shl i32 %i.xk, 2
  %i.xm = add i32 %i.xl, 4
  %i.xn = mul i32 %i.wg, 3
  %.not.i.i.i.i.i = icmp ult i32 %i.xm, %i.xn
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i.i, label %bb.az, !prof !449
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_118SplitCacheDirected8fragmentEPPN4llvm4bolt16BinaryBasicBlockES5_:bb.a
  call void @llvm.assume(i1 %i.xs)
  %i.xt = add i32 %i.xr, -1                       ; 2 uses
  %i.xu = ptrtoint ptr %i.wd to i64
  %i.xv = mul i64 %i.xu, -4658895280553007687     ; 2 uses
  %i.xw = lshr i64 %i.xv, 31
  %i.xx = xor i64 %i.xw, %i.xv
  %i.xy = trunc i64 %i.xx to i32
  %i.xz = and i32 %i.xt, %i.xy                    ; 3 uses
  %i.ya = zext i32 %i.xz to i64                   ; 2 uses
  %i.yb = getelementptr inbounds nuw [16 x i8], ptr %i.xp, i64 %i.ya ; 2 uses
  %i.yc = lshr i64 %i.ya, 5
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.yc
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !447, !noalias !924
  %i.yf = and i32 %i.xz, 31
  %i.yg = lshr i32 %i.ye, %i.yf
  %i.yh = trunc i32 %i.yg to i1
  br i1 %i.yh, label %.lr.ph.i.i.i38.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i.i, !prof !448

.lr.ph.i.i.i38.i:                                 ; preds = %bb.az, %bb.ba
  %i.yi = phi ptr [ %i.yo, %bb.ba ], [ %i.yb, %bb.az ] ; 2 uses
  %.024.i.i.i39.i = phi i32 [ %i.ym, %bb.ba ], [ %i.xz, %bb.az ]
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !443, !noalias !924
  %i.yk = icmp eq ptr %i.wd, %i.yj
  br i1 %i.yk, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i.i, label %bb.ba, !prof !449

bb.ba:                                            ; preds = %.lr.ph.i.i.i38.i
  %i.yl = add nuw i32 %.024.i.i.i39.i, 1
  %i.ym = and i32 %i.yl, %i.xt                    ; 3 uses
  %i.yn = zext i32 %i.ym to i64                   ; 2 uses
  %i.yo = getelementptr inbounds nuw [16 x i8], ptr %i.xp, i64 %i.yn ; 2 uses
  %i.yp = lshr i64 %i.yn, 5
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.yp
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !447, !noalias !924
  %i.ys = and i32 %i.ym, 31
  %i.yt = lshr i32 %i.yr, %i.ys
  %i.yu = trunc i32 %i.yt to i1
  br i1 %i.yu, label %.lr.ph.i.i.i38.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i.i, !prof !450, !llvm.loop !1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i.i: ; preds = %bb.ba, %.lr.ph.i.i.i38.i, %bb.az, %.loopexit.i.i.i.i
  %i.yv = phi ptr [ %i.we, %.loopexit.i.i.i.i ], [ %i.xp, %bb.az ], [ %i.xp, %.lr.ph.i.i.i38.i ], [ %i.xp, %bb.ba ]
  %i.yw = phi ptr [ %i.wf, %.loopexit.i.i.i.i ], [ %i.xq, %bb.az ], [ %i.xq, %.lr.ph.i.i.i38.i ], [ %i.xq, %bb.ba ]
  %i.yx = phi ptr [ %.lcssa28.sink.i.ph.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.yb, %bb.az ], [ %i.yo, %bb.ba ], [ %i.yi, %.lr.ph.i.i.i38.i ] ; 3 uses
  %i.yy = ptrtoint ptr %i.yx to i64
  %i.yz = ptrtoint ptr %i.yv to i64
  %i.za = sub i64 %i.yy, %i.yz
  %i.zb = ashr exact i64 %i.za, 4                 ; 2 uses
  %i.zc = trunc i64 %i.zb to i32
  %i.zd = and i32 %i.zc, 31
  %i.ze = shl nuw i32 1, %i.zd
  %i.zf = lshr i64 %i.zb, 5
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %i.zf ; 2 uses
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !447, !noalias !924
  %i.zi = or i32 %i.ze, %i.zh
  store i32 %i.zi, ptr %i.zg, align 4, !tbaa !447, !noalias !924
  %i.zj = load i32, ptr %i.hr, align 8, !tbaa !452, !noalias !924
  %i.zk = add i32 %i.zj, 1
  store i32 %i.zk, ptr %i.hr, align 8, !tbaa !452, !noalias !924
  store ptr %i.wd, ptr %i.yx, align 8, !tbaa !443, !noalias !924
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  store i64 0, ptr %i.zl, align 8, !tbaa !453, !noalias !924
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  %.pre.i18.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !453, !noalias !924
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i.i
  %i.zm = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i.i ], [ %.pre.i18.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i.i.i ] ; 2 uses
  %i.zn = load ptr, ptr %i.hv, align 8, !tbaa !444, !noalias !935 ; 3 uses
  %i.zo = load ptr, ptr %i.hx, align 8, !tbaa !445, !noalias !935 ; 3 uses
  %i.zp = load i32, ptr %i.hy, align 4, !tbaa !446, !noalias !935 ; 4 uses
  %i.zq = icmp eq i32 %i.zp, 0
  br i1 %i.zq, label %.loopexit.i34.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i.i
  %i.zr = add i32 %i.zp, -1                       ; 2 uses
  %i.zs = ptrtoint ptr %i.wd to i64
  %i.zt = mul i64 %i.zs, -4658895280553007687     ; 2 uses
  %i.zu = lshr i64 %i.zt, 31
  %i.zv = xor i64 %i.zu, %i.zt
  %i.zw = trunc i64 %i.zv to i32
  %i.zx = and i32 %i.zr, %i.zw                    ; 3 uses
  %i.zy = zext i32 %i.zx to i64                   ; 2 uses
  %i.zz = getelementptr inbounds nuw [16 x i8], ptr %i.zn, i64 %i.zy ; 2 uses
  %i.aaa = lshr i64 %i.zy, 5
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %i.aaa
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !447, !noalias !924
  %i.aad = and i32 %i.zx, 31
  %i.aae = lshr i32 %i.aac, %i.aad
  %i.aaf = trunc i32 %i.aae to i1
  br i1 %i.aaf, label %.lr.ph.i.i45.i.i.i, label %.loopexit.i34.i.i.i, !prof !448

.lr.ph.i.i45.i.i.i:                               ; preds = %bb.bb, %bb.bc
  %i.aag = phi ptr [ %i.aam, %bb.bc ], [ %i.zz, %bb.bb ] ; 2 uses
  %.024.i.i46.i.i.i = phi i32 [ %i.aak, %bb.bc ], [ %i.zx, %bb.bb ]
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !443, !noalias !924
  %i.aai = icmp eq ptr %i.wd, %i.aah
  br i1 %i.aai, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.i.i.i, label %bb.bc, !prof !449

bb.bc:                                            ; preds = %.lr.ph.i.i45.i.i.i
  %i.aaj = add nuw i32 %.024.i.i46.i.i.i, 1
  %i.aak = and i32 %i.aaj, %i.zr                  ; 3 uses
  %i.aal = zext i32 %i.aak to i64                 ; 2 uses
  %i.aam = getelementptr inbounds nuw [16 x i8], ptr %i.zn, i64 %i.aal ; 2 uses
  %i.aan = lshr i64 %i.aal, 5
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %i.aan
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !447, !noalias !924
  %i.aaq = and i32 %i.aak, 31
  %i.aar = lshr i32 %i.aap, %i.aaq
  %i.aas = trunc i32 %i.aar to i1
  br i1 %i.aas, label %.lr.ph.i.i45.i.i.i, label %.loopexit.i34.i.i.i, !prof !450, !llvm.loop !1

.loopexit.i34.i.i.i:                              ; preds = %bb.bc, %bb.bb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i.i
  %.lcssa28.sink.i.ph.i35.i.i.i = phi ptr [ %i.zz, %bb.bb ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i.i ], [ %i.aam, %bb.bc ]
  %i.aat = load i32, ptr %i.hz, align 8, !tbaa !452, !noalias !924
  %i.aau = shl i32 %i.aat, 2
  %i.aav = add i32 %i.aau, 4
  %i.aaw = mul i32 %i.zp, 3
  %.not.i.i36.i.i.i = icmp ult i32 %i.aav, %i.aaw
  br i1 %.not.i.i36.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i, label %bb.bd, !prof !449

bb.bd:                                            ; preds = %.loopexit.i34.i.i.i
  %i.aax = shl i32 %i.zp, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.hv, i32 noundef %i.aax), !noalias !924
  %i.aay = load ptr, ptr %i.hv, align 8, !tbaa !444, !noalias !936 ; 5 uses
  %i.aaz = load ptr, ptr %i.hx, align 8, !tbaa !445, !noalias !936 ; 5 uses
  %i.aba = load i32, ptr %i.hy, align 4, !tbaa !446, !noalias !936 ; 2 uses
  %i.abb = icmp ne i32 %i.aba, 0
  call void @llvm.assume(i1 %i.abb)
  %i.abc = add i32 %i.aba, -1                     ; 2 uses
  %i.abd = ptrtoint ptr %i.wd to i64
  %i.abe = mul i64 %i.abd, -4658895280553007687   ; 2 uses
  %i.abf = lshr i64 %i.abe, 31
  %i.abg = xor i64 %i.abf, %i.abe
  %i.abh = trunc i64 %i.abg to i32
  %i.abi = and i32 %i.abc, %i.abh                 ; 3 uses
  %i.abj = zext i32 %i.abi to i64                 ; 2 uses
  %i.abk = getelementptr inbounds nuw [16 x i8], ptr %i.aay, i64 %i.abj ; 2 uses
  %i.abl = lshr i64 %i.abj, 5
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %i.abl
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !447, !noalias !924
  %i.abo = and i32 %i.abi, 31
  %i.abp = lshr i32 %i.abn, %i.abo
  %i.abq = trunc i32 %i.abp to i1
  br i1 %i.abq, label %.lr.ph.i50.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i, !prof !448

.lr.ph.i50.i.i.i:                                 ; preds = %bb.bd, %bb.be
  %i.abr = phi ptr [ %i.abx, %bb.be ], [ %i.abk, %bb.bd ] ; 2 uses
  %.024.i51.i.i.i = phi i32 [ %i.abv, %bb.be ], [ %i.abi, %bb.bd ]
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !443, !noalias !924
  %i.abt = icmp eq ptr %i.wd, %i.abs
  br i1 %i.abt, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i, label %bb.be, !prof !449

bb.be:                                            ; preds = %.lr.ph.i50.i.i.i
  %i.abu = add nuw i32 %.024.i51.i.i.i, 1
  %i.abv = and i32 %i.abu, %i.abc                 ; 3 uses
  %i.abw = zext i32 %i.abv to i64                 ; 2 uses
  %i.abx = getelementptr inbounds nuw [16 x i8], ptr %i.aay, i64 %i.abw ; 2 uses
  %i.aby = lshr i64 %i.abw, 5
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %i.aby
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !447, !noalias !924
  %i.acb = and i32 %i.abv, 31
  %i.acc = lshr i32 %i.aca, %i.acb
  %i.acd = trunc i32 %i.acc to i1
  br i1 %i.acd, label %.lr.ph.i50.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i, !prof !450, !llvm.loop !1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i: ; preds = %bb.be, %.lr.ph.i50.i.i.i, %bb.bd, %.loopexit.i34.i.i.i
  %i.ace = phi ptr [ %i.zn, %.loopexit.i34.i.i.i ], [ %i.aay, %bb.bd ], [ %i.aay, %.lr.ph.i50.i.i.i ], [ %i.aay, %bb.be ]
  %i.acf = phi ptr [ %i.zo, %.loopexit.i34.i.i.i ], [ %i.aaz, %bb.bd ], [ %i.aaz, %.lr.ph.i50.i.i.i ], [ %i.aaz, %bb.be ]
  %i.acg = phi ptr [ %.lcssa28.sink.i.ph.i35.i.i.i, %.loopexit.i34.i.i.i ], [ %i.abk, %bb.bd ], [ %i.abx, %bb.be ], [ %i.abr, %.lr.ph.i50.i.i.i ] ; 3 uses
  %i.ach = ptrtoint ptr %i.acg to i64
  %i.aci = ptrtoint ptr %i.ace to i64
  %i.acj = sub i64 %i.ach, %i.aci
  %i.ack = ashr exact i64 %i.acj, 4               ; 2 uses
  %i.acl = trunc i64 %i.ack to i32
  %i.acm = and i32 %i.acl, 31
  %i.acn = shl nuw i32 1, %i.acm
  %i.aco = lshr i64 %i.ack, 5
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %i.aco ; 2 uses
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !447, !noalias !924
  %i.acr = or i32 %i.acn, %i.acq
  store i32 %i.acr, ptr %i.acp, align 4, !tbaa !447, !noalias !924
  %i.acs = load i32, ptr %i.hz, align 8, !tbaa !452, !noalias !924
  %i.act = add i32 %i.acs, 1
  store i32 %i.act, ptr %i.hz, align 8, !tbaa !452, !noalias !924
  store ptr %i.wd, ptr %i.acg, align 8, !tbaa !443, !noalias !924
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  store i64 0, ptr %i.acu, align 8, !tbaa !453, !noalias !924
  br label %bb.bf

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.i.i.i: ; preds = %.lr.ph.i.i45.i.i.i
  %.phi.trans.insert77.i.i.i = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  %.pre78.i.i.i = load i64, ptr %.phi.trans.insert77.i.i.i, align 8, !tbaa !453, !noalias !924
  %i.acv = icmp ugt i64 %.pre78.i.i.i, %i.rx
  %i.acw = select i1 %i.acv, i64 %i.rp, i64 0
  %spec.select.i = sub i64 %i.zm, %i.acw
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i
  %.0.i.i.i = phi i64 [ %i.zm, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i ], [ %spec.select.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.i.i.i ]
  %i.acx = sub nsw i64 %i.sk, %.0.i.i.i
  %5 = call noundef i64 @llvm.abs.i64(i64 %i.acx, i1 true)
  %i.acy = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 120), align 8, !tbaa !558, !noalias !924
  %i.acz = fmul double %i.acy, %i.wb
  %i.ada = add nuw i64 %5, 1
  %i.adb = uitofp i64 %i.ada to double
  %i.adc = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 120), align 8, !tbaa !558, !noalias !924
  %i.add = call double @pow(double noundef %i.adb, double noundef %i.adc) #30, !noalias !924
  %i.ade = fdiv double %i.acz, %i.add
  %i.adf = fadd double %i.wc, %i.ade              ; 3 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %.02466.i.i.i, i64 8 ; 2 uses
  %.not28.i.i.i = icmp eq ptr %i.adg, %i.wa
  br i1 %.not28.i.i.i, label %.loopexit.i.i37.i, label %bb.aw

.loopexit.i.i37.i:                                ; preds = %bb.bf, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i, %.lr.ph69.i.i.i
  %.sroa.9.2.i = phi double [ %.sroa.9.1.i, %.lr.ph69.i.i.i ], [ %.sroa.9.1.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i ], [ %i.adf, %bb.bf ] ; 2 uses
  %i.adh = phi double [ %i.sc, %.lr.ph69.i.i.i ], [ %i.sc, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i ], [ %i.adf, %bb.bf ] ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.02568.i.i.i, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.adi, %i.sb
  br i1 %.not.i17.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i, label %.lr.ph69.i.i.i

_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i: ; preds = %.loopexit.i.i37.i
  %.val11.pr.pre.i.i = load i32, ptr %i.e, align 8, !tbaa !431, !noalias !924
  %.val.pre.i.i = load ptr, ptr %3, align 8, !tbaa !42, !noalias !924
  br label %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i

_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i: ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i
  %.sroa.9.3.i = phi double [ 0.000000e+00, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i ], [ %.sroa.9.2.i, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i ] ; 2 uses
  %i.adj = phi double [ 0.000000e+00, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i ], [ %i.adh, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i ]
  %.val.i.i = phi ptr [ %.val.pre42.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i ], [ %.val.pre.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i ] ; 2 uses
  %.val11.pr.i.i = phi i32 [ %.val11.pr.pre40.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i ], [ %.val11.pr.pre.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i ] ; 2 uses
  %i.adk = zext i32 %.val11.pr.i.i to i64
  %.idx.i19.i.i = shl nuw nsw i64 %i.adk, 3
  %i.adl = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i19.i.i
  %.not17.i.i.i = icmp eq i32 %.val11.pr.i.i, 0
  br i1 %.not17.i.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i, label %.lr.ph19.i.i.i

.lr.ph19.i.i.i:                                   ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i
  %i.adm = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 120), align 8, !noalias !924
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.i20.i.i, %.lr.ph19.i.i.i
  %.sroa.9.4.i = phi double [ %.sroa.9.3.i, %.lr.ph19.i.i.i ], [ %.sroa.9.5.i, %.loopexit.i20.i.i ] ; 3 uses
  %i.adn = phi double [ %i.adj, %.lr.ph19.i.i.i ], [ %i.afd, %.loopexit.i20.i.i ] ; 3 uses
  %.018.i.i.i = phi ptr [ %.val.i.i, %.lr.ph19.i.i.i ], [ %i.afe, %.loopexit.i20.i.i ] ; 2 uses
  %i.ado = load ptr, ptr %.018.i.i.i, align 8, !tbaa !443, !noalias !924 ; 6 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 152
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !479, !noalias !924
  %i.adr = add i64 %i.adq, 1
  %i.ads = icmp ult i64 %i.adr, 2
  br i1 %i.ads, label %.loopexit.i20.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ado, i64 124
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !930, !noalias !924
  %i.adv = zext i32 %i.adu to i64
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ado, i64 40
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !42, !noalias !924 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.ado, i64 48
  %i.adz = load i32, ptr %i.ady, align 8, !tbaa !431, !noalias !924 ; 2 uses
  %i.aea = zext i32 %i.adz to i64
  %.idx20.i.i.i = shl nuw nsw i64 %i.aea, 3
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adx, i64 %.idx20.i.i.i
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ado, i64 56
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !42, !noalias !924 ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.ado, i64 64
  %i.aef = load i32, ptr %i.aee, align 8, !tbaa !431, !noalias !924 ; 2 uses
  %i.aeg = zext i32 %i.aef to i64
  %.idx21.i.i.i = shl nuw nsw i64 %i.aeg, 4
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aed, i64 %.idx21.i.i.i
  %i.aei = icmp ne i32 %i.adz, 0
  %i.aej = icmp ne i32 %i.aef, 0
  %.not3.i14.i.i.i = select i1 %i.aei, i1 %i.aej, i1 false
  br i1 %.not3.i14.i.i.i, label %.lr.ph.i22.i.i, label %.loopexit.i20.i.i

.lr.ph.i22.i.i:                                   ; preds = %bb.bh, %bb.bj
  %.sroa.9.7.i = phi double [ %.sroa.9.8.i, %bb.bj ], [ %.sroa.9.4.i, %bb.bh ]
  %i.aek = phi double [ %i.aey, %bb.bj ], [ %i.adn, %bb.bh ] ; 2 uses
  %.sroa.03.016.i.i.i = phi ptr [ %i.afa, %bb.bj ], [ %i.aed, %bb.bh ] ; 2 uses
  %.sroa.7.015.i.i.i = phi ptr [ %i.aez, %bb.bj ], [ %i.adx, %bb.bh ] ; 2 uses
  %i.ael = load i64, ptr %.sroa.03.016.i.i.i, align 8, !tbaa !923, !noalias !924 ; 2 uses
  %i.aem = icmp eq i64 %i.ael, 0
  br i1 %i.aem, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i22.i.i
  %i.aen = load ptr, ptr %.sroa.7.015.i.i.i, align 8, !tbaa !443, !noalias !924
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 120
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !937, !noalias !924
  %i.aeq = zext i32 %i.aep to i64
  %i.aer = sub nsw i64 %i.adv, %i.aeq
  %6 = call noundef i64 @llvm.abs.i64(i64 %i.aer, i1 true)
  %i.aes = uitofp i64 %i.ael to double
  %i.aet = add nuw nsw i64 %6, 1
  %i.aeu = uitofp nneg i64 %i.aet to double
  %i.aev = call double @pow(double noundef %i.aeu, double noundef %i.adm) #30, !noalias !924
  %i.aew = fdiv double %i.aes, %i.aev
  %i.aex = fadd double %i.aek, %i.aew             ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph.i22.i.i
  %.sroa.9.8.i = phi double [ %.sroa.9.7.i, %.lr.ph.i22.i.i ], [ %i.aex, %bb.bi ] ; 2 uses
  %i.aey = phi double [ %i.aek, %.lr.ph.i22.i.i ], [ %i.aex, %bb.bi ] ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.sroa.7.015.i.i.i, i64 8 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %.sroa.03.016.i.i.i, i64 16 ; 2 uses
  %i.afb = icmp ne ptr %i.aez, %i.aeb
  %i.afc = icmp ne ptr %i.afa, %i.aeh
  %.not3.i.i.i.i = select i1 %i.afb, i1 %i.afc, i1 false
  br i1 %.not3.i.i.i.i, label %.lr.ph.i22.i.i, label %.loopexit.i20.i.i

.loopexit.i20.i.i:                                ; preds = %bb.bj, %bb.bh, %bb.bg
  %.sroa.9.5.i = phi double [ %.sroa.9.4.i, %bb.bg ], [ %.sroa.9.4.i, %bb.bh ], [ %.sroa.9.8.i, %bb.bj ] ; 2 uses
  %i.afd = phi double [ %i.adn, %bb.bg ], [ %i.adn, %bb.bh ], [ %i.aey, %bb.bj ]
  %i.afe = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 8 ; 2 uses
  %.not.i21.i.i = icmp eq ptr %i.afe, %i.adl
  br i1 %.not.i21.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i, label %bb.bg

_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i: ; preds = %.loopexit.i20.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i, %bb.aq
  %.sroa.9.6.i = phi double [ %.sroa.9.3.i, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i ], [ 0.000000e+00, %bb.aq ], [ %.sroa.9.5.i, %.loopexit.i20.i.i ] ; 2 uses
  %i.aff = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 120), align 8, !tbaa !558, !noalias !924 ; 2 uses
  %i.afg = fcmp oeq double %i.aff, 0.000000e+00
  %or.cond.i.i.i = select i1 %i.afg, i1 true, i1 %.not2.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i, label %.lr.ph.i23.i.i

.lr.ph.i23.i.i:                                   ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i
  %i.afh = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 120), align 8, !tbaa !558, !noalias !924
  %invariant.op = sub i64 1, %i.rp
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.lr.ph.i23.i.i
  %i.afi = phi double [ 0.000000e+00, %.lr.ph.i23.i.i ], [ %i.afo, %bb.bk ]
  %.sroa.01.03.i.i.i = phi ptr [ %.sroa.092.6.i, %.lr.ph.i23.i.i ], [ %i.afp, %bb.bk ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.01.03.i.i.i, align 8, !tbaa !453, !noalias !924
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !453, !noalias !924
  %i.afj = uitofp i64 %.sroa.4.0.copyload.i.i.i to double
  %i.afk = fmul double %i.aff, %i.afj
  %.reass.reass.i.reass.i.reass.i.reass.reass = add i64 %.sroa.0.0.copyload.i.i.i, %invariant.op
  %i.afl = uitofp i64 %.reass.reass.i.reass.i.reass.i.reass.reass to double
  %i.afm = call double @pow(double noundef %i.afl, double noundef %i.afh) #30, !noalias !924
  %i.afn = fdiv double %i.afk, %i.afm
  %i.afo = fadd double %i.afi, %i.afn             ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i, i64 16 ; 2 uses
  %.not.i24.i.i = icmp eq ptr %i.afp, %.sroa.6.6.i
  br i1 %.not.i24.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i, label %bb.bk

_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i: ; preds = %bb.bk, %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i.i
  %.sroa.9.9.i = phi double [ %.sroa.9.6.i, %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i ], [ 0.000000e+00, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i.i ], [ %.sroa.9.6.i, %bb.bk ] ; 2 uses
  %.sroa.12.1.i = phi double [ 0.000000e+00, %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i ], [ 0.000000e+00, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i.i ], [ %i.afo, %bb.bk ] ; 2 uses
  %i.afq = fadd double %.sroa.9.9.i, %.sroa.12.1.i
  %i.afr = fadd double %.sroa.990.0139.i, %.sroa.7.0138.i
  %i.afs = fcmp ogt double %i.afq, %i.afr
  br i1 %i.afs, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i, %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i
  %.sroa.7.2.i = phi double [ %.sroa.7.0138.i, %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i ], [ %.sroa.9.9.i, %bb.bl ], [ %.sroa.7.0138.i, %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i ]
  %.sroa.990.2.i = phi double [ %.sroa.990.0139.i, %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i ], [ %.sroa.12.1.i, %bb.bl ], [ %.sroa.990.0139.i, %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i ]
  %.sroa.088.2.i = phi i64 [ %.sroa.088.0140.i, %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i ], [ %.0141.i, %bb.bl ], [ %.sroa.088.0140.i, %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i ] ; 3 uses
  %.not.i13 = icmp ugt i64 %i.if, %.022.lcssa.i
  br i1 %.not.i13, label %bb.v, label %bb.x, !llvm.loop !917

_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit: ; preds = %bb.v, %bb.w
  %i.aft = icmp eq i64 %.sroa.088.2.i, -1
  %.022..i = select i1 %i.aft, i64 %.022.lcssa.i, i64 %.sroa.088.2.i ; 3 uses
  %i.afu = load i32, ptr %i.e, align 8, !tbaa !431 ; 4 uses
  %i.afv = zext i32 %i.afu to i64                 ; 2 uses
  %.not51 = icmp eq i32 %i.afu, 0
  %.pre85 = load ptr, ptr %3, align 8, !tbaa !42  ; 6 uses
  br i1 %.not51, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit
  %xtraiter = and i64 %i.afv, 1
  %i.afw = icmp eq i32 %i.afu, 1
  br i1 %i.afw, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.afv, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.bp, %.lr.ph.preheader.new
  %.050 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.agk, %bb.bp ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.bp ]
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %.pre85, i64 %.050
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !443 ; 2 uses
  %.not = icmp ugt i64 %.050, %.022..i
  br i1 %.not, label %bb.bn, label %.lr.ph.1

bb.bn:                                            ; preds = %.lr.ph
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 152
  %i.aga = load i64, ptr %i.afz, align 8, !tbaa !479
  %i.agb = add i64 %i.aga, 1
  %.not12 = icmp ult i64 %i.agb, 2
  %spec.select = select i1 %.not12, i32 1, i32 2
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.bn
  %.sink = phi i32 [ %spec.select, %bb.bn ], [ 0, %.lr.ph ]
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afy, i64 176
  store i32 %.sink, ptr %i.agc, align 8, !tbaa !447
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %.pre85, i64 %.050
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !443 ; 2 uses
  %.not.1.not = icmp ult i64 %.050, %.022..i
  br i1 %.not.1.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.1
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 152
  %i.agh = load i64, ptr %i.agg, align 8, !tbaa !479
  %i.agi = add i64 %i.agh, 1
  %.not12.1 = icmp ult i64 %i.agi, 2
  %spec.select.1 = select i1 %.not12.1, i32 1, i32 2
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph.1
  %.sink.1 = phi i32 [ %spec.select.1, %bb.bo ], [ 0, %.lr.ph.1 ]
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agf, i64 176
  store i32 %.sink.1, ptr %i.agj, align 8, !tbaa !447
  %i.agk = add nuw nsw i64 %.050, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !918

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bp
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.agk, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod215 = trunc i32 %i.afu to i1
  call void @llvm.assume(i1 %lcmp.mod215)
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %.pre85, i64 %.050.epil.init
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !443 ; 2 uses
  %.not.epil = icmp ugt i64 %.050.epil.init, %.022..i
  br i1 %.not.epil, label %bb.bq, label %.loopexit.loopexit.epilog-lcssa

bb.bq:                                            ; preds = %.lr.ph.epil.preheader
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 152
  %i.ago = load i64, ptr %i.agn, align 8, !tbaa !479
  %i.agp = add i64 %i.ago, 1
  %.not12.epil = icmp ult i64 %i.agp, 2
  %spec.select.epil = select i1 %.not12.epil, i32 1, i32 2
  br label %.loopexit.loopexit.epilog-lcssa

.loopexit.loopexit.epilog-lcssa:                  ; preds = %bb.bq, %.lr.ph.epil.preheader
  %.sink.epil = phi i32 [ %spec.select.epil, %bb.bq ], [ 0, %.lr.ph.epil.preheader ]
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agm, i64 176
  store i32 %.sink.epil, ptr %i.agq, align 8, !tbaa !447
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.epilog-lcssa, %.loopexit.loopexit.unr-lcssa, %_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2IPS3_vEET_S7_.exit
  %i.agr = phi ptr [ %i.n, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2IPS3_vEET_S7_.exit ], [ %.pre85, %_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit ], [ %.pre85, %.loopexit.loopexit.unr-lcssa ], [ %.pre85, %.loopexit.loopexit.epilog-lcssa ] ; 2 uses
  %i.ags = icmp eq ptr %i.agr, %i.d
  br i1 %i.ags, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.agr) #30
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit: ; preds = %.loopexit, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !444, !noalias !942 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !445, !noalias !942 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !446, !noalias !942 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !443    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !447
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
end_hunk_2
begin_hunk_3_@_ZN4llvm23SmallVectorTemplateBaseIPKNS_8MCSymbolELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_:bb.a
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !431
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_8MCSymbolELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKNS_8MCSymbolELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !42
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  ret ptr %i.o
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_8MCSymbolELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !431
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #30
  %i.f = load ptr, ptr %0, align 8, !tbaa !42
  %i.g = load i32, ptr %i.a, align 8, !tbaa !431
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !431
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !431
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !431
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #30
  %i.f = load ptr, ptr %0, align 8, !tbaa !42
  %i.g = load i32, ptr %i.a, align 8, !tbaa !431
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !431
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !431
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_SplitFunctions.cpp() #25 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL19AggressiveSplittingE, i32 noundef 0, i32 noundef 0) #30
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19AggressiveSplittingE, i64 120), align 8, !tbaa !181
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19AggressiveSplittingE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19AggressiveSplittingE, i64 128), align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN4optsL19AggressiveSplittingE, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19AggressiveSplittingE, i64 144), align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL19AggressiveSplittingE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL19AggressiveSplittingE, ptr nonnull align 1 dereferenceable(15) @.str, i64 14) #30
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19AggressiveSplittingE, i64 32), align 8, !tbaa !519
  store i64 45, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19AggressiveSplittingE, i64 40), align 8, !tbaa !453
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL19AggressiveSplittingE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #30
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL19AggressiveSplittingE) #30
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4optsL19AggressiveSplittingE, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL19SplitAlignThresholdE, i32 noundef 0, i32 noundef 0) #30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 120), align 8, !tbaa !176
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 128), align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4optsL19SplitAlignThresholdE, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 144), align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL19SplitAlignThresholdE, ptr nonnull align 1 dereferenceable(22) @.str.3, i64 21) #30
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 32), align 8, !tbaa !519
  store i64 129, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 40), align 8, !tbaa !453
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 120), align 8, !tbaa !176
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 140), align 4, !tbaa !562
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 136), align 8, !tbaa !1031
  %i.b = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 10), align 2
  %i.c = and i16 %i.b, -97
  %i.d = or disjoint i16 %i.c, 32
  store i16 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL19SplitAlignThresholdE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #30
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL19SplitAlignThresholdE) #30
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4optsL19SplitAlignThresholdE, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL14SplitFunctionsE, i32 noundef 0, i32 noundef 0) #30
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitFunctionsE, i64 120), align 8, !tbaa !181
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitFunctionsE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitFunctionsE, i64 128), align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0EN12_GLOBAL__N_135DeprecatedSplitFunctionOptionParserEEE, i64 16), ptr @_ZN4optsL14SplitFunctionsE, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_135DeprecatedSplitFunctionOptionParserE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitFunctionsE, i64 144), align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitFunctionsE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL14SplitFunctionsE, ptr nonnull @.str.6, i64 15) #30
  store ptr @.str.7, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitFunctionsE, i64 32), align 8, !tbaa !519
  store i64 30, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitFunctionsE, i64 40), align 8, !tbaa !453
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL14SplitFunctionsE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #30
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL14SplitFunctionsE) #30
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0EN12_GLOBAL__N_135DeprecatedSplitFunctionOptionParserEED2Ev, ptr nonnull @_ZN4optsL14SplitFunctionsE, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL14SplitThresholdE, i32 noundef 0, i32 noundef 0) #30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 120), align 8, !tbaa !176
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 128), align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4optsL14SplitThresholdE, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 144), align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL14SplitThresholdE, ptr nonnull align 1 dereferenceable(16) @.str.9, i64 15) #30
  store ptr @.str.10, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 32), align 8, !tbaa !519
  store i64 208, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 40), align 8, !tbaa !453
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 120), align 8, !tbaa !176
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 140), align 4, !tbaa !562
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 136), align 8, !tbaa !1031
  %i.g = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 10), align 2
  %i.h = and i16 %i.g, -97
  %i.i = or disjoint i16 %i.h, 32
  store i16 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL14SplitThresholdE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #30
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL14SplitThresholdE) #30
  %i.j = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4optsL14SplitThresholdE, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL9CallScaleE, i32 noundef 0, i32 noundef 0) #30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 120), i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 128), align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIdLb0ENS0_6parserIdEEEE, i64 16), ptr @_ZN4optsL9CallScaleE, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 152), align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 160), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9CallScaleE, ptr nonnull align 1 dereferenceable(11) @.str.12, i64 10) #30
  store ptr @.str.13, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 32), align 8, !tbaa !519
  store i64 60, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 40), align 8, !tbaa !453
  store double f0x3FEE666666666666, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 120), align 8, !tbaa !558
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 144), align 8, !tbaa !559
  store double f0x3FEE666666666666, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 136), align 8, !tbaa !1032
  %i.k = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 10), align 2
  %i.l = and i16 %i.k, -97
  %i.m = or disjoint i16 %i.l, 64
  store i16 %i.m, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9CallScaleE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #30
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9CallScaleE) #30
  %i.n = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIdLb0ENS0_6parserIdEEED2Ev, ptr nonnull @_ZN4optsL9CallScaleE, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL9CallPowerE, i32 noundef 0, i32 noundef 0) #30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 120), i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 128), align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIdLb0ENS0_6parserIdEEEE, i64 16), ptr @_ZN4optsL9CallPowerE, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 152), align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 160), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9CallPowerE, ptr nonnull align 1 dereferenceable(11) @.str.15, i64 10) #30
  store ptr @.str.16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 32), align 8, !tbaa !519
  store i64 48, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 40), align 8, !tbaa !453
  store double 5.000000e-02, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 120), align 8, !tbaa !558
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 144), align 8, !tbaa !559
  store double 5.000000e-02, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 136), align 8, !tbaa !1032
  %i.o = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 10), align 2
  %i.p = and i16 %i.o, -97
  %i.q = or disjoint i16 %i.p, 64
  store i16 %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9CallPowerE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #30
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9CallPowerE) #30
  %i.r = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIdLb0ENS0_6parserIdEEED2Ev, ptr nonnull @_ZN4optsL9CallPowerE, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL9JumpPowerE, i32 noundef 0, i32 noundef 0) #30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 120), i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 128), align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIdLb0ENS0_6parserIdEEEE, i64 16), ptr @_ZN4optsL9JumpPowerE, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 152), align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 160), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9JumpPowerE, ptr nonnull align 1 dereferenceable(11) @.str.18, i64 10) #30
  store ptr @.str.19, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 32), align 8, !tbaa !519
  store i64 48, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 40), align 8, !tbaa !453
  store double 1.500000e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 120), align 8, !tbaa !558
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 144), align 8, !tbaa !559
  store double 1.500000e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 136), align 8, !tbaa !1032
  %i.s = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 10), align 2
  %i.t = and i16 %i.s, -97
  %i.u = or disjoint i16 %i.t, 64
  store i16 %i.u, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9JumpPowerE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #30
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9JumpPowerE) #30
  %i.v = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIdLb0ENS0_6parserIdEEED2Ev, ptr nonnull @_ZN4optsL9JumpPowerE, ptr nonnull @__dso_handle) #30 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #29

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nounwind }
attributes #31 = { cold noreturn nounwind }
attributes #32 = { builtin nounwind allocsize(0) }
attributes #33 = { builtin nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { noreturn nounwind }

!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}
!llvm.errno.tbaa = !{!28}

!0 = distinct !{null}
!1 = distinct !{!1, !451}
!2 = distinct !{!2, !451}
!3 = distinct !{!3, !451}
!4 = distinct !{!4, !451}
!5 = distinct !{!5, !451}
!6 = distinct !{!6, !451}
!7 = distinct !{!7, !451}
!8 = distinct !{!8, !451}
!9 = distinct !{!9, !451}
!10 = distinct !{!10, !451}
!11 = distinct !{!11, !451}
!12 = distinct !{!12, !451}
!13 = distinct !{!13, !451}
!14 = distinct !{!14, !451}
!15 = distinct !{!15, !451}
!16 = distinct !{!16, !451}
!17 = distinct !{!17, !451}
!18 = distinct !{!18, !451}
!19 = distinct !{!19, !451}
!20 = distinct !{!20, !451}
!21 = !{i32 8, !"PIC Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 2}
!23 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!24 = !{!"Simple C++ TBAA"}
!25 = !{!"omnipotent char", !24, i64 0}
!26 = !{!"int", !25, i64 0}
!27 = !{!"__libc_errno", !26, i64 0}
!28 = !{!27, !26, i64 0}
!29 = !{!"vtable pointer", !24, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"any pointer", !25, i64 0}
!32 = !{!"_ZTSSt14_Function_base", !25, i64 0, !31, i64 16}
!33 = !{!32, !31, i64 16}
!34 = !{!"any p2 pointer", !31, i64 0}
!35 = !{!"bool", !25, i64 0}
!36 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !34, i64 0, !26, i64 8, !26, i64 12, !35, i64 16}
!37 = !{!36, !35, i64 16}
!38 = !{i8 0, i8 2}
!39 = !{}
!40 = !{!36, !34, i64 0}
!41 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !31, i64 0, !26, i64 8, !26, i64 12}
!42 = !{!41, !31, i64 0}
!43 = !{!"_ZTSN4llvm4bolt14BinaryFunction5StateE", !25, i64 0}
!44 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_8MCSymbolEvEE", !41, i64 0}
!45 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_8MCSymbolELb1EEE", !44, i64 0}
!46 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_8MCSymbolEEE", !45, i64 0}
!47 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_8MCSymbolELj1EEE", !25, i64 0}
!48 = !{!"_ZTSN4llvm11SmallVectorIPNS_8MCSymbolELj1EEE", !46, i64 0, !47, i64 16}
!49 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE", !41, i64 0}
!50 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEE", !49, i64 0}
!51 = !{!"_ZTSN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !50, i64 0}
!52 = !{!"_ZTSN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEE", !51, i64 0}
!53 = !{!"p1 _ZTSN4llvm4bolt13BinarySectionE", !31, i64 0}
!54 = !{!"long", !25, i64 0}
!55 = !{!"short", !25, i64 0}
!56 = !{!"p1 _ZTSN4llvm8MCSymbolE", !31, i64 0}
!57 = !{!"p1 _ZTSN4llvm4bolt13BinaryContextE", !31, i64 0}
!58 = !{!"p1 _ZTSN4llvm4bolt14BinaryLoopInfoE", !31, i64 0}
!59 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm4bolt14BinaryLoopInfoELb0EE", !58, i64 0}
!60 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EEE", !59, i64 0}
!61 = !{!"_ZTSSt5tupleIJPN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EEE", !60, i64 0}
!62 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EE", !61, i64 0}
!63 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_ELb1ELb1EE", !62, i64 0}
!64 = !{!"_ZTSSt10unique_ptrIN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EE", !63, i64 0}
!65 = !{!"p1 _ZTSN4llvm17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEE", !31, i64 0}
!66 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEELb0EE", !65, i64 0}
!67 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EEE", !66, i64 0}
!68 = !{!"_ZTSSt5tupleIJPN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EEE", !67, i64 0}
!69 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EE", !68, i64 0}
!70 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_ELb1ELb1EE", !69, i64 0}
!71 = !{!"_ZTSSt10unique_ptrIN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EE", !70, i64 0}
!72 = !{!"_ZTSSt4lessImE"}
!73 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !72, i64 0}
!74 = !{!"_ZTSSt14_Rb_tree_color", !25, i64 0}
!75 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !31, i64 0}
!76 = !{!"_ZTSSt18_Rb_tree_node_base", !74, i64 0, !75, i64 8, !75, i64 16, !75, i64 24}
!77 = !{!"_ZTSSt15_Rb_tree_header", !76, i64 0, !54, i64 32}
!78 = !{!"_ZTSNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_Rb_tree_implIS3_Lb1EEE", !73, i64 0, !77, i64 8}
!79 = !{!"_ZTSSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE", !78, i64 0}
!80 = !{!"_ZTSSt3setImSt4lessImESaImEE", !79, i64 0}
!81 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairImEE", !31, i64 0}
!82 = !{!"p1 int", !31, i64 0}
!83 = !{!"_ZTSN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEEE", !81, i64 0, !82, i64 8, !26, i64 16, !26, i64 20}
!84 = !{!"_ZTSN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEEE", !83, i64 0}
!85 = !{!"_ZTSN4llvm8DenseSetImNS_12DenseMapInfoImvEEEE", !84, i64 0}
!86 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_8MCSymbolEPS2_EE", !31, i64 0}
!87 = !{!"_ZTSN4llvm8DenseMapIPKNS_8MCSymbolEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEE", !86, i64 0, !82, i64 8, !26, i64 16, !26, i64 20}
!88 = !{!"p1 omnipotent char", !31, i64 0}
!89 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !88, i64 0}
!90 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !89, i64 0, !54, i64 8, !25, i64 16}
!91 = !{!"_ZTSN4llvm15SmallPtrSetImplIPNS_4bolt14BinaryFunctionEEE", !36, i64 0}
!92 = !{!"_ZTSN4llvm11SmallPtrSetIPNS_4bolt14BinaryFunctionELj1EEE", !91, i64 0, !25, i64 24}
!93 = !{!"p1 _ZTSN4llvm4bolt14BinaryFunctionE", !31, i64 0}
!94 = !{!"float", !25, i64 0}
!95 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_4bolt19IndirectCallProfileEvEE", !41, i64 0}
!96 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_4bolt19IndirectCallProfileELb1EEE", !95, i64 0}
!97 = !{!"_ZTSN4llvm15SmallVectorImplINS_4bolt19IndirectCallProfileEEE", !96, i64 0}
!98 = !{!"_ZTSN4llvm18SmallVectorStorageINS_4bolt19IndirectCallProfileELj4EEE", !25, i64 0}
!99 = !{!"_ZTSN4llvm11SmallVectorINS_4bolt19IndirectCallProfileELj4EEE", !97, i64 0, !98, i64 16}
!100 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairImPNS_9DWARFUnitEEE", !31, i64 0}
!101 = !{!"_ZTSN4llvm8DenseMapImPNS_9DWARFUnitENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEE", !100, i64 0, !82, i64 8, !26, i64 16, !26, i64 20}
!102 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockEEE", !31, i64 0}
!103 = !{!"_ZTSN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEE", !102, i64 0, !82, i64 8, !26, i64 16, !26, i64 20}
!104 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIjjEvEE", !41, i64 0}
!105 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EEE", !104, i64 0}
!106 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIjjEEE", !105, i64 0}
!107 = !{!"_ZTSN4llvm11SmallVectorISt4pairIjjELj0EEE", !106, i64 0}
!108 = !{!"_ZTSSt4lessIjE"}
!109 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !108, i64 0}
!110 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjPN4llvm8MCSymbolEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !109, i64 0, !77, i64 8}
!111 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjPN4llvm8MCSymbolEESt10_Select1stIS5_ESt4lessIjESaIS5_EE", !110, i64 0}
!112 = !{!"_ZTSSt3mapIjPN4llvm8MCSymbolESt4lessIjESaISt4pairIKjS2_EEE", !111, i64 0}
!113 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjN4llvm6MCInstEESt10_Select1stIS4_ESt4lessIjESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !109, i64 0, !77, i64 8}
!114 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjN4llvm6MCInstEESt10_Select1stIS4_ESt4lessIjESaIS4_EE", !113, i64 0}
!115 = !{!"_ZTSSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE", !114, i64 0}
!116 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_16MCCFIInstructionEvEE", !41, i64 0}
!117 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EEE", !116, i64 0}
!118 = !{!"_ZTSN4llvm15SmallVectorImplINS_16MCCFIInstructionEEE", !117, i64 0}
!119 = !{!"_ZTSN4llvm11SmallVectorINS_16MCCFIInstructionELj0EEE", !118, i64 0}
!120 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIiNS_11SmallVectorIiLj4EEEEE", !31, i64 0}
!121 = !{!"_ZTSN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEE", !120, i64 0, !82, i64 8, !26, i64 16, !26, i64 20}
!122 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEvEE", !41, i64 0}
!123 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELb1EEE", !122, i64 0}
!124 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEEE", !123, i64 0}
!125 = !{!"_ZTSN4llvm11SmallVectorISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELj0EEE", !124, i64 0}
!126 = !{!"_ZTSN4llvm8ArrayRefIhEE", !88, i64 0, !54, i64 8}
!127 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonImvEE", !41, i64 0}
!128 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseImLb1EEE", !127, i64 0}
!129 = !{!"_ZTSN4llvm15SmallVectorImplImEE", !128, i64 0}
!130 = !{!"_ZTSN4llvm11SmallVectorImLj0EEE", !129, i64 0}
!131 = !{!"_ZTSN4llvm11SmallVectorIPNS_8MCSymbolELj0EEE", !46, i64 0}
!132 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt8optionalINS_4bolt11FragmentNumEEvEE", !41, i64 0}
!133 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt8optionalINS_4bolt11FragmentNumEELb1EEE", !132, i64 0}
!134 = !{!"_ZTSN4llvm15SmallVectorImplISt8optionalINS_4bolt11FragmentNumEEEE", !133, i64 0}
!135 = !{!"_ZTSN4llvm11SmallVectorISt8optionalINS_4bolt11FragmentNumEELj0EEE", !134, i64 0}
!136 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !109, i64 0, !77, i64 8}
!137 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE", !136, i64 0}
!138 = !{!"_ZTSSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE", !137, i64 0}
!139 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmPN4llvm4bolt9JumpTableEESt10_Select1stIS6_ESt4lessImESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !73, i64 0, !77, i64 8}
!140 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmPN4llvm4bolt9JumpTableEESt10_Select1stIS6_ESt4lessImESaIS6_EE", !139, i64 0}
!141 = !{!"_ZTSSt3mapImPN4llvm4bolt9JumpTableESt4lessImESaISt4pairIKmS3_EEE", !140, i64 0}
!142 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairImmEvEE", !41, i64 0}
!143 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairImmELb1EEE", !142, i64 0}
!144 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairImmEEE", !143, i64 0}
!145 = !{!"_ZTSN4llvm11SmallVectorISt4pairImmELj0EEE", !144, i64 0}
!146 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmN4llvm4bolt10RelocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !73, i64 0, !77, i64 8}
end_hunk_3
